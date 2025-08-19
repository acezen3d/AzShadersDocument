# Main PBR properties

- [Main PBR properties](#main-pbr-properties)
  - [Properties](#properties)

## Properties
| Name              | Type         | Default value | Description                                                                                                        |
| ----------------- | ------------ | ------------- | ------------------------------------------------------------------------------------------------------------------ |
| BaseColor         | Color        | (1,1,1,1)     | Albedo color, will be multiplied with `MainTex` `rgb` channels to determine the albedo. `alpha` channel: not used. |
| Alpha             | Float(0,1)   | 1             | Alpha value, will be multiplied with `MainTex` `a` channel to determine the alpha.                                 |
| MainTex           | Texture2D(G) | white         | See [MainTex](../common/pbr_property_descriptions.md#maintex).                                                     |
| NormalMap         | Texture2D(L) | bump          | See [NormalMap](../common/pbr_property_descriptions.md#normalmap).                                                 |
| NormalMapScale    | Float(0,1)   | 1             | See [NormalMapScale](../common/pbr_property_descriptions.md#normalmapscale).                                       |
| MetallicGlossMap  | Texture2D(L) | white         | See [MetallicGlossMap](../common/pbr_property_descriptions.md#metallicglossmap).                                   |
| Metallic          | Float(0,1)   | 0             | See [Metallic](../common/pbr_property_descriptions.md#metallic).                                                   |
| Glossiness        | Float(0,1)   | 0.5           | See [Glossiness](../common/pbr_property_descriptions.md#glossiness).                                               |
| OcclusionMap      | Texture2D(L) | white         | See [OcclusionMap](../common/pbr_property_descriptions.md#occlusionmap).                                           |
| OcclusionStrength | Float(0,1)   | 1             | See [OcclusionStrength](../common/pbr_property_descriptions.md#occlusionstrength).                                 |
| EmissionMap       | Texture2D(G) | white         | See [EmissionMap](../common/pbr_property_descriptions.md#emissionmap).                                             |
| EmissionColor     | Color        | (0,0,0,0)     | See [EmissionColor](../common/pbr_property_descriptions.md#emissioncolor).                                         |
| EmissionIntensity | Float(0,2)   | 0             | See [EmissionIntensity](../common/pbr_property_descriptions.md#emissionintensity).                                 |

**Properties not supported by shaders**
| Name              | Unsupported shaders                 |
| ----------------- | ----------------------------------- |
| Alpha             | All except `Az/Standard*Alpha`      |
| NormalMap         | `Az/StandardEye`, `Az/StandardEyeW` |
| NormalMapScale    | `Az/StandardEye`, `Az/StandardEyeW` |
| OcclusionMap      | `Az/StandardEye`, `Az/StandardEyeW` |
| OcclusionStrength | `Az/StandardEye`, `Az/StandardEyeW` |
