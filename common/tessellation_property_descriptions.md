# Tessellation property descriptions

- [Tessellation property descriptions](#tessellation-property-descriptions)
    - [Tessellation](#tessellation)
    - [TessEdgeLength](#tessedgelength)
    - [TessMin](#tessmin)
    - [TessMax](#tessmax)
    - [TessThreshold](#tessthreshold)
    - [TessSmoothMap](#tesssmoothmap)
    - [TessSmooth](#tesssmooth)

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
Tessellation smooth distribution, greyscale texture, `red` channel is used. Vertices generated by tessellation will be interpolated automatically, the values of the original vertices are given by this texture. Works with `TessSmooth`.

### TessSmooth
Interpolation of the vertex position between its original position and the tessellation smoothing position. Used to control the smoothness of the tessellation. Works with `TessSmoothMap`. Note that the higher the smoothness, the greater the deviation from the original position.
