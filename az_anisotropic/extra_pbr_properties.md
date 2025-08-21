# Extra PBR properties

- [Extra PBR properties](#extra-pbr-properties)
  - [Properties](#properties)

## Properties
| Name             | Type         | Default value | Description                                                                            |
| ---------------- | ------------ | ------------- | -------------------------------------------------------------------------------------- |
| *Wear*           |              |               |                                                                                        |
| WearMap          | Texture2D(L) | gray          | See [WearMap](../common/extra_pbr_property_descriptions.md#wearmap).                   |
| WearAdjustment   | Vector       | (1,1,1,1)     | See [WearAdjustment](../common/extra_pbr_property_descriptions.md#wearadjustment).     |
| WearStrengths    | Vector       | (1,1,1,1)     | See [WearStrengths](../common/extra_pbr_property_descriptions.md#wearstrengths).       |
| *Tear*           |              |               |                                                                                        |
| TearMap          | Texture2D(L) | white         | See [TearMap](../common/extra_pbr_property_descriptions.md#tearmap).                   |
| AlphaEx          | Float(0,1)   | 1             | See [AlphaEx](../common/extra_pbr_property_descriptions.md#alphaex).                   |
| TearMode         | Integer(0,1) | 0             | See [TearMode](../common/extra_pbr_property_descriptions.md#tearmode).                 |
| TearFadeSoftness | Float(0,1)   | 0.1           | See [TearFadeSoftness](../common/extra_pbr_property_descriptions.md#tearfadesoftness). |
