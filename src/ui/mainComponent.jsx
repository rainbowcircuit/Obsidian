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
                    height: 600,
                    opacity: isVisible ? 1 : 0,
                    overflow: 'hidden',
                    transition: 'all 0.3s ease-in-out',
                    backgroundColor: isVisible ? '#222222' : 'transparent'
                }}>

                <div className='row1'>
                    <Dial dialName="Position" statePath={'mainOscillator.tblPos'} dialSize={50} valueRange={10} valueStart={0} suffix={"%"} />
                    <Dial dialName="Tone" statePath={'mainOscillator.modTone'} dialSize={50} valueRange={100} valueStart={0} suffix={" %"} />
                    <Dial dialName="Filter" statePath={'mainOscillator.filterCf'} dialSize={50} valueRange={100} valueStart={-50} suffix={"%"} />
                    <Dial dialName="Unison Voices" statePath={'mainOscillator.usnVoice'} dialSize={50} valueRange={15} valueStart={1} suffix={" "} />
                    <Dial dialName="Unison Detune" statePath={'mainOscillator.usnDetune'} dialSize={50} valueRange={100} valueStart={0} suffix={"%"} />

                </div>

                <div className='row2'>
                    <Dial dialName="Sub Tone" statePath={'subOscillator.subTone'} dialSize={70} valueRange={100} valueStart={0} suffix={"%"} />
                    <Dial dialName="Sub Level" statePath={'subOscillator.subLvl'} dialSize={70} valueRange={100} valueStart={0} suffix={"%"} />
                    <Dial dialName="Pitch Attack" statePath={'pitchEnvelope.pitchAtk'} dialSize={35} valueRange={8} valueStart={0} suffix={" s"} />
                    <Dial dialName="Pitch Release" statePath={'pitchEnvelope.pitchRls'} dialSize={35} valueRange={8} valueStart={0} suffix={" s"} />
                </div>

                <div className='row3'>
                    <Dial dialName="Amp Attack" statePath={'ampEnvelope.ampAtk'} dialSize={50} valueRange={8} valueStart={0} suffix={" s"}/>
                    <Dial dialName="Amp Decay" statePath={'ampEnvelope.ampDcy'} dialSize={50} valueRange={8} valueStart={0} suffix={" s"} />
                    <Dial dialName="Amp Sustain" statePath={'ampEnvelope.ampSus'} dialSize={50} valueRange={100} valueStart={0} suffix={" %"} />
                    <Dial dialName="Amp Release" statePath={'ampEnvelope.ampRls'} dialSize={50} valueRange={8} valueStart={0} suffix={" s"} />

                </div>
            </div>
        </div>
    )
}

const voice = ReactDOM.createRoot(document.getElementById('voiceCtrl'));
voice.render(<VoiceControls />);


function ModulationControls() {
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

                <div className='row1'>
                    <Dial dialName="Rate" statePath={'modTable.wave1.freq'} dialSize={50} valueRange={20} valueStart={0} suffix={""} />
                    <Dial dialName="Amplitude" statePath={'modTable.wave1.amp'} dialSize={50} valueRange={200} valueStart={-100} suffix={" %"} />
                    <Dial dialName="Accel" statePath={'modTable.wave1.accel'} dialSize={50} valueRange={100} valueStart={-50} suffix={"%"} />
                    <Dial dialName="Phase" statePath={'modTable.wave1.phase'} dialSize={30} valueRange={100} valueStart={0} suffix={"%"} />
                    <Dial dialName="ShapeX" statePath={'modTable.wave1.shapeX'} dialSize={30} valueRange={100} valueStart={0} suffix={"%"} />
                    <Dial dialName="ShapeY" statePath={'modTable.wave1.shapeY'} dialSize={30} valueRange={100} valueStart={0} suffix={"%"} />
                </div>

                <div className='row2'>
                    <Dial dialName="Rate" statePath={'modTable.wave2.freq'} dialSize={50} valueRange={20} valueStart={0} suffix={"%"} />
                    <Dial dialName="Amplitude" statePath={'modTable.wave2.amp'} dialSize={50} valueRange={200} valueStart={-100} suffix={" %"} />
                    <Dial dialName="Accel" statePath={'modTable.wave2.accel'} dialSize={50} valueRange={100} valueStart={-50} suffix={"%"} />
                    <Dial dialName="Phase" statePath={'modTable.wave2.phase'} dialSize={30} valueRange={100} valueStart={0} suffix={"%"} />
                    <Dial dialName="ShapeX" statePath={'modTable.wave2.shapeX'} dialSize={30} valueRange={100} valueStart={0} suffix={"%"} />
                    <Dial dialName="ShapeY" statePath={'modTable.wave2.shapeY'} dialSize={30} valueRange={100} valueStart={0} suffix={"%"} />
                </div>

                <div className='row3'>
                    <Dial dialName="Duration" statePath={'modTable.duration'} dialSize={50} valueRange={8} valueStart={0} suffix={" s"} />
                    <Dial dialName="Fade In" statePath={'modTable.fadeIn'} dialSize={50} valueRange={100} valueStart={0} suffix={"%"} />
                    <Dial dialName="Fade Out" statePath={'modTable.fadeOut'} dialSize={50} valueRange={100} valueStart={0} suffix={"%"} />
                    <Dial dialName="Shape Blend" statePath={'modTable.shapeBld'} dialSize={50} valueRange={100} valueStart={0} suffix={" %"} />
                </div>
            </div>
        </div>
    );
}

const mod = ReactDOM.createRoot(document.getElementById('modCtrl'));
mod.render(<ModulationControls />);
