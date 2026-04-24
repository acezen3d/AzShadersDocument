# Matcap texture edit properties

- [Matcap texture edit properties](#matcap-texture-edit-properties)
  - [Properties](#properties)
  - [Notes](#notes)

## Properties
| Name                | Type        | Default value | Description                                          |
| ------------------- | ----------- | ------------- | ---------------------------------------------------- |
| MatcapTexInvert     | Boolean     | false         | Inverts the matcap texture colors.                   |
| MatcapTexHue        | Float(-1,1) | 0             | Adjusts the hue of the matcap texture colors.        |
| MatcapTexSaturation | Float(-1,1) | 0             | Adjusts the saturation of the matcap texture colors. |
| MatcapTexLightness  | Float(-1,1) | 0             | Adjusts the lightness of the matcap texture colors.  |
| MatcapTexBrightness | Float(-1,1) | 0             | Adjusts the brightness of the matcap texture colors. |
| MatcapTexContrast   | Float(-1,1) | 0             | Adjusts the contrast of the matcap texture colors.   |

## Notes
- The matcap texture editing feature consists of three adjustment functions, executed in the following order:
   - Invert
   - Hue/Saturation/Lightness
   - Brightness/Contrast (Use Legacy)
- They are the same as the corresponding color adjustment functions (or adjustment layers) in Adobe Photoshop.
- Value range correspondence:
  
  | Name       | Photoshop    | Az Matcap shaders |
  | ---------- | ------------ | ----------------- |
  | Hue        | $[-180,180]$ | $[-1,1]$          |
  | Saturation | $[-100,100]$ | $[-1,1]$          |
  | Lightness  | $[-100,100]$ | $[-1,1]$          |
  | Brightness | $[-100,100]$ | $[-1,1]$          |
  | Contrast   | $[-100,100]$ | $[-1,1]$          |
