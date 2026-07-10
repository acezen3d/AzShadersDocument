# Az/ShadowCaster shader

- [Az/ShadowCaster shader](#azshadowcaster-shader)
  - [Tags](#tags)
  - [Properties](#properties)
  - [Notes](#notes)

## Tags
- RenderType: `TransparentCutout`
- Queue: `AlphaTest`+50

## Properties
| Name                   | Type         | Default value | Description                                                                                                                       |
| ---------------------- | ------------ | ------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| AlphaMask              | Texture2D(G) | white         | See [AlphaMask](../common/alpha_clip_and_render_options_property_descriptions.md#alphamask).                                      |
| CutoffShadow           | Float(0,1)   | 0.5           | See [CutoffShadow](../common/alpha_clip_and_render_options_property_descriptions.md#cutoffshadow).                                |
| Cull                   | Integer(0,2) | 0             | See [Cull](../common/alpha_clip_and_render_options_property_descriptions.md#cull).                                                |
| MainTex                | Texture2D(G) | white         | The base color texture. Only the `alpha` channel is used.                                                                         |
| Color                  | Color        | (1,1,1,1)     | The tint color of `MainTex`. Only the `alpha` channel is used.                                                                    |
| AllowTransparentShadow | Boolean      | true          | Whether to use alpha transparency when casting shadows. `true`: behaves like alpha shaders; `false`: behaves like cutout shaders. |

## Notes
- Use this shader to help non-shadow-casting shaders cast shadows by duplicating the materials, or to create invisible shadow casters.
- For it to work, `shadowCastingMode` of the renderer must not be set to **Off**.
- If `shadowCastingMode` of the renderer is set to **TwoSided**, the `Cull` property will be ignored.
