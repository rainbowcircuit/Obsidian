import {el} from '@elemaudio/core';
import { core } from './main';

import * as table from '../graphics/tableVisualizer.js'
import { sample } from 'three/tsl';
import { parameters } from './parameters.js';
import { version } from './modulation.js';


export const scaleBias = (input, scale, bias) => {
    return el.add(el.mul(input, scale), bias);
}

export const modifyWavetable = async (readIndex, wavetableIndex) => {
  const ctx = new AudioContext();
  let res = await fetch(`/src/audio/tables/table${readIndex}.wav`);
  let sampleBuffer = await ctx.decodeAudioData(await res.arrayBuffer());
  let audioData = sampleBuffer.getChannelData(0);

  const samplesPerTable = 2048;
  const numTables = 8;
  const wavetables = new Float32Array(samplesPerTable * numTables);

  const segmentSize = Math.floor(audioData.length / numTables);

  for (let table = 0; table < numTables; table++) {
    const start = table * segmentSize;
    const end = Math.min(start + segmentSize, audioData.length);
    const segment = audioData.slice(start, end);
    const lerpRatio = segment.length / samplesPerTable;

    for (let sample = 0; sample < samplesPerTable; sample++) {
      const sourceIndex = sample * lerpRatio;
      const currentIndex = Math.floor(sourceIndex);
      const nextIndex = Math.min(currentIndex + 1, segment.length - 1);
      const lerp = sourceIndex - currentIndex;

      let writePosition = table * samplesPerTable + sample;
      let writeValue = segment[currentIndex] * (1 - lerp) + segment[nextIndex] * lerp;
      wavetables[writePosition] = writeValue * getWindow(sample);
    }
  }

  core.updateVirtualFileSystem({
    [`/wavetable${wavetableIndex}`]: [wavetables]
  });

  table.tableGraphics.setTables(wavetables, wavetableIndex == 0);
//  table.tableGraphics.createGeometry(wavetableIndex == 0);
  table.tableGraphics.initializeSelectedWaveform();
  table.tableGraphics.initializeTableWaveform();
}

function getWindow(sampleIndex)
{
  let radian = 1.0/2048;
  let window = Math.cos(radian * Math.PI * sampleIndex);
  window *= window;

  return window;
}

export const processSynth = (state, channel) => {
  const { gate, ampEnvelope, pitchEnvelope, subOscillator, mainOscillator, modTable } = state;

  // amp envelope
  let ampEnv = el.adsr(
    el.mul(ampEnvelope.ampAtk, 8),
    el.mul(ampEnvelope.ampDcy, 8),
    ampEnvelope.ampSus,
    el.mul(ampEnvelope.ampRls, 8),
    gate
  );

  ampEnv = el.snapshot({ name: 'ampEG' }, el.train(30), ampEnv);

  let synth = oscillator(
    mainOscillator.freq,
    mainOscillator.tblPos,
    mainOscillator.modTone,
    parameters.mainOscillator.usnVoice,
    mainOscillator.usnDetune,
    channel == 0
  );
  synth = el.mul(synth, 1.5);
  let modulation = modSource(gate, modTable.duration);
  modulation = el.mul(modulation, modulation);

  synth = el.mul(modulation, synth);

  let cutoff = scaleBias(el.add(mainOscillator.filterCf, modulation), 7500, 500);
  synth = el.lowpass(cutoff, 0.8, synth);

  // sub — amp envelope
  let subAmpEnv = el.adsr(0.0005, 2, 0.5, 2, gate);

  // sub — pitch envelope
  let subPitchEnv = el.adsr(
    pitchEnvelope.pitchAtk,
    pitchEnvelope.pitchRls, 
    0,
    pitchEnvelope.pitchRls,
    gate
  );
  
  let pitchDepth = el.mul(subPitchEnv, 2);
  let modulatedFreq = el.mul(mainOscillator.freq, el.pow(2, pitchDepth));

  let sub = el.cycle(el.mul(subOscillator.subOct, modulatedFreq));

  // test
  modulation = el.mul(modulation, 4)
  let subTone = el.mul(el.add(subOscillator.subTone, 1), el.mul(modulation, 5));
  sub = el.tanh(el.mul(sub, subTone));
  sub = el.mul(sub, el.mul(subAmpEnv, subOscillator.subLvl));
  
  return el.mul(el.add(synth, sub), ampEnv);
};

export const oscillator = (freqInHz, tblPos, tone, numVoices, detuneAmt, isLeft) => {
  numVoices = Math.floor(numVoices * 15) + 1;
  
  let unisonVoices = [];

  for (let voice = 0; voice < numVoices; voice++) {
    let detuneMultiplier, panGain;

    if (voice === 0) {
      detuneMultiplier = el.const({ value: 1 });
      panGain = el.const({ value: 1 });

    } else {
      let channelPair = Math.ceil(voice / 2);
      let detuneDirec = voice % 2 === 0 ? -1 : 1;
      detuneMultiplier = el.const({ value: detuneDirec / channelPair });
      let panAngle = (0.5 / numVoices) * Math.PI * voice;
      panGain = el.const({ value: Math.cos(panAngle) });
      panGain = isLeft ? panGain : el.sub(1.0, panGain);
    }

    let cents = el.mul(el.mul(50, detuneAmt), detuneMultiplier);
    let multiplier = el.pow(2, el.div(cents, 1200));
    let detunedFreq = el.mul(freqInHz, multiplier);
    let vc = wavetable(tblPos, detuneAmt, detunedFreq, tone);

    unisonVoices.push(el.mul(vc, panGain));
  }

  let output = unisonVoices.reduce((acc, v) => el.add(acc, v));
  return el.div(output, el.const({ value: Math.sqrt(numVoices) }));
};

export const wavetable = (tablePosition, ratio, freqInHz, tone) => {
  let pos = el.mul(tablePosition, 7);
  let posFloor = el.floor(pos);
  let lerp = el.sub(pos, posFloor);

  let normIncrement = 1 / 64;
  let fmDepth = el.mul(tone, 0.5);
  let fm = el.mul(el.cycle(el.div(freqInHz, 2)), fmDepth);
  fm = el.tanh(fm);

  ratio = el.add(el.floor(el.mul(ratio, 4)), 1);

  let phase = el.phasor(el.mul(freqInHz, 1));
  phase = el.add(phase, fm);
  phase = el.div(phase, 8);

  let phase0 = el.add(phase, el.mul(posFloor, normIncrement));
  let phase1 = el.add(phase, el.mul(el.add(posFloor, 1), normIncrement));

  let wave0 = el.table({ path: '/wavetable0' }, phase0);
  let wave1 = el.table({ path: '/wavetable0' }, phase1);

  return el.add(
    el.mul(wave0, el.sub(1, lerp)),
    el.mul(wave1, lerp)
  );
};

export const modSource = (gate, durationInSeconds) => {
  durationInSeconds = el.mul(durationInSeconds, 8);
  const posIncr = el.div(1, el.mul(el.sr(), durationInSeconds));
  
  let readPosition = el.accum(posIncr, gate);
  readPosition = el.min(readPosition, el.const({ key: 'one', value: 1 }));

  const modulation = el.table({ path: `/modulation${version}`, key: 'modulation' }, readPosition);

  return modulation;
};