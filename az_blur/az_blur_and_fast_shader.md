# Az/Blur and Az/BlurFast shader

- [Az/Blur and Az/BlurFast shader](#azblur-and-azblurfast-shader)
  - [Az/Blur shader](#azblur-shader)
    - [Tags](#tags)
    - [Properties](#properties)
  - [Az/BlurFast shader](#azblurfast-shader)
    - [Tags](#tags-1)
    - [Properties](#properties-1)
  - [Additional property descriptions](#additional-property-descriptions)
    - [Adjustments](#adjustments)

## Az/Blur shader
### Tags
- RenderType: `TransparentCutout`
- Queue: `Overlay`

### Properties
| Name                 | Type               | Default value | Description                                                                                                                                  |
| -------------------- | ------------------ | ------------- | -------------------------------------------------------------------------------------------------------------------------------------------- |
| Cutoff               | Float(0,1)         | 0.5           | See [Cutoff](../common/alpha_clip_and_render_options_property_descriptions.md#cutoff).                                                       |
| Cull                 | Integer(0,2)       | 0             | See [Cull](../common/alpha_clip_and_render_options_property_descriptions.md#cull).                                                           |
| MainTex              | Texture2D(G)       | white         | Base color texture.                                                                                                                          |
| Color                | Color              | (1,1,1,1)     | Color tint of `MainTex`. `alpha` channel is also used.                                                                                       |
| NormalMap            | Texture2D(L)       | bump          | Used to distort the screen capture based on the normal map's x and y components.                                                             |
| NormalMapScale       | Float(0,1)         | 1             | The scale of `NormalMap`.                                                                                                                    |
| Adjustments          | Vector             | (0,0,0,0)     | See [Additional property descriptions/Adjustments](#adjustments).                                                                            |
| Magnification        | Float(0.1,10)      | 1             | The scale used to magnify the screen capture.                                                                                                |
| BlurMask             | Texture2D(L)       | white         | Used to mask which areas will be blurred and which will not, `red` channel is used.                                                          |
| BlurMaskLevel        | Float(-1,1)        | 0             | Blur mask level. -1: fully masked; 0: as defined by the mask texture; 1: fully unmasked.                                                     |
| BlurKernelSize       | Integer(1,127)     | 35            | Kernel size of the image convolution. Keep it as low as possible for better performance.                                                     |
| BlurSigma            | Float(0.00001, 20) | 1             | The sigma parameter of the Gaussian function, i.e., the standard deviation. Effective only when `GAUSSIAN_BLUR` is enabled.                  |
| BlurTexelSize        | Float(1,4)         | 1             | The texel size multiplier, controlling the sampling radius of the image convolution.                                                         |
| GAUSSIAN_BLUR        | Keyword            | false         | Whether to use Gaussian blur instead of box blur.                                                                                            |
| BLUR_LINEAR_SAMPLING | Keyword            | false         | Whether to utilize the linear filtering feature for sampling. Enabling this can reduce performance cost, but may introduce slight artifacts. |

## Az/BlurFast shader
### Tags
- RenderType: `TransparentCutout`
- Queue: `Overlay`

### Properties
| Name           | Type               | Default value | Description                                                                                                                 |
| -------------- | ------------------ | ------------- | --------------------------------------------------------------------------------------------------------------------------- |
| Cutoff         | Float(0,1)         | 0.5           | See [Cutoff](../common/alpha_clip_and_render_options_property_descriptions.md#cutoff).                                      |
| Cull           | Integer(0,2)       | 0             | See [Cull](../common/alpha_clip_and_render_options_property_descriptions.md#cull).                                          |
| MainTex        | Texture2D(G)       | white         | Base color texture.                                                                                                         |
| Color          | Color              | (1,1,1,1)     | Color tint of `MainTex`. `alpha` channel is also used.                                                                      |
| NormalMap      | Texture2D(L)       | bump          | Used to distort the screen capture based on the normal map's x and y components.                                            |
| NormalMapScale | Float(0,1)         | 1             | The scale of `NormalMap`.                                                                                                   |
| Adjustments    | Vector             | (0,0,0,0)     | See [Additional property descriptions/Adjustments](#adjustments).                                                           |
| Magnification  | Float(0.1,10)      | 1             | The scale used to magnify the screen capture.                                                                               |
| BlurCorrection | Float(1,2)         | 1             | Used to eliminate the artifacts at the blurred edges introduced by the algorithm.                                           |
| BlurKernelSize | Integer(1,127)     | 35            | Kernel size of the image convolution. Keep it as low as possible for better performance.                                    |
| BlurSigma      | Float(0.00001, 20) | 1             | The sigma parameter of the Gaussian function, i.e., the standard deviation. Effective only when `GAUSSIAN_BLUR` is enabled. |
| BlurTexelSize  | Float(1,4)         | 1             | The texel size multiplier, controlling the sampling radius of the image convolution.                                        |
| GAUSSIAN_BLUR  | Keyword            | false         | Whether to use Gaussian blur instead of box blur.                                                                           |

## Additional property descriptions
### Adjustments
Controls whether the offset from the normal map and the blur texel size are adjusted based on depth, as well as the adjustment magnitude. The adjustment magnitude is calculated similarly to `DisplaceAdjustment` in other Az Shaders.
- `red`: Whether to apply the depth adjustment to the offset from the normal map; 1 means yes, otherwise no.
- `green`: The adjustment magnitude for the offset from the normal map.
- `blue`: Whether to apply the depth adjustment to the blur texel size; 1 means yes, otherwise no.
- `alpha`: The adjustment magnitude for the blur texel size.
