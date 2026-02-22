import {el} from '@elemaudio/core';
import WebRenderer from '@elemaudio/web-renderer';
import * as Params from './parameters.js'
import * as Synth from './synth.js'; 
import * as Modulation from './modulation.js'


const ctx = new AudioContext();
export const core = new WebRenderer();

let initialized = false;

async function main() {
  if (initialized) { return; }
  initialized = true;
  console.log('Starting audio...');

  let node = await core.initialize(ctx, {
    numberOfInputs: 0,
    numberOfOutputs: 1,
    outputChannelCount: [2],
  });
 
  node.connect(ctx.destination);
  Synth.modifyWavetable(7, 0);

  Modulation.updateModTable();
};







document.body.addEventListener('click', async () => {
  await main();

  // key down
  document.body.addEventListener("keydown", (e) => {
    if (e.repeat) return;
    
    const key = QWERTYKeyboard[e.key];
    if (key !== undefined) {
      const freqValue = 440 * Math.exp(0.057762265 * ((key + 24) - 69));
      Params.setParam('mainOscillator.freq', freqValue);
      Params.setParam('gate', 1);

      const state = Params.buildAudioState();
      core.render(Synth.processSynth(state, 0), Synth.processSynth(state, 1))
    }
  });

  // key up
  document.body.addEventListener("keyup", (e) => {
    if (e.repeat) return;
    Params.setParam('gate', 0);

    const state = Params.buildAudioState();
    core.render(Synth.processSynth(state, 0), Synth.processSynth(state, 1))
  });
});

const QWERTYKeyboard = {
  "a": 24,
  "w": 25,
  "s": 26,
  "e": 27,
  "d": 28,
  "f": 29,
  "t": 30,
  "g": 31,
  "y": 32,
  "h": 33,
  "u": 34,
  "j": 35,
  "k": 36
};