# Matcap basic properties

- [Matcap basic properties](#matcap-basic-properties)
  - [Properties](#properties)

## Properties
| Name                       | Type          | Default value | Description                                                                                                                                                                            |
| -------------------------- | ------------- | ------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| MatcapTex                  | Texture2D(G)  | white         | The matcap texture.                                                                                                                                                                    |
| MatcapColor                | Color         | (1,1,1,1)     | The matcap color.                                                                                                                                                                      |
| MatcapUVRotation           | Float(-1,1)   | 0             | The matcap UV rotation in units of $\pi$.                                                                                                                                              |
| MatcapBlurLevel            | Float(0,10)   |               | The matcap blur level (mipmap level).                                                                                                                                                  |
| MatcapCancelCameraRolling  | Boolean       | true          | Whether to keep the matcap stationary when the camera rolls, identical to `CameraRolling_Stabilizer` in Unity Toon Shader.                                                             |
| MatcapReflectionAdjustment | Boolean       | false         | Used to determine whether the matcap is mirrored horizontally or vertically when facing forward in reflections.                                                                        |
| MatcapUVMethod             | Integer(0,4)  | 2             | See [MatcapUVMethod](../common/matcap_property_descriptions.md#matcapuvmethod).                                                                                                        |
| MatcapBlendType            | Integer(0,11) | 3             | The matcap blend type, which determines how the matcap blends into the albedo. Its value is defined by [Blend type enum for color](../common/blend_type.md#blend-type-enum-for-color). |
| MatcapBlendBase            | Float(0,1)    | 0             | Determines the background color to be added during blending. 0: `black`, 1: `white`.                                                                                                   |
| MatcapBlendSrc             | Integer(0,10) | 1             | The matcap source blend mode.                                                                                                                                                          |
| MatcapBlendDst             | Integer(0,10) | 1             | The matcap destination blend mode.                                                                                                                                                     |

**Properties not supported by shaders**
| Name            | Unsupported shaders                       |
| --------------- | ----------------------------------------- |
| MatcapBlendType | `Az/MatcapCutout`, `Az/MatcapAlpha`       |
| MatcapBlendBase | `Az/MatcapRawCutout`, `Az/MatcapRawAlpha` |
| MatcapBlendSrc  | `Az/MatcapRawCutout`, `Az/MatcapRawAlpha` |
| MatcapBlendDst  | `Az/MatcapRawCutout`, `Az/MatcapRawAlpha` |
