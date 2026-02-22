import { core } from './main';
import { parameters } from './parameters';
import * as modVisualizer from '../graphics/modulation.js'

const DOMAIN_RESOLUTION = 1024;

export const getWaveform = (waveParams) => {
    const waveform = [];
    let { freq, amp, phase, accel, shapeX, shapeY } = waveParams;
    const TWO_PI = Math.PI * 2;

    freq *= 20;
    amp = (amp * 2) - 1;
    accel = 1 + ((accel * 4 - 2) * 0.001);

    for (let i = 0; i < DOMAIN_RESOLUTION; i++) {
        freq *= accel;
        const t = (freq / DOMAIN_RESOLUTION * i) % 1;
        const tri = (Math.abs(t - 0.5) * 4 - 1);

        // shapeX
        const phaseOffset = TWO_PI * phase;
        const sine = Math.sin((TWO_PI * freq / DOMAIN_RESOLUTION) * i + phaseOffset);
        const xBlend = tri + shapeX * (sine - tri);

        // shapeY
        const saw = t * 2 - 1;
        const sawDown = 1 - t * 2;
        const targetSaw = shapeY >= 0 ? saw : sawDown;
        const yBlend = tri + Math.abs(shapeY) * (targetSaw - tri);

        waveform.push(((xBlend + yBlend) / 2) * amp);
    }
    return waveform;
};

export const createModTable = () => {
    const { wave1, wave2, fadeIn, fadeOut, shapeBld } = parameters.modTable;

    let modTable = new Float32Array(DOMAIN_RESOLUTION);
    const waveform1 = getWaveform(wave1);
    const waveform2 = getWaveform(wave2);

    const fadeInEnd = Math.floor((fadeIn) * DOMAIN_RESOLUTION);
    const fadeOutStart = Math.floor((1 - fadeOut) * DOMAIN_RESOLUTION);
    const blend = shapeBld * 4 - 2;

    for (let i = 0; i < DOMAIN_RESOLUTION; i++) {
        const max = Math.max(waveform1[i], waveform2[i]);
        const min = Math.min(waveform1[i], waveform2[i]);
        let wave = (max * blend) + (min * (1 - blend));

        let gain = 1;
        if (i < fadeInEnd) {
            gain = Math.sin((i / fadeInEnd) * Math.PI * 0.5);
        } else if (i >= fadeOutStart) {
            gain = Math.sin(((DOMAIN_RESOLUTION - i) / (DOMAIN_RESOLUTION - fadeOutStart)) * Math.PI * 0.5);
        }

        if (wave >= 1) { wave = 1; }
        if (wave <= -1) { wave = -1; }
        modTable[i] = wave * gain;
    }

    return modTable;
};

export let version = 0;
export const updateModTable = () => {
    const modTable = createModTable();
    version++;
    core.updateVirtualFileSystem({ [`/modulation${version}`]: [modTable] });
    modVisualizer.bufferDisplay.setBuffer(modTable);
};

