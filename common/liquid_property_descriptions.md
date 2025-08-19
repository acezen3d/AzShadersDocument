# Liquid property descriptions

- [Liquid property descriptions](#liquid-property-descriptions)
    - [liquidmask](#liquidmask)
    - [Texture2](#texture2)
    - [Texture3](#texture3)
    - [LiquidTiling](#liquidtiling)
    - [liquidftop](#liquidftop)
    - [liquidfbot](#liquidfbot)
    - [liquidbtop](#liquidbtop)
    - [liquidbbot](#liquidbbot)
    - [liquidface](#liquidface)
    - [LiquidFoot](#liquidfoot)
    - [LiquidAll](#liquidall)
    - [LiquidFTopUV](#liquidftopuv)
    - [LiquidFBotUV](#liquidfbotuv)
    - [LiquidBTopUV](#liquidbtopuv)
    - [LiquidBBotUV](#liquidbbotuv)
    - [LiquidFaceUV](#liquidfaceuv)
    - [LiquidFootUV](#liquidfootuv)
    - [LiquidColor](#liquidcolor)
    - [LiquidAlpha](#liquidalpha)
    - [LiquidAlbedo](#liquidalbedo)
    - [LiquidNormal](#liquidnormal)
    - [LiquidNormalScale](#liquidnormalscale)
    - [LiquidMetallic](#liquidmetallic)
    - [LiquidGlossiness](#liquidglossiness)
    - [LiquidTranslucency](#liquidtranslucency)
    - [LiquidLighting](#liquidlighting)
    - [LiquidBlendMultiplier](#liquidblendmultiplier)

### liquidmask
*Koikatsu property*. Liquid distribution mask.

### Texture2
*Koikatsu property*. Liquid shape and level mask. `red`: level 1, `green`: level 2.

### Texture3
*Koikatsu property*. Liquid normal map.

### LiquidTiling
*Koikatsu property*. Liquid tiling and offset, `rg`: offset, `ba`: tiling.

### liquidftop
*Koikatsu property*. Liquid level for the front top area, corresponding to `red` channel of `liquimask`.

### liquidfbot
*Koikatsu property*. Liquid level for the front bottom area, corresponding to `green` channel of `liquimask`.

### liquidbtop
*Koikatsu property*. Liquid level for the back top area, corresponding to `blue` channel of `liquimask`.

### liquidbbot
*Koikatsu property*. Liquid level for the back bottom area, corresponding to `rg` channels of `liquimask`.

### liquidface
*Koikatsu property*. Liquid level for the face area, corresponding to `gb` channels of `liquidmask`.

### LiquidFoot
*Extension property*. Liquid level for the foot area, corresponding to `rb` channels of `liquidmask`.

### LiquidAll
*Extension property*. Liquid level for the all areas.

### LiquidFTopUV
*Extension property*. UV manipulation for the front top area only.
 
### LiquidFBotUV
*Extension property*. UV manipulation for the front bottom area only.

### LiquidBTopUV
*Extension property*. UV manipulation for the back top area only.

### LiquidBBotUV
*Extension property*. UV manipulation for the back bottom area only.

### LiquidFaceUV
*Extension property*. UV manipulation for the face area only.

### LiquidFootUV
*Extension property*. UV manipulation for the foot area only.

### LiquidColor
*Extension property*. Liquid color tint.

### LiquidAlpha
*Extension property*. Liquid alpha factors.

### LiquidAlbedo
*Extension property*. Liquid albedo factors.

### LiquidNormal
*Extension property*. Liquid normal factors.

### LiquidNormalScale
*Extension property*. Liquid normal map scale.

### LiquidMetallic
*Extension property*. Liquid metallic.

### LiquidGlossiness
*Extension property*. Liquid glossiness.

### LiquidTranslucency
*Extension property*. Liquid translucency factors.

### LiquidLighting
*Extension property*. Liquid lighting factors.

### LiquidBlendMultiplier
*Extension property*. Multiplier for blending liquid and the surface lighting result.
