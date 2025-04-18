# Displacement property descriptions

- [Displacement property descriptions](#displacement-property-descriptions)
    - [Displacement](#displacement)
    - [DisplaceMap](#displacemap)
    - [DisplaceMiddleLevel](#displacemiddlelevel)
    - [DisplaceStrength](#displacestrength)
    - [DisplaceNormalTexelSize](#displacenormaltexelsize)
    - [DisplaceNormalMultiplier](#displacenormalmultiplier)
    - [DisplaceAdjustment](#displaceadjustment)
    - [DisplaceOffset](#displaceoffset)

### Displacement
Whether to enable the displacement.

### DisplaceMap
Displacement map, greyscale texture, `red` channel is used.

### DisplaceMiddleLevel
Neutral displacement value that causes no displacement on `DisplaceMap`. Any lower values will push the surfaces inwards, and any higher values will push them outwards. Typically, this value is middle grey (0.5) or black (0).

### DisplaceStrength
The intensity of displacement application.

### DisplaceNormalTexelSize
The texel size multiplier, controlling the sampling radius of Sobel filter used to generate the normals. The larger this value, the stronger and smoother the normals, vice versa.

### DisplaceNormalMultiplier
Controls the scale of the normals generated from `DisplaceMap`, used to adjust the surface normals after displacement. Works with `DisplaceStrength`.

### DisplaceAdjustment
Since the displacement occurs in object space, and the displacement distance/amount is an absolute value in object space which has nothing to do with the size of the object itself. However, users often expect the displacement to be relative to the size of the object. `DisplaceAdjustment` now handles this relativity. Users can adjust this value according to the size of the object without touching other properties of the displacement.

The effect of `DisplaceAdjustment` is calculated using the following formula:

$$DisplaceFactor=10^{DisplaceAdjustment-2}$$

- When `DisplaceAdjustment` is 0, `DisplaceFactor` is 0.01, consistent with previous versions' built-in factor.
- When `DisplaceAdjustment` is 2, `DisplaceFactor` is 1, corresponding to Unity’s unit of 1 meter.

**Notes**
- The transformation of objects in world space does not affect the description above.
- `DisplaceFactor` will be used in the calculation of `DisplaceMiddleLevel` and `DisplaceOffset`.

### DisplaceOffset
Offsets the displaced object in its object space. `red`: x-axis, `green`: y-axis, `blue`: z-axis, `alpha`: not used.