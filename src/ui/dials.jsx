import React, {useState, useEffect, useRef} from 'react';
import ReactDOM from 'react-dom/client';

import { el } from '@elemaudio/core';
import { core } from '../audio/main.js'
import * as Param from '../audio/parameters.js'; 
import * as Modulation from '../audio/modulation.js'; 
import * as Synth from '../audio/synth.js'; 



export function Dial({dialName, statePath, dialSize, valueRange, valueStart, suffix})
{
    const [dialValue, setDialValue] = useState(0);
    const [isDragging, setIsDragging] = useState(false);
    const canvasRef = useRef(null);

    useEffect(() => {
        const canvas = canvasRef.current; // 
        if (canvas) {
            const ctx = canvas.getContext("2d");
            const ratio = window.devicePixelRatio || 1;
            canvas.width = dialSize * ratio;
            canvas.height = dialSize * ratio;

            canvas.style.width = `${dialSize}px`;
            canvas.style.height = `${dialSize}px`;
            ctx.scale(ratio, ratio);
            ctx.clearRect(0, 0, dialSize, dialSize);

            let rangeInRadian = Math.PI * 1.5;
            let startAngle = Math.PI - (Math.PI * 0.25);
            let endAngle = startAngle + rangeInRadian * (dialValue);

            // background 
            ctx.beginPath();
            ctx.arc(dialSize / 2, dialSize / 2, dialSize * 0.45, startAngle, startAngle + rangeInRadian, false)
            ctx.lineWidth = 4
            ctx.lineCap = "round";
            ctx.strokeStyle = "#444444"
            ctx.stroke();

            // foreground
            ctx.beginPath();
            ctx.arc(dialSize / 2, dialSize/2, dialSize * 0.45, startAngle, endAngle, false)
            ctx.strokeStyle = "#A67BB9"
            ctx.stroke();
        }
    }, [dialValue]);

    useEffect(() => {
         function handleMove(e) {
            if (isDragging) {
                // set graphic value
                let sensitivity = 0.5;
                
                const rect = canvasRef.current.getBoundingClientRect();
                const relativeY = e.clientY - rect.top; // Y position within the canvas

                let dialValueToSet = 1.0 - ((relativeY / 75) * sensitivity);
                dialValueToSet = Math.max(0.0, Math.min(dialValueToSet, 1.0));
                setDialValue(dialValueToSet);

                // set dsp value
                Param.setParam(statePath, dialValueToSet);
                Modulation.updateModTable();

                // rerender audio
                const state = Param.buildAudioState();
                let graphL = Synth.processSynth(state, 0);
                let graphR = Synth.processSynth(state, 1);
                let stats = core.render(graphL, graphR);
            }
        }

        function handleMouseUp(e) {
            setIsDragging(false);
        }

        if (isDragging) {
            document.addEventListener('mousemove', handleMove);
            document.addEventListener('mouseup', handleMouseUp);
        }

        return () => {
            document.removeEventListener('mousemove', handleMove);
            document.removeEventListener('mouseup', handleMouseUp);
        };
    }, [isDragging]);

    function handleMouseDown(e) {
        setIsDragging(true);
    }

    return(
        <div id="dial">
            <p>{dialName}</p>
            <canvas ref={canvasRef} width={dialSize} height={dialSize} onMouseDown={handleMouseDown}></canvas>
            <p> {Math.round(dialValue * valueRange + valueStart) + suffix}</p>
        </div>
    )
}

export function Toggle({ size, isVisible, setIsVisible })
{
    const canvasRef = useRef(null);

    useEffect(() => {
        const canvas = canvasRef.current; // 
        if (canvas) {
            const ctx = canvas.getContext("2d");
            const ratio = window.devicePixelRatio || 1;
            canvas.width = size * ratio;
            canvas.height = size * ratio;

            canvas.style.width = `${size}px`;
            canvas.style.height = `${size}px`;
            ctx.scale(ratio, ratio);
            ctx.clearRect(0, 0, size, size);

            ctx.beginPath();
            ctx.moveTo(size * 0.1, size * 0.1);
            ctx.lineTo(size * 0.9, size * 0.9);
            ctx.moveTo(size * 0.9, size * 0.1);
            ctx.lineTo(size * 0.1, size * 0.9);

            ctx.strokeStyle = isVisible ? "#A67BB9" : "#444444";
            ctx.lineWidth = 4;
            ctx.lineCap = "round";
            ctx.stroke();
        }
    }, [isVisible, size]);

    function handleClick()
    {
        setIsVisible(!isVisible)
    }

    return (
        <div id="toggle">
            <canvas ref={canvasRef} width={size} height={size} onClick={handleClick} ></canvas>
        </div>
    ); 
}