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
    - [AnimationUVType](#animationuvtype)
    - [AnimationUVOverride](#animationuvoverride)
    - [AnimationUVWrapMode](#animationuvwrapmode)
    - [\*Anisotropic](#anisotropic)
    - [\*CycleMode\*](#cyclemode)
    - [\*Easing\*](#easing)
    - [\*EasingParams\*](#easingparams)
  - [Notes](#notes)

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
| Name                | Type          | Default value | Description                                                                                                                                                                             |
| ------------------- | ------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| MainTex             | Texture2D(G)  | white         | Base color texture.                                                                                                                                                                     |
| Color               | Color         | (1,1,1,1)     | Color tint of `MainTex`.                                                                                                                                                                |
| ScreenTex           | Texture2D(G)  | white         | An extra color texture in screen space, will be blended with `MainTex` by `alpha` channel and `ScreenTexBlendType`.                                                                     |
| ScreenColor         | Color         | (1,1,1,1)     | Color tint of `ScreenTex`. `alpha` channel is also used.                                                                                                                                |
| ScreenTexBlendType  | Integer(0,11) | 1             | The blend type of `ScreenTex`. Its value is defined by [Blend type enum for color](../common/blend_type.md#blend-type-enum-for-color).                                                  |
| EmissionMap         | Texture2D(G)  | white         | Emission map, no need to be a grayscale but a color texture. `rgb`: emission, `alpha` channel is not used and will be handled automatically. Note that black (0,0,0) means no emission. |
| EmissionColor       | Color         | (0,0,0,0)     | Emission color, will be multiplied with `EmissionMap`.                                                                                                                                  |
| EmissionIntensity   | Float(0,2)    | 0             | Emission intensity control, will be multiplied with `EmissionMap` and `EmissionColor`.                                                                                                  |
| AnimationUVType     | Integer(0,1)  | 0             | See [Additional property descriptions/AnimationUVType](#animationuvtype).                                                                                                               |
| AnimationUVOverride | Boolean       | false         | See [Additional property descriptions/AnimationUVOverride](#animationuvoverride).                                                                                                       |
| AnimationUVWrapMode | Integer(0,2)  | 0             | See [Additional property descriptions/AnimationUVWrapMode](#animationuvwrapmode).                                                                                                       |
| AnimationDuration   | Float(0.1,10) | 1             | Controls the overall speed of all animations by defining the duration of each cycle, in seconds. The larger it is, the slower the animation, and vice versa.                            |

#### 🏷️UV Scroll
| Name                     | Type         | Default value | Description                                                                                                                                                       |
| ------------------------ | ------------ | ------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| UVScrollAnimation        | Boolean      | false         | Whether to enable the UV scroll animation.                                                                                                                        |
| UVScrollAnisotropic      | Boolean      | true          | Whether the UV scroll animation is anisotropic. Also see [Additional property descriptions/\*Anisotropic](#anisotropic).                                          |
| UVScrollRange            | Vector       | (0,0,0,0)     | Defines the range of the UV scroll. `rg`: initial and terminal translation offset of U in a cycle; `ba`: initial and terminal translation offset of V in a cycle. |
| UVScrollSpeedForU        | Float(0,20)  | 0             | UV scroll speed multiplier for U.                                                                                                                                 |
| UVScrollSpeedForV        | Float(0,20)  | 0             | UV scroll speed multiplier for V.                                                                                                                                 |
| UVScrollCycleModeForU    | Integer(0,4) | 0             | UV scroll cycle mode for U. Continuable. Also see [Additional property descriptions/\*CycleMode\*](#cyclemode).                                                   |
| UVScrollCycleModeForV    | Integer(0,4) | 0             | UV scroll cycle mode for V. Continuable. Also see [Additional property descriptions/\*CycleMode\*](#cyclemode).                                                   |
| UVScrollEasingForU       | Integer(0,5) | 0             | UV scroll easing function for U. Also see [Additional property descriptions/\*Easing\*](#easing).                                                                 |
| UVScrollEasingForV       | Integer(0,5) | 0             | UV scroll easing function for V. Also see [Additional property descriptions/\*Easing\*](#easing).                                                                 |
| UVScrollEasingParamsForU | Vector       | (0,0,1,1)     | UV scroll custom easing function params for U. Also see [Additional property descriptions/\*EasingParams\*](#easingparams).                                       |
| UVScrollEasingParamsForV | Vector       | (0,0,1,1)     | UV scroll custom easing function params for V. Also see [Additional property descriptions/\*EasingParams\*](#easingparams).                                       |

#### 🏷️UV Spin
| Name                   | Type         | Default value | Description                                                                                                                                                                                     |
| ---------------------- | ------------ | ------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| UVSpinAnimation        | Boolean      | false         | Whether to enable the UV spin animation.                                                                                                                                                        |
| UVSpinAnisotropic      | Boolean      | true          | Whether the UV spin animation is anisotropic. Also see [Additional property descriptions/\*Anisotropic](#anisotropic).                                                                          |
| UVSpinCenter           | Vector       | (0.5,0.5,0,0) | Defines the center of the UV spin using `rg` channels.                                                                                                                                          |
| UVSpinRange            | Vector       | (0,0,0,0)     | Defines the range of the UV spin. `rg`: initial and terminal rotation offset of U in a cycle, in units of $\pi$; `ba`: initial and terminal rotation offset of V in a cycle, in units of $\pi$. |
| UVSpinSpeedForU        | Float(0,20)  | 0             | UV spin speed multiplier for U.                                                                                                                                                                 |
| UVSpinSpeedForV        | Float(0,20)  | 0             | UV spin speed multiplier for V.                                                                                                                                                                 |
| UVSpinCycleModeForU    | Integer(0,4) | 0             | UV spin cycle mode for U. Continuable. Also see [Additional property descriptions/\*CycleMode\*](#cyclemode).                                                                                   |
| UVSpinCycleModeForV    | Integer(0,4) | 0             | UV spin cycle mode for V. Continuable. Also see [Additional property descriptions/\*CycleMode\*](#cyclemode).                                                                                   |
| UVSpinEasingForU       | Integer(0,5) | 0             | UV spin easing function for U. Also see [Additional property descriptions/\*Easing\*](#easing).                                                                                                 |
| UVSpinEasingForV       | Integer(0,5) | 0             | UV spin easing function for V. Also see [Additional property descriptions/\*Easing\*](#easing).                                                                                                 |
| UVSpinEasingParamsForU | Vector       | (0,0,1,1)     | UV spin custom easing function params for U. Also see [Additional property descriptions/\*EasingParams\*](#easingparams).                                                                       |
| UVSpinEasingParamsForV | Vector       | (0,0,1,1)     | UV spin custom easing function params for V. Also see [Additional property descriptions/\*EasingParams\*](#easingparams).                                                                       |

#### 🏷️UV Pulse
| Name                    | Type         | Default value | Description                                                                                                                                              |
| ----------------------- | ------------ | ------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- |
| UVPulseAnimation        | Boolean      | false         | Whether to enable the UV pulse animation.                                                                                                                |
| UVPulseAnisotropic      | Boolean      | true          | Whether the UV pulse animation is anisotropic. Also see [Additional property descriptions/\*Anisotropic](#anisotropic).                                  |
| UVPulseCenter           | Vector       | (0.5,0.5,0,0) | Defines the center of the UV pulse using `rg` channels.                                                                                                  |
| UVPulseRange            | Vector       | (0,0,0,0)     | Defines the range of the UV pulse. `rg`: initial and terminal scaling offset of U in a cycle; `ba`: initial and terminal scaling offset of V in a cycle. |
| UVPulseSpeedForU        | Float(0,20)  | 0             | UV pulse speed multiplier for U.                                                                                                                         |
| UVPulseSpeedForV        | Float(0,20)  | 0             | UV pulse speed multiplier for V.                                                                                                                         |
| UVPulseCycleModeForU    | Integer(0,2) | 0             | UV pulse cycle mode for U. Non-continuable. Also see [Additional property descriptions/\*CycleMode\*](#cyclemode).                                       |
| UVPulseCycleModeForV    | Integer(0,2) | 0             | UV pulse cycle mode for V. Non-continuable. Also see [Additional property descriptions/\*CycleMode\*](#cyclemode).                                       |
| UVPulseEasingForU       | Integer(0,5) | 0             | UV pulse easing function for U. Also see [Additional property descriptions/\*Easing\*](#easing).                                                         |
| UVPulseEasingForV       | Integer(0,5) | 0             | UV pulse easing function for V. Also see [Additional property descriptions/\*Easing\*](#easing).                                                         |
| UVPulseEasingParamsForU | Vector       | (0,0,1,1)     | UV pulse custom easing function params for U. Also see [Additional property descriptions/\*EasingParams\*](#easingparams).                               |
| UVPulseEasingParamsForV | Vector       | (0,0,1,1)     | UV pulse custom easing function params for V. Also see [Additional property descriptions/\*EasingParams\*](#easingparams).                               |

#### 🏷️Hue Shift
| Name                         | Type         | Default value | Description                                                                                                                                                                                                                                       |
| ---------------------------- | ------------ | ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| HueShiftAnimation            | Boolean      | false         | Whether to enable the hue shift animation.                                                                                                                                                                                                        |
| HueShiftAnisotropic          | Boolean      | true          | Whether the hue shift animation is anisotropic. Also see [Additional property descriptions/\*Anisotropic](#anisotropic).                                                                                                                          |
| HueShiftRange                | Vector       | (0,0,0,0)     | Defines the range of the hue shift. `rg`: initial and terminal hue offset of Map (`EmissionMap`) in a cycle; `ba`: initial and terminal hue offset of Color (`EmissionColor`) in a cycle. The full hue circle is mapped to the range from 0 to 1. |
| HueShiftSpeedForMap          | Float(0,20)  | 0             | Hue shift speed multiplier for Map.                                                                                                                                                                                                               |
| HueShiftSpeedForColor        | Float(0,20)  | 0             | Hue shift speed multiplier for Color.                                                                                                                                                                                                             |
| HueShiftCycleModeForMap      | Integer(0,4) | 0             | Hue shift cycle mode for Map. Continuable. Also see [Additional property descriptions/\*CycleMode\*](#cyclemode).                                                                                                                                 |
| HueShiftCycleModeForColor    | Integer(0,4) | 0             | Hue shift cycle mode for Color. Continuable. Also see [Additional property descriptions/\*CycleMode\*](#cyclemode).                                                                                                                               |
| HueShiftEasingForMap         | Integer(0,5) | 0             | Hue shift easing function for Map. Also see [Additional property descriptions/\*Easing\*](#easing).                                                                                                                                               |
| HueShiftEasingForColor       | Integer(0,5) | 0             | Hue shift easing function for Color. Also see [Additional property descriptions/\*Easing\*](#easing).                                                                                                                                             |
| HueShiftEasingParamsForMap   | Vector       | (0,0,1,1)     | Hue shift custom easing function params for Map. Also see [Additional property descriptions/\*EasingParams\*](#easingparams).                                                                                                                     |
| HueShiftEasingParamsForColor | Vector       | (0,0,1,1)     | Hue shift custom easing function params for Color. Also see [Additional property descriptions/\*EasingParams\*](#easingparams).                                                                                                                   |

#### 🏷️Color Blend
| Name                               | Type         | Default value | Description                                                                                                                                                                |
| ---------------------------------- | ------------ | ------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| ColorBlendAnimation                | Boolean      | false         | Whether to enable the color blend animation.                                                                                                                               |
| ColorBlendAnisotropic              | Boolean      | true          | Whether the color blend animation is anisotropic. Also see [Additional property descriptions/\*Anisotropic](#anisotropic).                                                 |
| ColorBlendMap                      | Texture2D(G) | white         | The terminal emission map. It will be blended with the initial emission map `EmissionMap`. Together, they define the Map range of the color blend.                         |
| ColorBlendColor                    | Color        | (1,1,1,1)     | The terminal emission color. It will be blended with the initial emission color `EmissionColor`. Together, they define the Color range of the color blend.                 |
| ColorBlendIntensity                | Float(0,2)   | 0             | The terminal emission intensity. It will be blended with the initial emission intensity `EmissionIntensity`. Together, they define the Intensity range of the color blend. |
| ColorBlendSpeedForMap              | Float(0,20)  | 0             | Color blend speed multiplier for Map.                                                                                                                                      |
| ColorBlendSpeedForColor            | Float(0,20)  | 0             | Color blend speed multiplier for Color.                                                                                                                                    |
| ColorBlendSpeedForIntensity        | Float(0,20)  | 0             | Color blend speed multiplier for Intensity.                                                                                                                                |
| ColorBlendCycleModeForMap          | Integer(0,2) | 0             | Color blend cycle mode for Map. Non-continuable. Also see [Additional property descriptions/\*CycleMode\*](#cyclemode).                                                    |
| ColorBlendCycleModeForColor        | Integer(0,2) | 0             | Color blend cycle mode for Color. Non-continuable. Also see [Additional property descriptions/\*CycleMode\*](#cyclemode).                                                  |
| ColorBlendCycleModeForIntensity    | Integer(0,2) | 0             | Color blend cycle mode for Intensity. Non-continuable. Also see [Additional property descriptions/\*CycleMode\*](#cyclemode).                                              |
| ColorBlendEasingForMap             | Integer(0,5) | 0             | Color blend easing function for Map. Also see [Additional property descriptions/\*Easing\*](#easing).                                                                      |
| ColorBlendEasingForColor           | Integer(0,5) | 0             | Color blend easing function for Color. Also see [Additional property descriptions/\*Easing\*](#easing).                                                                    |
| ColorBlendEasingForIntensity       | Integer(0,5) | 0             | Color blend easing function for Intensity. Also see [Additional property descriptions/\*Easing\*](#easing).                                                                |
| ColorBlendEasingParamsForMap       | Vector       | (0,0,1,1)     | Color blend custom easing function params for Map. Also see [Additional property descriptions/\*EasingParams\*](#easingparams).                                            |
| ColorBlendEasingParamsForColor     | Vector       | (0,0,1,1)     | Color blend custom easing function params for Color. Also see [Additional property descriptions/\*EasingParams\*](#easingparams).                                          |
| ColorBlendEasingParamsForIntensity | Vector       | (0,0,1,1)     | Color blend custom easing function params for Intensity. Also see [Additional property descriptions/\*EasingParams\*](#easingparams).                                      |

## Az/EmissionAnimationAlpha shader
### Tags
- RenderType: `Transparent`
- Queue: `Transparent`

### Properties
(Same as `Az/EmissionAnimationCutout`)

## Additional property descriptions
### AnimationUVType 
The UV type used for the emission UV animation:

**Value 0**: ***Mesh UV***.

**Value 1**: ***Screen Space UV***.

### AnimationUVOverride
Whether the animated UVs are allowed to simultaneously override the sampling UVs of corresponding textures:
- If this is `true` and `AnimationUVType` is set to 0, the animated UVs will override the UVs used to sample `MainTex`, meaning `MainTex` will follow the emission UV animation.
- If this is `true` and `AnimationUVType` is set to 1, the animated UVs will override the UVs used to sample `ScreenTex`, meaning `ScreenTex` will follow the emission UV animation.

**Notes**
- The texture's own tiling and offset are still respected.

### AnimationUVWrapMode
Specifies the wrap mode for the animated UVs. This property is particularly useful for UV animations that require custom texture wrapping.

**Value 0**: ***Inherit***. The animated UVs are not processed; the texture's own wrap mode is used.

**Value 1**: ***Repeat***. The animated UVs are processed as if having the repeat wrap mode.

**Value 2**: ***Clamp***. The animated UVs are processed as if having the clamp wrap mode.

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

## Notes
- Execution order of UV animations:
  - UV spin
  - UV pulse
  - UV scroll
  - (Texture's own tiling and offset)

- Execution order of color animations:
  - Hue shift
  - Color blend
