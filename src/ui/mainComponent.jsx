import { useState, useEffect } from 'react';
import ReactDOM from 'react-dom/client';
import { Dial } from './dials.jsx'

/*
Main visualizer

Voice controls
    Position
    Unison
    Detune

    Tone
    Ratio
    Ratio Detune
    
    Sub 
    Sub Tone
    Sub Octave

Modulation Controls
    Amp ADSR
    Mod ADSR
    LFO 

*/

function WavetableSelect()
{

    return (
        <div>
            <select>
                <option value="table1">Table 1</option>
                <option value="table1">Table 2</option>
                <option value="table1">Table 3</option>
                <option value="table1">Table 4</option>
                <option value="table1">Table 5</option>
                <option value="table1">Table 6</option>
            </select>    
        </div>
    )
}


function VoiceControls()
{
    // add wavetable options
    // add adsr controls 
    // 
    return (
        <div id="controlPanel">
            <WavetableSelect />


            <div className='row1'>
                <Dial dialName="Position" stateKey={'position'} dialSize={75} valueRange={100} valueStart={0} suffix={"%"} />
                <Dial dialName="Unison Voice" stateKey={'unisonVoice'} dialSize={50} valueRange={7} valueStart={1} suffix={""} />
                <Dial dialName="Detune" stateKey={'unisonDetune'} dialSize={50} valueRange={100} valueStart={0} suffix={"%"} />
            </div>

            <div className='row2'>
                <Dial dialName="Tone" stateKey={'tone'} dialSize={70} valueRange={100} valueStart={0} suffix={"%"} />
                <Dial dialName="Ratio" stateKey={'ratio'} dialSize={70} valueRange={10} valueStart={0} suffix={""} />
                <Dial dialName="Ratio Detune" stateKey={'ratioDetune'} dialSize={70} valueRange={100} valueStart={0} suffix={"%"} />
            </div>

            <div className='row3'>
                <Dial dialName="Attack" stateKey={'ampAtk'} dialSize={50} valueRange={20} valueStart={0} suffix={" ms"}/>
                <Dial dialName="Decay" stateKey={'ampDcy'} dialSize={50} valueRange={20} valueStart={0} suffix={" ms"} />
                <Dial dialName="Sustain" stateKey={'ampSus'} dialSize={50} valueRange={100} valueStart={0} suffix={" %"} />
                <Dial dialName="Release" stateKey={'ampRls'} dialSize={50} valueRange={20} valueStart={0} suffix={" ms"} />
            </div>
            <button>Close</button>
        </div>
    )
}




const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(<VoiceControls />);
