# Changelog

v2.0.0
- Merge `Az/BlurBox` and `Az/BlurGaussian` into `Az/Blur`, merge `Az/BlurBoxLite` and `Az/BlurGaussianLite` into `Az/BlurFast`.
- For `Az/Blur(Fast)`:
  - Add `GAUSSIAN_BLUR` keyword to switch to Gaussian blur; otherwise, box blur is used.
  - Fix the incorrect offset direction based on the normal map.
  - Change the lower bound of `Magnification` to 0.1.
  - Change the default value of `BlurCorrection` to 1.
  - Add `Adjustments` to control how the offset from the normal map and the blur texel size vary with depth.
- For `Az/BlurLinearMotion`, `Az/BlurZoomMotion` and `Az/BlurCircularMotion`:
  - The blur range is now always based on the screen’s vertical texel size.
  - Change the lower bound of `BlurRange` to 0 (for `Az/BlurZoomMotion`, it's -10). 
- Remove the use of the alpha channel (fourth component) of `BlurCenter` to control the blur direction in `Az/BlurZoomMotion`; the sign of `BlurRange` is now used instead.
- Fix the issue in `Az/BlurZoomMotion` where the blur direction could be incorrect and exceed the center.
