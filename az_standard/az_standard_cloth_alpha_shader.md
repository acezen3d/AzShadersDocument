# Az/StandardClothAlpha shader

- [Az/StandardClothAlpha shader](#azstandardclothalpha-shader)
  - [Shader compatibility](#shader-compatibility)
    - [Target shaders](#target-shaders)
    - [Renderers](#renderers)
  - [Setup](#setup)
  - [Properties](#properties)
    - [🏷️Alpha Clip and Render Options](#️alpha-clip-and-render-options)
    - [🏷️Main PBR](#️main-pbr)
    - [🏷️Detail](#️detail)
    - [🏷️Koikatsu and Extension](#️koikatsu-and-extension)
    - [🏷️Lighting](#️lighting)
    - [🏷️Tessellation](#️tessellation)
    - [🏷️Displacement](#️displacement)
  - [Notes](#notes)

## Shader compatibility
### Target shaders
This shader can be used as a replacement for the following shaders:
- `Shader Forge/main_alpha`
- `Koikano/main_clothes_alpha`

### Renderers
This shader can be used with the following renderers:
- Clothing

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
| Name               | Type                                                                          | Default value | Description                                                                                                                                     |
| ------------------ | ----------------------------------------------------------------------------- | ------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| AlphaMask          | Texture                                                                       | white         | Alpha mask of Koikatsu, no clip - `yellow`, clip when cloth on - `green`, clip when cloth 1/2 - `black`. You may not need to touch it.          |
| Alpha              | Float(0,1)                                                                    | 1             | Alpha control, will be multiplied with `MainTex` `alpha` channel to get the final alpha value.                                                  |
| Cutoff             | Float(0,1)                                                                    | 0.5           | Alpha clip threshold value. Pixels with an alpha value below this will be clipped.                                                              |
| NormalBackFaceFlip | Boolean                                                                       | false         | Whether to flip the normals of the back faces.                                                                                                  |
| Cull               | Integer(0,2)                                                                  | 0             | Face culling, 0: cull off, 1: cull front, 2: cull back.                                                                                         |
| BlendSrc           | Integer(0,10), see [Blend mode enum](../common/blend_mode.md#blend-mode-enum) | 5             | Source (current color) blend mode.                                                                                                              |
| BlendDst           | Integer(0,10), see [Blend mode enum](../common/blend_mode.md#blend-mode-enum) | 10            | Destination (frame buffer) blend mode.                                                                                                          |
| ZWrite             | Integer(0,1)                                                                  | 1             | Whether to update the depth buffer.                                                                                                             |
| PREMULTIPLY_ALPHA  | Keyword                                                                       | false         | Whether to switch to premultiplied alpha mode. When enabled, it will turn on `ALPHAPREMULTIPLY_ON`; otherwise, it will turn on `ALPHABLEND_ON`. |

### 🏷️Main PBR
| Name                                          | Type | Default value | Description |
| --------------------------------------------- | ---- | ------------- | ----------- |
| [Main PBR properties](main_pbr_properties.md) |      |               |             |

### 🏷️Detail
| Name                                      | Type | Default value | Description |
| ----------------------------------------- | ---- | ------------- | ----------- |
| [Detail properties](detail_properties.md) |      |               |             |

### 🏷️Koikatsu and Extension
| Name                                            | Type | Default value | Description |
| ----------------------------------------------- | ---- | ------------- | ----------- |
| [Liquid properties](liquid_properties.md)       |      |               |             |
| [Drawn map properties](drawn_map_properties.md) |      |               |             |

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

## Notes
- When `PREMULTIPLY_ALPHA` is off, the blend modes are commonly set to:
  - `BlendSrc`: 5
  - `BlendDst`: 10
- When `PREMULTIPLY_ALPHA` is on, the blend modes are commonly set to:
  - `BlendSrc`: 1
  - `BlendDst`: 10