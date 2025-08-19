# Matcap basic properties

- [Matcap basic properties](#matcap-basic-properties)
  - [Properties](#properties)
  - [Additional property descriptions](#additional-property-descriptions)
    - [MatcapUVMethod](#matcapuvmethod)

## Properties
| Name                       | Type          | Default value | Description                                                                                                                                                                        |
| -------------------------- | ------------- | ------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| MatcapTex                  | Texture2D(G)  | white         | Matcap texture.                                                                                                                                                                    |
| MatcapColor                | Color         | (1,1,1,1)     | Matcap color.                                                                                                                                                                      |
| MatcapUVRotation           | Float(-1,1)   | 0             | Matcap UV rotation in units of $\pi$.                                                                                                                                              |
| MatcapBlurLevel            | Float(0,10)   |               | Matcap blur level (mipmap level).                                                                                                                                                  |
| MatcapCancelCameraRolling  | Boolean       | true          | Whether to keep the matcap stationary when the camera rolls, identical to `CameraRolling_Stabilizer` in Unity Toon Shader.                                                         |
| MatcapReflectionAdjustment | Boolean       | false         | Used to adjust whether the matcap is mirrored horizontally or vertically when facing forward in the reflections.                                                                   |
| MatcapUVMethod             | Float(0,4)    | 2             | See [Additional property descriptions/MatcapUVMethod](#matcapuvmethod).                                                                                                            |
| MatcapBlendType            | Integer(0,11) | 3             | Matcap blend type, which determines how the matcap blends into the albedo. Its value is defined by [Blend type enum for color](../common/blend_type.md#blend-type-enum-for-color). |
| MatcapBlendBase            | Float(0,1)    | 0             | Determines the background color to be added during blending. 0: `black`, 1: `white`.                                                                                               |
| MatcapBlendSrc             | Integer(0,10) | 1             | Matcap source blend mode.                                                                                                                                                          |
| MatcapBlendDst             | Integer(0,10) | 1             | Matcap destination blend mode.                                                                                                                                                     |

**Properties not supported by shaders**
| Name            | Unsupported shaders                       |
| --------------- | ----------------------------------------- |
| MatcapBlendType | `Az/MatcapCutout`, `Az/MatcapAlpha`       |
| MatcapBlendBase | `Az/MatcapRawCutout`, `Az/MatcapRawAlpha` |
| MatcapBlendSrc  | `Az/MatcapRawCutout`, `Az/MatcapRawAlpha` |
| MatcapBlendDst  | `Az/MatcapRawCutout`, `Az/MatcapRawAlpha` |

## Additional property descriptions
### MatcapUVMethod
Controls the generation of the Matcap UVs, thus affecting the sampling of the matcap textures.

**Value 0**: ***Orthographic***. This is the most conventional sampling, but it will have problems such as edge distortion. 

**Value 1**: ***Spherical Reflection***. The reflection direction is calculated first in the perspective view, and the normal direction is calculated again in the orthogonal view.

**Value 2**: ***Constructing Projection***. Three.js's approach. Using the upward positive y-axis of the camera, construct the tangent and binormal to project onto the view space normal direction.

**Value 3**: ***Cross Product***. Simple construction of the cross product of the normal and the view vectors.

**Value 4**: ***RNM Blending***. Perturbation of the view space normal direction using the RNM normal blending. Unity Toon Shader's approach.
