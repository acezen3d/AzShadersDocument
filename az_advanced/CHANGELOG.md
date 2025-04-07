# Changelog

## v1.0.0
- `Az/AdvancedExtraStyle` enhancement:
  - Remove `MatcapAddOrMultiply`.
  - Add `MatcapBlendSrc`, `MatcapBlendDst` and `MatcapBlendBase`.
  - Add `RimLightBlendSrc`, `RimLightBlendDst` and `RimLightBlendBase`.
  - Add `CustomMainLightSpace`.
  - Add the ring feature.
- Optimize `Az/AdvancedItemAlpha` and `Az/AdvancedClothAlpha` shaders to include a depth prepass for depth pre-writing when `ZWrite` is `On`.
- Add `Az/AdvancedItemAlphaAlt` and `Az/AdvancedClothAlphaAlt` to support correctly ordered two-sided transparent rendering.
- Enable the specular setup support on the cloth and item shaders.
  - Add `SPECULAR_SETUP` keyword and `SpecColor`, `DetailSpecularBlendType` properties.
  - When switching to the specular setup, the original metallic-related properties are interpreted as their specular counterparts:
    - `MetallicGlossMap` -> `SpecGlossMap`.
    - `MetallicGlossMapDetail(2)` -> `SpecGlossMapDetail(2)`.
    - `DetailMetallic` -> `DetailSpecular`.
- Major optimization of the liquid feature:
  - Layered rendering of the liquid to make it more realistic.
  - Add `LiquidFTopUV`, `LiquidFBotUV`, `LiquidBTopUV`, `LiquidBBotUV`, `LiquidFaceUV`, `LiquidFootUV` to support individual UV offsets, uniform scaling, and rotation for each area.
  - Add `LiquidAlphaFactors`, `LiquidAlbedoFactors`, `LiquidNormalFactors`, `LiquidShadowFactors` and `LiquidLightingFactors` to provide fine control for the corresponding terms.
  - Add `LiquidBlendMultiplier` to control the blending strength between the liquid and the surface.
- Add `Color4` to the color mask properties.
- Update the document.

## v1.1.0
- Rename `LiquidBaseColor` to `LiquidColor`.
- Update the document.

## v1.2.0
- Add `Az/AdvancedLiteCutout`, `Az/AdvancedLiteAlpha` and `Az/AdvancedLiteAlphaAlt`shaders.
- Fix the issue that the eyes lost the highlight areas (`overtex1` and `overtex2`) when `IgnoreOverTexUV` is 0.
- Fix `MatcapCancelCameraRolling` not working properly in `Az/AdvancedExtraStyle`.
- Change the render type and default render queue of `Az/AdvancedExtraStyle`.
- Update the document.

## v1.2.1
- Fix the two matcaps not blending correctly in `Az/AdvancedExtraStyle`.

## v1.3.0
- Remove the intentional ignoring of the offset and tiling for `Texture2` and `Texture3` to fix the issue where certain plugins in Koikatsu attempt to manipulate them but have no effect.
- Fix the uv is not passed in the depth prepass in `Az/AdvancedClothAlpha`, `Az/AdvancedItemAlpha` and `Az/AdvancedLiteAlpha`.
- Add alpha dithering transparency feature to `Az/AdvancedClothCutout`, `Az/AdvancedItemCutout` and `Az/AdvancedLiteCutout`.
- Update the document.