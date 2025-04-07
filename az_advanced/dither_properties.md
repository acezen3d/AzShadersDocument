# Dither properties

- [Dither properties](#dither-properties)
  - [Properties](#properties)
  - [Additional property description](#additional-property-description)
    - [DitherPattern1(2)](#ditherpattern12)

## Properties
| Name               | Type         | Default value                | Description                                                                                        |
| ------------------ | ------------ | ---------------------------- | -------------------------------------------------------------------------------------------------- |
| Dither             | Boolean      | false                        | Whether to enable the alpha dithering.                                                             |
| DitherPattern1     | Integer(0,5) | 1                            | Dither pattern 1. Also see  [Additional property description/DitherPattern1(2)](#ditherpattern12). |
| DitherPattern2     | Integer(0,5) | 2                            | Dither pattern 2. Also see  [Additional property description/DitherPattern1(2)](#ditherpattern12). |
| DitherPatternBlend | Float(0,1)   | 0                            | The interpolation ratio between pattern 1 and pattern 2.                                           |
| DitherNoiseTex1    | Texture✨     | blue_noise, explicit default | Custom noise texture 1.                                                                            |
| DitherNoiseTex2    | Texture✨     | blue_noise, explicit default | Custom noise texture 2.                                                                            |

## Additional property description
### DitherPattern1(2)
**Value: 0**
- Built-in 2x2 Bayer matrix.

**Value: 1**
- Built-in 4x4 Bayer matrix.

**Value: 2**
- Built-in 8x8 Bayer matrix.

**Value: 3**
- Built-in 16x16 Bayer matrix.

**Value: 4**
- Custom noise texture 1.

**Value: 5**
- Custom noise texture 2. 
