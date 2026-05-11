# Az/BlurLinearMotion, Az/BlurCircularMotion, and Az/BlurZoomMotion shaders

- [Az/BlurLinearMotion, Az/BlurCircularMotion, and Az/BlurZoomMotion shaders](#azblurlinearmotion-azblurcircularmotion-and-azblurzoommotion-shaders)
  - [Az/BlurLinearMotion shader](#azblurlinearmotion-shader)
    - [Tags](#tags)
    - [Properties](#properties)
  - [Az/BlurCircularMotion shader](#azblurcircularmotion-shader)
    - [Tags](#tags-1)
    - [Properties](#properties-1)
  - [Az/BlurZoomMotion shader](#azblurzoommotion-shader)
    - [Tags](#tags-2)
    - [Properties](#properties-2)
  - [Additional property descriptions](#additional-property-descriptions)
    - [BlurCenter](#blurcenter)
    - [CustomAspect](#customaspect)
    - [CustomAspectMethod](#customaspectmethod)

## Az/BlurLinearMotion shader
### Tags
- RenderType: `TransparentCutout`
- Queue: `Overlay`

### Properties
| Name            | Type           | Default value | Description                                                                                                           |
| --------------- | -------------- | ------------- | --------------------------------------------------------------------------------------------------------------------- |
| Cutoff          | Float(0,1)     | 0.5           | See [Cutoff](../common/alpha_clip_and_render_options_property_descriptions.md#cutoff).                                |
| Cull            | Integer(0,2)   | 0             | See [Cull](../common/alpha_clip_and_render_options_property_descriptions.md#cull).                                    |
| MainTex         | Texture2D(G)   | white         | The base color texture.                                                                                               |
| Color           | Color          | (1,1,1,1)     | The tint color of `MainTex`. The `alpha` channel is also used.                                                        |
| BlurMask        | Texture2D(L)   | white         | Used to mask which areas will be blurred and which will not. The `red` channel is used.                               |
| BlurMaskLevel   | Float(-1,1)    | 0             | The blur mask level. -1: fully suppressed; 0: mask-defined; 1: fully applied.                                         |
| BlurAngle       | Float(-1,1)    | 0             | The blur direction angle in units of $\pi$.                                                                           |
| BlurIteration   | Integer(1,100) | 20            | The number of iterations for blur computation; higher values produce stronger blur but also consume more performance. |
| BlurTranslation | Float(0,1)     | 1             | The total translation amount for blur computation.                                                                    |
| UseRMS          | Boolean        | true          | Whether to use the RMS (root mean square) method for blur averaging.                                                  |

## Az/BlurCircularMotion shader
### Tags
- RenderType: `TransparentCutout`
- Queue: `Overlay`

### Properties
| Name               | Type           | Default value | Description                                                                                                           |
| ------------------ | -------------- | ------------- | --------------------------------------------------------------------------------------------------------------------- |
| Cutoff             | Float(0,1)     | 0.5           | See [Cutoff](../common/alpha_clip_and_render_options_property_descriptions.md#cutoff).                                |
| Cull               | Integer(0,2)   | 0             | See [Cull](../common/alpha_clip_and_render_options_property_descriptions.md#cull).                                    |
| MainTex            | Texture2D(G)   | white         | The base color texture.                                                                                               |
| Color              | Color          | (1,1,1,1)     | The tint color of `MainTex`. The `alpha` channel is also used.                                                        |
| BlurMask           | Texture2D(L)   | white         | Used to mask which areas will be blurred and which will not. The `red` channel is used.                               |
| BlurMaskLevel      | Float(-1,1)    | 0             | The blur mask level. -1: fully suppressed; 0: mask-defined; 1: fully applied.                                         |
| BlurCenter         | Vector         | (0.5,0.5,0,0) | See [Additional property descriptions/BlurCenter](#blurcenter).                                                       |
| BlurIteration      | Integer(1,100) | 20            | The number of iterations for blur computation; higher values produce stronger blur but also consume more performance. |
| BlurRotation       | Float(0,1)     | 1             | The total rotation amount for blur computation.                                                                       |
| CustomAspect       | Float(0.5,2)   | 1             | See [Additional property descriptions/CustomAspect](#customaspect).                                                   |
| CustomAspectMethod | Float(0,1)     | 0             | See [Additional property descriptions/CustomAspectMethod](#customaspectmethod).                                       |
| UseRMS             | Boolean        | true          | Whether to use the RMS (root mean square) method for blur averaging.                                                  |

## Az/BlurZoomMotion shader
### Tags
- RenderType: `TransparentCutout`
- Queue: `Overlay`

### Properties
| Name               | Type           | Default value | Description                                                                                                                        |
| ------------------ | -------------- | ------------- | ---------------------------------------------------------------------------------------------------------------------------------- |
| Cutoff             | Float(0,1)     | 0.5           | See [Cutoff](../common/alpha_clip_and_render_options_property_descriptions.md#cutoff).                                             |
| Cull               | Integer(0,2)   | 0             | See [Cull](../common/alpha_clip_and_render_options_property_descriptions.md#cull).                                                 |
| MainTex            | Texture2D(G)   | white         | The base color texture.                                                                                                            |
| Color              | Color          | (1,1,1,1)     | The tint color of `MainTex`. The `alpha` channel is also used.                                                                     |
| BlurMask           | Texture2D(L)   | white         | Used to mask which areas will be blurred and which will not. The `red` channel is used.                                            |
| BlurMaskLevel      | Float(-1,1)    | 0             | The blur mask level. -1: fully suppressed; 0: mask-defined; 1: fully applied.                                                      |
| BlurCenter         | Vector         | (0.5,0.5,0,0) | See [Additional property descriptions/BlurCenter](#blurcenter).                                                                    |
| BlurIteration      | Integer(1,100) | 20            | The number of iterations for blur computation; higher values produce stronger blur but also consume more performance.              |
| BlurScaling        | Float(-1,1)    | 1             | The total scaling amount for blur computation. The sign indicates the blur direction: less than 0 means inward, otherwise outward. |
| CustomAspect       | Float(0.5,2)   | 1             | See [Additional property descriptions/CustomAspect](#customaspect).                                                                |
| CustomAspectMethod | Float(0,1)     | 0             | See [Additional property descriptions/CustomAspectMethod](#customaspectmethod).                                                    |
| UseRMS             | Boolean        | true          | Whether to use the RMS (root mean square) method for blur averaging.                                                               |

## Additional property descriptions
### BlurCenter
- When the `alpha` channel is 1, object space is used to define `BlurCenter`. In this case, the `rgb` channels represent the position defined in object space. 
- When the `alpha` channel is not 1, screen space is used to define `BlurCenter`. In this case, the `rg` channels represent the position defined in screen space.

### CustomAspect
A custom aspect ratio for the blur effect, which defines the x/y ratio used to stretch or shrink the screen capture sampling.\
When the value is 1, the current aspect ratio is preserved; when the value is greater than 1, the aspect ratio increases; when the value is less than 1, the aspect ratio decreases. But how the custom aspect ratio is applied, whether it stretches or shrinks and along which direction, depends on the `CustomAspectMethod` property.

### CustomAspectMethod
Controls how the custom aspect ratio is applied:
- When `CustomAspectMethod` is 0:  `CustomAspect` > 1 stretches along the x direction; < 1 stretches along the y direction.
- When `CustomAspectMethod` is 1: `CustomAspect` > 1 shrinks along the y direction; < 1 shrinks along the x direction.
- For values between 0 and 1, the result is interpolated between the two behaviors described above.
