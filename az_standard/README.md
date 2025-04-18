# Az Standard shaders
v5.3.0

- [Az Standard shaders](#az-standard-shaders)
  - [Shader correspondence](#shader-correspondence)
  - [Shader documents](#shader-documents)
  - [Changelog](#changelog)
  - [Notes](#notes)
  - [Download](#download)

## Shader correspondence
| Az Standard            | KKUSS      | Koikatsu built-in                   | Vanilla Plus                                  |
| ---------------------- | ---------- | ----------------------------------- | --------------------------------------------- |
| Az/StandardSkin        | KKUSS      | Shader Forge/main_skin              | xukmi/SkinPlus(Tess/Reflect/TessReflect)      |
|                        |            | Koikano/main_skin                   |                                               |
| Az/StandardSubpart     | -          | -                                   | -                                             |
| Az/StandardEye         | -          | Shader Forge/toon_eye_lod0          | xukmi/EyePlus(Tess)                           |
|                        |            | Koikano/main_eye                    |                                               |
| Az/StandardEyeW        | -          | Shader Forge/toon_eyew_lod0         | xukmi/EyeWPlus(Tess)                          |
|                        |            | Shader Forge/toon_nose_lod0         |                                               |
|                        |            | Koikano/main_eyew                   |                                               |
|                        |            | Koikano/main_nose                   |                                               |
| Az/StandardHair        | KKUSShair  | Shader Forge/main_hair              | xukmi/HairPlus(Tess/Reflect/TessReflect)      |
|                        |            | Shader Forge/main_hair_front        | xukmi/HairFrontPlus(Tess/Reflect/TessReflect) |
|                        |            | Koikano/hair_main_sun               |                                               |
|                        |            | Koikano/hair_main_front             |                                               |
| Az/StandardItemCutout  | KKUSSitem  | Shader Forge/main_item              | xukmi/MainItemPlus(Tess)                      |
|                        |            | Shader Forge/main_item_studio       | xukmi/MainItemStudioPlus(Tess)                |
|                        |            | Koikano/main_clothes_item           |                                               |
| Az/StandardItemAlpha   | KKUSSalpha | Shader Forge/main_item_studio_alpha | xukmi/MainItemAlphaPlus(Tess)                 |
|                        |            |                                     | xukmi/MainItemStudioAlphaPlus(Tess)           |
| Az/StandardClothCutout | -          | Shader Forge/main_opaque            | xukmi/MainOpaquePlus(Tess)                    |
|                        |            | Shader Forge/main_opaque2           |                                               |
|                        |            | Koikano/main_clothes_opaque         |                                               |
| Az/StandardClothAlpha  | -          | Shader Forge/main_alpha             | xukmi/MainAlphaPlus(Tess)                     |
|                        |            | Koikano/main_clothes_alpha          |                                               |
| Az/StandardLiteCutout  | -          | -                                   | -                                             |
| Az/StandardLiteAlpha   | -          | -                                   | -                                             |
| Az/StandardExtraStyle  | -          | -                                   | -                                             |
| Az/StandardDebug       | -          | -                                   | xukmi/Debug/WireframeTess                     |

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
- [Az/StandardDebug shader](az_standard_debug_shader.md)

## Changelog
[Changelog](CHANGELOG.md)

## Notes
- Az Standard shaders support most Unity Standard shader properties, see [Compared to Unity Standard shader](compared_to_unity_standard_shader.md).
- Az Standard shaders support and improve properties of KKUSS shaders, see [Compared to KKUSS shaders](compared_to_kkuss_shaders.md).
- General albedo stack order:\
  (Underlay and Overlay)ed `MainTex` -> `ColorMask` (if it exists) -> `BaseColor`-> `DrawnMap` -> `DetailAlbedo(2)`. 

## Download
https://www.patreon.com/posts/102947265