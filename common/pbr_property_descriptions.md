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
Albedo map.

### Color
Albedo color, will be multiplied with `MainTex` to determine the albedo in `rgb` channels and alpha in `alpha` channel.

### BaseColor
Albedo color, will be multiplied with `MainTex` `rgb` channels to determine the albedo. `alpha` channel: not used. 

### Alpha
Alpha value, will be multiplied with `MainTex` `alpha` channel to determine the alpha.

### NormalMap
Normal map.

### NormalMapScale
Normal map scale.

### TangentMap
Tangent map.

### TangentMapScale
Tangent map scale.

### MetallicGlossMap
Metallic and glossiness map, metallic - `red`, glossiness - `alpha`.

### Metallic 
Metallic value. If `MetallicGlossMap` exists, it will be multiplied with `MetallicGlossMap` `red` channel.

### SpecGlossMap
Specular and glossiness map, specular - `rgb`, glossiness - `alpha`. 

### SpecColor
Specular color. If `SpecGlossMap` exists, it will be multiplied with `SpecGlossMap` `rgb` channels.

### Glossiness
Glossiness value. If `MetallicGlossMap` or `SpecGlossMap` exists, it will be multiplied with their `alpha` channel.

### GlossinessSec
Secondary glossiness value. If `MetallicGlossMap` or `SpecGlossMap` exists, it will be multiplied with their `alpha` channel.

### LobeMix
The amount of mixing between the primary and secondary specular lobes.

### OcclusionMap
Ambient occlusion map. Uses the `green` channel to reduce ambient/indirect lighting in occluded areas. In some shaders, it can also include anisotropy (`red`) data.

### OcclusionStrength
Ambient occlusion strength.

### Anisotropy
Anisotropy value. If `OcclusionMap` exists, it will be multiplied with its `red` channel.

### AnisotropySec
Secondary anisotropy value. If `OcclusionMap` exists, it will be multiplied with its `red` channel.

### AnisotropyRotation
Anisotropy rotation in units of $\pi$.

### AnisotropyRotationSec
Secondary anisotropy rotation in units of $\pi$.

### EmissionMap
Emission map, no need to be a grayscale but a color texture. `rgb`: emission, `alpha` channel is not used and will be handled automatically. Note that black (0,0,0) means no emission.

### EmissionColor
Emission color, will be multiplied with `EmissionMap`.

### EmissionIntensity
Emission intensity control, will be multiplied with `EmissionMap` and `EmissionColor`.

### SPECULAR_SETUP
Some of Az shaders support both the metallic setup and specular setup, switchable via `SPECULAR_SETUP`. This corresponds to Unity's Standard shader and StandardSpecular shader, as described in: [Metallic vs. specular workflow](https://docs.unity3d.com/Manual/StandardShaderMetallicVsSpecular.html), also [Material charts](https://docs.unity3d.com/Manual/StandardShaderMaterialCharts.html).
When switching to the specular setup, the original metallic-related properties are interpreted as their specular counterparts.

### DUAL_SPECULAR_LOBE
Whether to enable the duel specular lobe.
