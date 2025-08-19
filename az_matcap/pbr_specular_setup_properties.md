# PBR specular setup properties

- [PBR specular setup properties](#pbr-specular-setup-properties)
  - [Properties](#properties)

## Properties
| Name              | Type         | Default value      | Description                                                                        |
| ----------------- | ------------ | ------------------ | ---------------------------------------------------------------------------------- |
| MainTex           | Texture2D(G) | white              | See [MainTex](../common/pbr_property_descriptions.md#maintex).                     |
| Color             | Color        | (1,1,1,1)          | See [Color](../common/pbr_property_descriptions.md#color).                         |
| NormalMap         | Texture2D(L) | bump               | See [NormalMap](../common/pbr_property_descriptions.md#normalmap).                 |
| NormalMapScale    | Float(0,1)   | 1                  | See [NormalMapScale](../common/pbr_property_descriptions.md#normalmapscale).       |
| SpecGlossMap      | Texture2D(G) | white              | See [SpecGlossMap](../common/pbr_property_descriptions.md#specglossmap).           |
| SpecColor         | Color        | (0.2, 0.2, 0.2, 1) | See [SpecColor](../common/pbr_property_descriptions.md#speccolor).                 |
| Glossiness        | Float(0,1)   | 0.5                | See [Glossiness](../common/pbr_property_descriptions.md#glossiness).               |
| OcclusionMap      | Texture2D(L) | white              | See [OcclusionMap](../common/pbr_property_descriptions.md#occlusionmap).           |
| OcclusionStrength | Float(0,1)   | 1                  | See [OcclusionStrength](../common/pbr_property_descriptions.md#occlusionstrength). |
| EmissionMap       | Texture2D(G) | white              | See [EmissionMap](../common/pbr_property_descriptions.md#emissionmap).             |
| EmissionColor     | Color        | (0,0,0,0)          | See [EmissionColor](../common/pbr_property_descriptions.md#emissioncolor).         |
| EmissionIntensity | Float(0,2)   | 0                  | See [EmissionIntensity](../common/pbr_property_descriptions.md#emissionintensity). |
