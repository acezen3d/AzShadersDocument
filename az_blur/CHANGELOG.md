# Changelog

## v3.0.0
- Rename `NormalMap` and `NormalMapScale` to `DistortionMap` and `DistortionMapScale` in `Az/Blur` and `Az/BlurFast`.
- Add `DistortionXFlip` and `DistortionYFlip` in `Az/Blur` and `Az/BlurFast`.
- Remove `Magnification` from `Az/Blur` and `Az/BlurFast`, as its effect can be achieved through the above distortion.
- Remove `Adjustments` and its superficial implementation.
- Add `Perspective` to control the perspective scaling behavior in `Az/Blur` and `Az/BlurFast`, with an improved implementation. Check the documents for more details.
- Optimize the blur correction handling in `Az/BlurFast`:
  - Rename `BlurCorrection` to `BlurCorrectionScale`.
  - Add `BlurCorrectionOrigin` to specify the correction center point. 
  - Add the `BLUR_CORRECTION` keyword to indicate whether the blur correction is enabled.
- Reorder the properties in `Az/Blur` and `Az/BlurFast`. 
- Add `CustomAspect` and `CustomAspectMethod` to control the blur aspect ratio in `Az/BlurCircularMotion` and `Az/BlurZoomMotion`.
- Change `BlurRange` to `BlurTranslation` in `Az/BlurLinearMotion`.
- Change `BlurRange` to `BlurRotation` in `Az/BlurCircularMotion`.
- Change `BlurRange` to `BlurScaling` in `Az/BlurZoomMotion`.
- The `alpha` channel of `BlurCenter` in `Az/BlurCircularMotion` and `Az/BlurZoomMotion` now controls which space the center is defined in. Check the documents for more details.
- Fix the blur iteration step calculation. `BlurTranslation`, `BlurRotation`, and `BlurScaling` now define the total blur range.
- Add `UseRMS` to enable the RMS (root mean square) blur averaging method in all shaders. When enabled, it preserves perceptual contrast and helps retain highlight details.

## v2.0.0
- Merge `Az/BlurBox` and `Az/BlurGaussian` into `Az/Blur`, merge `Az/BlurBoxLite` and `Az/BlurGaussianLite` into `Az/BlurFast`.
- For `Az/Blur(Fast)`:
  - Add the `GAUSSIAN_BLUR` keyword to switch to Gaussian blur; otherwise, box blur is used.
  - Fix the incorrect offset direction based on the normal map.
  - Change the lower bound of `Magnification` to 0.1.
  - Change the default value of `BlurCorrection` to 1.
  - Add `Adjustments` to control how the offset from the normal map and the blur texel size vary with depth.
- For `Az/BlurLinearMotion`, `Az/BlurCircularMotion`, and `Az/BlurZoomMotion`:
  - The blur range is now always based on the screen's vertical texel size.
  - Change the lower bound of `BlurRange` to 0 (for `Az/BlurZoomMotion`, it's -10). 
- Remove the use of the `alpha` channel (fourth component) of `BlurCenter` to control the blur direction in `Az/BlurZoomMotion`; the sign of `BlurRange` is now used instead.
- Fix the issue in `Az/BlurZoomMotion` where the blur direction could be incorrect and exceed the center.
