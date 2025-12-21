# Az/UnlitCutout(Alpha) shader

- [Az/UnlitCutout(Alpha) shader](#azunlitcutoutalpha-shader)
  - [Az/UnlitCutout shader](#azunlitcutout-shader)
    - [Tags](#tags)
    - [Properties](#properties)
  - [Az/UnlitAlpha shader](#azunlitalpha-shader)
    - [Tags](#tags-1)
    - [Properties](#properties-1)
  - [Additional property descriptions](#additional-property-descriptions)
    - [ScreenUVAspectMode](#screenuvaspectmode)

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
| MainTex            | Texture2D(G)  | white         | Base color texture.                                                                                                                    |
| Color              | Color         | (1,1,1,1)     | Color tint of `MainTex`. `alpha` channel is also used.                                                                                 |
| UVScroll           | Float(0,1)    | 0             | Whether to animate the UV of `MainTex`, with the speed determined by its UV offsets.                                                   |
| ScreenTex          | Texture2D(G)  | white         | An extra color texture in screen space, will be blended with `MainTex` by `alpha` channel and `ScreenTexBlendType`.                    |
| ScreenColor        | Color         | (1,1,1,1)     | Color tint of `ScreenTex`. `alpha` channel is also used.                                                                               |
| ScreenUVAspectMode | Integer(0,2)  | 0             | See [Additional property descriptions/ScreenUVAspectMode](#screenuvaspectmode).                                                        |
| ScreenTexBlendType | Integer(0,11) | 1             | The blend type of `ScreenTex`. Its value is defined by [Blend type enum for color](../common/blend_type.md#blend-type-enum-for-color). |
| ScreenUVScroll     | Float(0,1)    | 0             | Whether to animate the UV of `ScreenTex`, with the speed determined by its UV offsets.                                                 |

## Az/UnlitAlpha shader
### Tags
- RenderType: `Transparent`
- Queue: `Transparent`

### Properties
(Same as `Az/UnlitCutout`)

## Additional property descriptions
### ScreenUVAspectMode
This property controls whether the screen space UVs take the screen's aspect ratio into account. Since screens are generally not square, sampling textures directly using screen space UVs can result in stretching. This property determines whether and along which axis the screen space UVs are fitted according to the screen's aspect ratio, ensuring that texture sampling remains its original proportions.

**Value 0**: ***Preserve***. The original screen space UVs remain unchanged.

**Value 1**: ***FitU***. The U (x-axis) is aligned and the V (y-axis) is scaled accordingly.

**Value 2**: ***FitV***. The V (y-axis) is aligned and the U (x-axis) is scaled accordingly.
