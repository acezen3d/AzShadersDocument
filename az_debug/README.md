# Az Debug shader
v1.2.0

- [Az Debug shader](#az-debug-shader)
  - [Tags](#tags)
  - [Properties](#properties)
    - [🏷️Alpha Clip and Render Options](#️alpha-clip-and-render-options)
    - [🏷️Basic](#️basic)
    - [🏷️Visualization](#️visualization)
    - [🏷️Vectors](#️vectors)
    - [🏷️Mesh](#️mesh)
  - [Additional property descriptions](#additional-property-descriptions)
    - [Visualization](#visualization)
  - [Known issues](#known-issues)
  - [Notes](#notes)
  - [Changelog](#changelog)
  - [Download](#download)

## Tags
- RenderType: `TransparentCutout`
- Queue: `AlphaTest`

## Properties
### 🏷️Alpha Clip and Render Options
| Name        | Type         | Default value | Description                                                                                                                |
| ----------- | ------------ | ------------- | -------------------------------------------------------------------------------------------------------------------------- |
| Mask        | Texture2D(G) | white         | The clipping mask for the lines and fills. Uses the `red` channel. Can be assigned with `AlphaMask` from other Az shaders. |
| Cutoff      | Float(0,1)   | 0.5           | The clipping threshold for `Mask`.                                                                                         |
| Cull        | Integer(0,2) | 0             | See [Cull](../common/alpha_clip_and_render_options_property_descriptions.md#cull).                                         |
| AlphaToMask | Integer(0,1) | 1             | Whether to enable Alpha to Coverage. Should only be disabled when MSAA is not supported.                                   |

### 🏷️Basic
| Name           | Type        | Default value | Description            |
| -------------- | ----------- | ------------- | ---------------------- |
| LineColor      | Color       | (0,0,0,1)     | The line color.        |
| FillColor      | Color       | (1,1,1,1)     | The fill color.        |
| LineThickness  | Float(0,1)  | 0.5           | The line thickness.    |
| LineSmoothness | Float(0,20) | 3             | The line smoothness.   |
| NoLine         | Boolean     | false         | Do not draw the lines. |
| NoFill         | Boolean     | false         | Do not draw the fills. |

### 🏷️Visualization
| Name            | Type          | Default value | Description                                                           |
| --------------- | ------------- | ------------- | --------------------------------------------------------------------- |
| VisualizeOnLine | Float(0,1)    | 1             | The weight of the visualization color blended into the lines.         |
| VisualizeOnFill | Float(0,1)    | 1             | The weight of the visualization color blended into the fills.         |
| Visualization   | Integer(0,4)  | 0             | See [Additional property descriptions/Visualization](#visualization). |
| BoneA           | Integer(0,99) | 0             | The bone index A.                                                     |
| BoneB           | Integer(0,99) | 0             | The bone index B.                                                     |

### 🏷️Vectors
| Name            | Type          | Default value | Description                                                                                                                  |
| --------------- | ------------- | ------------- | ---------------------------------------------------------------------------------------------------------------------------- |
| DisplayVectors  | Boolean       | false         | Whether to display vector lines.                                                                                             |
| VectorsMask     | Texture2D(L)  | white         | The clipping mask for the vectors display. The `rgb` channels represent the TBN vectors respectively.                        |
| VectorsCutoff   | Float(0,1)    | 0.5           | The clipping threshold for `VectorsMask`.                                                                                    |
| VectorsCull     | Integer(0,2)  | 0             | The cull for the vectors display. Also see [Cull](../common/alpha_clip_and_render_options_property_descriptions.md#cull).    |
| VectorsZTest    | Integer(0,8)  | 4             | The ZTest for the vectors display. Also see [ZTest](../common/alpha_clip_and_render_options_property_descriptions.md#ztest). |
| TangentLength   | Float(0,0.01) | 0.005         | The tangent line length.                                                                                                     |
| TangentColor    | Color         | (1,0,0,1)     | The tangent line color.                                                                                                      |
| BitangentLength | Float(0,0.01) | 0.005         | The bitangent/binormal line length.                                                                                          |
| BitangentColor  | Color         | (0,1,0,1)     | The bitangent/binormal line color.                                                                                           |
| NormalLength    | Float(0,0.01) | 0.005         | The normal line length.                                                                                                      |
| NormalColor     | Color         | (0,0,1,1)     | The normal line color.                                                                                                       |

### 🏷️Mesh
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
| TessSmoothMap            | Texture2D(L) | red           | See [TessSmoothMap](../common/mesh_property_descriptions.md#tesssmoothmap).                       |
| TessSmooth               | Float(0,1)   | 1             | See [TessSmooth](../common/mesh_property_descriptions.md#tesssmooth).                             |
| *Displacement*           |              |               |                                                                                                   |
| Displacement             | Boolean      | false         | See [Displacement](../common/mesh_property_descriptions.md#displacement).                         |
| DisplaceMap              | Texture2D(L) | red           | See [DisplaceMap](../common/mesh_property_descriptions.md#displacemap).                           |
| DisplaceMiddleLevel      | Float(0,1)   | 0             | See [DisplaceMiddleLevel](../common/mesh_property_descriptions.md#displacemiddlelevel).           |
| DisplaceStrength         | Float(0,1)   | 1             | See [DisplaceStrength](../common/mesh_property_descriptions.md#displacestrength).                 |
| DisplaceNormalTexelSize  | Float(1,10)  | 1             | See [DisplaceNormalTexelSize](../common/mesh_property_descriptions.md#displacenormaltexelsize).   |
| DisplaceNormalMultiplier | Float(0,10)  | 1             | See [DisplaceNormalMultiplier](../common/mesh_property_descriptions.md#displacenormalmultiplier). |
| DisplaceAdjustment       | Float(0,2)   | 0             | See [DisplaceAdjustment](../common/mesh_property_descriptions.md#displaceadjustment).             |
| DisplaceOffset           | Vector       | (0,0,0,0)     | See [DisplaceOffset](../common/mesh_property_descriptions.md#displaceoffset).                     |

## Additional property descriptions
### Visualization
**Value 0**: Visualizes ***World Normal***. If `VertexNormalMap` texture is applied, the displayed normals are after applying the map. Also note that if the displacement is enabled, the displayed normals are after the displacement.

**Value 1**: Visualizes ***World Tangent***. If `VertexTangentMap` texture is applied, the displayed tangents are after applying the map.

**Value 2**: Visualizes ***Face Orientation***. Like Blender, blue indicates front faces and red indicates back faces.

**Value 3**: Visualizes ***Vertex Color***. Displays the first vertex color data.

**Value 4**: Visualizes ***Blend Weight***. Supports displaying the weights for two bones (`BoneA` and `BoneB`) at the same time. Change their values to inspect the corresponding bone weights. Like Blender, black indicates no weight, and the weight increases progressively from blue to red.

## Known issues
- Due to the limitations of KK's lower version of Unity, the Blend Weight visualization, `BoneA` and `BoneB` work only in the KKS version.

## Notes
- The most complex body mesh in the game has 100 weighted bones, so the index range of `BoneA` and `BoneB` is 0-99. You can also manually modify it to other values if needed.
- Assign -1 or other out-of-bounds index to `BoneA` or `BoneB` to suppress their display.
- The purpose of presenting two weights at the same time is to make it easier to check, such as the symmetry of the weights.

## Changelog
[Changelog](CHANGELOG.md)

## Download
https://www.patreon.com/posts/136435948
