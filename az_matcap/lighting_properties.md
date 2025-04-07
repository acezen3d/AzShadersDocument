# Lighting properties

- [Lighting properties](#lighting-properties)
  - [Properties](#properties)

## Properties
| Name                      | Type         | Default value                               | Description                                                                                             |
| ------------------------- | ------------ | ------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| ShadowIntensity           | Float(0,1)   | 0.85                                        | See [ShadowIntensity](../common/lighting_property_descriptions.md#shadowintensity).                     |
| ShadowReceiveControl      | Float(0,1)   | 1                                           | See [ShadowReceiveControl](../common/lighting_property_descriptions.md#shadowreceivecontrol).           |
| ShadowDarkControl         | Float(0,1)   | 1                                           | See [ShadowDarkControl](../common/lighting_property_descriptions.md#shadowdarkcontrol).                 |
| ShadowCookieControl       | Float(0,1)   | 0                                           | See [ShadowCookieControl](../common/lighting_property_descriptions.md#shadowcookiecontrol).             |
| ShadowTransitionPower     | Float(0,1)   | 0                                           | See [ShadowTransitionPower](../common/lighting_property_descriptions.md#shadowtransitionpower).         |
| DirectDiffuseIntensity    | Float(0,1)   | 1                                           | Direct diffuse reflection intensity. Set it to 0 to disable direct diffuse reflection.                  |
| DirectSpecularIntensity   | Float(0,1)   | 1                                           | Direct specular reflection intensity. Set it to 0 to disable direct specular reflection.                |
| IndirectDiffuseIntensity  | Float(0,1)   | 1                                           | See [IndirectDiffuseIntensity](../common/lighting_property_descriptions.md#indirectdiffuseintensity).   |
| IndirectSpecularIntensity | Float(0,1)   | 1                                           | See [IndirectSpecularIntensity](../common/lighting_property_descriptions.md#indirectspecularintensity). |
| SpotDefaultCookie         | Texture2D(L) | unity_spot_default_cookie, explicit default | See [SpotDefaultCookie](../common/lighting_property_descriptions.md#spotdefaultcookie).                 |
| ShadowOptimization        | Boolean      | false                                       | See [ShadowOptimization](../common/lighting_property_descriptions.md#shadowoptimization).               |
| ShadowPointPCFTexelSize   | Float(1,100) | 10                                          | See [ShadowPointPCFTexelSize](../common/lighting_property_descriptions.md#shadowpointpcftexelsize).     |
| SampleFullSHPerPixel      | Boolean      | false                                       | See [SampleFullSHPerPixel](../common/lighting_property_descriptions.md#samplefullshperpixel).           |