# Az/AdvancedEyeW shader

- [Az/AdvancedEyeW shader](#azadvancedeyew-shader)
  - [Shader compatibility](#shader-compatibility)
    - [Target shaders](#target-shaders)
    - [Renderers](#renderers)
  - [Setup](#setup)
  - [Properties](#properties)
    - [🏷️Alpha Clip and Render Options](#️alpha-clip-and-render-options)
    - [🏷️Main PBR](#️main-pbr)
    - [🏷️Koikatsu and Extension](#️koikatsu-and-extension)
    - [🏷️Lighting](#️lighting)
    - [🏷️Tessellation](#️tessellation)
    - [🏷️Displacement](#️displacement)

## Shader compatibility
### Target shaders
This shader can be used as a replacement for the following shaders:
- `Shader Forge/toon_eyew_lod0`
- `Shader Forge/toon_nose_lod0`
- `Koikano/main_eyew`
- `Koikano/main_nose`

### Renderers
This shader can be used with the following renderers:
- Eye white (sclera)
- Eyebrow
- Eyeline
- Nose line

## Setup
- RenderType: `Transparent`
- Queue: `Transparent`-1
- Cull: [property]
- Blend source: `SrcAlpha`
- Blend destination: `OneMinusSrcAlpha`
- ZWrite: [property]
- Alpha mode keyword: `ALPHABLEND_ON`

## Properties
### 🏷️Alpha Clip and Render Options
| Name       | Type           | Default value       | Description                                                                            |
| ---------- | -------------- | ------------------- | -------------------------------------------------------------------------------------- |
| Cutoff     | Float(0,1)     | 0.5                 | See [Cutoff](../common/alpha_clip_and_render_options_property_descriptions.md#cutoff). |
| Cull       | Integer(0,2)   | 0                   | See [Cull](../common/alpha_clip_and_render_options_property_descriptions.md#cull).     |
| ZWrite     | Integer(0,1)   | 0, explicit default | See [ZWrite](../common/alpha_clip_and_render_options_property_descriptions.md#zwrite). |
| StencilRef | Integer(0,255) | 8                   | The stencil reference value.                                                           |

### 🏷️Main PBR
| Name                                          | Type | Default value | Description |
| --------------------------------------------- | ---- | ------------- | ----------- |
| [Main PBR properties](main_pbr_properties.md) |      |               |             |

### 🏷️Koikatsu and Extension
| Name  | Type  | Default value | Description                                                                         |
| ----- | ----- | ------------- | ----------------------------------------------------------------------------------- |
| Color | Color | (1,1,1,1)     | *Koikatsu property*. The color adjustment, will be multiplied with the main albedo. |

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