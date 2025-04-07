# Detail properties

- [Detail properties](#detail-properties)
  - [Properties](#properties)

## Properties
| Name                      | Type          | Default value | Description                                                                                           |
| ------------------------- | ------------- | ------------- | ----------------------------------------------------------------------------------------------------- |
| DetailSet                 | Boolean       | true          | See [DetailSet(n)](../common/detail_property_descriptions.md#detailsetn).                             |
| DetailSet2                | Boolean       | false         | See [DetailSet(n)](../common/detail_property_descriptions.md#detailsetn).                             |
| DetailMask                | Texture2D(L)  | red           | See [DetailMask](../common/detail_property_descriptions.md#detailmask).                               |
| *UV Rotation*             |               |               |                                                                                                       |
| DetailUVRotation          | Float(-1,1)   | 0             | See [DetailUVRotation(n)](../common/detail_property_descriptions.md#detailuvrotationn).               |
| DetailUVRotation2         | Float(-1,1)   | 0             | See [DetailUVRotation(n)](../common/detail_property_descriptions.md#detailuvrotationn).               |
| *Normal*                  |               |               |                                                                                                       |
| NormalMapDetail           | Texture2D(L)  | bump          | See [NormalMapDetail(n)](../common//detail_property_descriptions.md#normalmapdetailn).                |
| DetailNormalMapScale      | Float(0,1)    | 0             | See [DetailNormalMapScale(n)](../common/detail_property_descriptions.md#detailnormalmapscalen).       |
| NormalMapDetail2          | Texture2D(L)  | bump          | See [NormalMapDetail(n)](../common//detail_property_descriptions.md#normalmapdetailn).                |
| DetailNormalMapScale2     | Float(0,1)    | 0             | See [DetailNormalMapScale(n)](../common/detail_property_descriptions.md#detailnormalmapscalen).       |
| *Albedo*                  |               |               |                                                                                                       |
| AlbedoMapDetail           | Texture2D(G)  | white         | See [AlbedoMapDetail(n)](../common/detail_property_descriptions.md#albedomapdetailn).                 |
| DetailAlbedoBlend         | Float(0,1)    | 0             | See [DetailAlbedoBlend(n)](../common/detail_property_descriptions.md#detailalbedoblendn).             |
| AlbedoMapDetail2          | Texture2D(G)  | white         | See [AlbedoMapDetail(n)](../common/detail_property_descriptions.md#albedomapdetailn).                 |
| DetailAlbedoBlend2        | Float(0,1)    | 0             | See [DetailAlbedoBlend(n)](../common/detail_property_descriptions.md#detailalbedoblendn).             |
| DetailAlbedoBlendType     | Integer(0,11) | 1             | See [DetailAlbedoBlendType](../common/detail_property_descriptions.md#detailalbedoblendtype).         |
| *Metallic and Glossiness* |               |               |                                                                                                       |
| MetallicGlossMapDetail    | Texture2D(L)  | white         | See [MetallicGlossMapDetail(n)](../common/detail_property_descriptions.md#metallicglossmapdetailn).   |
| DetailMetallicBlend       | Float(0,1)    | 0             | See [DetailMetallicBlend(n)](../common/detail_property_descriptions.md#detailmetallicblendn).         |
| DetailGlossinessBlend     | Float(0,1)    | 0             | See [DetailGlossinessBlend(n)](../common/detail_property_descriptions.md#detailglossinessblendn).     |
| MetallicGlossMapDetail2   | Texture2D(L)  | white         | See [MetallicGlossMapDetail(n)](../common/detail_property_descriptions.md#metallicglossmapdetailn).   |
| DetailMetallicBlend2      | Float(0,1)    | 0             | See [DetailMetallicBlend(n)](../common/detail_property_descriptions.md#detailmetallicblendn).         |
| DetailGlossinessBlend2    | Float(0,1)    | 0             | See [DetailGlossinessBlend(n)](../common/detail_property_descriptions.md#detailglossinessblendn).     |
| DetailMetallicBlendType   | Integer(0,9)  | 2             | See [DetailMetallicBlendType](../common/detail_property_descriptions.md#detailmetallicblendtype).     |
| DetailGlossinessBlendType | Integer(0,9)  | 2             | See [DetailGlossinessBlendType](../common/detail_property_descriptions.md#detailglossinessblendtype). |
| *Occlusion*               |               |               |                                                                                                       |
| OcclusionMapDetail        | Texture2D(L)  | white         | See [OcclusionMapDetail(n)](../common/detail_property_descriptions.md#occlusionmapdetailn).           |
| DetailOcclusionStrength   | Float(0,1)    | 0             | See [DetailOcclusionStrength(n)](../common/detail_property_descriptions.md#detailocclusionstrengthn). |
| OcclusionMapDetail2       | Texture2D(L)  | white         | See [OcclusionMapDetail(n)](../common/detail_property_descriptions.md#occlusionmapdetailn).           |
| DetailOcclusionStrength2  | Float(0,1)    | 0             | See [DetailOcclusionStrength(n)](../common/detail_property_descriptions.md#detailocclusionstrengthn). |
