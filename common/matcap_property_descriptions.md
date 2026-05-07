# Matcap property descriptions

- [Matcap property descriptions](#matcap-property-descriptions)
    - [MatcapUVMethod](#matcapuvmethod)

### MatcapUVMethod
Controls the generation of the Matcap UVs, thus affecting the sampling of the matcap textures.

| Value | Matcap UV method             | Description                                                                                                                                              |
| ----- | ---------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 0     | ***Orthographic***           | This is the most conventional sampling, but it will have problems such as edge distortion.                                                               |
| 1     | ***SphericalReflection***    | The reflection direction is calculated first in the perspective view, and the normal direction is calculated again in the orthogonal view.               |
| 2     | ***ConstructingProjection*** | Three.js's approach. Using the upward positive Y-axis of the camera, construct the tangent and binormal to project onto the view space normal direction. |
| 3     | ***CrossProduct***           | Simple construction of the cross product of the normal and the view vectors.                                                                             |
| 4     | ***RNMBlending***            | Perturbation of the view space normal direction using the RNM normal blending. Unity Toon Shader's approach.                                             |
