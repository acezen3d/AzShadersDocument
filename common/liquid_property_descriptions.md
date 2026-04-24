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
*Koikatsu property*. The liquid distribution mask.

### Texture2
*Koikatsu property*. The liquid shape and level mask. `red`: level 1; `green`: level 2.

### Texture3
*Koikatsu property*. The liquid normal map.

### LiquidTiling
*Koikatsu property*. The liquid tiling and offset. `rg`: offset; `ba`: tiling.

### liquidftop
*Koikatsu property*. The liquid level for the front top area, corresponding to the `red` channel of `liquidmask`.

### liquidfbot
*Koikatsu property*. The liquid level for the front bottom area, corresponding to the `green` channel of `liquidmask`.

### liquidbtop
*Koikatsu property*. The liquid level for the back top area, corresponding to the `blue` channel of `liquidmask`.

### liquidbbot
*Koikatsu property*. The liquid level for the back bottom area, corresponding to the `rg` channels of `liquidmask`.

### liquidface
*Koikatsu property*. The liquid level for the face area, corresponding to the `gb` channels of `liquidmask`.

### LiquidFoot
*Extension property*. The liquid level for the foot area, corresponding to the `rb` channels of `liquidmask`.

### LiquidAll
*Extension property*. The liquid level for all areas.

### LiquidFTopUV
*Extension property*. The UV manipulation for the front top area only.
 
### LiquidFBotUV
*Extension property*. The UV manipulation for the front bottom area only.

### LiquidBTopUV
*Extension property*. The UV manipulation for the back top area only.

### LiquidBBotUV
*Extension property*. The UV manipulation for the back bottom area only.

### LiquidFaceUV
*Extension property*. The UV manipulation for the face area only.

### LiquidFootUV
*Extension property*. The UV manipulation for the foot area only.

### LiquidColor
*Extension property*. The liquid tint color.

### LiquidAlpha
*Extension property*. The liquid alpha factors.

### LiquidAlbedo
*Extension property*. The liquid albedo factors.

### LiquidNormal
*Extension property*. The liquid normal factors.

### LiquidNormalScale
*Extension property*. The liquid normal map scale.

### LiquidMetallic
*Extension property*. The liquid metallic.

### LiquidGlossiness
*Extension property*. The liquid glossiness.

### LiquidTranslucency
*Extension property*. The liquid translucency factors.

### LiquidLighting
*Extension property*. The liquid lighting factors.

### LiquidBlendMultiplier
*Extension property*. The multiplier for blending the liquid and the surface lighting result.
