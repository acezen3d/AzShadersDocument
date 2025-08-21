# Main PBR properties

- [Main PBR properties](#main-pbr-properties)
  - [Properties](#properties)
  - [Additional property descriptions](#additional-property-descriptions)
    - [MetallicGlossMap](#metallicglossmap)

## Properties
| Name                            | Type            | Default value                   | Description                                                                                |
| ------------------------------- | --------------- | ------------------------------- | ------------------------------------------------------------------------------------------ |
| BaseColor                       | Color           | (1,1,1,1)                       | See [BaseColor](../common/pbr_property_descriptions.md#basecolor).                         |
| Alpha                           | Float(0,1)      | 1                               | See [Alpha](../common/pbr_property_descriptions.md#alpha).                                 |
| MainTex                         | Texture2D(G)    | white                           | See [MainTex](../common/pbr_property_descriptions.md#maintex).                             |
| NormalMap                       | Texture2D(L)    | bump                            | See [NormalMap](../common/pbr_property_descriptions.md#normalmap).                         |
| NormalMapScale                  | Float(0,1)      | 1                               | See [NormalMapScale](../common/pbr_property_descriptions.md#normalmapscale).               |
| TangentMap                      | Texture2D(L)    | default_tangent_map, *explicit* | See [TangentMap](../common/pbr_property_descriptions.md#tangentmap).                       |
| TangentMapScale                 | Float(0,1)      | 1                               | See [TangentMapScale](../common/pbr_property_descriptions.md#tangentmapscale).             |
| MetallicGlossMap (SpecGlossMap) | Texture2D(L)(G) | white                           | See [Additional property descriptions/MetallicGlossMap](#metallicglossmap).                |
| Metallic                        | Float(0,1)      | 0                               | See [Metallic](../common/pbr_property_descriptions.md#metallic).                           |
| SpecColor                       | Color           | (0.2,0.2,0.2,1)                 | See [SpecColor](../common/pbr_property_descriptions.md#speccolor).                         |
| Glossiness                      | Float(0,1)      | 0.5                             | See [Glossiness](../common/pbr_property_descriptions.md#glossiness).                       |
| GlossinessSec                   | Float(0,1)      | 0.5                             | See [GlossinessSec](../common/pbr_property_descriptions.md#glossinesssec).                 |
| LobeMix                         | Float(0,1)      | 0                               | See [LobeMix](../common/pbr_property_descriptions.md#lobemix).                             |
| OcclusionMap                    | Texture2D(L)    | white                           | See [OcclusionMap](../common/pbr_property_descriptions.md#occlusionmap).                   |
| OcclusionStrength               | Float(0,1)      | 1                               | See [OcclusionStrength](../common/pbr_property_descriptions.md#occlusionstrength).         |
| Anisotropy                      | Float(0,1)      | 1                               | See [Anisotropy](../common/pbr_property_descriptions.md#anisotropy).                       |
| AnisotropySec                   | Float(0,1)      | 1                               | See [AnisotropySec](../common/pbr_property_descriptions.md#anisotropysec).                 |
| AnisotropyRotation              | Float(-1,1)     | 1                               | See [AnisotropyRotation](../common/pbr_property_descriptions.md#anisotropyrotation).       |
| AnisotropyRotationSec           | Float(-1,1)     | 1                               | See [AnisotropyRotationSec](../common/pbr_property_descriptions.md#anisotropyrotationsec). |
| EmissionMap                     | Texture2D(G)    | white                           | See [EmissionMap](../common/pbr_property_descriptions.md#emissionmap).                     |
| EmissionColor                   | Color           | (0,0,0,0)                       | See [EmissionColor](../common/pbr_property_descriptions.md#emissioncolor).                 |
| EmissionIntensity               | Float(0,2)      | 0                               | See [EmissionIntensity](../common/pbr_property_descriptions.md#emissionintensity).         |
| SPECULAR_SETUP                  | Keyword         | false                           | See [SPECULAR_SETUP](../common/pbr_property_descriptions.md#specular_setup).               |
| DUAL_SPECULAR_LOBE              | Keyword         | false                           | See [DUAL_SPECULAR_LOBE](../common/pbr_property_descriptions.md#dual_specular_lobe).       |

**Properties not supported by shaders**
| Name                  | Unsupported shaders                         |
| --------------------- | ------------------------------------------- |
| Alpha                 | `Az/SubsurfaceSkin`, `Az/SubsurfaceSubpart` |
| TangentMap            | `Az/SubsurfaceSkin`, `Az/SubsurfaceSubpart` |
| TangentMapScale       | `Az/SubsurfaceSkin`, `Az/SubsurfaceSubpart` |
| Anisotropy            | `Az/SubsurfaceSkin`, `Az/SubsurfaceSubpart` |
| AnisotropySec         | `Az/SubsurfaceSkin`, `Az/SubsurfaceSubpart` |
| AnisotropyRotation    | `Az/SubsurfaceSkin`, `Az/SubsurfaceSubpart` |
| AnisotropyRotationSec | `Az/SubsurfaceSkin`, `Az/SubsurfaceSubpart` |
| SpecColor             | `Az/SubsurfaceSkin`, `Az/SubsurfaceSubpart` |
| SPECULAR_SETUP        | `Az/SubsurfaceSkin`, `Az/SubsurfaceSubpart` |

## Additional property descriptions
### MetallicGlossMap
- When `SPECULAR_SETUP` is turned off, it's `MetallicGlossMap`. Also see [MetallicGlossMap](../common/pbr_property_descriptions.md#metallicglossmap).
- When `SPECULAR_SETUP` is turned on, it's `SpecGlossMap`. Also see [SpecGlossMap](../common/pbr_property_descriptions.md#specglossmap).
