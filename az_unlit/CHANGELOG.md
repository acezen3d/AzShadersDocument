# Changelog

## v3.0.0
- Remove the `Az/ShadowCaster` shader. It has now been moved into Az Shadow shaders.
- Add `CutoffShadow` to all shaders, allowing a separate alpha clip threshold for the shadow caster pass.
- Add `AlphaToMask` to `Az/UnlitCutout`, `Az/UnlitTriplanarCutout`, and `Az/EmissionAnimationCutout` for Alpha to Coverage support.

## v2.1.0
- For `Az/UnlitCutout` and `Az/UnlitAlpha`, add back `ScreenUVStretch` and change it to `ScreenUVAspectMode`.
- For `Az/EmissionAnimationCutout` and `Az/EmissionAnimationAlpha`:
  - Add `EmissionMapPremultiplyAlpha` to specify whether the `alpha` channel of emission maps should be premultiplied.
  - Add `AlphaFromEmission` to use the `alpha` channel of the emission as the main alpha.
  - Add `Mask` and `MaskLevels`. For more details, please check the documents.
  - Add `ColorBlendRange`. For more details, please check the documents.
  - Add `ScreenUVAspectMode`.
  - Change `AnimationDuration` to `AnimationSpeed` for better control.
  - Add `AnimationDelay` and per-animation delay properties.
  - Adjust the value ranges of `AnimationSpeed` and per-animation speed properties.
  - Add `DisableShadowCasting` to control disabling shadow casting at the material level.
  - Add `AnimationUVOrder` and `AnimationColorOrder` to control the execution order of UV and color animations.
  - Improve the implementation of `AnimationUVWrapMode` to avoid sampling artifacts.
  - Change the default values of `EmissionColor` and `ColorBlendColor` to (0,0,0,1).
  - Optimize the property order for better display.

## v2.0.0
- Remove `ScreenUVStretch` from `Az/UnlitCutout` and `Az/UnlitAlpha`. The user can adjust the texture tiling to match the screen's aspect ratio.
- Add `Az/EmissionAnimationCutout` and `Az/EmissionAnimationAlpha`. They are super complex and powerful emission animation shaders, and also the best emission animation shaders in Koikatsu.

## v1.3.0
- Add `UVScroll` and `ScreenUVScroll` to the `Az/UnlitCutout` and `Az/UnlitAlpha` shaders.

## v1.2.0
- Add the `Az/ShadowCaster` shader.
- Add the `Az/UnlitTriplanarCutout` and `Az/UnlitTriplanarAlpha` shaders.

## v1.1.0
- Add support for `AlphaMask` of the game.
