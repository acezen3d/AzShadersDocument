# Az/AdvancedLiteAlpha shader

- [Az/AdvancedLiteAlpha shader](#azadvancedlitealpha-shader)
  - [Shader compatibility](#shader-compatibility)
    - [Target shaders](#target-shaders)
    - [Renderers](#renderers)
  - [Setup](#setup)
  - [Properties](#properties)
    - [🏷️Alpha Clip and Render Options](#️alpha-clip-and-render-options)
    - [🏷️Main PBR](#️main-pbr)
    - [🏷️Lighting](#️lighting)
    - [🏷️Tessellation](#️tessellation)
    - [🏷️Displacement](#️displacement)

## Shader compatibility
### Target shaders
This shader can be used as a replacement for the following shaders:
- (None)

### Renderers
This shader can be used with the following renderers:
- Clothing
- Item
- Studio item

## Setup
- RenderType: `Transparent`
- Cull: [property]
- SrcBlend: [property]
- DstBlend: [property]
- ZWrite: [property]
- Queue: `Transparent`
- Alpha mode keyword: `ALPHABLEND_ON` or `ALPHAPREMULTIPLY_ON`

## Properties
### 🏷️Alpha Clip and Render Options
| Name               | Type                                                                          | Default value | Description                                                                                    |
| ------------------ | ----------------------------------------------------------------------------- | ------------- | ---------------------------------------------------------------------------------------------- |
| AlphaMask          | Texture🌈                                                                      | white         | See [AlphaMask](../common/misc_property_descriptions.md#alphamask).                            |
| Alpha              | Float(0,1)                                                                    | 1             | Alpha control, will be multiplied with `MainTex` `alpha` channel to get the final alpha value. |
| Cutoff             | Float(0,1)                                                                    | 0.5           | See [Cutoff](../common/misc_property_descriptions.md#cutoff).                                  |
| NormalBackFaceFlip | Boolean                                                                       | false         | See [NormalBackFaceFlip](../common/misc_property_descriptions.md#normalbackfaceflip).          |
| Cull               | Integer(0,2)                                                                  | 0             | See [Cull](../common/misc_property_descriptions.md#cull).                                      |
| BlendSrc           | Integer(0,10), see [Blend mode enum](../common/blend_mode.md#blend-mode-enum) | 5             | See [BlendSrc](../common/misc_property_descriptions.md#blendsrc).                              |
| BlendDst           | Integer(0,10), see [Blend mode enum](../common/blend_mode.md#blend-mode-enum) | 10            | See [BlendDst](../common/misc_property_descriptions.md#blenddst).                              |
| ZWrite             | Integer(0,1)                                                                  | 1             | See [ZWrite](../common/misc_property_descriptions.md#zwrite).                                  |
| PREMULTIPLY_ALPHA  | Keyword                                                                       | false         | See [PREMULTIPLY_ALPHA](../common/misc_property_descriptions.md#premultiply_alpha).            |

### 🏷️Main PBR
| Name                                          | Type | Default value | Description |
| --------------------------------------------- | ---- | ------------- | ----------- |
| [Main PBR properties](main_pbr_properties.md) |      |               |             |

### 🏷️Lighting
| Name                                          | Type | Default value | Description |
| --------------------------------------------- | ---- | ------------- | ----------- |
| [Lighting properties](lighting_properties.md) |      |               |             |

### 🏷️Tessellation
| Name                                                  | Type | Default value | Description |
| ----------------------------------------------------- | ---- | ------------- | ----------- |
| [Tessellation properties](tessellation_properties.md) |      |               |             |

### 🏷️Displacement
| Name                                                  | Type | Default value | Description |
| ----------------------------------------------------- | ---- | ------------- | ----------- |
| [Displacement properties](displacement_properties.md) |      |               |             |