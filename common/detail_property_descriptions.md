# Detail property descriptions

- [Detail property descriptions](#detail-property-descriptions)
    - [DetailSet(n)](#detailsetn)
    - [DetailMask](#detailmask)
    - [DetailUVRotation(n)](#detailuvrotationn)
    - [NormalMapDetail(n)](#normalmapdetailn)
    - [DetailNormalMapScale(n)](#detailnormalmapscalen)
    - [AlbedoMapDetail(n)](#albedomapdetailn)
    - [DetailAlbedoBlend(n)](#detailalbedoblendn)
    - [DetailAlbedoBlendType](#detailalbedoblendtype)
    - [MetallicGlossMapDetail(n)](#metallicglossmapdetailn)
    - [DetailMetallicBlend(n)](#detailmetallicblendn)
    - [DetailMetallicBlendType](#detailmetallicblendtype)
    - [SpecGlossMapDetail(n)](#specglossmapdetailn)
    - [DetailSpecularBlend(n)](#detailspecularblendn)
    - [DetailSpecularBlendType](#detailspecularblendtype)
    - [DetailGlossinessBlend(n)](#detailglossinessblendn)
    - [DetailGlossinessBlendType](#detailglossinessblendtype)
    - [OcclusionMapDetail(n)](#occlusionmapdetailn)
    - [DetailOcclusionStrength(n)](#detailocclusionstrengthn)

### DetailSet(n)
Whether to enable the detail set n.

### DetailMask
**This is not Koikatsu's original `DetailMask`!**\
Koikatsu uses this map to control ramp based specular highlights, shadows and rim lights. But in Az shaders, it serves as a mask for detail sets - `red`  for detail set 1, `green` for detail set 2, and so on. If you want to use something like `DetailMask` of Koikatsu, please refer to `DrawnMap`, if available in the shader.

### DetailUVRotation(n)
Detail UV rotation angle for detail set n in units of $\pi$.

### NormalMapDetail(n)
Detail normal map for detail set n.

### DetailNormalMapScale(n)
Detail normal map scale for detail set n.

### AlbedoMapDetail(n)
Detail albedo map for detail set n. No need to be a grayscale but a color texture.

### DetailAlbedoBlend(n)
Detail albedo blend amount for detail set n.

### DetailAlbedoBlendType
Detail albedo blend type, which determines how the detail albedo blends into the main albedo. Its value is defined by [Blend type enum for color](blend_type.md#blend-type-enum-for-color).

### MetallicGlossMapDetail(n)
Detail metallic and glossiness map for detail set n, metallic - `red`, glossiness - `alpha`.

### DetailMetallicBlend(n)
Detail metallic blend amount for detail set n.    

### DetailMetallicBlendType
Detail metallic blend type, which determines how the detail metallic blends into the main metallic. Its value is defined by [Blend type enum for non-color](blend_type.md#blend-type-enum-for-non-color).

### SpecGlossMapDetail(n)
Detail specular and glossiness map for detail set n, specular - `rgb`, glossiness - `alpha`.

### DetailSpecularBlend(n)
Detail specular blend amount for detail set n.

### DetailSpecularBlendType
Detail specular blend type, which determines how the detail specular blends into the main specular. Its value is defined by [Blend type enum for color](blend_type.md#blend-type-enum-for-color).

### DetailGlossinessBlend(n)
Detail glossiness blend amount for detail set n.

### DetailGlossinessBlendType
Detail glossiness blend type, which determines how the detail glossiness blends into the main glossiness. Its value is defined by [Blend type enum for non-color](blend_type.md#blend-type-enum-for-non-color).

### OcclusionMapDetail(n)
Detail ambient occlusion map. The `green` channel is used.   

### DetailOcclusionStrength(n)
 Detail ambient occlusion strength for detail set n.