import {el} from '@elemaudio/core';
import { core } from './main';

 import * as table from '../graphics/tableVisualizer.js'
import { sample } from 'three/tsl';

export const scaleBias = (input, scale, bias) => {
    return el.add(el.mul(input, scale), bias);
}

export let synthState = {
    // voice
    gate: el.const({ key: 'gate', value: 0 }),
    ampAtk: el.sm(el.const({ key: 'ampAtk', value: 0.2 })),
    ampDcy: el.sm(el.const({ key: 'ampDcy', value: 1 })),
    ampSus: el.sm(el.const({ key: 'ampSus', value: 1 })),
    ampRls: el.sm(el.const({ key: 'ampRls', value: 1 })),

    freq: el.sm(el.const({ key: 'freq', value: 100 })),

    positionX: el.sm(el.const({ key: 'positionY', value: 0.5 })),
    positionY: el.sm(el.const({ key: 'positionY', value: 0.5 })),
    ratioX: el.sm(el.const({ key: 'ratioX', value: 0 })),
    ratioY: el.sm(el.const({ key: 'ratioY', value: 0 })),


    unisonVoice: el.sm(el.const({ key: 'unisonVoice', value: 5 })),
    unisonDetune: el.sm(el.const({ key: 'unisonDetune', value: 0.4 })),

    tone: el.sm(el.const({ key: 'tone', value: 1 })),

    subLevel: el.sm(el.const({ key: 'subLevel', value: 1 })),
    subTone: el.sm(el.const({ key: 'subTone', value: 1 })),
    subOctave: el.sm(el.const({ key: 'subOctave', value: 0.5 })),

    // lfo
    
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
  let eg = el.adsr(el.mul(state.ampAtk, 8), 
                    el.mul(state.ampDcy, 8), 
                  state.ampSus, 
                  el.mul(state.ampRls, 8), 
                  state.gate);

  eg = el.snapshot({ name: 'ampEG' }, el.train(30), eg); 

  let synth = oscillator(state.freq, 
                        state.positionX, 
                        state.positionY, 
                        state.ratioX, 
                        state.ratioY, 
                        state.tone, 3, 10, channel == 0);

  synth = el.mul(synth, 0.85);

  let sub = el.cycle(el.mul(state.subOctave, state.freq));
  let subTone = el.mul(el.add(state.subTone, 1), 10);
  sub = el.tanh(el.mul(sub, subTone));
  sub = el.mul(sub, state.subLevel);

  return el.mul(el.add(synth, sub), eg);
}


export const oscillator = (freqInHz, positionX, positionY, ratioX, ratioY, tone, numVoices, detuneAmt, channel) => {

  numVoices = numVoices < 7 ? numVoices : 7;
  let unisonVoices = [];

  for (let voice = 0; voice < 7; voice++) {
    let detuneMultiplier;
    let panGain;

    if (voice === 0) {
      detuneMultiplier = el.const({ value: 1 }); 
      panGain = el.const({ value: 1 });
      
    } else {
      let channelPair = Math.ceil(voice / 2); 
      let detuneDirec = voice % 2 == 0 ? -1 : 1; 
      detuneMultiplier = el.const({ value: detuneDirec / channelPair });

      let panAngle = (0.5 / numVoices) * Math.PI * voice;
      panGain = el.const({ value: Math.cos(panAngle) });
      panGain = !channel ? panGain : el.sub(1.0, panGain);
    }

    let cents = el.mul(detuneAmt, detuneMultiplier);
    let multiplier = el.pow(2, el.div(cents, 1200));
    let detunedFreq = el.mul(freqInHz, multiplier);

    let vc = wavetable(positionX, positionY, ratioX, ratioY, detunedFreq, tone);
    unisonVoices.push(el.mul(vc, panGain));
  }

  let sum = unisonVoices.reduce((acum, v) => el.add(acum, v));
  return el.mul(sum, 1 / numVoices);
}

export const wavetable = (tablePositionX, tablePositionY, ratioX, ratioY, freqInHz, tone) => {
  let posX = el.mul(tablePositionX, 7);
  let posXFloor = el.floor(posX);
  let lerpX = el.sub(posX, posXFloor);

  let posY = el.mul(tablePositionY, 7);
  let posYFloor = el.floor(posY);
  let lerpY = el.sub(posY, posYFloor);

  let normIncrement = 1 / 64;
  let fmDepth = el.mul(tone, 2);
  let fm = el.mul(el.cycle(el.div(freqInHz, 2)), fmDepth);

  ratioX = el.add(el.floor(el.mul(ratioX, 4)), 1);
  let phaseX = el.phasor(el.mul(freqInHz, ratioX));
  phaseX = el.add(phaseX, fm);
  phaseX = el.div(phaseX, 8);

  ratioY = el.add(el.floor(el.mul(ratioY, 4)), 1);
  let phaseY = el.phasor(el.mul(freqInHz, ratioY));
  phaseY = el.add(phaseY, fm);
  phaseY = el.div(phaseY, 8);


  let phaseX0Y0 = el.add(phaseX, el.mul(el.add(el.mul(posYFloor, 8), posXFloor), normIncrement));
  let phaseX1Y0 = el.add(phaseX, el.mul(el.add(el.mul(posYFloor, 8), el.add(posXFloor, 1)), normIncrement));
  let phaseX0Y1 = el.add(phaseY, el.mul(el.add(el.mul(el.add(posYFloor, 1), 8), posXFloor), normIncrement));
  let phaseX1Y1 = el.add(phaseY, el.mul(el.add(el.mul(el.add(posYFloor, 1), 8), el.add(posXFloor, 1)), normIncrement));

  let wave00 = el.table({ path: '/wavetable0' }, phaseX0Y0);
  let wave10 = el.table({ path: '/wavetable0' }, phaseX1Y0);
  let wave01 = el.table({ path: '/wavetable1' }, phaseX0Y1);
  let wave11 = el.table({ path: '/wavetable1' }, phaseX1Y1);

  // Bilinear interpolation
  let waveX0 = el.add(
    el.mul(wave00, el.sub(1, lerpX)),
    el.mul(wave10, lerpX)
  );

  let waveX1 = el.add(
    el.mul(wave01, el.sub(1, lerpX)),
    el.mul(wave11, lerpX)
  );

  let wave = el.add(
    el.mul(waveX0, el.sub(1, lerpY)),
    el.mul(waveX1, lerpY)
  );

  return wave;
}



// LFO + modulator + agitate modulator
function LFO(gate, waveform)
{
  // controls for polarity, maybe 2 waveforms that can be lerped?
  let env = el.smooth(gate, 5);
  let rate = el.add(el.mul(gate, 18), 2); // scale/offset

  let wave = el.saw(rate);
  if (waveform === 1) {
    wave = el.cycle(rate);

  } else if (waveform === 2) {
    wave = el.square(rate);
  } else if (waveform === 3) {
    wave = el.triangle(rate);
  }

  return el.mul(wave, gate);
}