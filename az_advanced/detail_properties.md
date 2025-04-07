# Detail properties

- [Detail properties](#detail-properties)
  - [Properties](#properties)
  - [Additional property descriptions](#additional-property-descriptions)
    - [MetallicGlossMapDetail(2)](#metallicglossmapdetail2)
    - [DetailMetallic(2)](#detailmetallic2)

## Properties
| Name                                              | Type            | Default value | Description                                                                                           |
| ------------------------------------------------- | --------------- | ------------- | ----------------------------------------------------------------------------------------------------- |
| DetailSet                                         | Boolean         | true          | See [DetailSet(n)](../common/detail_property_descriptions.md#detailsetn).                             |
| DetailSet2                                        | Boolean         | false         | See [DetailSet(n)](../common/detail_property_descriptions.md#detailsetn).                             |
| DetailMask                                        | Texture2D(L)    | red           | See [DetailMask](../common/detail_property_descriptions.md#detailmask).                               |
| *UV Rotation*                                     |                 |               |                                                                                                       |
| DetailUVRotation                                  | Float(-1,1)     | 0             | See [DetailUVRotation(n)](../common/detail_property_descriptions.md#detailuvrotationn).               |
| DetailUVRotation2                                 | Float(-1,1)     | 0             | See [DetailUVRotation(n)](../common/detail_property_descriptions.md#detailuvrotationn).               |
| *Normal*                                          |                 |               |                                                                                                       |
| NormalMapDetail                                   | Texture2D(L)    | bump          | See [NormalMapDetail(n)](../common//detail_property_descriptions.md#normalmapdetailn).                |
| DetailNormalMapScale                              | Float(0,1)      | 0             | See [DetailNormalMapScale(n)](../common/detail_property_descriptions.md#detailnormalmapscalen).       |
| NormalMapDetail2                                  | Texture2D(L)    | bump          | See [NormalMapDetail(n)](../common//detail_property_descriptions.md#normalmapdetailn).                |
| DetailNormalMapScale2                             | Float(0,1)      | 0             | See [DetailNormalMapScale(n)](../common/detail_property_descriptions.md#detailnormalmapscalen).       |
| *Albedo*                                          |                 |               |                                                                                                       |
| AlbedoMapDetail                                   | Texture2D(G)    | white         | See [AlbedoMapDetail(n)](../common/detail_property_descriptions.md#albedomapdetailn).                 |
| DetailAlbedoBlend                                 | Float(0,1)      | 0             | See [DetailAlbedoBlend(n)](../common/detail_property_descriptions.md#detailalbedoblendn).             |
| AlbedoMapDetail2                                  | Texture2D(G)    | white         | See [AlbedoMapDetail(n)](../common/detail_property_descriptions.md#albedomapdetailn).                 |
| DetailAlbedoBlend2                                | Float(0,1)      | 0             | See [DetailAlbedoBlend(n)](../common/detail_property_descriptions.md#detailalbedoblendn).             |
| DetailAlbedoBlendType                             | Integer(0,11)   | 1             | See [DetailAlbedoBlendType](../common/detail_property_descriptions.md#detailalbedoblendtype).         |
| *Metallic, Specular and Glossiness*               |                 |               |                                                                                                       |
| [~] MetallicGlossMapDetail (SpecGlossMapDetail)   | Texture2D(L)(G) | white         | See [Additional property descriptions/MetallicGlossMapDetail(2)](#metallicglossmapdetail2).           |
| [~] DetailMetallicBlend (DetailSpecularBlend)     | Float(0,1)      | 0             | See [Additional property descriptions/DetailMetallic(2)](#detailmetallic2).                           |
| DetailGlossinessBlend                             | Float(0,1)      | 0             | See [DetailGlossinessBlend(n)](../common/detail_property_descriptions.md#detailglossinessblendn).     |
| [~] MetallicGlossMapDetail2 (SpecGlossMapDetail2) | Texture2D(L)(G) | white         | See [Additional property descriptions/MetallicGlossMapDetail(2)](#metallicglossmapdetail2).           |
| [~] DetailMetallicBlend2 (DetailSpecularBlend2)   | Float(0,1)      | 0             | See [Additional property descriptions/DetailMetallic(2)](#detailmetallic2).                           |
| DetailGlossinessBlend2                            | Float(0,1)      | 0             | See [DetailGlossinessBlend(n)](../common/detail_property_descriptions.md#detailglossinessblendn).     |
| DetailMetallicBlendType                           | Integer(0,9)    | 2             | See [DetailMetallicBlendType](../common/detail_property_descriptions.md#detailmetallicblendtype).     |
| [+] DetailSpecularBlendType                       | Integer(0,11)   | 1             | See [DetailSpecularBlendType](../common/detail_property_descriptions.md#detailspecularblendtype).     |
| DetailGlossinessBlendType                         | Integer(0,9)    | 2             | See [DetailGlossinessBlendType](../common/detail_property_descriptions.md#detailglossinessblendtype). |
| *Occlusion*                                       |                 |               |                                                                                                       |
| OcclusionMapDetail                                | Texture2D(L)    | white         | See [OcclusionMapDetail(n)](../common/detail_property_descriptions.md#occlusionmapdetailn).           |
| DetailOcclusionStrength                           | Float(0,1)      | 0             | See [DetailOcclusionStrength(n)](../common/detail_property_descriptions.md#detailocclusionstrengthn). |
| OcclusionMapDetail2                               | Texture2D(L)    | white         | See [OcclusionMapDetail(n)](../common/detail_property_descriptions.md#occlusionmapdetailn).           |
| DetailOcclusionStrength2                          | Float(0,1)      | 0             | See [DetailOcclusionStrength(n)](../common/detail_property_descriptions.md#detailocclusionstrengthn). |

**Properties not supported by shaders**
| Name                        | Unsupported shaders                                                    |
| --------------------------- | ---------------------------------------------------------------------- |
| [+] DetailSpecularBlendType | All except `Az/AdvancedItem*`, `Az/AdvancedCloth*`, `Az/AdvancedLite*` |

## Additional property descriptions
### MetallicGlossMapDetail(2) 
- When `SPECULAR_SETUP` is turned off, they're `MetallicGlossMapDetail(2)`. Also see [MetallicGlossMapDetail(n)](../common/detail_property_descriptions.md#metallicglossmapdetailn).
- When `SPECULAR_SETUP` is turned on, they're `SpecGlossMapDetail(2)`. Also see [SpecGlossMapDetail(n)](../common/detail_property_descriptions.md#specglossmapdetailn).

### DetailMetallic(2)
- When `SPECULAR_SETUP` is turned off, they're `DetailMetallicBlend(2)`. Also see [DetailMetallicBlend(n)](../common/detail_property_descriptions.md#detailmetallicblendn). 
- When `SPECULAR_SETUP` is turned on, they're `DetailSpecularBlend(2)`. Also see [DetailSpecularBlend(n)](../common/detail_property_descriptions.md#detailspecularblendn).