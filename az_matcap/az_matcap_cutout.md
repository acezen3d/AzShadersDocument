# Az/MatcapCutout shader

- [Az/MatcapCutout shader](#azmatcapcutout-shader)
  - [Setup](#setup)
  - [Properties](#properties)
    - [🏷️Alpha Clip and Render Options](#️alpha-clip-and-render-options)
    - [🏷️PBR Specular Setup](#️pbr-specular-setup)
    - [🏷️Detail](#️detail)
    - [🏷️Matcap Basic](#️matcap-basic)
    - [🏷️Matcap Mask and Fresnel](#️matcap-mask-and-fresnel)
    - [🏷️Matcap Texture Edit](#️matcap-texture-edit)
    - [🏷️Lighting](#️lighting)
    - [🏷️Tessellation](#️tessellation)
    - [🏷️Displacement](#️displacement)

## Setup
- RenderType: `TransparentCutout`
- Queue: `AlphaTest`
- Cull: [property]
- Blend source: `One`
- Blend destination: `Zero`
- ZWrite: `On`
- Alpha mode keyword: `ALPHATEST_ON`

## Properties
### 🏷️Alpha Clip and Render Options
| Name               | Type         | Default value | Description                                                                                                    |
| ------------------ | ------------ | ------------- | -------------------------------------------------------------------------------------------------------------- |
| AlphaMask          | Texture2D(G) | white         | See [AlphaMask](../common/alpha_clip_and_render_options_property_descriptions.md#alphamask).                   |
| Cutoff             | Float(0,1)   | 0.5           | See [Cutoff](../common/alpha_clip_and_render_options_property_descriptions.md#cutoff).                         |
| NormalBackFaceFlip | Boolean      | false         | See [NormalBackFaceFlip](../common/alpha_clip_and_render_options_property_descriptions.md#normalbackfaceflip). |
| Cull               | Integer(0,2) | 0             | See [Cull](../common/alpha_clip_and_render_options_property_descriptions.md#cull).                             |

### 🏷️PBR Specular Setup
| Name                                                              | Type | Default value | Description |
| ----------------------------------------------------------------- | ---- | ------------- | ----------- |
| [PBR specular setup properties](pbr_specular_setup_properties.md) |      |               |             |

### 🏷️Detail
| Name                                      | Type | Default value | Description |
| ----------------------------------------- | ---- | ------------- | ----------- |
| [Detail properties](detail_properties.md) |      |               |             |

### 🏷️Matcap Basic
| Name                                                  | Type | Default value | Description |
| ----------------------------------------------------- | ---- | ------------- | ----------- |
| [Matcap basic properties](matcap_basic_properties.md) |      |               |             |

### 🏷️Matcap Mask and Fresnel
| Name                                                                        | Type | Default value | Description |
| --------------------------------------------------------------------------- | ---- | ------------- | ----------- |
| [Matcap mask and fresnel properties](matcap_mask_and_fresnel_properties.md) |      |               |             |

### 🏷️Matcap Texture Edit
| Name                                                                | Type | Default value | Description |
| ------------------------------------------------------------------- | ---- | ------------- | ----------- |
| [Matcap texture edit properties](matcap_texture_edit_properties.md) |      |               |             |

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