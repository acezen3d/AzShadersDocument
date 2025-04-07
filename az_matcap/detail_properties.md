# Detail properties

- [Detail properties](#detail-properties)
  - [Properties](#properties)

## Properties
| Name                      | Type          | Default value | Description                                                                                           |
| ------------------------- | ------------- | ------------- | ----------------------------------------------------------------------------------------------------- |
| DetailMask                | Texture2D(L)  | red           | See [DetailMask](../common/detail_property_descriptions.md#detailmask).                               |
| DetailUVRotation          | Float(-1,1)   | 0             | See [DetailUVRotation(n)](../common/detail_property_descriptions.md#detailuvrotationn).               |
| NormalMapDetail           | Texture2D(L)  | bump          | See [NormalMapDetail(n)](../common//detail_property_descriptions.md#normalmapdetailn).                |
| DetailNormalMapScale      | Float(0,1)    | 0             | See [DetailNormalMapScale(n)](../common/detail_property_descriptions.md#detailnormalmapscalen).       |
| AlbedoMapDetail           | Texture2D(G)  | white         | See [AlbedoMapDetail(n)](../common/detail_property_descriptions.md#albedomapdetailn).                 |
| DetailAlbedoBlend         | Float(0,1)    | 0             | See [DetailAlbedoBlend(n)](../common/detail_property_descriptions.md#detailalbedoblendn).             |
| DetailAlbedoBlendType     | Integer(0,11) | 1             | See [DetailAlbedoBlendType](../common/detail_property_descriptions.md#detailalbedoblendtype).         |
| SpecGlossMapDetail        | Texture2D(G)  | white         | See [SpecGlossMapDetail(n)](../common/detail_property_descriptions.md#specglossmapdetailn).           |
| DetailSpecularBlend       | Float(0,1)    | 0             | See [DetailSpecularBlend(n)](../common/detail_property_descriptions.md#detailspecularblendn).         |
| DetailGlossinessBlend     | Float(0,1)    | 0             | See [DetailGlossinessBlend(n)](../common/detail_property_descriptions.md#detailglossinessblendn).     |
| DetailSpecularBlendType   | Integer(0,11) | 1             | See [DetailSpecularBlendType](../common/detail_property_descriptions.md#detailspecularblendtype).     |
| DetailGlossinessBlendType | Integer(0,9)  | 2             | See [DetailGlossinessBlendType](../common/detail_property_descriptions.md#detailglossinessblendtype). |
| OcclusionMapDetail        | Texture2D(L)  | white         | See [OcclusionMapDetail(n)](../common/detail_property_descriptions.md#occlusionmapdetailn).           |
| DetailOcclusionStrength   | Float(0,1)    | 0             | See [DetailOcclusionStrength(n)](../common/detail_property_descriptions.md#detailocclusionstrengthn). |