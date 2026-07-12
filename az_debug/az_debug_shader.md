# Az/Debug shader

- [Az/Debug shader](#azdebug-shader)
  - [Tags](#tags)
  - [Properties](#properties)
    - [🏷️Alpha Clip and Render Options](#️alpha-clip-and-render-options)
    - [🏷️Main and Visualization](#️main-and-visualization)
    - [🏷️Vertex Data](#️vertex-data)
    - [🏷️Mesh](#️mesh)
  - [Additional property descriptions](#additional-property-descriptions)
    - [Visualization](#visualization)
    - [PointAppearance](#pointappearance)
  - [Known issues](#known-issues)
  - [Notes](#notes)

## Tags
- RenderType: `TransparentCutout`
- Queue: `AlphaTest`

## Properties
### 🏷️Alpha Clip and Render Options
| Name        | Type         | Default value | Description                                                                                      |
| ----------- | ------------ | ------------- | ------------------------------------------------------------------------------------------------ |
| Cutoff      | Float(0,1)   | 0.5           | The clipping threshold for the main texture.                                                     |
| Cull        | Integer(0,2) | 0             | See [Cull](../common/alpha_clip_and_render_options_property_descriptions.md#cull).               |
| AlphaToMask | Integer(0,1) | 1             | See [AlphaToMask](../common/alpha_clip_and_render_options_property_descriptions.md#alphatomask). |

### 🏷️Main and Visualization
| Name            | Type          | Default value | Description                                                                 |
| --------------- | ------------- | ------------- | --------------------------------------------------------------------------- |
| MainTex         | Texture2D(G)  | white         | The main texture. Only the `alpha` channel is used for alpha clipping.      |
| DisplayFill     | Boolean       | true          | Whether to display the fills.                                               |
| FillColor       | Color         | (1,1,1,1)     | The fill color.                                                             |
| DisplayLine     | Boolean       | true          | Whether to display the lines.                                               |
| LineWidth       | Float(0,20)   | 1             | The line width in screen pixels.                                            |
| LineSoftness    | Float(0,1)    | 0.5           | The line softness. Controls the anti-aliasing transition of the line edges. |
| LineColor       | Color         | (0,0,0,1)     | The line color.                                                             |
| Visualization   | Integer(0,4)  | 0             | See [Additional property descriptions/Visualization](#visualization).       |
| VisualizeOnFill | Float(0,1)    | 0             | The weight of the visualization color blended into the fills.               |
| VisualizeOnLine | Float(0,1)    | 0             | The weight of the visualization color blended into the lines.               |
| BoneA           | Integer(0,99) | 0             | The bone index A.                                                           |
| BoneB           | Integer(0,99) | 0             | The bone index B.                                                           |

### 🏷️Vertex Data
| Name                  | Type         | Default value  | Description                                                                                                                                                |
| --------------------- | ------------ | -------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- |
| VertexDataMask        | Texture2D(L) | white          | The clipping mask for the vertex data display. The `rgb` channels represent the TBN vectors respectively; the `alpha` channel represents the vertex point. |
| CutoffVertexData      | Float(0,1)   | 0.5            | The clipping threshold for `VertexDataMask`.                                                                                                               |
| CullVertexData        | Integer(0,2) | 0              | The cull for the vertex data display. Also see [Cull](../common/alpha_clip_and_render_options_property_descriptions.md#cull).                              |
| DisplayVertexPoint    | Boolean      | false          | Whether to display the vertex points.                                                                                                                      |
| PointDepthOffset      | Float(-1,1)  | 0              | The depth offset for the vertex points.                                                                                                                    |
| PointAppearance       | Integer(0,9) | 0              | See [Additional property descriptions/PointAppearance](#pointappearance).                                                                                  |
| PointAppearanceParams | Vector       | (0.01,0.5,0,0) | The parameters for the point appearance. `red`: amount of edge anti-aliasing; `green`: line width for outline shapes.                                      |
| PointSize             | Float(0,20)  | 4              | The size of the vertex points.                                                                                                                             |
| PointColor            | Color        | (1,1,1,1)      | The color of the vertex points.                                                                                                                            |
| DisplayBasisVectors   | Boolean      | false          | Whether to display the basis vectors.                                                                                                                      |
| VectorsDepthOffset    | Float(-1,1)  | 0              | The depth offset for the basis vectors.                                                                                                                    |
| TangentLength         | Float(0,0.1) | 0.01           | The tangent line length.                                                                                                                                   |
| TangentColor          | Color        | (1,0.1,0.1,1)  | The tangent line color.                                                                                                                                    |
| BitangentLength       | Float(0,0.1) | 0.01           | The bitangent/binormal line length.                                                                                                                        |
| BitangentColor        | Color        | (0.1,1,0.1,1)  | The bitangent/binormal line color.                                                                                                                         |
| NormalLength          | Float(0,0.1) | 0.01           | The normal line length.                                                                                                                                    |
| NormalColor           | Color        | (0.1,0.1,1,1)  | The normal line color.                                                                                                                                     |

### 🏷️Mesh
| Name                         | Type         | Default value | Description                                                                                               |
| ---------------------------- | ------------ | ------------- | --------------------------------------------------------------------------------------------------------- |
| VertexNormalMap              | Texture2D(L) | white         | See [VertexNormalMap](../common/mesh_property_descriptions.md#vertexnormalmap).                           |
| VertexNormalStrength         | Float(0,1)   | 0             | See [VertexNormalStrength](../common/mesh_property_descriptions.md#vertexnormalstrength).                 |
| VertexTangentMap             | Texture2D(L) | white         | See [VertexTangentMap](../common/mesh_property_descriptions.md#vertextangentmap).                         |
| VertexTangentStrength        | Float(0,1)   | 0             | See [VertexTangentStrength](../common/mesh_property_descriptions.md#vertextangentstrength).               |
| *Tessellation*               |              |               |                                                                                                           |
| Tessellation                 | Boolean      | false         | See [Tessellation](../common/mesh_property_descriptions.md#tessellation).                                 |
| TessEdgeLength               | Float(2,100) | 10            | See [TessEdgeLength](../common/mesh_property_descriptions.md#tessedgelength).                             |
| TessMin                      | Float(1,20)  | 2             | See [TessMin](../common/mesh_property_descriptions.md#tessmin).                                           |
| TessMax                      | Float(1,20)  | 10            | See [TessMax](../common/mesh_property_descriptions.md#tessmax).                                           |
| TessThreshold                | Float(0,10)  | 1             | See [TessThreshold](../common/mesh_property_descriptions.md#tessthreshold).                               |
| TessSmoothMap                | Texture2D(L) | red           | See [TessSmoothMap](../common/mesh_property_descriptions.md#tesssmoothmap).                               |
| TessVertexNormalStrength     | Float(0,1)   | 0             | See [TessVertexNormalStrength](../common/mesh_property_descriptions.md#tessvertexnormalstrength).         |
| TessSmooth                   | Float(0,1)   | 1             | See [TessSmooth](../common/mesh_property_descriptions.md#tesssmooth).                                     |
| *Displacement*               |              |               |                                                                                                           |
| Displacement                 | Boolean      | false         | See [Displacement](../common/mesh_property_descriptions.md#displacement).                                 |
| DisplaceMap                  | Texture2D(L) | gray          | See [DisplaceMap](../common/mesh_property_descriptions.md#displacemap).                                   |
| DisplaceVertexNormalStrength | Float(0,1)   | 0             | See [DisplaceVertexNormalStrength](../common/mesh_property_descriptions.md#displacevertexnormalstrength). |
| DisplaceUV                   | Vector       | (0,0,1,1)     | See [DisplaceUV(n)](../common/mesh_property_descriptions.md#displaceuvn).                                 |
| DisplaceMiddleLevel          | Float(0,1)   | 0.5           | See [DisplaceMiddleLevel(n)](../common/mesh_property_descriptions.md#displacemiddleleveln).               |
| DisplaceUV2                  | Vector       | (0,0,1,1)     | See [DisplaceUV(n)](../common/mesh_property_descriptions.md#displaceuvn).                                 |
| DisplaceMiddleLevel2         | Float(0,1)   | 0.5           | See [DisplaceMiddleLevel(n)](../common/mesh_property_descriptions.md#displacemiddleleveln).               |
| DisplaceUV3                  | Vector       | (0,0,1,1)     | See [DisplaceUV(n)](../common/mesh_property_descriptions.md#displaceuvn).                                 |
| DisplaceMiddleLevel3         | Float(0,1)   | 0.5           | See [DisplaceMiddleLevel(n)](../common/mesh_property_descriptions.md#displacemiddleleveln).               |
| DisplaceBlendParams          | Vector       | (0,1,0,1)     | See [DisplaceBlendParams](../common/mesh_property_descriptions.md#displaceblendparams).                   |
| DisplaceStrength             | Float(0,1)   | 1             | See [DisplaceStrength](../common/mesh_property_descriptions.md#displacestrength).                         |
| DisplaceNormalTexelSize      | Float(1,10)  | 1             | See [DisplaceNormalTexelSize](../common/mesh_property_descriptions.md#displacenormaltexelsize).           |
| DisplaceNormalMultiplier     | Float(0,10)  | 1             | See [DisplaceNormalMultiplier](../common/mesh_property_descriptions.md#displacenormalmultiplier).         |
| DisplaceAdjustment           | Float(-2,2)  | 0             | See [DisplaceAdjustment](../common/mesh_property_descriptions.md#displaceadjustment).                     |
| DisplaceOffset               | Vector       | (0,0,0,0)     | See [DisplaceOffset](../common/mesh_property_descriptions.md#displaceoffset).                             |

## Additional property descriptions
### Visualization
| Value | Visualization         | Description                                                                                                                                                                                                                                            |
| ----- | --------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| 0     | ***WorldNormal***     | If `VertexNormalMap` texture is applied, the displayed normals are after applying the map. Also note that if the displacement is enabled, the displayed normals are after the displacement.                                                            |
| 1     | ***WorldTangent***    | If `VertexTangentMap` texture is applied, the displayed tangents are after applying the map.                                                                                                                                                           |
| 2     | ***FaceOrientation*** | Like Blender, blue indicates front faces and red indicates back faces.                                                                                                                                                                                 |
| 3     | ***VertexColor***     | Displays the first vertex color data.                                                                                                                                                                                                                  |
| 4     | ***BlendWeight***     | Supports displaying the weights for two bones (`BoneA` and `BoneB`) at the same time. Change their values to inspect the corresponding bone weights. Like Blender, black indicates no weight, and the weight increases progressively from blue to red. |

### PointAppearance
| Value | Point appearance   |
| ----- | ------------------ |
| 0     | ***SolidSquare***  |
| 1     | ***Square***       |
| 2     | ***SolidCircle***  |
| 3     | ***Circle***       |
| 4     | ***SolidDiamond*** |
| 5     | ***Diamond***      |
| 6     | ***Plus***         |
| 7     | ***Cross***        |
| 8     | ***LetterA***      |
| 9     | ***LetterZ***      |

## Known issues
- Due to the limitations of KK's lower version of Unity, the Blend Weight visualization, `BoneA` and `BoneB` work only in the KKS version.

## Notes
- The most complex body mesh in the game has 100 weighted bones, so the index range of `BoneA` and `BoneB` is 0-99. You can also manually modify it to other values if needed.
- Assign -1 or other out-of-bounds index to `BoneA` or `BoneB` to suppress their display.
- The purpose of presenting two weights at the same time is to make it easier to check, such as the symmetry of the weights.
