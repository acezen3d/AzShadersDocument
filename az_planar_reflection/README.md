# Az Planar Reflection shaders
v1.1.0

- [Az Planar Reflection shaders](#az-planar-reflection-shaders)
  - [Az/PlanarReflectionUnlit shader](#azplanarreflectionunlit-shader)
    - [Tags](#tags)
    - [Properties](#properties)
  - [Az/PlanarReflectionLit shader](#azplanarreflectionlit-shader)
    - [Tags](#tags-1)
    - [Properties](#properties-1)
  - [Changelog](#changelog)
  - [Notes](#notes)
  - [Tips](#tips)
    - [How to solve the problem of blurring, oversharpening or moiré appearance of texture details?](#how-to-solve-the-problem-of-blurring-oversharpening-or-moiré-appearance-of-texture-details)
    - [How to make glowing objects still glow in the reflection?](#how-to-make-glowing-objects-still-glow-in-the-reflection)
  - [Download](#download)

## Az/PlanarReflectionUnlit shader
### Tags
- RenderType: `Transparent`
- Queue: `Transparent`+50

### Properties
| Name                    | Type             | Default value         | Description                                                                                                   |
| ----------------------- | ---------------- | --------------------- | ------------------------------------------------------------------------------------------------------------- |
| Color                   | Color            | (1,1,1,1), *explicit* | Color tint.                                                                                                   |
| Albedo                  | Texture2D(G)     | white                 | Main albedo texture.                                                                                          |
| AlbedoDetail            | Texture2D(G)     | gray                  | Detail albedo texture.                                                                                        |
| AlbedoDetailScale       | Float(0,1)       | 0, *explicit*         | The scale applied to `AlbedoDetail`.                                                                          |
| Cutoff                  | Float(0,1)       | 0.01, *explicit*      | Clip the mesh with this value according to the value computed by the alpha channels of `MainTex` and `Color`. |
| NormalMap               | Texture2D(L)     | bump                  | Main normal map.                                                                                              |
| NormalScale             | Float(0,1)       | 0.5, *explicit*       | The scale applied to `NormalMap`.                                                                             |
| NormalMapDetail         | Texture2D(L)     | bump                  | Detail normal map.                                                                                            |
| NormalDetailScale       | Float(0,1)       | 0.5, *explicit*       | The scale applied to `NormalMapDetail`.                                                                       |
| ReflectionIntensity     | Float(0,1)       | 1, *explicit*         | The intensity of the application of the reflection.                                                           |
| ReflectionDistortion    | Float(0,1)       | 0.5, *explicit*       | How much the reflection is distorted by surface normals `NormalMap` and `NormalMapDetail`.                    |
| ReflectionBlurTexelSize | Float(1,2048)    | 1024, *explicit*      | The texel size of Gaussian blur applied to the reflection.                                                    |
| ReflectionBlurSigma     | Float(0.0001,20) | 1, *explicit*         | The sigma controls the level of Gaussian blur applied to the reflection.                                      |

## Az/PlanarReflectionLit shader
### Tags
- RenderType: `Transparent`
- Queue: `Transparent`+50

### Properties
In addition to the above properties of `Az/PlanarReflectionUnlit` shader, it has two more properties:

| Name       | Type       | Default value | Description        |
| ---------- | ---------- | ------------- | ------------------ |
| Metallic   | Float(0,1) | 1, *explicit* | Metallic in PBR.   |
| Smoothness | Float(0,1) | 1, *explicit* | Smoothness in PBR. |

## Changelog
[Changelog](CHANGELOG.md)

## Notes
- When you use **Planar Reflection Lit**, if you want it to be able to receive shadows, you need to lower its render queue below 2500.
- If you want reflections with soft blurred edges, in addition to using a proper `Albedo`, you need to lower `Cutoff` to near or equal to 0.
- Make your work easier and more enjoyable with the FREE [Normal Map Tool](https://www.patreon.com/posts/99107961).

## Tips
### How to solve the problem of blurring, oversharpening or moiré appearance of texture details?
See  [[Adv. tip] Solve the problem of blurring, oversharpening or moiré appearance of texture details](https://discord.com/channels/1122523329430048911/1212062837997051944)
### How to make glowing objects still glow in the reflection?
See  [[Adv. tip] Add Bloom to arbitrary camera in Koikatsu Studio](https://discord.com/channels/1122523329430048911/1197373266571034655)

## Download
https://www.patreon.com/posts/99193796
