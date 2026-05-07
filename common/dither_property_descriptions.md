# Dither property descriptions

- [Dither property descriptions](#dither-property-descriptions)
    - [Dither](#dither)
    - [DitherPattern](#ditherpattern)
    - [DitherPatternLevel](#ditherpatternlevel)
    - [DitherAnimationType](#ditheranimationtype)
    - [DitherAnimationFPS](#ditheranimationfps)
    - [DitherAnimationParams](#ditheranimationparams)
    - [UseNativeShadowDither](#usenativeshadowdither)

### Dither
Whether to enable the alpha dithering.

### DitherPattern
The dither pattern texture. The `red` channel is used.

### DitherPatternLevel
The dither pattern sampling mipmap level.

### DitherAnimationType
The dither animation type.

| Value | Dither animation type |
| ----- | --------------------- |
| 0     | ***NoAnimation***     |
| 1     | ***UVScrolling***     |
| 2     | ***SpriteCycling***   |

### DitherAnimationFPS
The FPS of the dither animation. -2: `1/smoothDt`; -1: `1/dt`; 0~120: value itself.

### DitherAnimationParams
The dither animation parameters.

### UseNativeShadowDither
Whether to use native semitransparent shadow dithering.
