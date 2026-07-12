# Az/UnlitCutout(Alpha) shader

- [Az/UnlitCutout(Alpha) shader](#azunlitcutoutalpha-shader)
  - [Az/UnlitCutout shader](#azunlitcutout-shader)
    - [Tags](#tags)
    - [Properties](#properties)
  - [Az/UnlitAlpha shader](#azunlitalpha-shader)
    - [Tags](#tags-1)
    - [Properties](#properties-1)

## Az/UnlitCutout shader
### Tags
- RenderType: `TransparentCutout`
- Queue: `AlphaTest`

### Properties
| Name               | Type          | Default value | Description                                                                                                                            |
| ------------------ | ------------- | ------------- | -------------------------------------------------------------------------------------------------------------------------------------- |
| AlphaMask          | Texture2D(G)  | white         | See [AlphaMask](../common/alpha_clip_and_render_options_property_descriptions.md#alphamask).                                           |
| Cutoff             | Float(0,1)    | 0.5           | See [Cutoff](../common/alpha_clip_and_render_options_property_descriptions.md#cutoff).                                                 |
| Cull               | Integer(0,2)  | 0             | See [Cull](../common/alpha_clip_and_render_options_property_descriptions.md#cull).                                                     |
| MainTex            | Texture2D(G)  | white         | The base color texture.                                                                                                                |
| Color              | Color         | (1,1,1,1)     | The tint color of `MainTex`. The `alpha` channel is also used.                                                                         |
| UVScroll           | Float(0,1)    | 0             | Whether to animate the UV of `MainTex`, with the speed determined by its UV offsets.                                                   |
| ScreenTex          | Texture2D(G)  | white         | An extra color texture in screen space. It will be blended with `MainTex` by the `alpha` channel and `ScreenTexBlendType`.             |
| ScreenColor        | Color         | (1,1,1,1)     | The tint color of `ScreenTex`. The `alpha` channel is also used.                                                                       |
| ScreenUVAspectMode | Integer(0,2)  | 0             | See [ScreenUVAspectMode](../common/misc_property_descriptions.md#screenuvaspectmode).                                                  |
| ScreenTexBlendType | Integer(0,11) | 1             | The blend type of `ScreenTex`. Its value is defined by [Blend type enum for color](../common/blend_type.md#blend-type-enum-for-color). |
| ScreenUVScroll     | Float(0,1)    | 0             | Whether to animate the UV of `ScreenTex`, with the speed determined by its UV offsets.                                                 |

## Az/UnlitAlpha shader
### Tags
- RenderType: `Transparent`
- Queue: `Transparent`

### Properties
(Same as `Az/UnlitCutout`)
