# Az/UnlitTriplanarCutout(Alpha) shader

- [Az/UnlitTriplanarCutout(Alpha) shader](#azunlittriplanarcutoutalpha-shader)
  - [Az/UnlitTriplanarCutout shader](#azunlittriplanarcutout-shader)
    - [Tags](#tags)
    - [Properties](#properties)
  - [Az/UnlitTriplanarAlpha shader](#azunlittriplanaralpha-shader)
    - [Tags](#tags-1)
    - [Properties](#properties-1)
  - [Additional property descriptions](#additional-property-descriptions)
    - [BlendOrder](#blendorder)
    - [UVMode](#uvmode)
    - [UFlipModes and VFlipModes](#uflipmodes-and-vflipmodes)
    - [BlendOffsets, BlendPowers and BlendScales](#blendoffsets-blendpowers-and-blendscales)

## Az/UnlitTriplanarCutout shader
### Tags
- RenderType: `TransparentCutout`
- Queue: `AlphaTest`

### Properties
| Name         | Type         | Default value | Description                                                                                                                  |
| ------------ | ------------ | ------------- | ---------------------------------------------------------------------------------------------------------------------------- |
| AlphaMask    | Texture2D(G) | white         | See [AlphaMask](../common/alpha_clip_and_render_options_property_descriptions.md#alphamask).                                 |
| Cutoff       | Float(0,1)   | 0.5           | See [Cutoff](../common/alpha_clip_and_render_options_property_descriptions.md#cutoff).                                       |
| Cull         | Integer(0,2) | 0             | See [Cull](../common/alpha_clip_and_render_options_property_descriptions.md#cull).                                           |
| MainTex      | Texture2D(G) | white         | The base color texture.                                                                                                      |
| Color        | Color        | (1,1,1,1)     | The tint color of `MainTex`. The `alpha` channel is also used.                                                               |
| UseMainColor | Boolean      | false         | Whether to blend the main color (i.e., the product of `MainTex.rgb` and `Color.rgb`) with the triplanar textures.            |
| BlendOrder   | Integer(0,5) | 1             | See [Additional property descriptions/BlendOrder](#blendorder).                                                              |
| TextureX     | Texture2D(G) | white         | The texture projection along the X-axis onto the YZ-plane.                                                                   |
| ColorX       | Color        | (1,1,1,1)     | The tint color of `TextureX`.                                                                                                |
| TextureY     | Texture2D(G) | white         | The texture projection along the Y-axis onto the XZ-plane.                                                                   |
| ColorY       | Color        | (1,1,1,1)     | The tint color of `TextureY`.                                                                                                |
| TextureZ     | Texture2D(G) | white         | The texture projection along the Z-axis onto the XY-plane.                                                                   |
| ColorZ       | Color        | (1,1,1,1)     | The tint color of `TextureZ`.                                                                                                |
| UVScale      | Float(-2,2)  | 0             | The UV scale, calculated as $10^{\text{UVScale}}$.                                                                           |
| UVMode       | Integer(0,1) | 0             | See [Additional property descriptions/UVMode](#uvmode).                                                                      |
| UFlipModes   | Vector       | (0,0,0,0)     | See [Additional property descriptions/UFlipModes](#uflipmodes).                                                              |
| VFlipModes   | Vector       | (0,0,0,0)     | See [Additional property descriptions/VFlipModes](#vflipmodes).                                                              |
| BlendOffsets | Vector       | (0,0,0,0)     | See [Additional property descriptions/BlendOffsets, BlendPowers and BlendScales](#blendoffsets-blendpowers-and-blendscales). |
| BlendPowers  | Vector       | (1,1,1,0)     | See [Additional property descriptions/BlendOffsets, BlendPowers and BlendScales](#blendoffsets-blendpowers-and-blendscales). |
| BlendScales  | Vector       | (1,1,1,0)     | See [Additional property descriptions/BlendOffsets, BlendPowers and BlendScales](#blendoffsets-blendpowers-and-blendscales). |

## Az/UnlitTriplanarAlpha shader
### Tags
- RenderType: `Transparent`
- Queue: `Transparent`

### Properties
(Same as `Az/UnlitTriplanarCutout`)

## Additional property descriptions
### BlendOrder
Takes effect when `UseMainColor` is `true`. Controls the blending order of the triplanar textures with the main color.

**Value 0**: ***XYZ***.

**Value 1**: ***XZY***.

**Value 2**: ***YXZ***.

**Value 3**: ***YZX***.

**Value 4**: ***ZXY***.

**Value 5**: ***ZYX***.

### UVMode
**Value 0**: ***World Position***. The vertices' world space positions are used as the sampling UVs.

**Value 1**: ***Mesh UV***. The vertices' UV coordinates are used directly as the sampling UVs.

### UFlipModes and VFlipModes
**Value 0**: The UVs are not flipped in the U(V) direction.

**Value 1**: The UVs are flipped in the U(V) direction where normals are positive.

**Value 2**: The UVs are flipped in the U(V) direction where normals are negative.

**Value 3**: The UVs are flipped in the U(V) direction everywhere.

The two properties share a similar structure:
- `red`: Value for `TextureX`.
- `green`: Value for `TextureY`.
- `blue`: Value for `TextureZ`.
- `alpha`: Not used.

### BlendOffsets, BlendPowers and BlendScales
These properties are used to calculate the blend factor, which determines how the triplanar textures are blended together when `UseMainColor` is `false`, or how they blend with the main color when `UseMainColor` is `true`.

All three properties share a similar structure:
- `red`: Value for `TextureX`.
- `green`: Value for `TextureY`.
- `blue`: Value for `TextureZ`.
- `alpha`: Value for all the triplanar textures.

So, the values of each property of `TextureX`, `TextureY`, `TextureZ` are the `red`, `green`, `blue` channels respectively, with the `alpha` channel added to each.
After the addition, the value range is as follows, `BlendOffset`: $[0,1]$, `BlendPower`: $[0,\infty)$, `BlendScale`: $(-\infty,\infty)$.
