# Changelog

## v1.1.0
- The custom mesh normals derived from `VertexNormalMap` are no longer applied directly to the tessellation and displacement, but instead masked by `green` channel of `TessSmoothMap` and `DisplaceMap` to control the influence on each of them.
- Modify the default values of `TessSmoothMap`, `DisplaceMap` and `DisplaceMiddleLevel`.
- Fix minor issues with the unpacking and blending of the tangent map.
