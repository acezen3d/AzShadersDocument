# Alpha clip and render options property descriptions

- [Alpha clip and render options property descriptions](#alpha-clip-and-render-options-property-descriptions)
    - [AlphaMask](#alphamask)
    - [Cutoff](#cutoff)
    - [NormalBackFaceFlip](#normalbackfaceflip)
    - [Cull](#cull)
    - [BlendSrc](#blendsrc)
    - [BlendDst](#blenddst)
    - [ZWrite](#zwrite)
    - [PREMULTIPLY\_ALPHA](#premultiply_alpha)

### AlphaMask
Alpha mask of Koikatsu, works together with the hidden properties `alpha_a` and `alpha_b`, which are controlled by game logic.\
Under normal circumstances, you don't need to touch it. It's mainly used in skin and cloth shaders, with the following logic. 
However, in cases like hair shaders, `alpha_a` and `alpha_b` have no effect, the `red` channel of this texture always takes effect.

| Cloth status | alpha_a | alpha_b | AlphaMask-rgb(1,1,0) | AlphaMask-rgb(0,1,0) | AlphaMask-rgb(0,0,0) |
| ------------ | ------- | ------- | -------------------- | -------------------- | -------------------- |
| On           | 1       | 1       | Keep                 | Clip                 | Clip                 |
| Half         | 0       | 1       | Keep                 | Keep                 | Clip                 |
| Off          | 0       | 0       | Keep                 | Keep                 | Keep                 |

**Notes**
- Although it’s called `AlphaMask`, it does not control the transparency; it only participates in alpha clipping.
- It's hidden on the body renderer by Material Editor.

### Cutoff
Alpha clip threshold value. Pixels with an alpha value below this will be clipped.

### NormalBackFaceFlip
Whether to flip the normals of the back faces.

### Cull
Face culling, 0: cull off, 1: cull front, 2: cull back.

### BlendSrc
Source (current color) blend mode/blend factor. Its value is defined by [Blend mode enum](blend_mode.md#blend-mode-enum). 

### BlendDst
Destination (frame buffer) blend mode/blend factor. Its value is defined by [Blend mode enum](blend_mode.md#blend-mode-enum). 

### ZWrite
Whether to update the depth buffer when it passes the depth test.

### PREMULTIPLY_ALPHA
Whether to switch to premultiplied alpha mode. When enabled, it will turn on `ALPHAPREMULTIPLY_ON`; otherwise, it will turn on `ALPHABLEND_ON`.

**Notes**
- When `PREMULTIPLY_ALPHA` is off, the blend modes are commonly set to:
  - `BlendSrc`: 5
  - `BlendDst`: 10
- When `PREMULTIPLY_ALPHA` is on, the blend modes are commonly set to:
  - `BlendSrc`: 1
  - `BlendDst`: 10