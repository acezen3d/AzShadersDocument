# Alpha clip and render options property descriptions

- [Alpha clip and render options property descriptions](#alpha-clip-and-render-options-property-descriptions)
    - [AlphaMask](#alphamask)
    - [Cutoff](#cutoff)
    - [CutoffShadow](#cutoffshadow)
    - [AlphaToMask](#alphatomask)
    - [NormalBackFaceFlip](#normalbackfaceflip)
    - [Cull](#cull)
    - [BlendSrc](#blendsrc)
    - [BlendDst](#blenddst)
    - [ZWrite](#zwrite)
    - [ZTest](#ztest)
    - [PREMULTIPLY\_ALPHA](#premultiply_alpha)

### AlphaMask
The alpha mask of Koikatsu. It works together with the hidden properties `alpha_a` and `alpha_b`, which are controlled by the game logic.\
Under normal circumstances, you don't need to touch it. It's mainly used in skin and cloth shaders, with the following logic. However, in cases like hair shaders, `alpha_a` and `alpha_b` have no effect, and the `red` channel of this texture always takes effect.

| Cloth status | alpha_a | alpha_b | AlphaMask rgb(1,1,0) | AlphaMask rgb(0,1,0) | AlphaMask rgb(0,0,0) |
| ------------ | ------- | ------- | -------------------- | -------------------- | -------------------- |
| On           | 1       | 1       | Keep                 | Clip                 | Clip                 |
| Half         | 0       | 1       | Keep                 | Keep                 | Clip                 |
| Off          | 0       | 0       | Keep                 | Keep                 | Keep                 |

**Notes**
- Although it's called `AlphaMask`, it does not control the transparency; it only participates in alpha clipping.
- It's hidden on the body renderer by Material Editor.

### Cutoff
The alpha clip threshold value. Pixels with an alpha value below this will be clipped.

### CutoffShadow
The alpha clip threshold value for the shadow caster pass. When this property is present, it overrides `Cutoff` for alpha clipping in the shadow caster pass.

### AlphaToMask
Whether to enable Alpha to Coverage. Alpha to Coverage is an MSAA-based technique that uses the fragment's alpha output as a coverage mask, allowing the GPU to generate semi-transparent edges with multiple coverage levels (depending on the MSAA sample count). This produces smooth, anti-aliased cutout edges without the sorting overhead of alpha blending.

When enabled, Alpha to Coverage takes effect. When disabled, the shader falls back to standard alpha clipping. Note that Alpha to Coverage requires MSAA to be enabled; otherwise it falls back automatically. Should only be disabled when MSAA is not supported or when standard alpha clipping is preferred.

### NormalBackFaceFlip
Whether to flip the normals of the back faces.

### Cull
The face culling.
| Value | Cull        |
| ----- | ----------- |
| 0     | ***Off***   |
| 1     | ***Front*** |
| 2     | ***Back***  |

https://docs.unity3d.com/Manual/SL-Cull.html

### BlendSrc
The source (current color) blend mode/blend factor. Its value is defined by [Blend mode enum](blend_mode.md#blend-mode-enum). 

### BlendDst
The destination (frame buffer) blend mode/blend factor. Its value is defined by [Blend mode enum](blend_mode.md#blend-mode-enum). 

### ZWrite
Whether to update the depth buffer when it passes the depth test.
| Value | ZWrite    |
| ----- | --------- |
| 0     | ***Off*** |
| 1     | ***On***  |

https://docs.unity3d.com/Manual/SL-ZWrite.html

### ZTest
The depth test method.
| Value | ZTest          |
| ----- | -------------- |
| 0     | ***Disabled*** |
| 1     | ***Never***    |
| 2     | ***Less***     |
| 3     | ***Equal***    |
| 4     | ***LEqual***   |
| 5     | ***Greater***  |
| 6     | ***NotEqual*** |
| 7     | ***GEqual***   |
| 8     | ***Always***   |

https://docs.unity3d.com/Manual/SL-ZTest.html

### PREMULTIPLY_ALPHA
Whether to use premultiplied alpha mode. When enabled, it will turn on `ALPHAPREMULTIPLY_ON`; otherwise, it will turn on `ALPHABLEND_ON`.

**Notes**
- When `PREMULTIPLY_ALPHA` is off, the blend modes are commonly set to:
  - `BlendSrc`: 5
  - `BlendDst`: 10
- When `PREMULTIPLY_ALPHA` is on, the blend modes are commonly set to:
  - `BlendSrc`: 1
  - `BlendDst`: 10
