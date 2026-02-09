import React, { useState, useEffect, useRef } from 'react';
import ReactDOM from 'react-dom/client';
import { Dial, Toggle } from './dials.jsx'



function VoiceControls()
{
    const [isVisible, setIsVisible] = useState(true);

    return (
        <div id="controlPanel">
            <div className='row0'>
                <Toggle size={20} isVisible={isVisible} setIsVisible={setIsVisible} />
            </div>

            <div
                style={{
                    width: 600,
                    height: 800,
                    opacity: isVisible ? 1 : 0,
                    overflow: 'hidden',
                    transition: 'all 0.3s ease-in-out',
                    backgroundColor: isVisible ? '#222222' : 'transparent'
                }}>

                <div className='row1'>
                    <Dial dialName="Position" stateKey={'position'} dialSize={75} valueRange={100} valueStart={0} suffix={"%"} />
                    <Dial dialName="Unison Voice" stateKey={'unisonVoice'} dialSize={50} valueRange={7} valueStart={1} suffix={""} />
                    <Dial dialName="Detune" stateKey={'unisonDetune'} dialSize={50} valueRange={100} valueStart={0} suffix={"%"} />
                </div>

                <div className='row2'>
                    <Dial dialName="Tone" stateKey={'tone'} dialSize={70} valueRange={100} valueStart={0} suffix={"%"} />
                    <Dial dialName="Ratio" stateKey={'ratio'} dialSize={70} valueRange={10} valueStart={0} suffix={""} />
                    <Dial dialName="Sub Tone" stateKey={'subTone'} dialSize={70} valueRange={100} valueStart={0} suffix={"%"} />
                    <Dial dialName="Sub Level" stateKey={'subLevel'} dialSize={70} valueRange={100} valueStart={0} suffix={"%"} />

                </div>

                <div className='row3'>
                    <Dial dialName="Attack" stateKey={'ampAtk'} dialSize={50} valueRange={20} valueStart={0} suffix={" ms"}/>
                    <Dial dialName="Decay" stateKey={'ampDcy'} dialSize={50} valueRange={20} valueStart={0} suffix={" ms"} />
                    <Dial dialName="Sustain" stateKey={'ampSus'} dialSize={50} valueRange={100} valueStart={0} suffix={" %"} />
                    <Dial dialName="Release" stateKey={'ampRls'} dialSize={50} valueRange={20} valueStart={0} suffix={" ms"} />
                </div>
            </div>
        </div>
    )
}

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(<VoiceControls />);
