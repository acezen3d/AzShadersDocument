# Az/EmissionAnimationCutout(Alpha) shader

- [Az/EmissionAnimationCutout(Alpha) shader](#azemissionanimationcutoutalpha-shader)
  - [Az/EmissionAnimationCutout shader](#azemissionanimationcutout-shader)
    - [Tags](#tags)
    - [Properties](#properties)
      - [🏷️Alpha Clip and Render Options](#️alpha-clip-and-render-options)
      - [🏷️Main](#️main)
      - [🏷️UV Scroll](#️uv-scroll)
      - [🏷️UV Spin](#️uv-spin)
      - [🏷️UV Pulse](#️uv-pulse)
      - [🏷️Hue Shift](#️hue-shift)
      - [🏷️Color Blend](#️color-blend)
  - [Az/EmissionAnimationAlpha shader](#azemissionanimationalpha-shader)
    - [Tags](#tags-1)
    - [Properties](#properties-1)
  - [Additional property descriptions](#additional-property-descriptions)
    - [ScreenUVAspectMode](#screenuvaspectmode)
    - [AlphaFromEmission](#alphafromemission)
    - [AnimationUVType](#animationuvtype)
    - [AnimationUVOverride](#animationuvoverride)
    - [AnimationUVWrapMode](#animationuvwrapmode)
    - [AnimationUVOrder](#animationuvorder)
    - [AnimationColorOrder](#animationcolororder)
    - [Mask](#mask)
    - [MaskLevels](#masklevels)
    - [\*Anisotropic](#anisotropic)
    - [\*CycleMode\*](#cyclemode)
    - [\*Easing\*](#easing)
    - [\*EasingParams\*](#easingparams)

## Az/EmissionAnimationCutout shader
### Tags
- RenderType: `TransparentCutout`
- Queue: `AlphaTest`

### Properties
#### 🏷️Alpha Clip and Render Options
| Name      | Type         | Default value | Description                                                                                  |
| --------- | ------------ | ------------- | -------------------------------------------------------------------------------------------- |
| AlphaMask | Texture2D(G) | white         | See [AlphaMask](../common/alpha_clip_and_render_options_property_descriptions.md#alphamask). |
| Cutoff    | Float(0,1)   | 0.5           | See [Cutoff](../common/alpha_clip_and_render_options_property_descriptions.md#cutoff).       |
| Cull      | Integer(0,2) | 0             | See [Cull](../common/alpha_clip_and_render_options_property_descriptions.md#cull).           |

#### 🏷️Main
| Name                        | Type          | Default value | Description                                                                                                                                                                                                     |
| --------------------------- | ------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| MainTex                     | Texture2D(G)  | white         | Base color texture.                                                                                                                                                                                             |
| Color                       | Color         | (1,1,1,1)     | Color tint of `MainTex`.                                                                                                                                                                                        |
| ScreenTex                   | Texture2D(G)  | white         | An extra color texture in screen space, will be blended with `MainTex` by `alpha` channel and `ScreenTexBlendType`.                                                                                             |
| ScreenColor                 | Color         | (1,1,1,1)     | Color tint of `ScreenTex`. `alpha` channel is also used.                                                                                                                                                        |
| ScreenTexBlendType          | Integer(0,11) | 1             | The blend type of `ScreenTex`. Its value is defined by [Blend type enum for color](../common/blend_type.md#blend-type-enum-for-color).                                                                          |
| ScreenUVAspectMode          | Integer(0,2)  | 0             | See [Additional property descriptions/ScreenUVAspectMode](#screenuvaspectmode).                                                                                                                                 |
| EmissionMap                 | Texture2D(G)  | white         | Emission map, `rgb` channels define the emission color. `alpha` channel is also used if `AlphaFromEmission` is `true`.                                                                                          |
| EmissionColor               | Color         | (0,0,0,1)     | Emission color, will be multiplied with `EmissionMap`. `alpha` channel is also used if `AlphaFromEmission` is `true`.                                                                                           |
| EmissionIntensity           | Float(0,2)    | 0             | Emission intensity control, will be multiplied with `EmissionMap` and `EmissionColor`.                                                                                                                          |
| EmissionMapPremultiplyAlpha | Boolean       | true          | Whether to premultiply `rgb` of emission maps (`EmissionMap` and `ColorBlendMap`) by their `alpha`, consistent with the previous handling of the emission maps' `alpha` channels.                               |
| AlphaFromEmission           | Boolean       | false         | See [Additional property descriptions/AlphaFromEmission](#alphafromemission).                                                                                                                                   |
| AnimationUVType             | Integer(0,1)  | 0             | See [Additional property descriptions/AnimationUVType](#animationuvtype).                                                                                                                                       |
| AnimationUVOverride         | Boolean       | false         | See [Additional property descriptions/AnimationUVOverride](#animationuvoverride).                                                                                                                               |
| AnimationUVWrapMode         | Integer(0,2)  | 0             | See [Additional property descriptions/AnimationUVWrapMode](#animationuvwrapmode).                                                                                                                               |
| AnimationSpeed              | Float(0,2)    | 1             | Controls the overall speed of all animations, measured in cycles per second. Each animation's final speed is calculated by multiplying its own speed with this overall speed. When it's 0, all animations stop. |
| AnimationDelay              | Float(-1,1)   | 0             | Controls the overall delay of all animations, measured in seconds. Each animation's final delay is calculated by adding its own delay with this overall delay.                                                  |
| AnimationUVOrder            | Integer(0,5)  | 0             | See [Additional property descriptions/AnimationUVOrder](#animationuvorder).                                                                                                                                     |
| AnimationColorOrder         | Integer(0,1)  | 0             | See [Additional property descriptions/AnimationColorOrder](#animationcolororder).                                                                                                                               |
| Mask                        | Texture2D(L)  | white         | See [Additional property descriptions/Mask](#mask).                                                                                                                                                             |
| MaskLevels                  | Vector        | (1,1,1,1)     | See [Additional property descriptions/MaskLevels](#masklevels).                                                                                                                                                 |
| DisableShadowCasting        | Boolean       | false         | Whether to disable shadow casting (at the material level).                                                                                                                                                      |

#### 🏷️UV Scroll
| Name                     | Type         | Default value | Description                                                                                                                                                       |
| ------------------------ | ------------ | ------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| UVScrollAnimation        | Boolean      | false         | Whether to enable the UV scroll animation.                                                                                                                        |
| UVScrollAnisotropic      | Boolean      | true          | Whether the UV scroll animation is anisotropic. Also see [Additional property descriptions/\*Anisotropic](#anisotropic).                                          |
| UVScrollRange            | Vector       | (0,0,0,0)     | Defines the range of the UV scroll. `rg`: initial and terminal translation offset of U in a cycle; `ba`: initial and terminal translation offset of V in a cycle. |
| UVScrollSpeedForU        | Float(0,10)  | 0             | UV scroll speed for U.                                                                                                                                            |
| UVScrollDelayForU        | Float(-2,2)  | 0             | UV scroll delay for U.                                                                                                                                            |
| UVScrollCycleModeForU    | Integer(0,4) | 0             | UV scroll cycle mode for U. Continuable. Also see [Additional property descriptions/\*CycleMode\*](#cyclemode).                                                   |
| UVScrollEasingForU       | Integer(0,5) | 0             | UV scroll easing function for U. Also see [Additional property descriptions/\*Easing\*](#easing).                                                                 |
| UVScrollEasingParamsForU | Vector       | (0,0,1,1)     | UV scroll custom easing function params for U. Also see [Additional property descriptions/\*EasingParams\*](#easingparams).                                       |
| UVScrollSpeedForV        | Float(0,10)  | 0             | UV scroll speed for V.                                                                                                                                            |
| UVScrollDelayForV        | Float(-2,2)  | 0             | UV scroll delay for V.                                                                                                                                            |
| UVScrollCycleModeForV    | Integer(0,4) | 0             | UV scroll cycle mode for V. Continuable. Also see [Additional property descriptions/\*CycleMode\*](#cyclemode).                                                   |
| UVScrollEasingForV       | Integer(0,5) | 0             | UV scroll easing function for V. Also see [Additional property descriptions/\*Easing\*](#easing).                                                                 |
| UVScrollEasingParamsForV | Vector       | (0,0,1,1)     | UV scroll custom easing function params for V. Also see [Additional property descriptions/\*EasingParams\*](#easingparams).                                       |

#### 🏷️UV Spin
| Name                   | Type         | Default value | Description                                                                                                                                                                                     |
| ---------------------- | ------------ | ------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| UVSpinAnimation        | Boolean      | false         | Whether to enable the UV spin animation.                                                                                                                                                        |
| UVSpinAnisotropic      | Boolean      | true          | Whether the UV spin animation is anisotropic. Also see [Additional property descriptions/\*Anisotropic](#anisotropic).                                                                          |
| UVSpinCenter           | Vector       | (0.5,0.5,0,0) | Defines the center of the UV spin using `rg` channels.                                                                                                                                          |
| UVSpinRange            | Vector       | (0,0,0,0)     | Defines the range of the UV spin. `rg`: initial and terminal rotation offset of U in a cycle, in units of $\pi$; `ba`: initial and terminal rotation offset of V in a cycle, in units of $\pi$. |
| UVSpinSpeedForU        | Float(0,10)  | 0             | UV spin speed for U.                                                                                                                                                                            |
| UVSpinDelayForU        | Float(-2,2)  | 0             | UV spin delay for U.                                                                                                                                                                            |
| UVSpinCycleModeForU    | Integer(0,4) | 0             | UV spin cycle mode for U. Continuable. Also see [Additional property descriptions/\*CycleMode\*](#cyclemode).                                                                                   |
| UVSpinEasingForU       | Integer(0,5) | 0             | UV spin easing function for U. Also see [Additional property descriptions/\*Easing\*](#easing).                                                                                                 |
| UVSpinEasingParamsForU | Vector       | (0,0,1,1)     | UV spin custom easing function params for U. Also see [Additional property descriptions/\*EasingParams\*](#easingparams).                                                                       |
| UVSpinSpeedForV        | Float(0,10)  | 0             | UV spin speed for V.                                                                                                                                                                            |
| UVSpinDelayForV        | Float(-2,2)  | 0             | UV spin delay for V.                                                                                                                                                                            |
| UVSpinCycleModeForV    | Integer(0,4) | 0             | UV spin cycle mode for V. Continuable. Also see [Additional property descriptions/\*CycleMode\*](#cyclemode).                                                                                   |
| UVSpinEasingForV       | Integer(0,5) | 0             | UV spin easing function for V. Also see [Additional property descriptions/\*Easing\*](#easing).                                                                                                 |
| UVSpinEasingParamsForV | Vector       | (0,0,1,1)     | UV spin custom easing function params for V. Also see [Additional property descriptions/\*EasingParams\*](#easingparams).                                                                       |

#### 🏷️UV Pulse
| Name                    | Type         | Default value | Description                                                                                                                                              |
| ----------------------- | ------------ | ------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- |
| UVPulseAnimation        | Boolean      | false         | Whether to enable the UV pulse animation.                                                                                                                |
| UVPulseAnisotropic      | Boolean      | true          | Whether the UV pulse animation is anisotropic. Also see [Additional property descriptions/\*Anisotropic](#anisotropic).                                  |
| UVPulseCenter           | Vector       | (0.5,0.5,0,0) | Defines the center of the UV pulse using `rg` channels.                                                                                                  |
| UVPulseRange            | Vector       | (1,1,1,1)     | Defines the range of the UV pulse. `rg`: initial and terminal scaling offset of U in a cycle; `ba`: initial and terminal scaling offset of V in a cycle. |
| UVPulseSpeedForU        | Float(0,10)  | 0             | UV pulse speed for U.                                                                                                                                    |
| UVPulseDelayForU        | Float(-2,2)  | 0             | UV pulse delay for U.                                                                                                                                    |
| UVPulseCycleModeForU    | Integer(0,2) | 0             | UV pulse cycle mode for U. Non-continuable. Also see [Additional property descriptions/\*CycleMode\*](#cyclemode).                                       |
| UVPulseEasingForU       | Integer(0,5) | 0             | UV pulse easing function for U. Also see [Additional property descriptions/\*Easing\*](#easing).                                                         |
| UVPulseEasingParamsForU | Vector       | (0,0,1,1)     | UV pulse custom easing function params for U. Also see [Additional property descriptions/\*EasingParams\*](#easingparams).                               |
| UVPulseSpeedForV        | Float(0,10)  | 0             | UV pulse speed for V.                                                                                                                                    |
| UVPulseDelayForV        | Float(-2,2)  | 0             | UV pulse delay for V.                                                                                                                                    |
| UVPulseCycleModeForV    | Integer(0,2) | 0             | UV pulse cycle mode for V. Non-continuable. Also see [Additional property descriptions/\*CycleMode\*](#cyclemode).                                       |
| UVPulseEasingForV       | Integer(0,5) | 0             | UV pulse easing function for V. Also see [Additional property descriptions/\*Easing\*](#easing).                                                         |
| UVPulseEasingParamsForV | Vector       | (0,0,1,1)     | UV pulse custom easing function params for V. Also see [Additional property descriptions/\*EasingParams\*](#easingparams).                               |

#### 🏷️Hue Shift
| Name                         | Type         | Default value | Description                                                                                                                                                                                                                                                                |
| ---------------------------- | ------------ | ------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| HueShiftAnimation            | Boolean      | false         | Whether to enable the hue shift animation.                                                                                                                                                                                                                                 |
| HueShiftAnisotropic          | Boolean      | true          | Whether the hue shift animation is anisotropic. Also see [Additional property descriptions/\*Anisotropic](#anisotropic).                                                                                                                                                   |
| HueShiftRange                | Vector       | (0,0,0,0)     | Defines the range of the hue shift. `rg`: initial and terminal hue offset of Map (`EmissionMap`) in a cycle; `ba`: initial and terminal hue offset of Color (`EmissionColor`) in a cycle. The full hue circle is represented over the range $[n,n+1]$ for any integer $n$. |
| HueShiftSpeedForMap          | Float(0,10)  | 0             | Hue shift speed for Map.                                                                                                                                                                                                                                                   |
| HueShiftDelayForMap          | Float(-2,2)  | 0             | Hue shift delay for Map.                                                                                                                                                                                                                                                   |
| HueShiftCycleModeForMap      | Integer(0,4) | 0             | Hue shift cycle mode for Map. Continuable. Also see [Additional property descriptions/\*CycleMode\*](#cyclemode).                                                                                                                                                          |
| HueShiftEasingForMap         | Integer(0,5) | 0             | Hue shift easing function for Map. Also see [Additional property descriptions/\*Easing\*](#easing).                                                                                                                                                                        |
| HueShiftEasingParamsForMap   | Vector       | (0,0,1,1)     | Hue shift custom easing function params for Map. Also see [Additional property descriptions/\*EasingParams\*](#easingparams).                                                                                                                                              |
| HueShiftSpeedForColor        | Float(0,10)  | 0             | Hue shift speed for Color.                                                                                                                                                                                                                                                 |
| HueShiftDelayForColor        | Float(-2,2)  | 0             | Hue shift delay for Color.                                                                                                                                                                                                                                                 |
| HueShiftCycleModeForColor    | Integer(0,4) | 0             | Hue shift cycle mode for Color. Continuable. Also see [Additional property descriptions/\*CycleMode\*](#cyclemode).                                                                                                                                                        |
| HueShiftEasingForColor       | Integer(0,5) | 0             | Hue shift easing function for Color. Also see [Additional property descriptions/\*Easing\*](#easing).                                                                                                                                                                      |
| HueShiftEasingParamsForColor | Vector       | (0,0,1,1)     | Hue shift custom easing function params for Color. Also see [Additional property descriptions/\*EasingParams\*](#easingparams).                                                                                                                                            |

#### 🏷️Color Blend
| Name                               | Type         | Default value | Description                                                                                                                                                                                             |
| ---------------------------------- | ------------ | ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| ColorBlendAnimation                | Boolean      | false         | Whether to enable the color blend animation.                                                                                                                                                            |
| ColorBlendAnisotropic              | Boolean      | true          | Whether the color blend animation is anisotropic. Also see [Additional property descriptions/\*Anisotropic](#anisotropic).                                                                              |
| ColorBlendMap                      | Texture2D(G) | white         | The terminal emission map. It will be blended with the initial emission map `EmissionMap`. `alpha` channel is also used if `AlphaFromEmission` is `true`.                                               |
| ColorBlendColor                    | Color        | (0,0,0,1)     | The terminal emission color. It will be blended with the initial emission color `EmissionColor`. `alpha` channel is also used if `AlphaFromEmission` is `true`.                                         |
| ColorBlendIntensity                | Float(0,2)   | 0             | The terminal emission intensity. It will be blended with the initial emission intensity `EmissionIntensity`.                                                                                            |
| ColorBlendRange                    | Vector       | (0,0,0,0)     | Defines the range of the color blend. `rg`: initial and terminal lerp offset of Map in a cycle; `ba`: initial and terminal lerp offset of Color in a cycle. The values will be clamped between 0 and 1. |
| ColorBlendSpeedForMap              | Float(0,10)  | 0             | Color blend speed for Map.                                                                                                                                                                              |
| ColorBlendDelayForMap              | Float(-2,2)  | 0             | Color blend delay for Map.                                                                                                                                                                              |
| ColorBlendCycleModeForMap          | Integer(0,2) | 0             | Color blend cycle mode for Map. Non-continuable. Also see [Additional property descriptions/\*CycleMode\*](#cyclemode).                                                                                 |
| ColorBlendEasingForMap             | Integer(0,5) | 0             | Color blend easing function for Map. Also see [Additional property descriptions/\*Easing\*](#easing).                                                                                                   |
| ColorBlendEasingParamsForMap       | Vector       | (0,0,1,1)     | Color blend custom easing function params for Map. Also see [Additional property descriptions/\*EasingParams\*](#easingparams).                                                                         |
| ColorBlendSpeedForColor            | Float(0,10)  | 0             | Color blend speed for Color.                                                                                                                                                                            |
| ColorBlendDelayForColor            | Float(-2,2)  | 0             | Color blend delay for Color.                                                                                                                                                                            |
| ColorBlendCycleModeForColor        | Integer(0,2) | 0             | Color blend cycle mode for Color. Non-continuable. Also see [Additional property descriptions/\*CycleMode\*](#cyclemode).                                                                               |
| ColorBlendEasingForColor           | Integer(0,5) | 0             | Color blend easing function for Color. Also see [Additional property descriptions/\*Easing\*](#easing).                                                                                                 |
| ColorBlendEasingParamsForColor     | Vector       | (0,0,1,1)     | Color blend custom easing function params for Color. Also see [Additional property descriptions/\*EasingParams\*](#easingparams).                                                                       |
| ColorBlendSpeedForIntensity        | Float(0,10)  | 0             | Color blend speed for Intensity.                                                                                                                                                                        |
| ColorBlendDelayForIntensity        | Float(-2,2)  | 0             | Color blend delay for Intensity.                                                                                                                                                                        |
| ColorBlendCycleModeForIntensity    | Integer(0,2) | 0             | Color blend cycle mode for Intensity. Non-continuable. Also see [Additional property descriptions/\*CycleMode\*](#cyclemode).                                                                           |
| ColorBlendEasingForIntensity       | Integer(0,5) | 0             | Color blend easing function for Intensity. Also see [Additional property descriptions/\*Easing\*](#easing).                                                                                             |
| ColorBlendEasingParamsForIntensity | Vector       | (0,0,1,1)     | Color blend custom easing function params for Intensity. Also see [Additional property descriptions/\*EasingParams\*](#easingparams).                                                                   |

## Az/EmissionAnimationAlpha shader
### Tags
- RenderType: `Transparent`
- Queue: `Transparent`

### Properties
(Same as `Az/EmissionAnimationCutout`)

## Additional property descriptions
### ScreenUVAspectMode
This property controls whether the screen space UVs take the screen's aspect ratio into account. Since screens are generally not square, sampling textures directly using screen space UVs can result in stretching. This property determines whether and along which axis the screen space UVs are fitted according to the screen's aspect ratio, ensuring that texture sampling remains its original proportions.

**Value 0**: ***Preserve***. The original screen space UVs remain unchanged.

**Value 1**: ***FitU***. The U (x-axis) is aligned and the V (y-axis) is scaled accordingly.

**Value 2**: ***FitV***. The V (y-axis) is aligned and the U (x-axis) is scaled accordingly.

### AlphaFromEmission
Whether to use the alpha value from the emission as the main alpha.

**Value false**: The main alpha is determined by `MainTex.a` and `Color.a`;

**Value true**: The main alpha is determined by emission maps (`EmissionMap.a`, `ColorBlendMap.a`) and colors (`EmissionColor.a`, `ColorBlendColor.a`).

**Notes**
- When `AnimationUVType` is 1 (***Screen Space UV***), there is an exception: the shadow caster will always use `MainTex.a` and `Color.a`.

### AnimationUVType 
The UV type used for the emission UV animation:

**Value 0**: ***Mesh UV***.

**Value 1**: ***Screen Space UV***.

### AnimationUVOverride
Whether the animated UVs are allowed to simultaneously override the sampling UVs of related textures:

**Value false**: `MainTex` and `ScreenTex` use their own UVs and work as usual.

**Value true**:
- `AnimationUVType` is also set to 0, the animated UVs will override the UVs used to sample `MainTex`, meaning `MainTex` will follow the emission UV animation.
- `AnimationUVType` is also set to 1, the animated UVs will override the UVs used to sample `ScreenTex`, meaning `ScreenTex` will follow the emission UV animation.

**Notes**
- The texture's own tiling and offset are still respected.
- The origin of texture's own tiling is the origin of the animated UVs.

### AnimationUVWrapMode
Specifies the wrap mode for the animated UVs. This property is particularly useful for UV animations that require custom texture wrapping.

**Value 0**: ***Inherit***. The animated UVs are not processed; the texture's own wrap mode is used.

**Value 1**: ***Repeat***. The animated UVs are processed as if having the repeat wrap mode.

**Value 2**: ***Clamp***. The animated UVs are processed as if having the clamp wrap mode.

### AnimationUVOrder
Execution order of UV animations:

**Value 0**: UV pulse, UV spin, UV scroll.

**Value 1**: UV pulse, UV scroll, UV spin.

**Value 2**: UV spin, UV pulse, UV scroll.

**Value 3**: UV spin, UV scroll, UV pulse.

**Value 4**: UV scroll, UV pulse, UV spin.

**Value 5**: UV scroll, UV spin, UV pulse.

### AnimationColorOrder
Execution order of color animations:

**Value 0**: Hue shift, color blend.

**Value 1**: Color blend, hue shift.

### Mask
A comprehensive mask texture:
- `red`: The color mask of `MainTex`, controlling which areas the `Color` is applied to.
- `green`: The color mask of `ScreenTex`, controlling which areas the `ScreenColor` is applied to.
- `blue`: Emission mask, controlling which areas the emission is applied to.
- `alpha`: Equivalent to an alpha mask, will be multiplied with the final alpha value.

### MaskLevels
Level controls for `Mask` corresponding channels. The sign of each component indicates whether the mask is inverted, while its absolute value from 0 to 2 represents: 0: fully suppressed; 1: mask-defined; 2: fully applied. For example:
- -1 means the mask is inverted, but its strength remains unchanged.
- -2 and 2 have the same meaning, both represent full application.
- Values outside the range of -2 to 2 will be clamped.

### \*Anisotropic
A animation can have different animation properties on its various components; this is called the anisotropy of the animation. It means that each of its components has its own independent set of animation properties, rather than sharing a single common set. Specifically, for UV type animations, you will see properties with the `ForU` and `ForV` suffixes, while for color type animations, you will see properties with the `ForMap`, `ForColor`, and `ForIntensity` suffixes:

**Value false**: All components of the animation share a set of animation properties. For UV type animations, they all use properties with the `ForU` suffix, while for color type animations, they all use properties with the `ForMap` suffix. 

**Value true**: Each component of the animation uses properties with its own suffix.

**Notes**
- Only the properties with the `For*` suffixes are part of the animation property set for anisotropic animations and follow the rules described above.

### \*CycleMode\*
Determines the basic timing method for each cycle.

**Value 0**: ***Forward***.
```
1 │  /¦  /¦  /¦
  │ / ¦ / ¦ / ¦
  │/  ¦/  ¦/  ¦
0 ├───┼───┼───┼─── t
  0   1   2   3
```

**Value 1**: ***Backward***.
```
1 │\  ¦\  ¦\  ¦        or     0   1   2   3 
  │ \ ¦ \ ¦ \ ¦             0 ├───┼───┼───┼─── t
  │  \¦  \¦  \¦               │\  ¦\  ¦\  ¦   
0 ├───┼───┼───┼─── t          │ \ ¦ \ ¦ \ ¦
  0   1   2   3            -1 │  \¦  \¦  \¦
```

**Value 2**: ***PingPong***.
```
1 │  /¦\  ¦  /¦
  │ / ¦ \ ¦ / ¦
  │/  ¦  \¦/  ¦
0 ├───┼───┼───┼─── t
  0   1   2   3
```

**Value 3**: ***ForwardContinuous***.
```
3 │   ¦   ¦  /¦
  │   ¦   ¦ / ¦
  │   ¦   ¦/  ¦
2 │   ¦  /¦   ¦
  │   ¦ / ¦   ¦
  │   ¦/  ¦   ¦ 
1 │  /¦   ¦   ¦
  │ / ¦   ¦   ¦
  │/  ¦   ¦   ¦
0 ├───┼───┼───┼─── t
  0   1   2   3
```

**Value 4**: ***BackwardContinuous***.
```
3 │\  ¦   ¦   ¦        or     0   1   2   3
  │ \ ¦   ¦   ¦             0 ├───┼───┼───┼─── t
  │  \¦   ¦   ¦               │\  ¦   ¦   ¦   
2 │   ¦\  ¦   ¦               │ \ ¦   ¦   ¦  
  │   ¦ \ ¦   ¦            -1 │  \¦   ¦   ¦   
  │   ¦  \¦   ¦               │   ¦\  ¦   ¦ 
1 │   ¦   ¦\  ¦               │   ¦ \ ¦   ¦ 
  │   ¦   ¦ \ ¦            -2 │   ¦  \¦   ¦  
  │   ¦   ¦  \¦               │   ¦   ¦\  ¦   
0 ├───┼───┼───┼─── t          │   ¦   ¦ \ ¦ 
  0   1   2   3            -3 │   ¦   ¦  \¦    
```

**Notes**
- Only animations that are continuable have values 3 (***ForwardContinuous***) and 4 (***BackwardContinuous***); otherwise, they don't. Specifically:
  - Continuable animations: UV scroll, UV spin, Hue shift.
  - Non-continuable animations: UV pulse, Color blend.

### \*Easing\*
See [Easing function](../common/easing_function.md).

**Value 0**: ***Linear***.

**Value 1**: ***Ease***.

**Value 2**: ***EaseIn***.

**Value 3**: ***EaseOut***.

**Value 4**: ***EaseInOut***.

**Value 5**: ***Custom***. A custom easing function is used, the corresponding `*EasingParams*` property takes effect.

### \*EasingParams\*
Defines the control points of the custom cubic Bezier curve for easing customization, namely $(x_1, y_1, x_2, y_2)$ in its `rgba` channels. It's effective only when the corresponding `*Easing*` property is set to 5 (***Custom***).
