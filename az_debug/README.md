# Az Debug shader
v1.0.0

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
| Name        | Type         | Default value | Description                                                                              |
| ----------- | ------------ | ------------- | ---------------------------------------------------------------------------------------- |
| Cull        | Integer(0,2) | 0             | See [Cull](../common/alpha_clip_and_render_options_property_descriptions.md#cull).       |
| AlphaToMask | Integer(0,1) | 1             | Whether to enable alpha to coverage. Should only be disabled when MSAA is not supported. |

### 🏷️Basic
| Name           | Type        | Default value | Description            |
| -------------- | ----------- | ------------- | ---------------------- |
| LineColor      | Color       | (0,0,0,1)     | Line color.            |
| FillColor      | Color       | (1,1,1,1)     | Fill color.            |
| LineThickness  | Float(0,1)  | 0.5           | Line thickness.        |
| LineSmoothness | Float(0,20) | 3             | Line smoothness.       |
| NoLine         | Boolean     | false         | Do not draw the lines. |
| NoFill         | Boolean     | false         | Do not draw the fills. |

### 🏷️Visualization
| Name            | Type          | Default value | Description                                                           |
| --------------- | ------------- | ------------- | --------------------------------------------------------------------- |
| VisualizeOnLine | Float(0,1)    | 1             | The weight of the visualization color blend into the lines.           |
| VisualizeOnFill | Float(0,1)    | 1             | The weight of the visualization color blend into the fills.           |
| Visualization   | Integer(0,4)  | 0             | See [Additional property descriptions/Visualization](#visualization). |
| BoneA           | Integer(0,99) | 0             | Bone index A.                                                         |
| BoneB           | Integer(0,99) | 0             | Bone index B.                                                         |

### 🏷️Vectors
| Name            | Type          | Default value | Description                                                                                                  |
| --------------- | ------------- | ------------- | ------------------------------------------------------------------------------------------------------------ |
| DisplayVectors  | Boolean       | false         | Whether to display vector lines.                                                                             |
| VectorsCull     | Integer(0,2)  | 0             | Cull for vectors. Also see [Cull](../common/alpha_clip_and_render_options_property_descriptions.md#cull).    |
| VectorsZTest    | Integer(0,8)  | 4             | ZTest for vectors. Also see [ZTest](../common/alpha_clip_and_render_options_property_descriptions.md#ztest). |
| TangentLength   | Float(0,0.01) | 0.005         | Tangent line length.                                                                                         |
| TangentColor    | Color         | (1,0,0,1)     | Tangent line color.                                                                                          |
| BitangentLength | Float(0,0.01) | 0.005         | Bitangent/binormal line length.                                                                              |
| BitangentColor  | Color         | (0,1,0,1)     | Bitangent/binormal line color.                                                                               |
| NormalLength    | Float(0,0.01) | 0.005         | Normal line length.                                                                                          |
| NormalColor     | Color         | (0,0,1,1)     | Normal line color.                                                                                           |

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

## Additional property descriptions
### Visualization
**Value 0**
- Visualizes ***World Normal***.
- If `VertexNormalMap` texture is applied, the displayed normals are after application.
- If the displacement is turned on, the displayed normals are after the displacement.

**Value 1**
- Visualizes ***World Tangent***.
- If `VertexTangentMap` texture is applied, the displayed tangents are after application.

**Value 2**
- Visualizes ***Face Orientation***.
- Like Blender, blue means front faces, and red means back faces.

**Value 3**
- Visualizes ***Vertex Color***.
- Display the first vertex color data.

**Value 4**
- Visualizes ***Blend Weight***.
- Can display the weights of two bones (`BoneA` and `BoneB`) at the same time.
- Change the values ​​of `BoneA` and `BoneB` to see the weights of the corresponding bones.
- Like Blender, black means no weight, and from blue to red, the weight gradually increases.

## Known issues
- Due to the limitations of KK's lower version of Unity, Blend Weight visualization, `BoneA` and `BoneB` works only in KKS version.

## Notes
- Using the most complex body mesh in the game as a reference, it has 100 weighted bones, so the index range of `BoneA` and `BoneB` is 0-99. You can also manually modify it to other values if needed.
- Assign -1 or other out of bounds index to `BoneA` or `BoneB` to suppress its display.
- The purpose of presenting two weights at the same time is to make it easier to check, such as the symmetry of the weights.

## Changelog
[Changelog](CHANGELOG.md)

## Download
https://www.patreon.com/posts/136435948
