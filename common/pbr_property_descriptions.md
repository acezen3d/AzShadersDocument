# PBR property descriptions

- [PBR property descriptions](#pbr-property-descriptions)
    - [MainTex](#maintex)
    - [Color](#color)
    - [BaseColor](#basecolor)
    - [Alpha](#alpha)
    - [NormalMap](#normalmap)
    - [NormalMapScale](#normalmapscale)
    - [TangentMap](#tangentmap)
    - [TangentMapScale](#tangentmapscale)
    - [MetallicGlossMap](#metallicglossmap)
    - [Metallic](#metallic)
    - [SpecGlossMap](#specglossmap)
    - [SpecColor](#speccolor)
    - [Glossiness](#glossiness)
    - [GlossinessSec](#glossinesssec)
    - [LobeMix](#lobemix)
    - [OcclusionMap](#occlusionmap)
    - [OcclusionStrength](#occlusionstrength)
    - [Anisotropy](#anisotropy)
    - [AnisotropySec](#anisotropysec)
    - [AnisotropyRotation](#anisotropyrotation)
    - [AnisotropyRotationSec](#anisotropyrotationsec)
    - [EmissionMap](#emissionmap)
    - [EmissionColor](#emissioncolor)
    - [EmissionIntensity](#emissionintensity)
    - [SPECULAR\_SETUP](#specular_setup)
    - [DUAL\_SPECULAR\_LOBE](#dual_specular_lobe)

### MainTex
The albedo map.

### Color
The albedo color. It will be multiplied with `MainTex` to determine the albedo in the `rgb` channels and the alpha in the `alpha` channel.

### BaseColor
The albedo color. It will be multiplied with the `MainTex` `rgb` channels to determine the albedo. The `alpha` channel is not used.

### Alpha
The alpha value. It will be multiplied with the `MainTex` `alpha` channel to determine the alpha.

### NormalMap
The normal map.

### NormalMapScale
The normal map scale.

### TangentMap
The tangent map.

### TangentMapScale
The tangent map scale.

### MetallicGlossMap
The metallic and glossiness map. `red`: metallic; `alpha`: glossiness.

### Metallic
The metallic value. If `MetallicGlossMap` exists, it will be multiplied with the `MetallicGlossMap` `red` channel.

### SpecGlossMap
The specular and glossiness map. `rgb`: specular; `alpha`: glossiness.

### SpecColor
The specular color. If `SpecGlossMap` exists, it will be multiplied with the `SpecGlossMap` `rgb` channels.

### Glossiness
The glossiness value. If `MetallicGlossMap` or `SpecGlossMap` exists, it will be multiplied with their `alpha` channels.

### GlossinessSec
The secondary glossiness value. If `MetallicGlossMap` or `SpecGlossMap` exists, it will be multiplied with their `alpha` channels.

### LobeMix
The amount of mixing between the primary and secondary specular lobes.

### OcclusionMap
The ambient occlusion map. The `green` channel is used. It reduces ambient/indirect lighting in occluded areas. In some shaders, it can also include anisotropy (`red`) data.

### OcclusionStrength
The ambient occlusion strength.

### Anisotropy
The anisotropy value. If `OcclusionMap` exists, it will be multiplied with its `red` channel.

### AnisotropySec
The secondary anisotropy value. If `OcclusionMap` exists, it will be multiplied with its `red` channel.

### AnisotropyRotation
The anisotropy rotation in units of $\pi$.

### AnisotropyRotationSec
The secondary anisotropy rotation in units of $\pi$.

### EmissionMap
The emission map. It can be a color texture, not just a grayscale texture. `rgb`: emission; `alpha`: not used and will be handled automatically. Note that black (0,0,0) means no emission.

### EmissionColor
The emission color. It will be multiplied with `EmissionMap`.

### EmissionIntensity
The emission intensity control. It will be multiplied with `EmissionMap` and `EmissionColor`.

### SPECULAR_SETUP
Some Az shaders support both the metallic setup and specular setup, switchable via `SPECULAR_SETUP`. This corresponds to Unity's Standard shader and StandardSpecular shader, as described in [Metallic vs. specular workflow](https://docs.unity3d.com/Manual/StandardShaderMetallicVsSpecular.html), also [Material charts](https://docs.unity3d.com/Manual/StandardShaderMaterialCharts.html).
When switching to the specular setup, the original metallic-related properties are interpreted as their specular counterparts.

### DUAL_SPECULAR_LOBE
Whether to enable the dual specular lobe.
