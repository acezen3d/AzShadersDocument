# Az/DebugCamera shader

- [Az/DebugCamera shader](#azdebugcamera-shader)
  - [Tags](#tags)
  - [Properties](#properties)
  - [Notes](#notes)

## Tags
- RenderType: `Overlay`
- Queue: `Overlay`

## Properties
| Name                            | Type         | Default value | Description                                                                                                   |
| ------------------------------- | ------------ | ------------- | ------------------------------------------------------------------------------------------------------------- |
| Width                           | Float(0,1)   | 1             | The width of the camera debug overlay on screen.                                                              |
| Height                          | Float(0,1)   | 1             | The height of the camera debug overlay on screen.                                                             |
| OffsetX                         | Float(-1,1)  | 0             | The horizontal offset of the camera debug overlay.                                                            |
| OffsetY                         | Float(-1,1)  | 0             | The vertical offset of the camera debug overlay.                                                              |
| CameraTextureType               | Integer(0,2) | 0             | The type of camera texture to display. 0: depth texture; 1: depth normals texture; 2: motion vectors texture. |
| DepthTextureDisplayMode         | Integer(0,1) | 0             | The display mode for the depth texture. 0: raw depth; 1: linear depth.                                        |
| DepthNormalsTextureDisplayMode  | Integer(0,2) | 0             | The display mode for the depth normals texture. 0: depth; 1: view space normals; 2: world space normals.      |
| MotionVectorsTextureDisplayMode | Integer(0,1) | 0             | The display mode for the motion vectors texture. 0: absolute value of x and y components; 1: length.          |

## Notes
- Since this is a pure shader-based implementation, it still requires a renderer to act as a carrier in the scene. If the renderer is culled, either by frustum culling or other CPU-side visibility checks, the rendering process will be skipped entirely, and the effect will no longer be produced. To avoid this, the carrier renderer must remain always visible on screen.
- The geometry of this carrier renderer has no specific requirements, since it is not used in any meaningful way by the shader.
