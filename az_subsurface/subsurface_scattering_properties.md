# Subsurface scattering properties

- [Subsurface scattering properties](#subsurface-scattering-properties)
  - [Properties](#properties)

## Properties
| Name                 | Type         | Default value       | Description                                                                                                                |
| -------------------- | ------------ | ------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| SubsurfaceColor      | Color        | (1,1,1,1)           | Subsurface color, actually refers to the scattering distance or amount of different light colors.                          |
| SubsurfaceNormalBlur | Vector       | (1,0,0,2)           | Factors to blur normals, used to simulate light diffusion.                                                                 |
| CurvatureMap         | Texture2D(L) | black               | Curvature map, used to indicate areas where scattering is more likely to occur.                                            |
| CurvatureRemap       | Vector       | (0,1,0,0)           | Curvature map value remap.                                                                                                 |
| Scattering           | Float(0,2)   | 1                   | The intensity of scattering.                                                                                               |
| ScatteringShadow     | Float(0,1)   | 1                   | The intensity of scattering in shadows.                                                                                    |
| ThicknessMap         | Texture2D(L) | white               | Thickness map, used to indicate areas where transmission is more likely to occur.                                          |
| ThicknessRemap       | Vector       | (0,1,0,0)           | Thickness map value remap.                                                                                                 |
| Transmission         | Float(0,2)   | 1                   | The intensity of transmission.                                                                                             |
| TransmissionWrap     | Vector       | (0.166667, 1, 0, 0) | Factors controlling the wrap lighting in transmission. `red`: the angle for the wrap lighting in units of $\frac{\pi}{2}$. |
| TransmissionShadow   | Float(0,1)   | 1                   | Whether transmission takes shadows into account.                                                                           |
