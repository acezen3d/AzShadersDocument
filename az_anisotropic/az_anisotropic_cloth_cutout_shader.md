# Az/AnisotropicClothCutout shader

- [Az/AnisotropicClothCutout shader](#azanisotropicclothcutout-shader)
  - [Tags](#tags)
  - [Properties](#properties)
    - [🏷️Alpha Clip and Render Options](#️alpha-clip-and-render-options)
    - [🏷️Main PBR](#️main-pbr)
    - [🏷️Extra PBR](#️extra-pbr)
    - [🏷️Dither](#️dither)
    - [🏷️Stocking](#️stocking)
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
| AlphaMask          | Texture2D(G) | white         | See [AlphaMask](../common/alpha_clip_and_render_options_property_descriptions.md#alphamask).                   |
| Cutoff             | Float(0,1)   | 0.5           | See [Cutoff](../common/alpha_clip_and_render_options_property_descriptions.md#cutoff).                         |
| NormalBackFaceFlip | Boolean      | false         | See [NormalBackFaceFlip](../common/alpha_clip_and_render_options_property_descriptions.md#normalbackfaceflip). |
| Cull               | Integer(0,2) | 0             | See [Cull](../common/alpha_clip_and_render_options_property_descriptions.md#cull).                             |

### 🏷️Main PBR
| Name                                          | Type | Default value | Description |
| --------------------------------------------- | ---- | ------------- | ----------- |
| [Main PBR properties](main_pbr_properties.md) |      |               |             |

### 🏷️Extra PBR
| Name                                            | Type | Default value | Description |
| ----------------------------------------------- | ---- | ------------- | ----------- |
| [Extra PBR properties](extra_pbr_properties.md) |      |               |             |

### 🏷️Dither
| Name                                      | Type | Default value | Description |
| ----------------------------------------- | ---- | ------------- | ----------- |
| [Dither properties](dither_properties.md) |      |               |             |

### 🏷️Stocking
| Name                                          | Type | Default value | Description |
| --------------------------------------------- | ---- | ------------- | ----------- |
| [Stocking properties](stocking_properties.md) |      |               |             |

### 🏷️Detail
| Name                                      | Type | Default value | Description |
| ----------------------------------------- | ---- | ------------- | ----------- |
| [Detail properties](detail_properties.md) |      |               |             |

### 🏷️Koikatsu and Extension
| Name                                      | Type | Default value | Description |
| ----------------------------------------- | ---- | ------------- | ----------- |
| [Liquid properties](liquid_properties.md) |      |               |             |

### 🏷️Lighting
| Name                                          | Type | Default value | Description |
| --------------------------------------------- | ---- | ------------- | ----------- |
| [Lighting properties](lighting_properties.md) |      |               |             |

### 🏷️Mesh
| Name                                  | Type | Default value | Description |
| ------------------------------------- | ---- | ------------- | ----------- |
| [Mesh properties](mesh_properties.md) |      |               |             |
