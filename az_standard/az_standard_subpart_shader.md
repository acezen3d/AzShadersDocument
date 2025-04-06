# Az/StandardSubpart shader

- [Az/StandardSubpart shader](#azstandardsubpart-shader)
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
  - [Albedo stack](#albedo-stack)
    - [Order](#order)

## Shader compatibility
### Target shaders
This shader can be used as a replacement for the following shaders:
- (None)

### Renderers
This shader can be used with the following renderers:
- Tooth
- Tongue
- Genital
- Etc.

## Setup
- RenderType: `TransparentCutout`
- Cull: [property]
- SrcBlend: `One`
- DstBlend: `Zero`
- ZWrite: `On`
- Queue: `AlphaTest`-100
- Alpha mode keyword: `ALPHATEST_ON`

## Properties
### 🏷️Alpha Clip and Render Options
| Name               | Type         | Default value | Description                                                                        |
| ------------------ | ------------ | ------------- | ---------------------------------------------------------------------------------- |
| Cutoff             | Float(0,1)   | 0.5           | Alpha clip threshold value. Pixels with an alpha value below this will be clipped. |
| NormalBackFaceFlip | Boolean      | false         | Whether to flip the normals of the back faces.                                     |
| Cull               | Integer(0,2) | 0             | Face culling, 0: cull off, 1: cull front, 2: cull back.                            |

### 🏷️Main PBR
| Name                                          | Type | Default value | Description |
| --------------------------------------------- | ---- | ------------- | ----------- |
| [Main PBR properties](main_pbr_properties.md) |      |               |             |

### 🏷️Detail            
| Name                                      | Type | Default value | Description |
| ----------------------------------------- | ---- | ------------- | ----------- |
| [Detail properties](detail_properties.md) |      |               |             |

### 🏷️Koikatsu and Extension
| Name                                            | Type                                                                                              | Default value | Description                                                                               |
| ----------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------- | ----------------------------------------------------------------------------------------- |
| Color                                           | Color                                                                                             | (1,1,1,1)     | ⚜️***Extension property***. The color adjustment, will be multiplied with the main albedo. |
| OverTex                                         | Texture                                                                                           | white         | ⚜️***Extension property***. A custom over texture, using UV0.                              |
| OverColor                                       | Color                                                                                             | (1,1,1,1)     | ⚜️***Extension property***. `OverTex` color tint.                                          |
| OverTexBlendType                                | Integer(0,11), see [Blend type enum for color](../common/blend_type.md#blend-type-enum-for-color) | 1             | ⚜️***Extension property***. `OverTex` blend type.                                          |
| [Drawn map properties](drawn_map_properties.md) |                                                                                                   |               |                                                                                           |

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

## Albedo stack 
### Order
`MainTex`  
-> `OverTex`, `OverColor`, `OverTexBlendType`   
-> `BaseColor` (🌈***Multiply***)  
-> `DrawnMap`  
-> `AlbedoMapDetail(2)`, `DetailAlbedoBlendType(2)`
