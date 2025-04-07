# Az/MatcapAlpha shader

- [Az/MatcapAlpha shader](#azmatcapalpha-shader)
  - [Setup](#setup)
  - [Properties](#properties)
    - [🏷️Alpha Clip and Render Options](#️alpha-clip-and-render-options)
    - [🏷️Main PBR](#️main-pbr)
    - [🏷️Detail](#️detail)
    - [🏷️Koikatsu and Extension](#️koikatsu-and-extension)
    - [🏷️Lighting](#️lighting)
    - [🏷️Tessellation](#️tessellation)
    - [🏷️Displacement](#️displacement)

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
| Name               | Type          | Default value | Description                                          |
| ------------------ | ------------- | ------------- | ---------------------------------------------------- |
| AlphaMask          | Texture       | white         | Same as Az Standard shaders.                         |
| Cutoff             | Float(0,1)    | 0.5           | Same as Az Standard shaders.                         |
| NormalBackFaceFlip | Boolean       | false         | Same as Az Standard shaders.                         |
| BlendSrc           | Integer(0,10) | 5             | see [Blend mode enum](blend_mode.md#blend-mode-enum) |
| BlendDst           | Integer(0,10) | 10            | see [Blend mode enum](blend_mode.md#blend-mode-enum) |
| PREMULTIPLY_ALPHA  | Keyword       | false         | Same as Az Standard shaders.                         |

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