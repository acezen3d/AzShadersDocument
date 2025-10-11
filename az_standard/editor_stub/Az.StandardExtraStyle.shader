Shader "Az/StandardExtraStyle"
{
    Properties
    {
        // Alpha Clip and Render Options
        [Header(Alpha Clip and Render Options)]
        _AlphaMask ("AlphaMask", 2D) = "white" { }
        [Toggle] _alpha_a ("alpha_a", Float) = 1 // Only red channel will be used.
        [Toggle] _alpha_b ("alpha_b", Float) = 0
        _Cutoff ("Cutoff", Range(0, 1)) = 0.5
        // [Toggle] _NormalBackFaceFlip ("NormalBackFaceFlip", Float) = 0 // DO NOT do this
        [Enum(UnityEngine.Rendering.CullMode)] _Cull ("Cull", Float) = 0

        // Surface Reconstruction
        [Header(Surface Reconstruction)]
        _MainTex ("MainTex", 2D) = "white" { }
        _NormalMap ("NormalMap", 2D) = "bump" { }
        _NormalMapScale ("NormalMapScale", Range(0, 1)) = 1
        [Toggle] _DetailSet ("DetailSet", Float) = 1
        [Toggle] _DetailSet2 ("DetailSet2", Float) = 0
        _DetailMask ("DetailMask", 2D) = "red" { }
        _DetailUVRotation ("DetailUVRotation", Range(-1, 1)) = 0
        _DetailUVRotation2 ("DetailUVRotation2", Range(-1, 1)) = 0
        [Normal] _NormalMapDetail ("NormalMapDetail", 2D) = "bump" { }
        [Normal] _NormalMapDetail2 ("NormalMapDetail2", 2D) = "bump" { }
        _DetailNormalMapScale ("DetailNormalMapScale", Range(0, 1)) = 0
        _DetailNormalMapScale2 ("DetailNormalMapScale2", Range(0, 1)) = 0

        // Custom Main Light
        [Header(Custom Main Light)]
        [Toggle] _UseCustomMainLight ("UseCustomMainLight", Float) = 0
        _CustomMainLightDirection ("CustomMainLightDirection", Vector) = (0, 0, 0, 0)
        _CustomMainLightColor ("CustomMainLightColor", Color) = (1, 1, 1, 1)

        // Rim Light
        [Header(Rim Light)]
        [Toggle] _RimLight ("RimLight", Float) = 1
        _RimLightMap ("RimLightMap", 2D) = "white" { }
        _RimLightColor ("RimLightColor", Color) = (1, 1, 1, 1)
        _RimLightIntensity ("RimLightIntensity", Range(0, 2)) = 1
        _RimLightMaskLevel ("RimLightMaskLevel", Range(-1, 1)) = 0
        _RimLightPower ("RimLightPower", Range(0, 10)) = 1
        _RimLightScale ("RimLightScale", Range(0, 2)) = 1
        _RimLightBias ("RimLightBias", Range(-1, 1)) = 0
        _RimLightMode ("RimLightMode", Range(0, 1)) = 0
        _RimLightRotation ("RimLightRotation", Vector) = (0, 0, 0, 0)
        _MainLightToRimLight ("MainLightToRimLight", Vector) = (0, 2, 0, 2)
        _IndirectLightToRimLight ("IndirectLightToRimLight", Range(0, 1)) = 0

        // Matcap
        [Header(Matcap)]
        [Toggle] _Matcap ("Matcap", Float) = 1
        _MatcapTex ("MatcapTex", 2D) = "black" { }
        _MatcapTex2 ("MatcapTex2", 2D) = "black" { }
        _MatcapColor ("MatcapColor", Color) = (1, 1, 1, 1)
        _MatcapColor2 ("MatcapColor2", Color) = (1, 1, 1, 1)
        _MatcapMask ("MatcapMask", 2D) = "white" { }
        _MatcapMaskLevel ("MatcapMaskLevel", Range(-1, 1)) = 0
        _MatcapMaskLevel2 ("MatcapMaskLevel2", Range(-1, 1)) = 0
        _MatcapUVRotation ("MatcapUVRotation", Range(-1, 1)) = 0
        _MatcapUVRotation2 ("MatcapUVRotation2", Range(-1, 1)) = 0
        [IntRange] _MatcapBlurLevel ("MatcapBlurLevel", Range(0, 10)) = 0
        [IntRange] _MatcapBlurLevel2 ("MatcapBlurLevel2", Range(0, 10)) = 0
        [Toggle] _MatcapCancelCameraRolling ("MatcapCancelCameraRolling", Float) = 1
        [Toggle] _MatcapReflectionAdjustment ("MatcapReflectionAdjustment", Float) = 0
        [Enum(Orthographic, 0, SphericalReflection, 1, ConstructingProjection, 2, CrossProduct, 3, RNMBlending, 4)] _MatcapUVMethod ("MatcapUVMethod", Float) = 2
        _MainLightToMatcap ("MainLightToMatcap", Vector) = (0, 2, 0, 2)
        _IndirectLightToMatcap ("IndirectLightToMatcap", Range(0, 1)) = 0
        _MatcapAddOrMultiply ("MatcapAddOrMultiply", Range(0, 1)) = 0

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
        Tags { "RenderType" = "Transparent" "Queue" = "Transparent" }
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

    FallBack Off
}
