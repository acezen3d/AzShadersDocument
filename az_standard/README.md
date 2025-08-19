# Az Standard shaders
v5.5.0

- [Az Standard shaders](#az-standard-shaders)
  - [Shader documents](#shader-documents)
  - [Changelog](#changelog)
  - [Notes](#notes)
  - [Download](#download)

## Shader documents
- [Az/StandardSkin shader](az_standard_skin_shader.md)
- [Az/StandardSubpart shader](az_standard_subpart_shader.md)
- [Az/StandardEye shader](az_standard_eye_shader.md)
- [Az/StandardEyeW shader](az_standard_eye_w_shader.md)
- [Az/StandardHair shader](az_standard_hair_shader.md)
- [Az/StandardItemCutout shader](az_standard_item_cutout_shader.md)
- [Az/StandardItemAlpha shader](az_standard_item_alpha_shader.md)
- [Az/StandardClothCutout shader](az_standard_cloth_cutout_shader.md)
- [Az/StandardClothAlpha shader](az_standard_cloth_alpha_shader.md)
- [Az/StandardLiteCutout shader](az_standard_lite_cutout_shader.md)
- [Az/StandardLiteAlpha shader](az_standard_lite_alpha_shader.md)
- [Az/StandardExtraStyle shader](az_standard_extra_style_shader.md)

## Changelog
[Changelog](CHANGELOG.md)

## Notes
- Az Standard shaders support most Unity Standard shader properties, see [Compared to Unity Standard shader](compared_to_unity_standard_shader.md).
- Az Standard shaders support and improve properties of KKUSS shaders, see [Compared to KKUSS shaders](compared_to_kkuss_shaders.md).
- General albedo stack order:\
  (Underlay and Overlay)ed `MainTex` -> `ColorMask` (if it exists) -> `BaseColor`-> `DrawnMap` -> `DetailAlbedo(2)`. 

## Download
https://www.patreon.com/posts/102947265
