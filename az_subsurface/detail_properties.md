# Detail properties

- [Detail properties](#detail-properties)
  - [Properties](#properties)
  - [Additional property descriptions](#additional-property-descriptions)
    - [MetallicGlossMapDetail(n)](#metallicglossmapdetailn)
    - [DetailMetallicBlend(n)](#detailmetallicblendn)

## Properties
| Name                                          | Type            | Default value                   | Description                                                                                                 |
| --------------------------------------------- | --------------- | ------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| DetailSet                                     | Boolean         | true                            | See [DetailSet(n)](../common/detail_property_descriptions.md#detailsetn).                                   |
| DetailSet2                                    | Boolean         | false                           | See [DetailSet(n)](../common/detail_property_descriptions.md#detailsetn).                                   |
| DetailSet3                                    | Boolean         | false                           | See [DetailSet(n)](../common/detail_property_descriptions.md#detailsetn).                                   |
| DetailMask                                    | Texture2D(L)    | red                             | See [DetailMask](../common/detail_property_descriptions.md#detailmask).                                     |
| *UV Rotation*                                 |                 |                                 |                                                                                                             |
| DetailUVRotation                              | Float(-1,1)     | 0                               | See [DetailUVRotation(n)](../common/detail_property_descriptions.md#detailuvrotationn).                     |
| DetailUVRotation2                             | Float(-1,1)     | 0                               | See [DetailUVRotation(n)](../common/detail_property_descriptions.md#detailuvrotationn).                     |
| DetailUVRotation3                             | Float(-1,1)     | 0                               | See [DetailUVRotation(n)](../common/detail_property_descriptions.md#detailuvrotationn).                     |
| *Normal*                                      |                 |                                 |                                                                                                             |
| NormalMapDetail                               | Texture2D(L)    | bump                            | See [NormalMapDetail(n)](../common//detail_property_descriptions.md#normalmapdetailn).                      |
| NormalMapDetail2                              | Texture2D(L)    | bump                            | See [NormalMapDetail(n)](../common//detail_property_descriptions.md#normalmapdetailn).                      |
| NormalMapDetail3                              | Texture2D(L)    | bump                            | See [NormalMapDetail(n)](../common//detail_property_descriptions.md#normalmapdetailn).                      |
| NormalMapDetailBiases                         | Vector          | (0,0,0,0)                       | See [NormalMapDetailBiases](../common/detail_property_descriptions.md#normalmapdetailbiases).               |
| DetailNormalMapScale                          | Float(0,1)      | 0                               | See [DetailNormalMapScale(n)](../common/detail_property_descriptions.md#detailnormalmapscalen).             |
| DetailNormalMapScale2                         | Float(0,1)      | 0                               | See [DetailNormalMapScale(n)](../common/detail_property_descriptions.md#detailnormalmapscalen).             |
| DetailNormalMapScale3                         | Float(0,1)      | 0                               | See [DetailNormalMapScale(n)](../common/detail_property_descriptions.md#detailnormalmapscalen).             |
| *Tangent*                                     |                 |                                 |                                                                                                             |
| TangentMapDetail                              | Texture2D(L)    | default_tangent_map, *explicit* | See [TangentMapDetail(n)](../common//detail_property_descriptions.md#tangentmapdetailn).                    |
| TangentMapDetail2                             | Texture2D(L)    | default_tangent_map, *explicit* | See [TangentMapDetail(n)](../common//detail_property_descriptions.md#tangentmapdetailn).                    |
| TangentMapDetail3                             | Texture2D(L)    | default_tangent_map, *explicit* | See [TangentMapDetail(n)](../common//detail_property_descriptions.md#tangentmapdetailn).                    |
| TangentMapDetailBiases                        | Vector          | (0,0,0,0)                       | See [TangentMapDetailBiases](../common/detail_property_descriptions.md#tangentmapdetailbiases).             |
| DetailTangentMapScale                         | Float(0,1)      | 0                               | See [DetailTangentMapScale(n)](../common/detail_property_descriptions.md#detailtangentmapscalen).           |
| DetailTangentMapScale2                        | Float(0,1)      | 0                               | See [DetailTangentMapScale(n)](../common/detail_property_descriptions.md#detailtangentmapscalen).           |
| DetailTangentMapScale3                        | Float(0,1)      | 0                               | See [DetailTangentMapScale(n)](../common/detail_property_descriptions.md#detailtangentmapscalen).           |
| *Albedo*                                      |                 |                                 |                                                                                                             |
| AlbedoMapDetail                               | Texture2D(G)    | white                           | See [AlbedoMapDetail(n)](../common/detail_property_descriptions.md#albedomapdetailn).                       |
| AlbedoMapDetail2                              | Texture2D(G)    | white                           | See [AlbedoMapDetail(n)](../common/detail_property_descriptions.md#albedomapdetailn).                       |
| AlbedoMapDetail3                              | Texture2D(G)    | white                           | See [AlbedoMapDetail(n)](../common/detail_property_descriptions.md#albedomapdetailn).                       |
| AlbedoMapDetailBiases                         | Vector          | (0,0,0,0)                       | See [AlbedoMapDetailBiases](../common/detail_property_descriptions.md#albedomapdetailbiases).               |
| DetailAlbedoBlend                             | Float(0,1)      | 0                               | See [DetailAlbedoBlend(n)](../common/detail_property_descriptions.md#detailalbedoblendn).                   |
| DetailAlbedoBlend2                            | Float(0,1)      | 0                               | See [DetailAlbedoBlend(n)](../common/detail_property_descriptions.md#detailalbedoblendn).                   |
| DetailAlbedoBlend3                            | Float(0,1)      | 0                               | See [DetailAlbedoBlend(n)](../common/detail_property_descriptions.md#detailalbedoblendn).                   |
| DetailAlphaBlend                              | Float(0,1)      | 0                               | See [DetailAlphaBlend(n)](../common/detail_property_descriptions.md#detailalphablendn).                     |
| DetailAlphaBlend2                             | Float(0,1)      | 0                               | See [DetailAlphaBlend(n)](../common/detail_property_descriptions.md#detailalphablendn).                     |
| DetailAlphaBlend3                             | Float(0,1)      | 0                               | See [DetailAlphaBlend(n)](../common/detail_property_descriptions.md#detailalphablendn).                     |
| DetailAlbedoBlendType                         | Integer(0,11)   | 1                               | See [DetailAlbedoBlendType](../common/detail_property_descriptions.md#detailalbedoblendtype).               |
| DetailAlphaBlendType                          | Integer(0,9)    | 1                               | See [DetailAlphaBlendType](../common/detail_property_descriptions.md#detailalphablendtype).                 |
| *Metallic, Specular and Glossiness*           |                 |                                 |                                                                                                             |
| MetallicGlossMapDetail (SpecGlossMapDetail)   | Texture2D(L)(G) | white                           | See [Additional property descriptions/MetallicGlossMapDetail(n)](#metallicglossmapdetailn).                 |
| MetallicGlossMapDetail2 (SpecGlossMapDetail2) | Texture2D(L)(G) | white                           | See [Additional property descriptions/MetallicGlossMapDetail(n)](#metallicglossmapdetailn).                 |
| MetallicGlossMapDetail3 (SpecGlossMapDetail3) | Texture2D(L)(G) | white                           | See [Additional property descriptions/MetallicGlossMapDetail(n)](#metallicglossmapdetailn).                 |
| MetallicGlossMapDetailBiases                  | Vector          | (0,0,0,0)                       | See [MetallicGlossMapDetailBiases](../common/detail_property_descriptions.md#metallicglossmapdetailbiases). |
| DetailMetallicBlend (DetailSpecularBlend)     | Float(0,1)      | 0                               | See [Additional property descriptions/DetailMetallicBlend(n)](#detailmetallicblendn).                       |
| DetailMetallicBlend2 (DetailSpecularBlend2)   | Float(0,1)      | 0                               | See [Additional property descriptions/DetailMetallicBlend(n)](#detailmetallicblendn).                       |
| DetailMetallicBlend3 (DetailSpecularBlend3)   | Float(0,1)      | 0                               | See [Additional property descriptions/DetailMetallicBlend(n)](#detailmetallicblendn).                       |
| DetailGlossinessBlend                         | Float(0,1)      | 0                               | See [DetailGlossinessBlend(n)](../common/detail_property_descriptions.md#detailglossinessblendn).           |
| DetailGlossinessBlend2                        | Float(0,1)      | 0                               | See [DetailGlossinessBlend(n)](../common/detail_property_descriptions.md#detailglossinessblendn).           |
| DetailGlossinessBlend3                        | Float(0,1)      | 0                               | See [DetailGlossinessBlend(n)](../common/detail_property_descriptions.md#detailglossinessblendn).           |
| DetailMetallicBlendType                       | Integer(0,9)    | 2                               | See [DetailMetallicBlendType](../common/detail_property_descriptions.md#detailmetallicblendtype).           |
| DetailSpecularBlendType                       | Integer(0,11)   | 1                               | See [DetailSpecularBlendType](../common/detail_property_descriptions.md#detailspecularblendtype).           |
| DetailGlossinessBlendType                     | Integer(0,9)    | 2                               | See [DetailGlossinessBlendType](../common/detail_property_descriptions.md#detailglossinessblendtype).       |
| *Occlusion and Anisotropy*                    |                 |                                 |                                                                                                             |
| OcclusionMapDetail                            | Texture2D(L)    | white                           | See [OcclusionMapDetail(n)](../common/detail_property_descriptions.md#occlusionmapdetailn).                 |
| OcclusionMapDetail2                           | Texture2D(L)    | white                           | See [OcclusionMapDetail(n)](../common/detail_property_descriptions.md#occlusionmapdetailn).                 |
| OcclusionMapDetail3                           | Texture2D(L)    | white                           | See [OcclusionMapDetail(n)](../common/detail_property_descriptions.md#occlusionmapdetailn).                 |
| OcclusionMapDetailBiases                      | Vector          | (0,0,0,0)                       | See [OcclusionMapDetailBiases](../common/detail_property_descriptions.md#occlusionmapdetailbiases).         |
| DetailOcclusionStrength                       | Float(0,1)      | 0                               | See [DetailOcclusionStrength(n)](../common/detail_property_descriptions.md#detailocclusionstrengthn).       |
| DetailOcclusionStrength2                      | Float(0,1)      | 0                               | See [DetailOcclusionStrength(n)](../common/detail_property_descriptions.md#detailocclusionstrengthn).       |
| DetailOcclusionStrength3                      | Float(0,1)      | 0                               | See [DetailOcclusionStrength(n)](../common/detail_property_descriptions.md#detailocclusionstrengthn).       |
| DetailAnisotropyBlend                         | Float(0,1)      | 0                               | See [DetailAnisotropyBlend(n)](../common/detail_property_descriptions.md#detailanisotropyblendn).           |
| DetailAnisotropyBlend2                        | Float(0,1)      | 0                               | See [DetailAnisotropyBlend(n)](../common/detail_property_descriptions.md#detailanisotropyblendn).           |
| DetailAnisotropyBlend3                        | Float(0,1)      | 0                               | See [DetailAnisotropyBlend(n)](../common/detail_property_descriptions.md#detailanisotropyblendn).           |
| DetailAnisotropyBlendType                     | Integer(0,9)    | 2                               | See [DetailGlossinessBlendType](../common/detail_property_descriptions.md#detailanisotropyblendtype).       |

**Properties not supported by shaders**
| Name                      | Unsupported shaders                         |
| ------------------------- | ------------------------------------------- |
| TangentMapDetail          | `Az/SubsurfaceSkin`, `Az/SubsurfaceSubpart` |
| TangentMapDetail2         | `Az/SubsurfaceSkin`, `Az/SubsurfaceSubpart` |
| TangentMapDetail3         | `Az/SubsurfaceSkin`, `Az/SubsurfaceSubpart` |
| TangentMapDetailBiases    | `Az/SubsurfaceSkin`, `Az/SubsurfaceSubpart` |
| DetailTangentMapScale     | `Az/SubsurfaceSkin`, `Az/SubsurfaceSubpart` |
| DetailTangentMapScale2    | `Az/SubsurfaceSkin`, `Az/SubsurfaceSubpart` |
| DetailTangentMapScale3    | `Az/SubsurfaceSkin`, `Az/SubsurfaceSubpart` |
| DetailAnisotropyBlend     | `Az/SubsurfaceSkin`, `Az/SubsurfaceSubpart` |
| DetailAnisotropyBlend2    | `Az/SubsurfaceSkin`, `Az/SubsurfaceSubpart` |
| DetailAnisotropyBlend3    | `Az/SubsurfaceSkin`, `Az/SubsurfaceSubpart` |
| DetailAnisotropyBlendType | `Az/SubsurfaceSkin`, `Az/SubsurfaceSubpart` |
| DetailSpecularBlendType   | `Az/SubsurfaceSkin`, `Az/SubsurfaceSubpart` |

## Additional property descriptions
### MetallicGlossMapDetail(n) 
- When `SPECULAR_SETUP` is turned off, they're `MetallicGlossMapDetail(n)`. Also see [MetallicGlossMapDetail(n)](../common/detail_property_descriptions.md#metallicglossmapdetailn).
- When `SPECULAR_SETUP` is turned on, they're `SpecGlossMapDetail(n)`. Also see [SpecGlossMapDetail(n)](../common/detail_property_descriptions.md#specglossmapdetailn).

### DetailMetallicBlend(n)
- When `SPECULAR_SETUP` is turned off, they're `DetailMetallicBlend(n)`. Also see [DetailMetallicBlend(n)](../common/detail_property_descriptions.md#detailmetallicblendn). 
- When `SPECULAR_SETUP` is turned on, they're `DetailSpecularBlend(n)`. Also see [DetailSpecularBlend(n)](../common/detail_property_descriptions.md#detailspecularblendn).
