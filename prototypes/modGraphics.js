mgraphics.init()
mgraphics.autofill = 0;
mgraphics.relative_coords = 0;
autowatch = 1;

const width = 400;
const height = 120;
let fade = 0.2;
let slew = 0.0;

function getWaveform(shape, state) {

    const waveform = [];
    const domainResolution = 1024;
    let freq = state.freq;
    let amp = state.amp;
    let phase = state.phase;
    let accel = state.accel;

    for (let i = 0; i < domainResolution; i++) {
        freq = freq * accel;

        if (shape === "sine"){
            let phaseOffset = Math.PI * 2 * phase;
            let yPos = Math.sin(((Math.PI * 2 * freq) / domainResolution) * i + phaseOffset);
            yPos *= amp;
            waveform.push(yPos);

        } else if (shape === "tri") {
            let yPos = ((freq/domainResolution)) * i;
            yPos = yPos % 1;
            yPos = Math.abs(yPos - 0.5) * 4 - 1;
            yPos *= amp;
            waveform.push(yPos);

        } else if (shape === "saw") {
            let yPos = ((freq / domainResolution)) * i;
            yPos = yPos % 1;
            yPos = yPos * 2 - 1;
            yPos *= amp;
            waveform.push(yPos);
        }

    }
    return waveform;
}

const waveState1 = {
    freq: 1,
    amp: 1, 
    phase: 1,
    accel: 1
}

const waveState2 = {
    freq: 1,
    amp: 1,
    phase: 1,
    accel: 1
}


function setWaveState(index, freq, amp, phase, accel)
{
    if (index === 0)
    {
        waveState1.freq = freq;
        waveState1.amp = amp;
        waveState1.phase = phase;
        waveState1.accel = 1.0 + (accel/1000);

    } else if (index === 1){
        waveState2.freq = freq;
        waveState2.amp = amp;
        waveState2.phase = phase;
        waveState2.accel = 1.0 + (accel / 1000);
    }

    mgraphics.redraw();
}

function drawWaveform()
{
    let wave1 = getWaveform("sine", waveState1);
    let wave2 = getWaveform("sine", waveState2);


    let yPosStart = Math.max(wave1[0], wave2[0]);
    yPosStart *= height * 0.45;
    yPosStart = yPosStart + height / 2;

    mgraphics.move_to(width * 0.05, yPosStart)
    let widthIncr = (width * 0.95)/1024;
    for(let i = 1; i < 1024; i++)
    {
        let yPosA = Math.max(wave1[i], wave2[i]);
        let yPosB = Math.min(wave1[i], wave2[i]);

        let yPos = (yPosA * fade) + (yPosB * (1 - fade));
        if (yPos >= 1) { yPos = 1; }
        if (yPos <= -1) { yPos = -1; }

        yPos *= height * 0.45;
        yPos = yPos + height/2;

        let xPos = widthIncr * i;
        xPos += width * 0.05;
        mgraphics.line_to(xPos, yPos);

    }
    mgraphics.set_line_width(2);
    mgraphics.set_line_cap("round");
    mgraphics.stroke();
}

function setParams(newFade, newSlew)
{
    fade = newFade;
    slew = newSlew;
    mgraphics.redraw();
}

function paint()
{
    mgraphics.set_source_rgba(1, 1,1, 1);
    drawWaveform();
}

