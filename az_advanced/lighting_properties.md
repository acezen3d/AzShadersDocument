# Lighting properties

- [Lighting properties](#lighting-properties)
  - [Properties](#properties)

## Properties
| Name                      | Type         | Default value | Description                                                                                             |
| ------------------------- | ------------ | ------------- | ------------------------------------------------------------------------------------------------------- |
| DirectDiffuseIntensity    | Float(0,1)   | 1             | See [DirectDiffuseIntensity](../common/lighting_property_descriptions.md#directdiffuseintensity).       |
| DirectSpecularIntensity   | Float(0,1)   | 1             | See [DirectSpecularIntensity](../common/lighting_property_descriptions.md#directspecularintensity).     |
| IndirectDiffuseIntensity  | Float(0,1)   | 1             | See [IndirectDiffuseIntensity](../common/lighting_property_descriptions.md#indirectdiffuseintensity).   |
| IndirectSpecularIntensity | Float(0,1)   | 1             | See [IndirectSpecularIntensity](../common/lighting_property_descriptions.md#indirectspecularintensity). |
| ShadowOptimization        | Boolean      | false         | See [ShadowOptimization](../common/lighting_property_descriptions.md#shadowoptimization).               |
| ShadowPointPCFTexelSize   | Float(1,100) | 10            | See [ShadowPointPCFTexelSize](../common/lighting_property_descriptions.md#shadowpointpcftexelsize).     |
| SampleFullSHPerPixel      | Boolean      | false         | See [SampleFullSHPerPixel](../common/lighting_property_descriptions.md#samplefullshperpixel).           |

**Properties not supported by shaders**
| Name                 | Unsupported shaders                 |
| -------------------- | ----------------------------------- |
| SampleFullSHPerPixel | `Az/AdvancedEye`, `Az/AdvancedEyeW` |
