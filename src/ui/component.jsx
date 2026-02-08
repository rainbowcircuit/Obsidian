import React from 'react';
import ReactDOM from 'react-dom/client';
import { useState } from 'react';
import { el } from '@elemaudio/core';
import { core } from '../audio/main.js'
import * as Synth from '../audio/synth.js'; 
import * as Wave from '../graphics/main.js'; 


function SynthControls()
{
  return (
    <div className = "mainControls">
      <h3>Voice Controls</h3>

      <Slider name={"Ratio"} id={"ratio"} min={1} max={20.0} defaultValue={1} step={1} />
      <Slider name={"WaveTable X"} id={"tableX"} min={1} max={20.0} defaultValue={1} step={1} />
      <Slider name={"Tone"} id={"tableY"} min={1} max={20.0} defaultValue={1} step={1} />


      <h3>Amp Envelope</h3>
      <Slider name={"Attack"} id={"ampAtk"} min={0} max={5} defaultValue={1} step={0.125}/>
      <Slider name={"Decay"} id={"ampDcy"} min={0} max={5} defaultValue={1} step={0.125}/>
      <Slider name={"Sustain"} id={"ampSus"} min={0} max={1} defaultValue={1} step={0.125}/>
      <Slider name={"Release"} id={"ampRls"} min={0} max={5} defaultValue={1} step={0.125}/>
    </div>
  );
}

function Slider({ name, id, min, max, def, step }) {
  const [sliderValue, setSliderValue] = useState(0);

  const handleChange = async (e) => {
    const value = parseFloat(e.target.value);
    setSliderValue(value);
    console.log("called!");
    // update state in graphics
    Wave.path.state[id] = sliderValue;
    Wave.path.needsUpdate = true;
    
    // update state in audio

    Synth.synthState[id] = el.sm(el.const({ key: id, value: sliderValue }));

    // rerender audio
    let graph = Synth.processSynth(Synth.synthState);
    graph = el.snapshot({name: "amp"}, el.train(20), graph);

    core.render(graph, graph);
  };

  return (
    <div className='slider'>
      <input 
        type="range" 
        id={id}
        name={name}
        min={min}
        max={max}
        defaultValue={def}
        step={step}
        value={sliderValue}
        onChange={handleChange}
      />
      <label htmlFor="volume">{name}: {sliderValue}</label>
    </div>
  );
}

// Render 
const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(<SynthControls />);
