import React, { useState, useEffect, useRef } from 'react';
import ReactDOM from 'react-dom/client';
import { Dial, Toggle } from './dials.jsx'


function WavetableSelector()
{
    return (
        <div>
            <select>
                <option value="0">Table 0</option>
                <option value="1">Table 1</option>
                <option value="2">Table 2</option>
                <option value="3">Table 3</option>
                <option value="4">Table 4</option>
                <option value="5">Table 5</option>
                <option value="6">Table 6</option>
                <option value="7">Table 7</option>
            </select>
        </div>
    );
}


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
                    height: 600,
                    opacity: isVisible ? 1 : 0,
                    overflow: 'hidden',
                    transition: 'all 0.3s ease-in-out',
                    backgroundColor: isVisible ? '#222222' : 'transparent'
                }}>

                <WavetableSelector />
                <WavetableSelector />

                <div className='row1'>
                    <Dial dialName="Tone" stateKey={'tone'} dialSize={100} valueRange={100} valueStart={0} suffix={"%"} />
                    <Dial dialName="Position X" stateKey={'positionX'} dialSize={75} valueRange={100} valueStart={0} suffix={"%"} />
                    <Dial dialName="Position Y" stateKey={'positionY'} dialSize={75} valueRange={100} valueStart={0} suffix={"%"} />
                    <Dial dialName="Ratio X" stateKey={'ratioX'} dialSize={50} valueRange={4} valueStart={1} suffix={":1"} />
                    <Dial dialName="Ratio Y" stateKey={'ratioY'} dialSize={50} valueRange={4} valueStart={1} suffix={":1"} />

                </div>

                <div className='row2'>
                    <Dial dialName="Sub Tone" stateKey={'subTone'} dialSize={70} valueRange={100} valueStart={0} suffix={"%"} />
                    <Dial dialName="Sub Level" stateKey={'subLevel'} dialSize={70} valueRange={100} valueStart={0} suffix={"%"} />

                </div>

                <div className='row3'>
                    <Dial dialName="Attack" stateKey={'ampAtk'} dialSize={50} valueRange={8} valueStart={0} suffix={" s"}/>
                    <Dial dialName="Decay" stateKey={'ampDcy'} dialSize={50} valueRange={8} valueStart={0} suffix={" s"} />
                    <Dial dialName="Sustain" stateKey={'ampSus'} dialSize={50} valueRange={100} valueStart={0} suffix={" %"} />
                    <Dial dialName="Release" stateKey={'ampRls'} dialSize={50} valueRange={8} valueStart={0} suffix={" s"} />
                </div>
            </div>
        </div>
    )
}

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(<VoiceControls />);
