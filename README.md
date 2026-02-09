# Obsidian
### Version 1
obsidian is a bass synthesizer.

## Voice Architecture
obsidian is a monophonic synth voice, that implements a 2d wavetable (4d if you really consider that a single wave table is 2d already but hey). Individual ratios can be adjusted so that you can morph through the 2d wavetables running at different harmonic intervals. 

Tone controls the phase modulation index. This can probably be expanded in the future to include other types of waveform modification (although PM is the most harmonically fruitful). 

### Changing Wavetables

The first argument of this function in the src/audio/main.js refers to the wavetable index. There's 7 total but you can add more. These are pulled from Serum at the moment. 
```
  Synth.modifyWavetable(4, 0);
  Synth.modifyWavetable(5, 1);
```

## Some Places for Improvement
### Variable Voice Architecture
2D wavetable is great, but the dials really make it clunky to use. Perhaps some more straightforward X/Y pad would be a better move here. 
