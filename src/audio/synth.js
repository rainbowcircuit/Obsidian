import {el} from '@elemaudio/core';
import { core } from './main';

 import * as table from '../graphics/tableVisualizer.js'

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

    position: el.sm(el.const({ key: 'position', value: 0.5 })),
    unisonVoice: el.sm(el.const({ key: 'unisonVoice', value: 5 })),
    unisonDetune: el.sm(el.const({ key: 'unisonDetune', value: 0.4 })),

    tone: el.sm(el.const({ key: 'tone', value: 0.5 })),
    ratio: el.sm(el.const({ key: 'ratio', value: 1 })),
    ratioDetune: el.sm(el.const({ key: 'ratioDetune', value: 1 })),

    subLevel: el.sm(el.const({ key: 'subLevel', value: 1 })),
    subTone: el.sm(el.const({ key: 'subTone', value: 1 })),
    subOctave: el.sm(el.const({ key: 'subOctave', value: 1 })),

    // lfo
    
}

export const modifyWavetable = async () => {
  const ctx = new AudioContext();
  let res = await fetch('/src/audio/tables/table2.wav');
  let sampleBuffer = await ctx.decodeAudioData(await res.arrayBuffer());
  let audioData = sampleBuffer.getChannelData(0);

  const samplesPerTable = 2048;
  const numTables = 8;
  const wavetables = new Float32Array(samplesPerTable * numTables);

  // Calculate segment size from source audio
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

      let writePosition = table * samplesPerTable + sample
      wavetables[writePosition] = segment[currentIndex] * (1 - lerp) + segment[nextIndex] * lerp;
    }
  }





  core.updateVirtualFileSystem({
    '/wavetable': [wavetables]
  });


  table.tableGraphics.setTables(wavetables);
  table.tableGraphics.createGeometry();
}

export const processSynth = (state) => {
  let eg = el.adsr(state.ampAtk, 
                  state.ampDcy, 
                  state.ampSus, 
                  state.ampRls, 
                  state.gate);

  eg = el.snapshot({ name: 'ampEG' }, el.train(30), eg); 

  let ratio = el.floor(el.mul(state.ratio, 5));
  ratio = el.add(ratio, state.ratioDetune);

  let freq = el.mul(state.freq, ratio);

  let synth = oscillator(freq, state.position, 3, state.unisonDetune);
  synth = el.sin(el.mul(el.add(el.phasor(40), el.mul(synth, state.tone)), Math.PI * 2.0));
  synth = el.mul(synth, 0.85);


  let sub = el.cycle(el.mul(state.subOctave, state.freq));
  sub = el.tanh(el.mul(sub, 1.2));
  sub = el.mul(sub, state.subLevel);

  return el.mul(el.add(synth, sub), eg);
}



export const oscillator = (freqInHz, postion, numVoices, detuneCents) => {
    
    numVoices = numVoices < 7 ? numVoices : 7;

    // maybe clean this up in a loop with some modulo and add stereo
    const detuneAmounts = [
      0,
      el.mul(detuneCents, -1),
      el.mul(detuneCents, 1),
      el.mul(detuneCents, 1.5),
      el.mul(detuneCents, -1.5),
      el.mul(detuneCents, 0.75),
      el.mul(detuneCents, -0.75)
    ];

    let unisonVoices = [];

    for (let voice = 0; voice < 7; voice++)
    {
      let cents = detuneAmounts[voice];
      let multiplier = el.pow(2, el.div(cents, 1200));
      let detunedFreq = el.mul(freqInHz, multiplier);

      let vc = wavetable(postion, detunedFreq);
      unisonVoices.push(vc);
    }

    let sum = unisonVoices.reduce((acum, v) => el.add(acum, v));
    return el.mul(sum, 1 / numVoices);

}

export const wavetable = (tablePosition, freqInHz) => {
    let pos = el.mul(tablePosition, 7);    
    let posFloor = el.floor(pos);
    let lerp = el.sub(pos, posFloor);

    let normIncrement = 1/64;
    let phase = el.phasor(freqInHz);
    phase = el.div(phase, 8); 
    let xPhaseA = el.add(phase, el.mul(posFloor, normIncrement)); 
    let xPhaseB = el.add(phase, el.mul(el.add(posFloor, 1), normIncrement)); 
  
    let waveA = el.table({ path: '/wavetable' }, xPhaseA);
    let waveB = el.table({ path: '/wavetable' }, xPhaseB);
    let wave = el.add(
      el.mul(waveA, el.sub(1, lerp)),
      el.mul(waveB, lerp)
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