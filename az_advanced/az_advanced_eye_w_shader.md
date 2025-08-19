# Az/AdvancedEyeW shader

- [Az/AdvancedEyeW shader](#azadvancedeyew-shader)
  - [Tags](#tags)
  - [Properties](#properties)
    - [🏷️Alpha Clip and Render Options](#️alpha-clip-and-render-options)
    - [🏷️Main PBR](#️main-pbr)
    - [🏷️Koikatsu and Extension](#️koikatsu-and-extension)
    - [🏷️Lighting](#️lighting)
    - [🏷️Mesh](#️mesh)

## Tags
- RenderType: `Transparent`
- Queue: `Transparent`-1

## Properties
### 🏷️Alpha Clip and Render Options
| Name       | Type           | Default value | Description                                                                            |
| ---------- | -------------- | ------------- | -------------------------------------------------------------------------------------- |
| Cutoff     | Float(0,1)     | 0.5           | See [Cutoff](../common/alpha_clip_and_render_options_property_descriptions.md#cutoff). |
| Cull       | Integer(0,2)   | 0             | See [Cull](../common/alpha_clip_and_render_options_property_descriptions.md#cull).     |
| ZWrite     | Integer(0,1)   | 0, *explicit* | See [ZWrite](../common/alpha_clip_and_render_options_property_descriptions.md#zwrite). |
| StencilRef | Integer(0,255) | 8             | The stencil reference value.                                                           |

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

### 🏷️Mesh
| Name                                  | Type | Default value | Description |
| ------------------------------------- | ---- | ------------- | ----------- |
| [Mesh properties](mesh_properties.md) |      |               |             |
