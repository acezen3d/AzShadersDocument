Shader "Az/StandardClothCutout"
{
    Properties
    {
        // Alpha Clip and Render Options
        [Header(Alpha Clip and Render Options)]
        _AlphaMask ("AlphaMask", 2D) = "white" { }
        [Toggle] _alpha_a ("alpha_a", Float) = 1
        [Toggle] _alpha_b ("alpha_b", Float) = 1
        _Cutoff ("Cutoff", Range(0, 1)) = 0.5
        [Toggle] _NormalBackFaceFlip ("NormalBackFaceFlip", Float) = 0
        [Enum(UnityEngine.Rendering.CullMode)] _Cull ("Cull", Float) = 0

        // Main PBR
        [Header(Main PBR)]
        _BaseColor ("BaseColor", Color) = (1, 1, 1, 1)
        _MainTex ("MainTex", 2D) = "white" { }
        [Normal] _NormalMap ("NormalMap", 2D) = "bump" { }
        _NormalMapScale ("NormalMapScale", Range(0, 1)) = 1
        _MetallicGlossMap ("MetallicGlossMap", 2D) = "white" { }
        _Metallic ("Metallic", Range(0, 1)) = 0
        _Glossiness ("Glossiness", Range(0, 1)) = 0.5
        _OcclusionMap ("OcclusionMap", 2D) = "white" { }
        _OcclusionStrength ("OcclusionStrength", Range(0, 1)) = 1
        _EmissionMap ("EmissionMap", 2D) = "white" { }
        _EmissionColor ("EmissionColor", Color) = (0, 0, 0, 0)
        _EmissionIntensity ("EmissionIntensity", Range(0, 2)) = 0

        // Detail
        [Header(Detail)]
        [Toggle] _DetailSet ("DetailSet", Float) = 1
        [Toggle] _DetailSet2 ("DetailSet2", Float) = 0
        _DetailMask ("DetailMask", 2D) = "red" { }
        _DetailUVRotation ("DetailUVRotation", Range(-1, 1)) = 0
        _DetailUVRotation2 ("DetailUVRotation2", Range(-1, 1)) = 0
        // Detail / Normal
        [Normal] _NormalMapDetail ("NormalMapDetail", 2D) = "bump" { }
        [Normal] _NormalMapDetail2 ("NormalMapDetail2", 2D) = "bump" { }
        _DetailNormalMapScale ("DetailNormalMapScale", Range(0, 1)) = 0
        _DetailNormalMapScale2 ("DetailNormalMapScale2", Range(0, 1)) = 0
        // Detail / Albedo
        _AlbedoMapDetail ("AlbedoMapDetail", 2D) = "white" { }
        _AlbedoMapDetail2 ("AlbedoMapDetail2", 2D) = "white" { }
        _DetailAlbedoBlend ("DetailAlbedoBlend", Range(0, 1)) = 0
        _DetailAlbedoBlend2 ("DetailAlbedoBlend2", Range(0, 1)) = 0
        [Enum(Normal, 0, Multiply, 1, MultiplyAndDouble, 2, Add, 3, AddMultiply, 4, Subtract, 5, ReverseSubtract, 6, Screen, 7, Max, 8, Min, 9, Overlay, 10, HardLight, 11)] _DetailAlbedoBlendType ("DetailAlbedoBlendType", Float) = 1
        // Detail / Metallic and Glossiness
        _MetallicGlossMapDetail ("MetallicGlossMapDetail", 2D) = "white" { }
        _MetallicGlossMapDetail2 ("MetallicGlossMapDetail2", 2D) = "white" { }
        _DetailMetallicBlend ("DetailMetallicBlend", Range(0, 1)) = 0
        _DetailMetallicBlend2 ("DetailMetallicBlend2", Range(0, 1)) = 0
        _DetailGlossinessBlend ("DetailGlossinessBlend", Range(0, 1)) = 0
        _DetailGlossinessBlend2 ("DetailGlossinessBlend2", Range(0, 1)) = 0
        [Enum(Normal, 0, Multiply, 1, MultiplyAndDouble, 2, Add, 3, AddMultiply, 4, Subtract, 5, ReverseSubtract, 6, Screen, 7, Max, 8, Min, 9)] _DetailMetallicBlendType ("DetailMetallicBlendType", Float) = 2
        [Enum(Normal, 0, Multiply, 1, MultiplyAndDouble, 2, Add, 3, AddMultiply, 4, Subtract, 5, ReverseSubtract, 6, Screen, 7, Max, 8, Min, 9)] _DetailGlossinessBlendType ("DetailGlossinessBlendType", Float) = 2
        // Detail / Occlusion
        _OcclusionMapDetail ("OcclusionMapDetail", 2D) = "white" { }
        _OcclusionMapDetail2 ("OcclusionMapDetail2", 2D) = "white" { }
        _DetailOcclusionStrength ("DetailOcclusionStrength", Range(0, 1)) = 0
        _DetailOcclusionStrength2 ("DetailOcclusionStrength2", Range(0, 1)) = 0

        // Koikatsu and Extension
        [Header(Koikatsu and Extension)]
        // Koikatsu / Liquid
        _liquidmask ("liquidmask", 2D) = "black" { }
        _Texture2 ("Texture2", 2D) = "black" { }
        [Normal] _Texture3 ("Texture3", 2D) = "bump" { }
        _LiquidTiling ("LiquidTiling", Vector) = (0, 0, 2, 2)
        _liquidftop ("liquidftop", Range(0, 2)) = 0
        _liquidfbot ("liquidfbot", Range(0, 2)) = 0
        _liquidbtop ("liquidbtop", Range(0, 2)) = 0
        _liquidbbot ("liquidbbot", Range(0, 2)) = 0
        _liquidface ("liquidface", Range(0, 2)) = 0
        _LiquidFoot ("LiquidFoot", Range(0, 2)) = 0
        _LiquidAll ("LiquidAll", Range(0, 2)) = 0
        _LiquidColor ("LiquidColor", Color) = (1, 1, 1, 1)
        _LiquidNormalScale ("LiquidNormalScale", Range(0, 1)) = 1
        _LiquidMetallic ("LiquidMetallic", Range(0, 1)) = 0
        _LiquidGlossiness ("LiquidGlossiness", Range(0, 1)) = 0.8
        // Koikatsu / DrawnMap
        _DrawnMap ("DrawnMap", 2D) = "black" { }
        _DrawnSpecularStrength ("DrawnSpecularStrength", Range(0, 1)) = 0
        _DrawnShadowStrength ("DrawnShadowStrength", Range(0, 1)) = 0.5

        // Lighting
        [Header(Lighting)]
        _ShadowIntensity ("ShadowIntensity", Range(0, 1)) = 0.85
        _ShadowReceiveControl ("ShadowReceiveControl", Range(0, 1)) = 1
        _ShadowDarkControl ("ShadowDarkControl", Range(0, 1)) = 1
        _ShadowCookieControl ("ShadowCookieControl", Range(0, 1)) = 0
        _ShadowTransitionPower ("ShadowTransitionPower", Range(0, 1)) = 0
        _IndirectDiffuseIntensity ("IndirectDiffuseIntensity", Range(0, 1)) = 1
        _IndirectSpecularIntensity ("IndirectSpecularIntensity", Range(0, 1)) = 1
        _SpotDefaultCookie ("SpotDefaultCookie", 2D) = "black" { }
        [Toggle] _ShadowOptimization ("ShadowOptimization", Float) = 0
        _ShadowPointPCFTexelSize ("ShadowPointPCFTexelSize", Range(1, 100)) = 10
        [Toggle] _SampleFullSHPerPixel ("SampleFullSHPerPixel", Float) = 0
        _DummyAmbient ("DummyAmbient", Color) = (0, 0, 0, 1)

        // Mesh
        [Header(Mesh)]
        _VertexNormalMap ("VertexNormalMap", 2D) = "white" { }
        _VertexNormalStrength ("VertexNormalStrength", Range(0, 1)) = 0
        // Mesh / Tessellation
        [Toggle] _Tessellation ("Tessellation", Float) = 0
        _TessEdgeLength ("TessEdgeLength", Range(2, 100)) = 10
        _TessMin ("TessMin", Range(1, 20)) = 2
        _TessMax ("TessMax", Range(1, 20)) = 10
        _TessThreshold ("TessThreshold", Range(0, 10)) = 1
        _TessSmoothMap ("TessSmoothMap", 2D) = "red" { }
        _TessSmooth ("TessSmooth", Range(0, 1)) = 1
        // Mesh / Displacement
        [Toggle] _Displacement ("Displacement", Float) = 0
        _DisplaceMap ("DisplaceMap", 2D) = "red" { }
        _DisplaceMiddleLevel ("DisplaceMiddleLevel", Range(0, 1)) = 0
        _DisplaceStrength ("DisplaceStrength", Range(0, 1)) = 1
        _DisplaceNormalTexelSize ("DisplaceNormalTexelSize", Range(1, 10)) = 1
        _DisplaceNormalMultiplier ("DisplaceNormalMultiplier", Range(0, 10)) = 1
        _DisplaceAdjustment ("DisplaceAdjustment", Range(0, 2)) = 0
        _DisplaceOffset ("DisplaceOffset", Vector) = (0, 0, 0, 0)
    }

    SubShader
    {
        Tags { "RenderType" = "TransparentCutout" "PerformanceChecks" = "False" "Queue" = "AlphaTest" }
        LOD 300
        Pass
        {
            CGPROGRAM
            #pragma target 5.0
            #include "UnityCG.cginc"
            #include "UnityStandardInput.cginc"
            #pragma vertex vert_img
            #pragma fragment frag
            float4 frag(v2f_img i) : SV_TARGET
            {
                return tex2D(_MainTex, i.uv);
            }
            ENDCG
        }
    }

    FallBack "Transparent/Cutout/Diffuse"
}
