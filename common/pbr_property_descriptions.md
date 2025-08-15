# PBR property descriptions

- [PBR property descriptions](#pbr-property-descriptions)
    - [MainTex](#maintex)
    - [Color](#color)
    - [NormalMap](#normalmap)
    - [NormalMapScale](#normalmapscale)
    - [MetallicGlossMap](#metallicglossmap)
    - [Metallic](#metallic)
    - [SpecGlossMap](#specglossmap)
    - [SpecColor](#speccolor)
    - [Glossiness](#glossiness)
    - [OcclusionMap](#occlusionmap)
    - [OcclusionStrength](#occlusionstrength)
    - [EmissionMap](#emissionmap)
    - [EmissionColor](#emissioncolor)
    - [EmissionIntensity](#emissionintensity)

### MainTex
Albedo map.

### Color
Albedo color, will be multiplied with `MainTex` to determine the albedo in `rgb` channels and alpha in `alpha` channel.

### NormalMap
Normal map.

### NormalMapScale
Normal map scale.

### MetallicGlossMap
Metallic and glossiness map, metallic - `red`, glossiness - `alpha`.

### Metallic 
Metallic value. If `MetallicGlossMap` exists, it will be multiplied with `MetallicGlossMap` `red` channel.

### SpecGlossMap
Specular and glossiness map, specular - `rgb`, glossiness - `alpha`. 

### SpecColor
Specular color. If `SpecGlossMap` exists, it will be multiplied with `SpecGlossMap` `rgb` channels.

### Glossiness
Glossiness value. If `MetallicGlossMap` or `SpecGlossMap` exists, it will be multiplied with their `a` channel.

### OcclusionMap
Ambient occlusion map. Uses the `green` channel to reduce ambient/indirect lighting in occluded areas.

### OcclusionStrength
Ambient occlusion strength.

### EmissionMap
Emission map, no need to be a grayscale but a color texture. `rgb`: emission, `alpha` channel not used and will be handled automatically. Note black (0,0,0) means no emission.

### EmissionColor
Emission color, will be multiplied with `EmissionMap`.

### EmissionIntensity
Emission intensity control, will be multiplied with `EmissionMap` and `EmissionColor`.