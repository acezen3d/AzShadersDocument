# Mesh properties

- [Mesh properties](#mesh-properties)
  - [Properties](#properties)

## Properties
| Name                     | Type         | Default value | Description                                                                                       |
| ------------------------ | ------------ | ------------- | ------------------------------------------------------------------------------------------------- |
| VertexNormalMap          | Texture2D(L) | white         | See [VertexNormalMap](../common/mesh_property_descriptions.md#vertexnormalmap).                   |
| VertexNormalStrength     | Float(0,1)   | 1             | See [VertexNormalStrength](../common/mesh_property_descriptions.md#vertexnormalstrength).         |
| VertexTangentMap         | Texture2D(L) | white         | See [VertexTangentMap](../common/mesh_property_descriptions.md#vertextangentmap).                 |
| VertexTangentStrength    | Float(0,1)   | 1             | See [VertexTangentStrength](../common/mesh_property_descriptions.md#vertextangentstrength).       |
| *Tessellation*           |              |               |                                                                                                   |
| Tessellation             | Boolean      | false         | See [Tessellation](../common/mesh_property_descriptions.md#tessellation).                         |
| TessEdgeLength           | Float(2,100) | 10            | See [TessEdgeLength](../common/mesh_property_descriptions.md#tessedgelength).                     |
| TessMin                  | Float(1,20)  | 2             | See [TessMin](../common/mesh_property_descriptions.md#tessmin).                                   |
| TessMax                  | Float(1,20)  | 10            | See [TessMax](../common/mesh_property_descriptions.md#tessmax).                                   |
| TessThreshold            | Float(0,10)  | 1             | See [TessThreshold](../common/mesh_property_descriptions.md#tessthreshold).                       |
| TessSmoothMap            | Texture2D(L) | white         | See [TessSmoothMap](../common/mesh_property_descriptions.md#tesssmoothmap).                       |
| TessSmooth               | Float(0,1)   | 1             | See [TessSmooth](../common/mesh_property_descriptions.md#tesssmooth).                             |
| *Displacement*           |              |               |                                                                                                   |
| Displacement             | Boolean      | false         | See [Displacement](../common/mesh_property_descriptions.md#displacement).                         |
| DisplaceMap              | Texture2D(L) | gray          | See [DisplaceMap](../common/mesh_property_descriptions.md#displacemap).                           |
| DisplaceMiddleLevel      | Float(0,1)   | 0.5           | See [DisplaceMiddleLevel](../common/mesh_property_descriptions.md#displacemiddlelevel).           |
| DisplaceStrength         | Float(0,1)   | 1             | See [DisplaceStrength](../common/mesh_property_descriptions.md#displacestrength).                 |
| DisplaceNormalTexelSize  | Float(1,10)  | 1             | See [DisplaceNormalTexelSize](../common/mesh_property_descriptions.md#displacenormaltexelsize).   |
| DisplaceNormalMultiplier | Float(0,10)  | 1             | See [DisplaceNormalMultiplier](../common/mesh_property_descriptions.md#displacenormalmultiplier). |
| DisplaceAdjustment       | Float(0,2)   | 0             | See [DisplaceAdjustment](../common/mesh_property_descriptions.md#displaceadjustment).             |
| DisplaceOffset           | Vector       | (0,0,0,0)     | See [DisplaceOffset](../common/mesh_property_descriptions.md#displaceoffset).                     |
