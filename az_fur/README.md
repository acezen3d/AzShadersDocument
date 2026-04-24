# Az Fur shader
v1.1.0

- [Az Fur shader](#az-fur-shader)
  - [Tags](#tags)
  - [Properties](#properties)
  - [Changelog](#changelog)
  - [Download](#download)

## Tags
- RenderType: `TransparentCutout`
- Queue: `AlphaTest`+50

## Properties
| Name               | Type           | Default value         | Description                                                                                                                                                                                                                      |
| ------------------ | -------------- | --------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Color              | Color          | (1,1,1,1)             | The tint color.                                                                                                                                                                                                                  |
| MainTex            | Texture2D(G)   | white                 | The main albedo texture.                                                                                                                                                                                                         |
| BackTex            | Texture2D(G)   | white                 | The back face texture.                                                                                                                                                                                                           |
| FurTex             | Texture2D(G)   | fur_noise, *explicit* | The fur generation noise texture. The `red` channel is used.                                                                                                                                                                     |
| Metallic           | Float(0,1)     | 0                     | The metallic value in PBR.                                                                                                                                                                                                       |
| Smoothness         | Float(0,1)     | 0.5                   | The smoothness value in PBR.                                                                                                                                                                                                     |
| Cutoff             | Float(0,1)     | 0.5                   | Clips the surface and fur using this value, based on the `alpha` channel of `MainTex`.                                                                                                                                           |
| ShadowCutoff       | Float(0,1)     | 0.5                   | Clips the shadow using this value, based on the computed alpha value of the fur based on `FurTex`, `FurDensity`, `FurDensityPower`.                                                                                              |
| ShadowColor        | Float(0,1)     | (0,0,0,0)             | The shadow tint color.                                                                                                                                                                                                           |
| ZWriteFirst        | Integer(0,1)   | 0                     | Whether ZWrite is on for the first fur rendering.                                                                                                                                                                                |
| ZWriteSecond       | Integer(0,1)   | 1                     | Whether ZWrite is on for the second fur rendering.                                                                                                                                                                               |
| SHLightingScale    | Float(0,1)     | 1                     | The scale of the spherical harmonics lighting. That is, intensity control for all non-main lights.                                                                                                                               |
| SHLightingNeutral  | Float(0,1)     | 1                     | The color neutralization of the spherical harmonics lighting.                                                                                                                                                                    |
| Anisotropy         | Float(-1,1)    | 0                     | The anisotropic direction and level. The sign of this value determines whether to use the tangent or bitangent to calculate the initial direction of anisotropy. The magnitude of this value determines the level of anisotropy. |
| AnisotropyRotation | Float(-1,1)    | 0                     | The anisotropic direction rotation.                                                                                                                                                                                              |
| FurForcePower      | Float(0,8)     | 3                     | The power applied to the fur global/local force.                                                                                                                                                                                 |
| FurLength          | Float(0,1)     | 0.025, *explicit*     | The fur total length.                                                                                                                                                                                                            |
| FurDensity         | Float(0,2)     | 1, *explicit*         | The fur density is implemented using alpha clipping. This value controls how much to clip, the more the sparser, the less the denser.                                                                                            |
| FurDensityPower    | Float(0,8)     | 2                     | The power applied to the fur density.                                                                                                                                                                                            |
| FurThinness        | Float(0.05,20) | 2, *explicit*         | The fur thinness is implemented by tiling the fur noise texture. This value controls how much to tile, the more, the thinner, the less, the thicker.                                                                             |
| FurOcclusion       | Float(0,1)     | 0.5, *explicit*       | The scale of the fur occlusion - darker at the root but lighter at the tip.                                                                                                                                                      |
| FurOcclusionPower  | Float(0,8)     | 3                     | The power applied to the fur occlusion.                                                                                                                                                                                          |
| ForceGlobal        | Vector         | (0,0,0,0)             | The force in the world space.                                                                                                                                                                                                    |
| ForceLocal         | Vector         | (0,0,0,0)             | The force in the object space.                                                                                                                                                                                                   |
| EmissionColor      | Color          | (0,0,0,0)             | The emission color.                                                                                                                                                                                                              |
| EmissionIntensity  | Float(0,1)     | 0                     | The emission multiplier.                                                                                                                                                                                                         |
| RimColor           | Color          | (0,0,0,1)             | The rim light color.                                                                                                                                                                                                             |
| RimPower           | Float(0,8)     | 2                     | The power applied to the rim light.                                                                                                                                                                                              |
| RimIntensity       | Float(0,1)     | 1                     | The scale of the rim light.                                                                                                                                                                                                      |

## Changelog
[Changelog](CHANGELOG.md)

## Download
https://www.patreon.com/posts/99160350
