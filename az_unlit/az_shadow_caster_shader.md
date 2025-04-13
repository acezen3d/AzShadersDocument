# Az/ShadowCaster shader

- [Az/ShadowCaster shader](#azshadowcaster-shader)
  - [Properties](#properties)
  - [Notes](#notes)

## Properties
| Name                   | Type         | Default value | Description                                                                                                     |
| ---------------------- | ------------ | ------------- | --------------------------------------------------------------------------------------------------------------- |
| AlphaMask              | Texture2D(G) | white         | See [AlphaMask](../common/alpha_clip_and_render_options_property_descriptions.md#alphamask).                    |
| Cutoff                 | Float(0,1)   | 0.5           | See [Cutoff](../common/alpha_clip_and_render_options_property_descriptions.md#cutoff).                          |
| Cull                   | Integer(0,2) | 0             | See [Cull](../common/alpha_clip_and_render_options_property_descriptions.md#cull).                              |
| MainTex                | Texture2D(G) | white         | Base color texture. Only `alpha` channel is used.                                                               |
| Color                  | Color        | (1,1,1,1)     | Color tint of `MainTex`. Only `alpha` channel is used.                                                          |
| AllowTransparentShadow | Boolean      | true          | Whether to allow transparent shadows. `true`: behaves like alpha shaders; `false`: behaves like cutout shaders. |

## Notes
- Use this shader to help non-shadow-casting shaders cast shadows by duplicating the materials, or to create invisible shadow casters.
- For it to work, `shadowCastingMode` of the renderer must not be set to **Off**.
- If `shadowCastingMode` of the renderer is set to **TwoSided**, the `Cull` property will be ignored.