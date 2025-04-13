# Az/UnlitCutout(Alpha) shader

- [Az/UnlitCutout(Alpha) shader](#azunlitcutoutalpha-shader)
  - [Az/UnlitCutout shader](#azunlitcutout-shader)
    - [Properties](#properties)
  - [Az/UnlitAlpha shader](#azunlitalpha-shader)
    - [Properties](#properties-1)
  - [Additional property descriptions](#additional-property-descriptions)
    - [ScreenUVStretch](#screenuvstretch)

## Az/UnlitCutout shader
### Properties
| Name               | Type          | Default value | Description                                                                                                                            |
| ------------------ | ------------- | ------------- | -------------------------------------------------------------------------------------------------------------------------------------- |
| AlphaMask          | Texture2D(G)  | white         | See [AlphaMask](../common/alpha_clip_and_render_options_property_descriptions.md#alphamask).                                           |
| Cutoff             | Float(0,1)    | 0.5           | See [Cutoff](../common/alpha_clip_and_render_options_property_descriptions.md#cutoff).                                                 |
| Cull               | Integer(0,2)  | 0             | See [Cull](../common/alpha_clip_and_render_options_property_descriptions.md#cull).                                                     |
| MainTex            | Texture2D(G)  | white         | Base color texture.                                                                                                                    |
| Color              | Color         | (1,1,1,1)     | Color tint of `MainTex`. `alpha` channel is also used.                                                                                 |
| ScreenTex          | Texture2D(G)  | white         | An extra color texture in screen space, will be blended with `MainTex` by `alpha` channel and `ScreenTexBlendType`.                    |
| ScreenColor        | Color         | (1,1,1,1)     | Color tint of `ScreenTex`. `alpha` channel is also used.                                                                               |
| ScreenTexBlendType | Integer(0,11) | 1             | The blend type of `ScreenTex`. Its value is defined by [Blend type enum for color](../common/blend_type.md#blend-type-enum-for-color). |
| ScreenUVStretch    | Integer(-1,1) | 0             | See [Additional property descriptions/ScreenUVStretch](#screenuvstretch).                                                              |

## Az/UnlitAlpha shader
### Properties
(Same as `Az/UnlitCutout`)

## Additional property descriptions
### ScreenUVStretch
Determines whether to stretch the screen space UVs to match the aspect ratio of `ScreenTex`.

**Value -1**: The U (x-axis) is aligned, and the V (y-axis) is stretched.

**Value 0**: No stretching; the original UVs are preserved.

**Value 1**: The V (y-axis) is aligned, and the U (x-axis) is stretched.