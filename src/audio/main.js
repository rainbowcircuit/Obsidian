import {el} from '@elemaudio/core';
import WebRenderer from '@elemaudio/web-renderer';
import * as Synth from './synth.js'; 

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
  Synth.modifyWavetable(4, 0);
  Synth.modifyWavetable(5, 1);

};


// event handling
document.body.addEventListener('click', async () => {
    await main();
  
    // key down
    document.body.addEventListener("keydown", async (e) => {
      if (e.repeat) { return; }
      let key = QWERTYKeyboard[e.key];

      if (key != undefined){

        let freqValue = (440 * Math.exp(0.057762265 * ((key + 12) - 69.)));
        Synth.synthState.freq = el.sm(el.const({ key: 'freq', value: freqValue }));
        Synth.synthState.gate = el.const({ key: 'gate', value: 1 });

        let graphL = Synth.processSynth(Synth.synthState, 0);
        let graphR = Synth.processSynth(Synth.synthState, 1);
        let stats = core.render(graphL, graphR);
      }
    });
   
    // key up
    document.body.addEventListener("keyup", async (e) => {
      if (e.repeat) { return; }
      Synth.synthState.gate = el.const({ key: 'gate', value: 0 });

      let graphL = Synth.processSynth(Synth.synthState, 0);
      let graphR = Synth.processSynth(Synth.synthState, 1);
      let stats = core.render(graphL, graphR);
    });
});

const QWERTYKeyboard = {
    "a" : 24, 
    "w" : 25,
    "s" : 26, 
    "e" : 27,
    "d" : 28, 
    "f" : 29,
    "t" : 30,
    "g" : 31,
    "y" : 32,
    "h" : 33,
    "u" : 34,
    "j" : 35,
    "k" : 36 };


  





core.on('snapshot', function (e) {
  if (e.source === "mySnap") {
    console.log(e.data); // { source: "ss", data: 0.1394131 }
  }
});
