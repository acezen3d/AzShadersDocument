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
    - [LiquidColor](#liquidcolor)
    - [LiquidNormalScale](#liquidnormalscale)
    - [LiquidMetallic](#liquidmetallic)
    - [LiquidGlossiness](#liquidglossiness)

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

### LiquidColor
*Extension property*. Liquid color tint.

### LiquidNormalScale
*Extension property*. Liquid normal map scale.

### LiquidMetallic
*Extension property*. Liquid metallic.

### LiquidGlossiness
*Extension property*. Liquid glossiness.