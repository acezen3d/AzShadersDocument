# Color mask property descriptions

- [Color mask property descriptions](#color-mask-property-descriptions)
    - [ColorMask](#colormask)
    - [Color](#color)
    - [Color2](#color2)
    - [Color3](#color3)
    - [Color4](#color4)

### ColorMask
*Koikatsu property*. The color mask of Koikatsu. The color is blended in the following order:
1. Background, default `white` or `Color4`.
2. `Color` is blended in, masked by the `red` channel.
3. `Color2` is blended in, masked by the `green` channel.
4. `Color3` is blended in, masked by the `blue` channel.

**Notes**
- `Color4` exists in `Koikano/main_clothes_item` shader.

### Color
*Koikatsu property*. The color masked by the `red` channel of `ColorMask`.

### Color2
*Koikatsu property*. The color masked by the `green` channel of `ColorMask`.

### Color3
*Koikatsu property*. The color masked by the `blue` channel of `ColorMask`.

### Color4
*Koikatsu property*. The background color (`black` areas) of `ColorMask`.
