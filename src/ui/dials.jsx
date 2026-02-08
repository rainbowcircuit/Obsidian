import React, {useState, useEffect, useRef} from 'react';
import ReactDOM from 'react-dom/client';

import { el } from '@elemaudio/core';
import { core } from '../audio/main.js'
import * as Synth from '../audio/synth.js'; 



export function Dial({dialName, dialSize, stateKey, valueRange, valueStart, suffix})
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
        async function handleMove(e) {
            if (isDragging) {
                // set graphic value
                let sensitivity = 0.5;
                const rect = canvasRef.current.getBoundingClientRect();
                const relativeY = e.clientY - rect.top; // Y position within the canvas

                let dialValueToSet = 1.0 - ((relativeY / 75) * sensitivity);
                dialValueToSet = Math.max(0.0, Math.min(dialValueToSet, 1.0));
                setDialValue(dialValueToSet);

                // set dsp value
                Synth.synthState[stateKey] = el.sm(el.const({ key: stateKey, value: dialValueToSet }));

                // rerender audio
                let graph = Synth.processSynth(Synth.synthState);
                core.render(graph, graph);
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
