# Az/AdvancedExtraStyle shader

- [Az/AdvancedExtraStyle shader](#azadvancedextrastyle-shader)
  - [Tags](#tags)
  - [Properties](#properties)
    - [🏷️Alpha Clip and Render Options](#️alpha-clip-and-render-options)
    - [🏷️Surface Reconstruction](#️surface-reconstruction)
    - [🏷️Custom Main Light](#️custom-main-light)
    - [🏷️Rim Light](#️rim-light)
    - [🏷️Matcap](#️matcap)
    - [🏷️Ring](#️ring)
    - [🏷️Mesh](#️mesh)
  - [Additional property descriptions](#additional-property-descriptions)
    - [UseCustomMainLight](#usecustommainlight)
    - [CustomMainLightDirection](#custommainlightdirection)
    - [RimLightPower, RimLightScale and RimLightBias](#rimlightpower-rimlightscale-and-rimlightbias)
    - [RimLightMode](#rimlightmode)
    - [RimLightRotation](#rimlightrotation)
    - [MainLightToRimLight](#mainlighttorimlight)
    - [MatcapUVMethod](#matcapuvmethod)
    - [MainLightToMatcap](#mainlighttomatcap)
    - [RingStyle](#ringstyle)
    - [MainLightToRing](#mainlighttoring)
  - [Notes](#notes)

## Tags
- RenderType: `Transparent`
- Queue: `Transparent`

## Properties
### 🏷️Alpha Clip and Render Options
| Name      | Type         | Default value | Description                                                                                  |
| --------- | ------------ | ------------- | -------------------------------------------------------------------------------------------- |
| AlphaMask | Texture2D(G) | white         | See [AlphaMask](../common/alpha_clip_and_render_options_property_descriptions.md#alphamask). |
| Cutoff    | Float(0,1)   | 0.5           | See [Cutoff](../common/alpha_clip_and_render_options_property_descriptions.md#cutoff).       |
| Cull      | Integer(0,2) | 0             | See [Cull](../common/alpha_clip_and_render_options_property_descriptions.md#cull).           |

### 🏷️Surface Reconstruction
| Name                  | Type         | Default value | Description                                                                                                           |
| --------------------- | ------------ | ------------- | --------------------------------------------------------------------------------------------------------------------- |
| MainTex               | Texture2D(G) | white         | Same as `Main PBR/MainTex`, but only `alpha` channel is used to provide consistent alpha clipping with other shaders. |
| NormalMap             | Texture2D(L) | bump          | Same as `Main PBR/NormalMap`.                                                                                         |
| NormalMapScale        | Float(0,1)   | 1             | Same as `Main PBR/NormalMapScale`.                                                                                    |
| DetailSet             | Boolean      | true          | Same as `Detail/DetailSet`.                                                                                           |
| DetailSet2            | Boolean      | false         | Same as `Detail/DetailSet2`.                                                                                          |
| DetailSet3            | Boolean      | false         | Same as `Detail/DetailSet3`.                                                                                          |
| DetailMask            | Texture2D(L) | red           | Same as `Detail/DetailMask`, and it will also provide masking for the matcap.                                         |
| DetailUVRotation      | Float(-1,1)  | 0             | Same as `Detail/DetailUVRotation`.                                                                                    |
| DetailUVRotation2     | Float(-1,1)  | 0             | Same as `Detail/DetailUVRotation2`.                                                                                   |
| DetailUVRotation3     | Float(-1,1)  | 0             | Same as `Detail/DetailUVRotation3`.                                                                                   |
| NormalMapDetail       | Texture2D(L) | bump          | Same as `Detail/NormalMapDetail`.                                                                                     |
| NormalMapDetail2      | Texture2D(L) | bump          | Same as `Detail/NormalMapDetail2`.                                                                                    |
| NormalMapDetail3      | Texture2D(L) | bump          | Same as `Detail/NormalMapDetail3`.                                                                                    |
| NormalMapDetailBiases | Vector       | (0,0,0,0)     | Same as `Detail/NormalMapDetailBiases`.                                                                               |
| DetailNormalMapScale  | Float(0,1)   | 0             | Same as `Detail/DetailNormalMapScale`.                                                                                |
| DetailNormalMapScale2 | Float(0,1)   | 0             | Same as `Detail/DetailNormalMapScale2`.                                                                               |
| DetailNormalMapScale3 | Float(0,1)   | 0             | Same as `Detail/DetailNormalMapScale3`.                                                                               |

### 🏷️Custom Main Light
| Name                     | Type         | Default value | Description                                                                                                                                      |
| ------------------------ | ------------ | ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| UseCustomMainLight       | Boolean      | false         | See [Additional property descriptions/UseCustomMainLight](#usecustommainlight).                                                                  |
| CustomMainLightSpace     | Integer(0,2) | 0             | Determines in which space the custom main light direction is defined. 0: world space; 1: view space; 2: object space.                            |
| CustomMainLightDirection | Vector       | (0,0,0,0)     | Defines the direction of the custom main light. Also see [Additional property descriptions/CustomMainLightDirection](#custommainlightdirection). |
| CustomMainLightColor     | Color        | (1,1,1,1)     | Defines the color of the custom main light.                                                                                                      |

### 🏷️Rim Light
| Name                    | Type          | Default value | Description                                                                                                                                            |
| ----------------------- | ------------- | ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------ |
| RimLight                | Boolean       | true          | Whether to enable the rim light.                                                                                                                       |
| RimLightMap             | Texture2D(G)  | white         | Rim light texture, its `rgb` channels are for the color, and `alpha` channel is for the mask.                                                          |
| RimLightColor           | Color         | (1,1,1,1)     | Rim light color, its `rgb` channels will be multiplied with `rgb` channels of `RimLightMap`, `alpha` channel is not used.                              |
| RimLightIntensity       | Float(0,2)    | 1             | Rim light intensity, will be multiplied with `rgb` values of the rim light.                                                                            |
| RimLightMaskLevel       | Float(-1,1)   | 0             | Rim light mask level. -1: fully masked; 0: as defined by the mask texture; 1: fully unmasked.                                                          |
| RimLightPower           | Float(0,10)   | 1             | See [Additional property descriptions/RimLightPower, RimLightScale and RimLightBias](#rimlightpower-rimlightscale-and-rimlightbias).                   |
| RimLightScale           | Float(0,2)    | 1             | See [Additional property descriptions/RimLightPower, RimLightScale and RimLightBias](#rimlightpower-rimlightscale-and-rimlightbias).                   |
| RimLightBias            | Float(-1,1)   | 0             | See [Additional property descriptions/RimLightPower, RimLightScale and RimLightBias](#rimlightpower-rimlightscale-and-rimlightbias).                   |
| RimLightMode            | Float(0,1)    | 0             | See [Additional property descriptions/RimLightMode](#rimlightmode).                                                                                    |
| RimLightRotation        | Vector        | (0,0,0,0)     | See [Additional property descriptions/RimLightRotation](#rimlightrotation).                                                                            |
| MainLightToRimLight     | Vector        | (0,2,0,2)     | Blends and applies the mask of the main light to the rim light. Also see [Additional property descriptions/MainLightToRimLight](#mainlighttorimlight). |
| IndirectLightToRimLight | Float(0,1)    | 0             | Blends the indirect light to the rim light.                                                                                                            |
| RimLightBlendBase       | Float(0,1)    | 0             | Determines the background color to be added during blending. 0: `black`, 1: `white`.                                                                   |
| RimLightBlendSrc        | Integer(0,10) | 1             | Rim light source blend mode. Its value is defined by [Blend mode enum](../common/blend_mode.md#blend-mode-enum).                                       |
| RimLightBlendDst        | Integer(0,10) | 1             | Rim light destination blend mode. Its value is defined by [Blend mode enum](../common/blend_mode.md#blend-mode-enum).                                  |

### 🏷️Matcap
| Name                       | Type          | Default value | Description                                                                                                                                     |
| -------------------------- | ------------- | ------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| Matcap                     | Boolean       | true          | Whether to enable the matcap.                                                                                                                   |
| MatcapTex                  | Texture2D(G)  | black         | Matcap texture of detail set 1.                                                                                                                 |
| MatcapTex2                 | Texture2D(G)  | black         | Matcap texture of detail set 2.                                                                                                                 |
| MatcapTex3                 | Texture2D(G)  | black         | Matcap texture of detail set 3.                                                                                                                 |
| MatcapColor                | Color         | (1,1,1,1)     | Matcap color of detail set 1.                                                                                                                   |
| MatcapColor2               | Color         | (1,1,1,1)     | Matcap color of detail set 2.                                                                                                                   |
| MatcapColor3               | Color         | (1,1,1,1)     | Matcap color of detail set 3.                                                                                                                   |
| MatcapMask                 | Texture2D(L)  | white         | Matcap mask, `red` channel for detail set 1, `green` channel for detail set 2, `blue` channel for detail set 3.                                 |
| MatcapMaskLevel            | Float(-1,1)   | 0             | Matcap 1 mask level. -1: fully masked; 0: as defined by the mask texture; 1: fully unmasked.                                                    |
| MatcapMaskLevel2           | Float(-1,1)   | 0             | Matcap 2 mask level. -1: fully masked; 0: as defined by the mask texture; 1: fully unmasked.                                                    |
| MatcapMaskLevel3           | Float(-1,1)   | 0             | Matcap 3 mask level. -1: fully masked; 0: as defined by the mask texture; 1: fully unmasked.                                                    |
| MatcapUVRotation           | Float(-1,1)   | 0             | Matcap 1 UV rotation in units of $\pi$.                                                                                                         |
| MatcapUVRotation2          | Float(-1,1)   | 0             | Matcap 2 UV rotation in units of $\pi$.                                                                                                         |
| MatcapUVRotation3          | Float(-1,1)   | 0             | Matcap 3 UV rotation in units of $\pi$.                                                                                                         |
| MatcapBlurLevel            | Integer(0,10) | 0             | Matcap 1 blur level (mipmap level).                                                                                                             |
| MatcapBlurLevel2           | Integer(0,10) | 0             | Matcap 2 blur level (mipmap level).                                                                                                             |
| MatcapBlurLevel3           | Integer(0,10) | 0             | Matcap 3 blur level (mipmap level).                                                                                                             |
| MatcapCancelCameraRolling  | Boolean       | true          | Whether to keep the matcap stationary when the camera rolls, identical to `CameraRolling_Stabilizer` in Unity Toon Shader.                      |
| MatcapReflectionAdjustment | Boolean       | false         | Used to adjust whether the matcap is mirrored horizontally or vertically when facing forward in the reflections.                                |
| MatcapUVMethod             | Integer(0,4)  | 2             | See [Additional property descriptions/MatcapUVMethod](#matcapuvmethod).                                                                         |
| MainLightToMatcap          | Vector        | (0,2,0,2)     | Blends and applies the mask of the main light to the matcap. Also see [Additional property descriptions/MainLightToMatcap](#mainlighttomatcap). |
| IndirectLightToMatcap      | Float(0,1)    | 0             | Blends the indirect light to the matcap.                                                                                                        |
| MatcapBlendBase            | Float(0,1)    | 0             | Determines the background color to be added during blending. 0: `black`, 1: `white`.                                                            |
| MatcapBlendSrc             | Integer(0,10) | 1             | Matcap source blend mode. Its value is defined by [Blend mode enum](../common/blend_mode.md#blend-mode-enum).                                   |
| MatcapBlendDst             | Integer(0,10) | 1             | Matcap destination blend mode. Its value is defined by [Blend mode enum](../common/blend_mode.md#blend-mode-enum).                              |

### 🏷️Ring
| Name                | Type          | Default value | Description                                                                                                                               |
| ------------------- | ------------- | ------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| Ring                | Boolean       | true          | Whether to enable the ring.                                                                                                               |
| RingMap             | Texture2D(G)  | white         | Ring texture, its `rgb` channels are for the color, and `alpha` channel is for the mask.                                                  |
| RingColor           | Color         | (1,1,1,1)     | Ring color, its `rgb` channels will be multiplied with `rgb` channels of `RingMap`, `alpha` channel is not used.                          |
| RingIntensity       | Float(0,2)    | 1             | Ring intensity, will be multiplied with `rgb` values of the ring.                                                                         |
| RingMaskLevel       | Float(-1,1)   | 0             | Ring mask level. -1: fully masked; 0: as defined by the mask texture; 1: fully unmasked.                                                  |
| RingStyle           | Integer(0,4)  | 4             | Ring styles. See [Additional property descriptions/RingStyle](#ringstyle).                                                                |
| RingSharpness       | Float(-2,2)   | 1             | Ring sharpness.                                                                                                                           |
| RingWidth           | Float(0,1)    | 0.2           | Ring width.                                                                                                                               |
| RingOffset          | Float(-1,1)   | 0             | Ring offset.                                                                                                                              |
| RingRotation        | Float(-1,1)   | 0             | Ring rotation.                                                                                                                            |
| MainLightToRing     | Vector        | (0,2,0,2)     | Blends and applies the mask of the main light to the ring. Also see [Additional property descriptions/MainLightToRing](#mainlighttoring). |
| IndirectLightToRing | Float(0,1)    | 0             | Blends the indirect light to the ring.                                                                                                    |
| RingBlendBase       | Float(0,1)    | 0             | Determines the background color to be added during blending. 0: `black`, 1: `white`.                                                      |
| RingBlendSrc        | Integer(0,10) | 1             | Ring source blend mode. Its value is defined by [Blend mode enum](../common/blend_mode.md#blend-mode-enum).                               |
| RingBlendDst        | Integer(0,10) | 1             | Ring destination blend mode. Its value is defined by [Blend mode enum](../common/blend_mode.md#blend-mode-enum).                          |

### 🏷️Mesh
| Name                                  | Type | Default value | Description |
| ------------------------------------- | ---- | ------------- | ----------- |
| [Mesh properties](mesh_properties.md) |      |               |             |

## Additional property descriptions
### UseCustomMainLight 
Whether to use the custom main light.

**Value false**: Use the main light in the scene; if unavailable, fall back to the custom main light.

**Value true**: Always use the custom main light defined by `CustomMainLightDirection` and `CustomMainLightColor`, regardless of the main light in the scene.

The custom main light settings (`CustomMainLightDirection` and `CustomMainLightColor`) are inspired by and optimized from the so-called built-in main light in Unity Toon Shader, enabling users to define their own custom main light. This `UseCustomMainLight` switch allows features to ignore the main light in the scene and use the custom main light instead, preventing unwanted lighting jumps caused by the switching of the main light during light animations. Further explanation is not provided here due to text limitations.

Whether it's the main light in the scene or the custom main light, both are used for light blending and masking in features.

### CustomMainLightDirection
The definition of the custom main light direction follows Unity's convention, with the initial direction along the negative z-axis and a rotation defined by ZXY-ordered Euler angles in units of $\pi$. Also, `CustomMainLightSpace` will be used to determine in which space this rotation is defined.
- `red`: X-axis rotation.
- `green`: Y-axis rotation.
- `blue`: Z-axis rotation.
- `alpha`: Not used.

### RimLightPower, RimLightScale and RimLightBias
The Fresnel effect of the rim light is given by the following well known formula:

$$RimLightFresnel=RimLightBias+RimLightScale*base^{RimLightPower}$$

### RimLightMode
Used to determine what the $base$ is in the above formula, mainly involving how to handle back faces.

**Value 0**: Rim light can not be applied to back faces, which is useful for transparent rendering.

**Value 1**: Rim light can be applied to back faces, which is useful for non-transparent rendering and when using the rim light static rotation.

### RimLightRotation
Rim light static rotation. The rim light rotates in view space, following ZXY-ordered Euler angles in units of $\pi$.
- `red`: X-axis rotation.
- `green`: Y-axis rotation.
- `blue`: Z-axis rotation.
- `alpha`: Not used.

### MainLightToRimLight
- `red`: Blends the main light to the rim light. Value range: $[0,1]$.
- `green`: Controls the power of Half Lambert to determine the range for blending the main light to the rim light. Value range: $[0,\infty)$, typically $[0,10]$.
- `blue`: Applies the mask based on the main light direction to the rim light. Value range: $[-1,1]$. Negative values will invert the mask.
- `alpha`: Controls the power of Half Lambert to determine the range for masking the rim light. Value range: $[0,\infty)$, typically $[0,10]$.

### MatcapUVMethod
Controls the generation of the Matcap UVs, thus affecting the sampling of the matcap textures.

**Value 0**: ***Orthographic***. This is the most conventional sampling, but it will have problems such as edge distortion. 

**Value 1**: ***Spherical Reflection***. The reflection direction is calculated first in the perspective view, and the normal direction is calculated again in the orthogonal view.

**Value 2**: ***Constructing Projection***. Three.js's approach. Using the upward positive y-axis of the camera, construct the tangent and binormal to project onto the view space normal direction.

**Value 3**: ***Cross Product***. Simple construction of the cross product of the normal and the view vectors.

**Value 4**: ***RNM Blending***. Perturbation of the view space normal direction using the RNM normal blending. Unity Toon Shader's approach.

### MainLightToMatcap
- `red`: Blends the main light to the matcap. Value range: $[0,1]$.  
- `green`: Controls the power of Half Lambert to determine the range for blending the main light to the matcap. Value range: $[0,\infty)$, typically $[0,10]$.
- `blue`: Applies the mask based on the main light direction to the matcap. Value range: $[-1,1]$. Negative values will invert the mask.
- `alpha`: Controls the power of Half Lambert to determine the range for masking the matcap. Value range: $[0,\infty)$, typically $[0,10]$.

### RingStyle
**Value 0**: ***Tangent***. One ring appears along the tangent direction (camera's x-axis).

**Value 1**: ***Tangent2***. Two rings appear along the tangent direction (camera's x-axis).

**Value 2**: ***Binormal***. One ring appears along the binormal direction (camera's y-axis).

**Value 3**: ***Binormal2***. Two rings appear along the binormal direction (camera's y-axis).

**Value 4**: ***Radius***. Ring appears directly facing the camera, along the normal direction (camera's z-axis).

### MainLightToRing
- `red`: Blends the main light to the ring. Value range: $[0,1]$.  
- `green`: Controls the power of Half Lambert to determine the range for blending the main light to the ring. Value range: $[0,\infty)$, typically $[0,10]$.
- `blue`: Applies the mask based on the main light direction to the ring. Value range: $[-1,1]$. Negative values will invert the mask.
- `alpha`: Controls the power of Half Lambert to determine the range for masking the ring. Value range: $[0,\infty)$, typically $[0,10]$.

## Notes
- Materials using `Az/AdvancedExtraStyle` generally cannot exist independently; it is merely an overlay, providing additional stylized rendering, just as its name suggests. Therefore, you first need a base material, such as one using other Az Advanced shaders, and then apply `Az/AdvancedExtraStyle` by duplicating the material. Also make sure that `RenderQueue` is set higher than the base material.
- However, duplicating materials in Unity has its limitations. In Unity, a sub-mesh can have only one material (a one-to-one relationship), and any additional materials will be applied to the last sub-mesh. Therefore, when a mesh has multiple sub-meshes, extra caution is needed, as the material may not be successfully applied to the earlier sub-meshes.
- The rim light in `Az/AdvancedExtraStyle` supports both static rotation and main light masking, and they can coexist without any conflicts. (Unlike other shaders in Koikatsu with rim light,) it remains stable and does not exhibit unpredictable changes due to variations in the camera's viewpoint, thus ensuring a truly static and correct rotation.
- The offset and tiling of `MatcapTex(n)` are useful, allowing adjustments to the matcap textures. The offset controls the position shift, while the tiling scales the texture around its center (so the tiling works like `Tweak_MatCapUV` in Unity Toon Shader).
