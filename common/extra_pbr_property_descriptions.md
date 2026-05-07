# Extra PBR property descriptions

- [Extra PBR property descriptions](#extra-pbr-property-descriptions)
    - [WearMap](#wearmap)
    - [WearAdjustment](#wearadjustment)
    - [WearStrengths](#wearstrengths)
    - [TearMap](#tearmap)
    - [AlphaEx](#alphaex)
    - [TearMode](#tearmode)
    - [TearFadeSoftness](#tearfadesoftness)

### WearMap
The wear map. The `red` channel is used.

### WearAdjustment
The wear map value adjustment.

### WearStrengths
The wear effect applied to the albedo and glossiness of the concave and convex areas.

### TearMap
The tear map. The `red` channel is used.

### AlphaEx
The tear alpha threshold.

### TearMode
The tear mode.

| Value | Tear mode  |
| ----- | ---------- |
| 0     | ***Clip*** |
| 1     | ***Fade*** |

### TearFadeSoftness
The smooth interval when `TearMode` is set to 1.
