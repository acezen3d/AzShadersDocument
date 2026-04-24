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
Koikatsu uses this map to control ramp-based specular highlights, shadows, and rim lights. But in Az shaders, it serves as a mask for detail sets: `red` for the detail set 1, `green` for the detail set 2, `blue` for the detail set 3. If you want to use something like `DetailMask` of Koikatsu, please refer to `DrawnMap`, if available in the shader.

### DetailUVRotation(n)
The detail UV rotation angle for the detail set n in units of $\pi$.

### NormalMapDetail(n)
The detail normal map for the detail set n.

### NormalMapDetailBiases
The mipmap bias when sampling detail normal maps.

### DetailNormalMapScale(n)
The detail normal map scale for the detail set n.

### TangentMapDetail(n)
The detail tangent map for the detail set n.

### TangentMapDetailBiases
The mipmap bias when sampling detail tangent maps.

### DetailTangentMapScale(n)
The detail tangent map scale for the detail set n.

### AlbedoMapDetail(n)
The detail albedo map for the detail set n. It can be a color texture, not just a grayscale texture.

### AlbedoMapDetailBiases
The mipmap bias when sampling detail albedo maps.

### DetailAlbedoBlend(n)
The detail albedo blend amount for the detail set n.

### DetailAlbedoBlendType
The detail albedo blend type, which determines how the detail albedo blends into the main albedo. Its value is defined by [Blend type enum for color](blend_type.md#blend-type-enum-for-color).

### DetailAlphaBlend(n)
The detail alpha blend amount for the detail set n.

### DetailAlphaBlendType
The detail alpha blend type, which determines how the detail alpha blends into the main alpha. Its value is defined by [Blend type enum for non-color](blend_type.md#blend-type-enum-for-non-color).

### MetallicGlossMapDetail(n)
The detail metallic and glossiness map for the detail set n. `red`: metallic; `alpha`: glossiness.

### MetallicGlossMapDetailBiases
The mipmap bias when sampling detail metallic and glossiness maps.

### DetailMetallicBlend(n)
The detail metallic blend amount for the detail set n.    

### DetailMetallicBlendType
The detail metallic blend type, which determines how the detail metallic blends into the main metallic. Its value is defined by [Blend type enum for non-color](blend_type.md#blend-type-enum-for-non-color).

### SpecGlossMapDetail(n)
The detail specular and glossiness map for the detail set n. `rgb`: specular; `alpha`: glossiness.

### DetailSpecularBlend(n)
The detail specular blend amount for the detail set n.

### DetailSpecularBlendType
The detail specular blend type, which determines how the detail specular blends into the main specular. Its value is defined by [Blend type enum for color](blend_type.md#blend-type-enum-for-color).

### DetailGlossinessBlend(n)
The detail glossiness blend amount for the detail set n.

### DetailGlossinessBlendType
The detail glossiness blend type, which determines how the detail glossiness blends into the main glossiness. Its value is defined by [Blend type enum for non-color](blend_type.md#blend-type-enum-for-non-color).

### OcclusionMapDetail(n)
The detail ambient occlusion map. The `green` channel is used. In some shaders, it can also include detail anisotropy (`red`) data.

### OcclusionMapDetailBiases
The mipmap bias when sampling detail ambient occlusion maps.

### DetailOcclusionStrength(n)
The detail ambient occlusion strength for the detail set n.

### DetailAnisotropyBlend(n)
The detail anisotropy blend amount for the detail set n.

### DetailAnisotropyBlendType
The detail anisotropy blend type, which determines how the detail anisotropy blends into the main anisotropy. Its value is defined by [Blend type enum for non-color](blend_type.md#blend-type-enum-for-non-color).
