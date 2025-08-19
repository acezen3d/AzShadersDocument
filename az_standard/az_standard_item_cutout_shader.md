# Az/StandardItemCutout shader

- [Az/StandardItemCutout shader](#azstandarditemcutout-shader)
  - [Tags](#tags)
  - [Properties](#properties)
    - [🏷️Alpha Clip and Render Options](#️alpha-clip-and-render-options)
    - [🏷️Main PBR](#️main-pbr)
    - [🏷️Detail](#️detail)
    - [🏷️Koikatsu and Extension](#️koikatsu-and-extension)
    - [🏷️Lighting](#️lighting)
    - [🏷️Mesh](#️mesh)

## Tags
- RenderType: `TransparentCutout`
- Queue: `AlphaTest`

## Properties
### 🏷️Alpha Clip and Render Options
| Name               | Type         | Default value | Description                                                                                                    |
| ------------------ | ------------ | ------------- | -------------------------------------------------------------------------------------------------------------- |
| Cutoff             | Float(0,1)   | 0.5           | See [Cutoff](../common/alpha_clip_and_render_options_property_descriptions.md#cutoff).                         |
| NormalBackFaceFlip | Boolean      | false         | See [NormalBackFaceFlip](../common/alpha_clip_and_render_options_property_descriptions.md#normalbackfaceflip). |
| Cull               | Integer(0,2) | 0             | See [Cull](../common/alpha_clip_and_render_options_property_descriptions.md#cull).                             |

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

### 🏷️Mesh
| Name                                  | Type | Default value | Description |
| ------------------------------------- | ---- | ------------- | ----------- |
| [Mesh properties](mesh_properties.md) |      |               |             |
