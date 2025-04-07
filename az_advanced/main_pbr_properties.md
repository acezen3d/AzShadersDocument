# Main PBR properties

- [Main PBR properties](#main-pbr-properties)
  - [Properties](#properties)
  - [Additional property description](#additional-property-description)
    - [MetallicGlossMap](#metallicglossmap)
    - [SPECULAR\_SETUP](#specular_setup)
  - [Reference](#reference)
    - [Metallic setup](#metallic-setup)
    - [Specular setup](#specular-setup)

## Properties
| Name                             | Type        | Default value   | Description                                                                                                                                                                           |
| -------------------------------- | ----------- | --------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| BaseColor                        | Color       | (1,1,1,1)       | Main color, will be multiplied with `MainTex` to get the final main albedo color. `alpha`: not used.                                                                                  |
| MainTex                          | Texture🌈    | white           | Main albedo.                                                                                                                                                                          |
| NormalMap                        | Texture✨    | bump            | Main normal map.                                                                                                                                                                      |
| NormalMapScale                   | Float(0,1)  | 1               | Main normal map scale.                                                                                                                                                                |
| 🟠MetallicGlossMap (SpecGlossMap) | Texture✨(🌈) | white           | See [Additional property description/MetallicGlossMap](#metallicglossmap).                                                                                                            |
| Metallic                         | Float(0,1)  | 0               | Metallic control, will be multiplied with `MetallicGlossMap` `red` channel to get the final main metallic value.                                                                      |
| 🟢SpecColor                       | Color       | (0.2,0.2,0.2,1) | Specular color control, will be multiplied with `MetallicGlossMap` `rgb` channels to get the final main specular color.                                                               |
| Glossiness                       | Float(0,1)  | 0.5             | Glossiness control, will be multiplied with `MetallicGlossMap` `alpha` channel to get the final main glossiness value.                                                                |
| OcclusionMap                     | Texture✨    | white           | Main ambient occlusion map, effective when there are indirect lights in the scene. `green` channel is used.                                                                           |
| OcclusionStrength                | Float(0,1)  | 1               | Ambient occlusion strength.                                                                                                                                                           |
| EmissionMap                      | Texture🌈    | white           | Emission map, no need to be a greyscale but a color texture. `rgb`: emission color, `alpha` channel not used and will be handled automatically. Note black (0,0,0) means no emission. |
| EmissionColor                    | Color       | (0,0,0,0)       | Emission color, will be multiplied with `EmissionMap`.                                                                                                                                |
| EmissionIntensity                | Float(0,2)  | 0               | Emission intensity control, will be multiplied with `EmissionMap` and `EmissionColor`.                                                                                                |
| 🟢SPECULAR_SETUP                  | Keyword     | false           | See [Additional property description/SPECULAR_SETUP](#specular_setup).                                                                                                                |

**Properties not supported by shaders**
| Name              | Unsupported shaders                                                    |
| ----------------- | ---------------------------------------------------------------------- |
| NormalMap         | `Az/AdvancedEye`, `Az/AdvancedEyeW`                                    |
| NormalMapScale    | `Az/AdvancedEye`, `Az/AdvancedEyeW`                                    |
| SpecColor         | All except `Az/AdvancedItem*`, `Az/AdvancedCloth*`, `Az/AdvancedLite*` |
| SPECULAR_SETUP    | All except `Az/AdvancedItem*`, `Az/AdvancedCloth*`, `Az/AdvancedLite*` |
| OcclusionMap      | `Az/AdvancedEye`, `Az/AdvancedEyeW`                                    |
| OcclusionStrength | `Az/AdvancedEye`, `Az/AdvancedEyeW`                                    |

## Additional property description
### MetallicGlossMap
- When `SPECULAR_SETUP` is turned off, it's `MetallicGlossMap`, metallic - ***red***, glossiness - ***alpha***.
- When `SPECULAR_SETUP` is turned on, it's `SpecGlossMap`, specular color - ***rgb***, glossiness - ***alpha***.

### SPECULAR_SETUP
Some of Az Advanced shaders support both the metallic setup and specular setup, switchable via `SPECULAR_SETUP`. This corresponds to Unity's Standard shader and StandardSpecular shader, as described in: [Metallic vs Specular Workflow - Unity Manual](https://docs.unity3d.com/Manual/StandardShaderMetallicVsSpecular.html).

When switching to the specular setup, the original metallic-related properties are interpreted as their specular counterparts:
- `MetallicGlossMap` -> `SpecGlossMap`.
- `MetallicGlossMapDetail(2)` -> `SpecGlossMapDetail(2)`.
- `DetailMetallic` -> `DetailSpecular`.

## Reference
### Metallic setup
![chart metallic](https://docs.unity3d.com/cn/2018.3/uploads/Main/StandardShaderCalibrationChartMetallic.jpg)

### Specular setup
![chart specular](https://docs.unity3d.com/cn/2018.3/uploads/Main/StandardShaderCalibrationChartSpecular.jpg)