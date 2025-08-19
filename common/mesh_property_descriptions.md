# Mesh property descriptions

- [Mesh property descriptions](#mesh-property-descriptions)
    - [VertexNormalMap](#vertexnormalmap)
    - [VertexNormalStrength](#vertexnormalstrength)
    - [VertexTangentMap](#vertextangentmap)
    - [VertexTangentStrength](#vertextangentstrength)
    - [Tessellation](#tessellation)
    - [TessEdgeLength](#tessedgelength)
    - [TessMin](#tessmin)
    - [TessMax](#tessmax)
    - [TessThreshold](#tessthreshold)
    - [TessSmoothMap](#tesssmoothmap)
    - [TessSmooth](#tesssmooth)
    - [Displacement](#displacement)
    - [DisplaceMap](#displacemap)
    - [DisplaceMiddleLevel](#displacemiddlelevel)
    - [DisplaceStrength](#displacestrength)
    - [DisplaceNormalTexelSize](#displacenormaltexelsize)
    - [DisplaceNormalMultiplier](#displacenormalmultiplier)
    - [DisplaceAdjustment](#displaceadjustment)
    - [DisplaceOffset](#displaceoffset)

### VertexNormalMap
Normal map applied per vertex in the vertex function, defined in tangent space, use RGB color encoding, not DXT5nm encoding. Unlike normal maps applied in the fragment function, this truly modifies the mesh's normals, so the tessellation and displacement are also affected. `alpha` channel is its application strength mask.

### VertexNormalStrength
`VertexNormalMap` application strength, will be multiplied with `VertexNormalMap` `alpha` channel.

### VertexTangentMap
Tangent map applied per vertex in the vertex function, defined in tangent space, use RGB color encoding, not DXT5nm encoding. `alpha` channel is its application strength mask.

### VertexTangentStrength
`VertexTangentMap` application strength, will be multiplied with `VertexTangentMap` `alpha` channel.

### Tessellation
Whether to enable the tessellation.

### TessEdgeLength
The tessellation factor is calculated based on the ratio of the product of edge length and screen height to camera distance. `TessEdgeLength` is a divisor that modifies this ratio. It represents the approximate desired edge length in pixels. Any edge exceeding this length will be tessellated, provided the tessellation factor also falls between `TessMin` and `TessMax`. Compared to `TessMultiplier` in the previous versions, this property is more comprehensible and intuitive.

### TessMin
Minimum tessellation factor. The tessellation factor will eventually be clamped between `TessMin` and `TessMax`.

### TessMax
Maximum tessellation factor. The tessellation factor will eventually be clamped between `TessMin` and `TessMax`.

### TessThreshold
Maximum distance of the triangle vertices outside the frustum (four planes). Any triangle with all three vertices exceeding this threshold will not be tessellated.

### TessSmoothMap
Tessellation smooth map, grayscale texture, `red` channel is used. Works with `TessSmooth`.

### TessSmooth
Interpolation of the vertex position between its original position and the tessellation smoothing position. Used to control the smoothness of the tessellation. Works with `TessSmoothMap`. Note that the higher the smoothness, the greater the deviation from the original position.

### Displacement
Whether to enable the displacement.

### DisplaceMap
Displacement map, grayscale texture, `red` channel is used.

### DisplaceMiddleLevel
Neutral displacement value that causes no displacement on `DisplaceMap`. Any lower values will push the surfaces inwards, and any higher values will push them outwards. Typically, this value is middle gray (0.5) or black (0).

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
