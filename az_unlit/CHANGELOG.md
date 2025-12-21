# Changelog

## v1.1.0
- Add support for `AlphaMask` of the game.

## v1.2.0
- Add `Az/ShadowCaster` shader.
- Add `Az/UnlitTriplanarCutout` and `Az/UnlitTriplanarAlpha` shaders.

## v1.3.0
- Add `UVScroll` and `ScreenUVScroll` to `Az/UnlitCutout` and `Az/UnlitAlpha`.

## v2.0.0
- Remove `ScreenUVStretch` from `Az/UnlitCutout` and `Az/UnlitAlpha`. The user can adjust the texture tiling to match the screen's aspect ratio.
- Add `Az/EmissionAnimationCutout` and `Az/EmissionAnimationAlpha`. They are super complex and powerful emission animation shaders, and also the best emission animation shaders in Koikatsu.

## v2.1.0
- For `Az/UnlitCutout` and `Az/UnlitAlpha`, add back `ScreenUVStretch` and change it to `ScreenUVAspectMode`.
- For `Az/EmissionAnimationCutout` and `Az/EmissionAnimationAlpha`:
  - Add `EmissionMapPremultiplyAlpha` to specify whether `alpha` channel of emission maps should be premultiplied.
  - Add `AlphaFromEmission` to use `alpha` channel of the emission as the main alpha.
  - Add `Mask` and `MaskLevels`. For more details, please check the document.
  - Add `ColorBlendRange`. For more details, please check the document.
  - Add `ScreenUVAspectMode`.
  - Change `AnimationDuration` to `AnimationSpeed` for better control.
  - Add `AnimationDelay` and per-animation delay properties.
  - Adjust the value ranges of `AnimationSpeed` and per-animation speed properties.
  - Add `DisableShadowCasting` to control disabling shadow casting at the material level.
  - Add `AnimationUVOrder` and `AnimationColorOrder` to control the execution order of UV and color animations.
  - Improve the implementation of `AnimationUVWrapMode` to avoid sampling artifacts.
  - Change the default values of `EmissionColor` and `ColorBlendColor` to (0,0,0,1).
  - Optimize the property order for better display.
