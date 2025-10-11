Shader "Az/StandardEyeW"
{
    Properties
    {
        // Alpha Clip and Render Options
        [Header(Alpha Clip and Render Options)]
        _Cutoff ("Cutoff", Range(0, 1)) = 0.5
        [Enum(UnityEngine.Rendering.CullMode)] _Cull ("Cull", Float) = 0
        [Enum(Off, 0, On, 1)] _ZWrite ("ZWrite", Float) = 0

        // Main PBR
        [Header(Main PBR)]
        _BaseColor ("BaseColor", Color) = (1, 1, 1, 1)
        _MainTex ("MainTex", 2D) = "white" { }
        _MetallicGlossMap ("MetallicGlossMap", 2D) = "white" { }
        _Metallic ("Metallic", Range(0, 1)) = 0
        _Glossiness ("Glossiness", Range(0, 1)) = 0.5
        _EmissionMap ("EmissionMap", 2D) = "white" { }
        _EmissionColor ("EmissionColor", Color) = (0, 0, 0, 0)
        _EmissionIntensity ("EmissionIntensity", Range(0, 2)) = 0

        // Koikatsu and Extension
        [Header(Koikatsu and Extension)]
        _Color ("Color", Color) = (1, 1, 1, 1)

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
        Tags { "RenderType" = "Transparent" "PerformanceChecks" = "False" "Queue" = "Transparent-1" }
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

    FallBack "Transparent/Diffuse"
}
