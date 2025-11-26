# Az/BlurZoomMotion shader

- [Az/BlurZoomMotion shader](#azblurzoommotion-shader)
  - [Tags](#tags)
  - [Properties](#properties)

## Tags
- RenderType: `TransparentCutout`
- Queue: `Overlay`

## Properties
| Name          | Type          | Default value | Description                                                                                                                        |
| ------------- | ------------- | ------------- | ---------------------------------------------------------------------------------------------------------------------------------- |
| Cutoff        | Float(0,1)    | 0.5           | See [Cutoff](../common/alpha_clip_and_render_options_property_descriptions.md#cutoff).                                             |
| Cull          | Integer(0,2)  | 0             | See [Cull](../common/alpha_clip_and_render_options_property_descriptions.md#cull).                                                 |
| MainTex       | Texture2D(G)  | white         | Base color texture.                                                                                                                |
| Color         | Color         | (1,1,1,1)     | Color tint of `MainTex`. `alpha` channel is also used.                                                                             |
| BlurMask      | Texture2D(L)  | white         | Used to mask which areas will be blurred and which will not, `red` channel is used.                                                |
| BlurMaskLevel | Float(-1,1)   | 0             | Blur mask level. -1: fully masked; 0: as defined by the mask texture; 1: fully unmasked.                                           |
| BlurCenter    | Vector        | (0.5,0.5,0,0) | The `rg` channels represent The center of the blur in screen space.                                                                |
| BlurIteration | Float(1,100)  | 20            | Number of iterations for blur computation; higher values produce stronger blur but also consume more performance.                  |
| BlurRange     | Float(-10,10) | 1             | The texel sampling range for blur computation. The sign indicates the blur direction: less than 0 means inward, otherwise outward. |
