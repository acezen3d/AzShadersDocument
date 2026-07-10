# Misc property descriptions

- [Misc property descriptions](#misc-property-descriptions)
    - [ScreenUVAspectMode](#screenuvaspectmode)

### ScreenUVAspectMode
This property controls whether the screen space UVs take the screen's aspect ratio into account. Since screens are generally not square, sampling textures directly using screen space UVs can result in stretching. This property determines whether and along which axis the screen space UVs are fitted according to the screen's aspect ratio, ensuring that texture sampling remains its original proportions.

| Value | Screen UV aspect mode | Description                                                         |
| ----- | --------------------- | ------------------------------------------------------------------- |
| 0     | ***Preserve***        | The original screen space UVs remain unchanged.                     |
| 1     | ***FitU***            | The U (X-axis) is aligned and the V (Y-axis) is scaled accordingly. |
| 2     | ***FitV***            | The V (Y-axis) is aligned and the U (X-axis) is scaled accordingly. |
