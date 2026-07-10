# Az/ShadowReceiver shader

- [Az/ShadowReceiver shader](#azshadowreceiver-shader)
  - [Tags](#tags)
  - [Properties](#properties)

## Tags
- RenderType: `Transparent`
- Queue: `AlphaTest`+49

## Properties
| Name                    | Type          | Default value                         | Description                                                                                                                                                                             |
| ----------------------- | ------------- | ------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| AlphaMask               | Texture2D(G)  | white                                 | See [AlphaMask](../common/alpha_clip_and_render_options_property_descriptions.md#alphamask).                                                                                            |
| Cutoff                  | Float(0,1)    | 0.5                                   | See [Cutoff](../common/alpha_clip_and_render_options_property_descriptions.md#cutoff).                                                                                                  |
| CutoffShadow            | Float(0,1)    | 0.5                                   | See [CutoffShadow](../common/alpha_clip_and_render_options_property_descriptions.md#cutoffshadow).                                                                                      |
| Cull                    | Integer(0,2)  | 0                                     | See [Cull](../common/alpha_clip_and_render_options_property_descriptions.md#cull).                                                                                                      |
| MainTex                 | Texture2D(G)  | white                                 | The base color texture.                                                                                                                                                                 |
| Color                   | Color         | (1,1,1,1)                             | The tint color of `MainTex`. The `alpha` channel is also used.                                                                                                                          |
| ScreenTex               | Texture2D(G)  | white                                 | An extra color texture in screen space. Its `rgb` channels will be blended with `MainTex.rgb`, and its `alpha` channel will be blended with `MainTex.a`.                                |
| ScreenColor             | Color         | (1,1,1,1)                             | The tint color of `ScreenTex`. The `alpha` channel is also used.                                                                                                                        |
| ScreenMask              | Texture2D(G)  | white                                 | A mask texture used to mask the blending of `ScreenTex` with `MainTex`. The `red` channel masks the color blending, and the `green` channel masks the alpha blending.                   |
| ScreenColorBlendType    | Integer(0,11) | 1                                     | The blend type for blending the screen space color with the base color. Its value is defined by [Blend type enum for color](../common/blend_type.md#blend-type-enum-for-color).         |
| ScreenColorBlend        | Float(0,1)    | 1                                     | The blend amount for the screen space color.                                                                                                                                            |
| ScreenAlphaBlendType    | Integer(0,9)  | 0                                     | The blend type for blending the screen space alpha with the base alpha. Its value is defined by [Blend type enum for non-color](../common/blend_type.md#blend-type-enum-for-non-color). |
| ScreenAlphaBlend        | Float(0,1)    | 1                                     | The blend amount for the screen space alpha.                                                                                                                                            |
| ScreenUVAspectMode      | Integer(0,2)  | 0                                     | See [ScreenUVAspectMode](../common/misc_property_descriptions.md#screenuvaspectmode).                                                                                                   |
| LightAttenuationPower   | Float(0,1)    | 1                                     | The power applied to the light attenuation value. This controls how quickly the shadow fades with distance from the light source.                                                       |
| SpotDefaultCookie       | Texture2D(L)  | unity_spot_default_cookie, *explicit* | See [SpotDefaultCookie](../common/lighting_property_descriptions.md#spotdefaultcookie).                                                                                                 |
| ShadowOptimization      | Boolean       | false                                 | See [ShadowOptimization](../common/lighting_property_descriptions.md#shadowoptimization).                                                                                               |
| ShadowPointPCFTexelSize | Float(1,100)  | 10                                    | See [ShadowPointPCFTexelSize](../common/lighting_property_descriptions.md#shadowpointpcftexelsize).                                                                                     |
