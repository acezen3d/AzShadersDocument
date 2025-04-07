# Matcap mask and fresnel properties

- [Matcap mask and fresnel properties](#matcap-mask-and-fresnel-properties)
  - [Properties](#properties)

## Properties
| Name                | Type         | Default value | Description                                                                                |
| ------------------- | ------------ | ------------- | ------------------------------------------------------------------------------------------ |
| MatcapMask          | Texture2D(L) | white         | Matcap mask, `red` channel is used.                                                        |
| MatcapMaskLevel     | Float(-1,1)  | 0             | Matcap mask level. -1: fully masked; 0: as defined by the mask texture; 1: fully unmasked. |
| MatcapMaskInvert    | Boolean      | false         | Whether to invert the matcap mask.                                                         |
| MatcapUseDetailMask | Boolean      | false         | Whether the matcap is also masked by `DetailMask`.                                         |
| MatcapFresnelPower  | Float(0,10)  | 1             | The Fresnel effect power of the matcap.                                                    |
| MatcapFresnelScale  | Float(0,2)   | 1             | The Fresnel effect scale of the matcap.                                                    |
| MatcapFresnelBias   | Float(-1,1)  | 0             | The Fresnel effect bias of the matcap.                                                     |
| MatcapFresnelInvert | Boolean      | false         | Whether to invert the Fresnel effect of the matcap.                                        |