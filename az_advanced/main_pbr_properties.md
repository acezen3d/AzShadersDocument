# Main PBR properties

- [Main PBR properties](#main-pbr-properties)
  - [Properties](#properties)
  - [Additional property descriptions](#additional-property-descriptions)
    - [MetallicGlossMap](#metallicglossmap)
    - [SPECULAR\_SETUP](#specular_setup)
  - [Reference](#reference)
    - [Metallic setup](#metallic-setup)
    - [Specular setup](#specular-setup)

## Properties
| Name                                | Type            | Default value   | Description                                                                                                        |
| ----------------------------------- | --------------- | --------------- | ------------------------------------------------------------------------------------------------------------------ |
| BaseColor                           | Color           | (1,1,1,1)       | Albedo color, will be multiplied with `MainTex` `rgb` channels to determine the albedo. `alpha` channel: not used. |
| Alpha                               | Float(0,1)      | 1               | Alpha value, will be multiplied with `MainTex` `alpha` channel to determine the alpha.                             |
| MainTex                             | Texture2D(G)    | white           | See [MainTex](../common/pbr_property_descriptions.md#maintex).                                                     |
| NormalMap                           | Texture2D(L)    | bump            | See [NormalMap](../common/pbr_property_descriptions.md#normalmap).                                                 |
| NormalMapScale                      | Float(0,1)      | 1               | See [NormalMapScale](../common/pbr_property_descriptions.md#normalmapscale).                                       |
| [~] MetallicGlossMap (SpecGlossMap) | Texture2D(L)(G) | white           | See [Additional property descriptions/MetallicGlossMap](#metallicglossmap).                                        |
| Metallic                            | Float(0,1)      | 0               | See [Metallic](../common/pbr_property_descriptions.md#metallic).                                                   |
| [+] SpecColor                       | Color           | (0.2,0.2,0.2,1) | See [SpecColor](../common/pbr_property_descriptions.md#speccolor).                                                 |
| Glossiness                          | Float(0,1)      | 0.5             | See [Glossiness](../common/pbr_property_descriptions.md#glossiness).                                               |
| OcclusionMap                        | Texture2D(L)    | white           | See [OcclusionMap](../common/pbr_property_descriptions.md#occlusionmap).                                           |
| OcclusionStrength                   | Float(0,1)      | 1               | See [OcclusionStrength](../common/pbr_property_descriptions.md#occlusionstrength).                                 |
| EmissionMap                         | Texture2D(G)    | white           | See [EmissionMap](../common/pbr_property_descriptions.md#emissionmap).                                             |
| EmissionColor                       | Color           | (0,0,0,0)       | See [EmissionColor](../common/pbr_property_descriptions.md#emissioncolor).                                         |
| EmissionIntensity                   | Float(0,2)      | 0               | See [EmissionIntensity](../common/pbr_property_descriptions.md#emissionintensity).                                 |
| [+] SPECULAR_SETUP                  | Keyword         | false           | See [Additional property descriptions/SPECULAR_SETUP](#specular_setup).                                            |

**Properties not supported by shaders**
| Name              | Unsupported shaders                                                    |
| ----------------- | ---------------------------------------------------------------------- |
| Alpha             | All except `Az/Advanced*Alpha`, `Az/Advanced*AlphaAlt`                 |
| NormalMap         | `Az/AdvancedEye`, `Az/AdvancedEyeW`                                    |
| NormalMapScale    | `Az/AdvancedEye`, `Az/AdvancedEyeW`                                    |
| SpecColor         | All except `Az/AdvancedItem*`, `Az/AdvancedCloth*`, `Az/AdvancedLite*` |
| SPECULAR_SETUP    | All except `Az/AdvancedItem*`, `Az/AdvancedCloth*`, `Az/AdvancedLite*` |
| OcclusionMap      | `Az/AdvancedEye`, `Az/AdvancedEyeW`                                    |
| OcclusionStrength | `Az/AdvancedEye`, `Az/AdvancedEyeW`                                    |

## Additional property descriptions
### MetallicGlossMap
- When `SPECULAR_SETUP` is turned off, it's `MetallicGlossMap`. Also see [MetallicGlossMap](../common/pbr_property_descriptions.md#metallicglossmap).
- When `SPECULAR_SETUP` is turned on, it's `SpecGlossMap`. Also see [SpecGlossMap](../common/pbr_property_descriptions.md#specglossmap).

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