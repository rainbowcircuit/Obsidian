import { el } from '@elemaudio/core';
import { core } from './main';

export const parameters = {
    gate: 0,

    ampEnvelope: {
        ampAtk: 0.001,
        ampDcy: 1,
        ampSus: 1,
        ampRls: 0.001,
    },

    pitchEnvelope: {
        pitchAtk: 0.2,
        pitchRls: 1,
    },

    subOscillator: {
        subLvl: 1,
        subTone: 1,
        subOct: 0.5,
    },

    mainOscillator: {
        freq: 100,
        tblPos: 0,
        modTone: 0,
        filterCf: 1, 
        usnVoice: 0.5,
        usnDetune: 0.0,
    },

    modTable: {
        duration: 0.75,
        fadeIn: 0.001,
        fadeOut: 0.001,
        shapeBld: 0.5,

        wave1: {
            freq: 0,
            amp: 1,
            phase: 0.5,
            accel: 0.5,
            shapeX: 0.5,
            shapeY: 0.5,
        },

        wave2: {
            freq: 0,
            amp: 1,
            phase: 1,
            accel: 0.5,
            shapeX: 0.5,
            shapeY: 0.5,
        },
    },
};

export function buildAudioState() {
    const p = parameters;
    return {
        gate: el.const({ key: 'gate', value: p.gate }),

        ampEnvelope: {
            ampAtk: el.sm(el.const({ key: 'ampAtk', value: p.ampEnvelope.ampAtk })),
            ampDcy: el.sm(el.const({ key: 'ampDcy', value: p.ampEnvelope.ampDcy })),
            ampSus: el.sm(el.const({ key: 'ampSus', value: p.ampEnvelope.ampSus })),
            ampRls: el.sm(el.const({ key: 'ampRls', value: p.ampEnvelope.ampRls })),
        },

        pitchEnvelope: {
            pitchAtk: el.sm(el.const({ key: 'pitchAtk', value: p.pitchEnvelope.pitchAtk })),
            pitchRls: el.sm(el.const({ key: 'pitchRls', value: p.pitchEnvelope.pitchRls })),
        },

        subOscillator: {
            subLvl: el.sm(el.const({ key: 'subLvl', value: p.subOscillator.subLvl })),
            subTone: el.sm(el.const({ key: 'subTone', value: p.subOscillator.subTone })),
            subOct: el.sm(el.const({ key: 'subOct', value: p.subOscillator.subOct })),
        },

        mainOscillator: {
            freq: el.sm(el.const({ key: 'freq', value: p.mainOscillator.freq })),
            tblPos: el.sm(el.const({ key: 'tblPos', value: p.mainOscillator.tblPos })),
            modTone: el.sm(el.const({ key: 'modTone', value: p.mainOscillator.modTone })),
            filterCf: el.sm(el.const({ key: 'filterCf', value: p.mainOscillator.filterCf })),
            usnVoice: el.sm(el.const({ key: 'usnVoice', value: p.mainOscillator.usnVoice })),
            usnDetune: el.sm(el.const({ key: 'usnDetune', value: p.mainOscillator.usnDetune })),
        },

        modTable: {
            duration: el.sm(el.const({ key: 'duration', value: p.modTable.duration })),
            fadeIn: el.sm(el.const({ key: 'fadeIn', value: p.modTable.fadeIn })),
            fadeOut: el.sm(el.const({ key: 'fadeOut', value: p.modTable.fadeOut })),
            shapeBld: el.sm(el.const({ key: 'shapeBld', value: p.modTable.shapeBld })),

            wave1: {
                freq: el.sm(el.const({ key: 'wave1Freq', value: p.modTable.wave1.freq })),
                amp: el.sm(el.const({ key: 'wave1Amp', value: p.modTable.wave1.amp })),
                phase: el.sm(el.const({ key: 'wave1Phase', value: p.modTable.wave1.phase })),
                accel: el.sm(el.const({ key: 'wave1Accel', value: p.modTable.wave1.accel })),
                shapeX: el.sm(el.const({ key: 'wave1ShapeX', value: p.modTable.wave1.shapeX })),
                shapeY: el.sm(el.const({ key: 'wave1ShapeY', value: p.modTable.wave1.shapeY })),
            },

            wave2: {
                freq: el.sm(el.const({ key: 'wave2Freq', value: p.modTable.wave2.freq })),
                amp: el.sm(el.const({ key: 'wave2Amp', value: p.modTable.wave2.amp })),
                phase: el.sm(el.const({ key: 'wave2Phase', value: p.modTable.wave2.phase })),
                accel: el.sm(el.const({ key: 'wave2Accel', value: p.modTable.wave2.accel })),
                shapeX: el.sm(el.const({ key: 'wave2ShapeX', value: p.modTable.wave2.shapeX })),
                shapeY: el.sm(el.const({ key: 'wave2ShapeY', value: p.modTable.wave2.shapeY })),
            },
        },
    };
}

export function setParam(path, value) {
    const keys = path.split('.');
    let params = parameters;
    for (let i = 0; i < keys.length - 1; i++) params = params[keys[i]];
    params[keys[keys.length - 1]] = value;
}