# Compared to KKUSS shaders

- [Compared to KKUSS shaders](#compared-to-kkuss-shaders)
  - [Properties changed](#properties-changed)
  - [Properties added](#properties-added)
  - [Notes](#notes)

## Properties changed
- `AddColor` -> `BaseColor`
- `SpecularPower` -> `Glossiness` (some KKUSS shaders use `Glossiness`, some others use `SpecularPower`)
- `ShadowPower` -> `ShadowIntensity`
- `Emission` -> `EmissionMap`, `EmissionColor`, `EmissionIntensity`
- `Occlusion` -> `IndirectDiffuseIntensity`, `IndirectSpecularIntensity`

## Properties added
(Omitted)

## Notes
- Only shader properties introduced by KKUSS are compared here; all Koikatsu built-in shader properties are ignored.
