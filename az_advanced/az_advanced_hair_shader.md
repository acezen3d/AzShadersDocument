# Az/AdvancedHair shader

- [Az/AdvancedHair shader](#azadvancedhair-shader)
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

## Shader compatibility
### Target shaders
This shader can be used as a replacement for the following shaders:
- `Shader Forge/main_hair`
- `Shader Forge/main_hair_front`
- `Koikano/hair_main_sun`
- `Koikano/hair_main_sun_front`

### Renderers
This shader can be used with the following renderers:
- Hair

## Setup
- RenderType: `TransparentCutout`
- Cull: [property]
- SrcBlend: `One`
- DstBlend: `Zero`
- ZWrite: `On`
- Queue: `Geometry`
- Alpha mode keyword: `ALPHATEST_ON`

## Properties
### 🏷️Alpha Clip and Render Options
| Name               | Type         | Default value | Description                                                                           |
| ------------------ | ------------ | ------------- | ------------------------------------------------------------------------------------- |
| AlphaMask          | Texture🌈     | white         | See [AlphaMask](../common/misc_property_descriptions.md#alphamask).                   |
| Cutoff             | Float(0,1)   | 0.5           | See [Cutoff](../common/misc_property_descriptions.md#cutoff).                         |
| NormalBackFaceFlip | Boolean      | false         | See [NormalBackFaceFlip](../common/misc_property_descriptions.md#normalbackfaceflip). |
| Cull               | Integer(0,2) | 0             | See [Cull](../common/misc_property_descriptions.md#cull).                             |

### 🏷️Main PBR
| Name                                          | Type | Default value | Description |
| --------------------------------------------- | ---- | ------------- | ----------- |
| [Main PBR properties](main_pbr_properties.md) |      |               |             |

### 🏷️Detail
| Name                                      | Type | Default value | Description |
| ----------------------------------------- | ---- | ------------- | ----------- |
| [Detail properties](detail_properties.md) |      |               |             |

### 🏷️Koikatsu and Extension
| Name                                              | Type | Default value | Description |
| ------------------------------------------------- | ---- | ------------- | ----------- |
| [Color mask properties](color_mask_properties.md) |      |               |             |
| [Drawn map properties](drawn_map_properties.md)   |      |               |             |

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