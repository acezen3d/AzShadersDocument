# Detail properties

- [Detail properties](#detail-properties)
  - [Properties](#properties)
  - [Additional property description](#additional-property-description)
    - [DetailMask](#detailmask)
    - [MetallicGlossMapDetail(2)](#metallicglossmapdetail2)
    - [DetailMetallic(2)](#detailmetallic2)

## Properties
| Name                                           | Type                                                                                                     | Default value | Description                                                                                                     |
| ---------------------------------------------- | -------------------------------------------------------------------------------------------------------- | ------------- | --------------------------------------------------------------------------------------------------------------- |
| DetailSet                                      | Boolean                                                                                                  | true          | Whether to enable the detail set 1.                                                                             |
| DetailSet2                                     | Boolean                                                                                                  | false         | Whether to enable the detail set 2.                                                                             |
| DetailMask                                     | Texture✨                                                                                                 | red           | See [Additional property description/DetailMask](#detailmask).                                                  |
| ***UV Rotation***                              |                                                                                                          |               |                                                                                                                 |
| DetailUVRotation                               | Float(-1,1)                                                                                              | 0             | Detail set 1 UV rotation angle in units of $\pi$.                                                               |
| DetailUVRotation2                              | Float(-1,1)                                                                                              | 0             | Detail set 2 UV rotation angle in units of $\pi$.                                                               |
| ***Normal***                                   |                                                                                                          |               |                                                                                                                 |
| NormalMapDetail                                | Texture✨                                                                                                 | bump          | Detail normal map 1.                                                                                            |
| DetailNormalMapScale                           | Float(0,1)                                                                                               | 0             | Detail normal map scale 1.                                                                                      |
| NormalMapDetail2                               | Texture✨                                                                                                 | bump          | Detail normal map 2.                                                                                            |
| DetailNormalMapScale2                          | Float(0,1)                                                                                               | 0             | Detail normal map scale 2.                                                                                      |
| ***Albedo***                                   |                                                                                                          |               |                                                                                                                 |
| AlbedoMapDetail                                | Texture🌈                                                                                                 | white         | Detail albedo map 1, no need to be a greyscale but a color texture.                                             |
| DetailAlbedoMapScale                           | Float(0,1)                                                                                               | 0             | Detail albedo map scale 1.                                                                                      |
| AlbedoMapDetail2                               | Texture🌈                                                                                                 | white         | Detail albedo map 2, no need to be a greyscale but a color texture.                                             |
| DetailAlbedoMapScale2                          | Float(0,1)                                                                                               | 0             | Detail albedo map scale 2.                                                                                      |
| DetailAlbedoBlendType                          | Integer(0,11), see [Blend type enum for color](../common/blend_type.md#blend-type-enum-for-color)        | 1             | Detail albedo blend type, which determines how the detail albedo blends with the main albedo.                   |
| ***Metallic, Specular and Glossiness***        |                                                                                                          |               |                                                                                                                 |
| 🟠MetallicGlossMapDetail (SpecGlossMapDetail)   | Texture✨(🌈)                                                                                              | white         | See [Additional property description/MetallicGlossMapDetail(2)](#metallicglossmapdetail2).                      |
| 🟠DetailMetallic (DetailSpecular)               | Float(0,1)                                                                                               | 0             | See [Additional property description/DetailMetallic(2)](#detailmetallic2).                                      |
| DetailGlossiness                               | Float(0,1)                                                                                               | 0             | Detail glossiness 1.                                                                                            |
| 🟠MetallicGlossMapDetail2 (SpecGlossMapDetail2) | Texture✨(🌈)                                                                                              | white         | See [Additional property description/MetallicGlossMapDetail(2)](#metallicglossmapdetail2).                      |
| 🟠DetailMetallic2 (DetailSpecular2)             | Float(0,1)                                                                                               | 0             | See [Additional property description/DetailMetallic(2)](#detailmetallic2).                                      |
| DetailGlossiness2                              | Float(0,1)                                                                                               | 0             | Detail glossiness 2.                                                                                            |
| DetailMetallicBlendType                        | Integer(0,9), see [Blend type enum for non-color](../common/blend_type.md#blend-type-enum-for-non-color) | 2             | Detail metallic blend type, which determines how the detail metallic blends with the main metallic.             |
| 🟢DetailSpecularBlendType                       | Integer(0,11), see [Blend type enum for color](../common/blend_type.md#blend-type-enum-for-color)        | 1             | Detail specular blend type, which determines how the detail specular color blends with the main specular color. |
| DetailGlossinessBlendType                      | Integer(0,9), see [Blend type enum for non-color](../common/blend_type.md#blend-type-enum-for-non-color) | 2             | Detail glossiness blend type, which determines how the detail glossiness blends with the main glossiness.       |
| ***Occlusion***                                |                                                                                                          |               |                                                                                                                 |
| OcclusionMapDetail                             | Texture✨                                                                                                 | white         | Detail ambient occlusion map 1. The `green` channel is used.                                                    |
| DetailOcclusionStrength                        | Float(0,1)                                                                                               | 0             | Detail ambient occlusion strength 1. Works with `OcclusionMap`, `OcclusionStrength`, `OcclusionMapDetail`.      |
| OcclusionMapDetail2                            | Texture✨                                                                                                 | white         | Detail ambient occlusion map 2. The `green` channel is used.                                                    |
| DetailOcclusionStrength2                       | Float(0,1)                                                                                               | 0             | Detail ambient occlusion strength 2. Works with `OcclusionMap`, `OcclusionStrength`, `OcclusionMapDetail2`.     |

**Properties not supported by shaders**
| Name                     | Unsupported shaders                                                    |
| ------------------------ | ---------------------------------------------------------------------- |
| 🟢DetailSpecularBlendType | All except `Az/AdvancedItem*`, `Az/AdvancedCloth*`, `Az/AdvancedLite*` |

## Additional property description
### DetailMask
**This is not Koikatsu's original `DetailMask`!**\
Koikatsu uses this map to specify or control ramp based specular highlights, shadows and rim lights. But Az Standard shaders use this map to provide a mask for detail sets, i.e. on its `red`: detail set 1, `green`: detail set 2. 
If you want to use something like `DetailMask` of Koikatsu, please refer to `DrawnMap` (see [Drawn map properties](drawn_map_properties.md)).

### MetallicGlossMapDetail(2) 
- When `SPECULAR_SETUP` is turned off, they're `MetallicGlossMapDetail(2)`, detail metallic and glossiness map 1(2), metallic - ***red***, glossiness - ***alpha***.
- When `SPECULAR_SETUP` is turned on, they're `SpecGlossMapDetail(2)`, detail specular and glossiness map 1(2), specular color - ***rgb***, glossiness - ***alpha***.

### DetailMetallic(2)
- When `SPECULAR_SETUP` is turned off, they're `DetailMetallic(2)`. Detail metallic 1(2).
- When `SPECULAR_SETUP` is turned on, they're `DetailSpecular(2)`. Detail specular 1(2).