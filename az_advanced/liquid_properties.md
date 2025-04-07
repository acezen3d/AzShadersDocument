# Liquid properties

- [Liquid properties](#liquid-properties)
  - [Properties](#properties)

## Properties
| Name                      | Type         | Default value   | Description                                                                           |
| ------------------------- | ------------ | --------------- | ------------------------------------------------------------------------------------- |
| liquidmask                | Texture2D(L) | black           | See [liquidmask](../common/liquid_property_descriptions.md#liquidmask).               |
| Texture2                  | Texture2D(G) | black           | See [Texture2](../common/liquid_property_descriptions.md#texture2).                   |
| Texture3                  | Texture2D(L) | bump            | See [Texture3](../common/liquid_property_descriptions.md#texture3).                   |
| LiquidTiling              | Vector       | (0,0,2,2)       | See [LiquidTiling](../common/liquid_property_descriptions.md#liquidtiling).           |
| liquidftop                | Float(0,2)   | 0               | See [liquidftop](../common/liquid_property_descriptions.md#liquidftop).               |
| liquidfbot                | Float(0,2)   | 0               | See [liquidfbot](../common/liquid_property_descriptions.md#liquidfbot).               |
| liquidbtop                | Float(0,2)   | 0               | See [liquidbtop](../common/liquid_property_descriptions.md#liquidbtop).               |
| liquidbbot                | Float(0,2)   | 0               | See [liquidbbot](../common/liquid_property_descriptions.md#liquidbbot).               |
| liquidface                | Float(0,2)   | 0               | See [liquidface](../common/liquid_property_descriptions.md#liquidface).               |
| LiquidFoot                | Float(0,2)   | 0               | See [LiquidFoot](../common/liquid_property_descriptions.md#liquidfoot).               |
| LiquidAll                 | Float(0,2)   | 0               | See [LiquidAll](../common/liquid_property_descriptions.md#liquidall).                 |
| [+] LiquidFTopUV          | Vector       | (0,0,1,0)       | *Extension property*. UV manipulation for the front top area only.                    |
| [+] LiquidFBotUV          | Vector       | (0,0,1,0)       | *Extension property*. UV manipulation for the front bottom area only.                 |
| [+] LiquidBTopUV          | Vector       | (0,0,1,0)       | *Extension property*. UV manipulation for the back top area only.                     |
| [+] LiquidBBotUV          | Vector       | (0,0,1,0)       | *Extension property*. UV manipulation for the back bottom area only.                  |
| [+] LiquidFaceUV          | Vector       | (0,0,1,0)       | *Extension property*. UV manipulation for the face area only.                         |
| [+] LiquidFootUV          | Vector       | (0,0,1,0)       | *Extension property*. UV manipulation for the foot area only.                         |
| LiquidColor               | Color        | (1,1,1,1)       | See [LiquidColor](../common/liquid_property_descriptions.md#liquidcolor).             |
| [+] LiquidAlphaFactors    | Vector       | (1,1,0,0.5)     | *Extension property*. Liquid alpha factors.                                           |
| [+] LiquidAlbedoFactors   | Vector       | (1,1,1,1)       | *Extension property*. Liquid albedo factors.                                          |
| [+] LiquidNormalFactors   | Vector       | (1,1,1,1)       | *Extension property*. Liquid normal factors.                                          |
| LiquidNormalScale         | Float(0,1)   | 1               | See [LiquidNormalScale](../common/liquid_property_descriptions.md#liquidnormalscale). |
| LiquidMetallic            | Float(0,1)   | 0               | See [LiquidMetallic](../common/liquid_property_descriptions.md#liquidmetallic).       |
| LiquidGlossiness          | Float(0,1)   | 0.8             | See [LiquidGlossiness](../common/liquid_property_descriptions.md#liquidglossiness).   |
| [+] LiquidShadowFactors   | Vector       | (0.25,0,0,0.85) | *Extension property*. Liquid shadow factors.                                          |
| [+] LiquidLightingFactors | Vector       | (1,1,1,1)       | *Extension property*. Liquid lighting factors.                                        |
| [+] LiquidBlendMultiplier | Float(0,2)   | 1               | *Extension property*. Multiplier for blending liquid and the surface lighting result. |