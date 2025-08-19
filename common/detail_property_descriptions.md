# Detail property descriptions

- [Detail property descriptions](#detail-property-descriptions)
    - [DetailSet(n)](#detailsetn)
    - [DetailMask](#detailmask)
    - [DetailUVRotation(n)](#detailuvrotationn)
    - [NormalMapDetail(n)](#normalmapdetailn)
    - [NormalMapDetailBiases](#normalmapdetailbiases)
    - [DetailNormalMapScale(n)](#detailnormalmapscalen)
    - [TangentMapDetail(n)](#tangentmapdetailn)
    - [TangentMapDetailBiases](#tangentmapdetailbiases)
    - [DetailTangentMapScale(n)](#detailtangentmapscalen)
    - [AlbedoMapDetail(n)](#albedomapdetailn)
    - [AlbedoMapDetailBiases](#albedomapdetailbiases)
    - [DetailAlbedoBlend(n)](#detailalbedoblendn)
    - [DetailAlbedoBlendType](#detailalbedoblendtype)
    - [DetailAlphaBlend(n)](#detailalphablendn)
    - [DetailAlphaBlendType](#detailalphablendtype)
    - [MetallicGlossMapDetail(n)](#metallicglossmapdetailn)
    - [MetallicGlossMapDetailBiases](#metallicglossmapdetailbiases)
    - [DetailMetallicBlend(n)](#detailmetallicblendn)
    - [DetailMetallicBlendType](#detailmetallicblendtype)
    - [SpecGlossMapDetail(n)](#specglossmapdetailn)
    - [DetailSpecularBlend(n)](#detailspecularblendn)
    - [DetailSpecularBlendType](#detailspecularblendtype)
    - [DetailGlossinessBlend(n)](#detailglossinessblendn)
    - [DetailGlossinessBlendType](#detailglossinessblendtype)
    - [OcclusionMapDetail(n)](#occlusionmapdetailn)
    - [OcclusionMapDetailBiases](#occlusionmapdetailbiases)
    - [DetailOcclusionStrength(n)](#detailocclusionstrengthn)
    - [DetailAnisotropyBlend(n)](#detailanisotropyblendn)
    - [DetailAnisotropyBlendType](#detailanisotropyblendtype)

### DetailSet(n)
Whether to enable the detail set n.

### DetailMask
**This is not Koikatsu's original `DetailMask`!**\
Koikatsu uses this map to control ramp based specular highlights, shadows and rim lights. But in Az shaders, it serves as a mask for detail sets - `red`  for detail set 1, `green` for detail set 2, `blue` for detail set 3. If you want to use something like `DetailMask` of Koikatsu, please refer to `DrawnMap`, if available in the shader.

### DetailUVRotation(n)
Detail UV rotation angle for detail set n in units of $\pi$.

### NormalMapDetail(n)
Detail normal map for detail set n.

### NormalMapDetailBiases
Mipmap bias when sampling detail normal maps.

### DetailNormalMapScale(n)
Detail normal map scale for detail set n.

### TangentMapDetail(n)
Detail tangent map for detail set n.

### TangentMapDetailBiases
Mipmap bias when sampling detail tangent maps.

### DetailTangentMapScale(n)
Detail tangent map scale for detail set n.

### AlbedoMapDetail(n)
Detail albedo map for detail set n. No need to be a grayscale but a color texture.

### AlbedoMapDetailBiases
Mipmap bias when sampling detail albedo maps.

### DetailAlbedoBlend(n)
Detail albedo blend amount for detail set n.

### DetailAlbedoBlendType
Detail albedo blend type, which determines how the detail albedo blends into the main albedo. Its value is defined by [Blend type enum for color](blend_type.md#blend-type-enum-for-color).

### DetailAlphaBlend(n)
Detail alpha blend amount for detail set n.

### DetailAlphaBlendType
Detail alpha blend type, which determines how the detail alpha blends into the main alpha. Its value is defined by [Blend type enum for non-color](blend_type.md#blend-type-enum-for-non-color).

### MetallicGlossMapDetail(n)
Detail metallic and glossiness map for detail set n, metallic - `red`, glossiness - `alpha`.

### MetallicGlossMapDetailBiases
Mipmap bias when sampling detail metallic and glossiness maps.

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
Detail ambient occlusion map, using `green` channel. In some shaders, it can also include detail anisotropy (`red`) data.

### OcclusionMapDetailBiases
Mipmap bias when sampling detail ambient occlusion maps.

### DetailOcclusionStrength(n)
Detail ambient occlusion strength for detail set n.

### DetailAnisotropyBlend(n)
Detail anisotropy blend amount for detail set n.

### DetailAnisotropyBlendType
Detail anisotropy blend type, which determines how the detail anisotropy blends into the main anisotropy. Its value is defined by [Blend type enum for non-color](blend_type.md#blend-type-enum-for-non-color).
