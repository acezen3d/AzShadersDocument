# Lighting property descriptions

- [Lighting property descriptions](#lighting-property-descriptions)
    - [ShadowIntensity](#shadowintensity)
    - [ShadowReceiveControl](#shadowreceivecontrol)
    - [ShadowDarkControl](#shadowdarkcontrol)
    - [ShadowCookieControl](#shadowcookiecontrol)
    - [ShadowTransitionPower](#shadowtransitionpower)
    - [IndirectDiffuseIntensity](#indirectdiffuseintensity)
    - [IndirectSpecularIntensity](#indirectspecularintensity)
    - [SpotDefaultCookie](#spotdefaultcookie)
    - [ShadowOptimization](#shadowoptimization)
    - [ShadowPointPCFTexelSize](#shadowpointpcftexelsize)
    - [SampleFullSHPerPixel](#samplefullshperpixel)

### ShadowIntensity
`ShadowIntensity` controls the intensity of all forms of shadows on an object. It's introduced starting from Az Standard shaders. Unlike `ShadowPower` of KKUSS shaders or `ShadowIntensity` of previous versions of Az Standard shaders, it neither adds additional lights nor mixes with other colors, the light color itself does not change in any way.

It now functions like a bus, controlling different forms of shadows (In Unity, an object may not be illuminated primarily due to three factors: receiving shadows from other objects, its own back-facing surfaces (dark areas), and the light mask (cookie). In this context, they are all considered different forms of shadows.) along with the other three properties `ShadowReceiveControl`, `ShadowDarkControl`, and `ShadowCookieControl`.

- When `ShadowReceiveControl` is 1, `ShadowDarkControl` is 0 and `ShadowCookieControl` is 0, `ShadowIntensity` is very similar to [`Light.shadowStrength`](https://docs.unity3d.com/ScriptReference/Light-shadowStrength.html), but it applies to shadows of all lights, including baked lights.
- When `ShadowReceiveControl` is 1, `ShadowDarkControl` is 1 and `ShadowCookieControl` is 0, `ShadowIntensity` will behave like previous versions (prior to v4.8.0) of Az Standard shaders.
 
The values of these three properties range between 0 and 1. When they are non-zero, their corresponding shadows will be controlled by varying degrees of `ShadowIntensity` and will fade as `ShadowIntensity` decreases.

### ShadowReceiveControl
Whether `ShadowIntensity` controls the intensity of received shadows. Also see [ShadowIntensity](#shadowintensity).

### ShadowDarkControl
Whether `ShadowIntensity` controls the intensity of dark areas. Also see [ShadowIntensity](#shadowintensity).

### ShadowCookieControl
Whether `ShadowIntensity` controls the intensity of light masks. Also see [ShadowIntensity](#shadowintensity).

### ShadowTransitionPower
The power of the transition gradient at the light-dark boundaries. It fine-tunes the lighting by adjusting the falloff of the diffuse term of direct illumination, so it is not physically correct. However, for artistic style purposes, we could create a smoother transition at the light-dark boundaries with this property. This allows us to choose whether to make the light-dark boundaries appear as smooth as they would in gamma color space, even when rendering in linear color space ([Differences between linear and gamma color space](https://docs.unity3d.com/2019.4/Documentation/Manual/LinearRendering-LinearOrGammaWorkflow.html)). The default value 0 means no fine-tuning.

### IndirectDiffuseIntensity
Controls the diffuse term of the indirect lighting. You should setup your own indirect lights for it to work.     

### IndirectSpecularIntensity
Controls the specular term of the indirect lighting. You should setup your own indirect lights for it to work.    

### SpotDefaultCookie
Used to assist `ShadowCookieControl` and `ShadowIntensity` with spot light cookies. It's best not to touch it, as replacing the texture may cause artifacts due to the lack of support for certain features in Material Editor. It will be hidden in Material Editor v3.10.0 and later.

### ShadowOptimization
**Value false**: Disables the shadow optimization.

**Value true**: Enables the shadow optimization. Currently supports shadow optimization for spot lights and point lights. Shadow optimization for spot lights is done by just turning this on; and there is another property `ShadowPointPCFTexelSize` for shadow optimization for point lights.

### ShadowPointPCFTexelSize
The sampling radius of point light shadow PCF filter. `ShadowOptimization` needs to be turned on to work. 

### SampleFullSHPerPixel
**Value false**: Unity's default SH (Spherical Harmonics) sampling strategy is used: L2 per vertex, L0 and L1 per pixel.

**Value true**: All L0, L1, and L2 components of SH are sampled per pixel.