# Az/Blur and Az/BlurFast shaders

- [Az/Blur and Az/BlurFast shaders](#azblur-and-azblurfast-shaders)
  - [Az/Blur shader](#azblur-shader)
    - [Tags](#tags)
    - [Properties](#properties)
  - [Az/BlurFast shader](#azblurfast-shader)
    - [Tags](#tags-1)
    - [Properties](#properties-1)
  - [Additional property descriptions](#additional-property-descriptions)
    - [Perspective](#perspective)

## Az/Blur shader
### Tags
- RenderType: `TransparentCutout`
- Queue: `Overlay`

### Properties
| Name                 | Type              | Default value | Description                                                                                                                                       |
| -------------------- | ----------------- | ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| Cutoff               | Float(0,1)        | 0.5           | See [Cutoff](../common/alpha_clip_and_render_options_property_descriptions.md#cutoff).                                                            |
| Cull                 | Integer(0,2)      | 0             | See [Cull](../common/alpha_clip_and_render_options_property_descriptions.md#cull).                                                                |
| MainTex              | Texture2D(G)      | white         | The base color texture.                                                                                                                           |
| Color                | Color             | (1,1,1,1)     | The tint color of `MainTex`. The `alpha` channel is also used.                                                                                    |
| DistortionMap        | Texture2D(L)      | bump          | The distortion map used to distort the screen capture. The `red` and `green` channels correspond to the screen's x and y directions respectively. |
| DistortionMapScale   | Float(0,1)        | 1             | The scale of `DistortionMap`.                                                                                                                     |
| DistortionXFlip      | Boolean           | false         | Whether to flip the distortion along the screen's x direction.                                                                                    |
| DistortionYFlip      | Boolean           | false         | Whether to flip the distortion along the screen's y direction.                                                                                    |
| BlurMask             | Texture2D(L)      | white         | Used to mask which areas will be blurred and which will not. The `red` channel is used.                                                           |
| BlurMaskLevel        | Float(-1,1)       | 0             | The blur mask level. -1: fully suppressed; 0: mask-defined; 1: fully applied.                                                                     |
| BlurKernelSize       | Integer(1,127)    | 35            | The kernel size of the image convolution. Keep it as low as possible for better performance.                                                      |
| BlurSigma            | Float(0.00001,20) | 1             | The sigma parameter of the Gaussian function, i.e., the standard deviation. Effective only when `GAUSSIAN_BLUR` is enabled.                       |
| BlurTexelSize        | Float(1,4)        | 1             | The texel size multiplier, controlling the sampling radius of the image convolution.                                                              |
| GAUSSIAN_BLUR        | Keyword           | false         | Whether to use Gaussian blur instead of box blur.                                                                                                 |
| BLUR_LINEAR_SAMPLING | Keyword           | false         | Whether to utilize the linear filtering feature for sampling. Enabling this can improve performance, but may introduce slight artifacts.          |
| UseRMS               | Boolean           | true          | Whether to use the RMS (root mean square) method for blur averaging.                                                                              |
| Perspective          | Vector            | (0,1,0,1)     | See [Additional property descriptions/Perspective](#perspective).                                                                                 |

## Az/BlurFast shader
### Tags
- RenderType: `TransparentCutout`
- Queue: `Overlay`

### Properties
| Name                 | Type              | Default value | Description                                                                                                                                       |
| -------------------- | ----------------- | ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| Cutoff               | Float(0,1)        | 0.5           | See [Cutoff](../common/alpha_clip_and_render_options_property_descriptions.md#cutoff).                                                            |
| Cull                 | Integer(0,2)      | 0             | See [Cull](../common/alpha_clip_and_render_options_property_descriptions.md#cull).                                                                |
| MainTex              | Texture2D(G)      | white         | The base color texture.                                                                                                                           |
| Color                | Color             | (1,1,1,1)     | The tint color of `MainTex`. The `alpha` channel is also used.                                                                                    |
| DistortionMap        | Texture2D(L)      | bump          | The distortion map used to distort the screen capture. The `red` and `green` channels correspond to the screen's x and y directions respectively. |
| DistortionMapScale   | Float(0,1)        | 1             | The scale of `DistortionMap`.                                                                                                                     |
| DistortionXFlip      | Boolean           | false         | Whether to flip the distortion along the screen's x direction.                                                                                    |
| DistortionYFlip      | Boolean           | false         | Whether to flip the distortion along the screen's y direction.                                                                                    |
| BlurCorrectionScale  | Float(1,2)        | 1             | The scale used to correct blur artifacts at edges.                                                                                                |
| BlurCorrectionOrigin | Vector            | (0,0,0,0)     | The `rgb` channels are the origin position in object space for the blur correction.                                                               |
| BLUR_CORRECTION      | Keyword           | false         | Whether to enable the blur correction.                                                                                                            |
| BlurKernelSize       | Integer(1,127)    | 35            | The kernel size of the image convolution. Keep it as low as possible for better performance.                                                      |
| BlurSigma            | Float(0.00001,20) | 1             | The sigma parameter of the Gaussian function, i.e., the standard deviation. Effective only when `GAUSSIAN_BLUR` is enabled.                       |
| BlurTexelSize        | Float(1,4)        | 1             | The texel size multiplier, controlling the sampling radius of the image convolution.                                                              |
| GAUSSIAN_BLUR        | Keyword           | false         | Whether to use Gaussian blur instead of box blur.                                                                                                 |
| UseRMS               | Boolean           | true          | Whether to use the RMS (root mean square) method for blur averaging.                                                                              |
| Perspective          | Vector            | (0,1,0,1)     | See [Additional property descriptions/Perspective](#perspective).                                                                                 |

## Additional property descriptions
### Perspective
Controls how the blur texel size and distortion offset scale with perspective.
- `red`: Perspective scaling mode for the blur texel size.
- `green`: Perspective scaling multiplier for the blur texel size.
- `blue`: Perspective scaling mode for the distortion offset.
- `alpha`: Perspective scaling multiplier for the distortion offset.

| Value | Perspective scaling mode |
| ----- | ------------------------ |
| 0     | ***None***               |
| 1     | ***DepthBased***         |
| 2     | ***FOVBased***           |
| 3     | ***DepthAndFOVBased***   |
