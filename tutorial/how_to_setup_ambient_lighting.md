# How to setup ambient lighting

- [How to setup ambient lighting](#how-to-setup-ambient-lighting)
  - [Ambient lighting diffuse term](#ambient-lighting-diffuse-term)
    - [Flat](#flat)
    - [Trilight](#trilight)
    - [Skybox](#skybox)
    - [Custom](#custom)
  - [Ambient lighting specular term](#ambient-lighting-specular-term)
    - [Skybox](#skybox-1)
    - [Custom](#custom-1)
  - [How to get a skybox material in Runtime Unity Editor](#how-to-get-a-skybox-material-in-runtime-unity-editor)
  - [Related: Local indirect lighting](#related-local-indirect-lighting)
    - [Light Probes (diffuse term)](#light-probes-diffuse-term)
    - [Reflection Probe (specular term)](#reflection-probe-specular-term)
  - [Notes](#notes)

This article mainly demonstrates how to use most of parameters related to ambient lighting (https://docs.unity3d.com/ScriptReference/RenderSettings.html) of Unity in Runtime Unity Editor REPL (https://github.com/ManlyMarco/RuntimeUnityEditor).

## Ambient lighting diffuse term
### Flat
```cs
UnityEngine.RenderSettings.ambientMode = UnityEngine.Rendering.AmbientMode.Flat;
UnityEngine.RenderSettings.ambientLight = new UnityEngine.Color(0.5f, 0.5f, 0.5f);
```

### Trilight
```cs
UnityEngine.RenderSettings.ambientMode = UnityEngine.Rendering.AmbientMode.Trilight;
UnityEngine.RenderSettings.ambientSkyColor = new UnityEngine.Color(0.4f, 0.4f, 0.4f);
UnityEngine.RenderSettings.ambientGroundColor = new UnityEngine.Color(0.3f, 0.3f, 0.3f);
UnityEngine.RenderSettings.ambientEquatorColor = new UnityEngine.Color(0.6f, 0.6f, 0.6f);
```

### Skybox
```cs
UnityEngine.RenderSettings.ambientMode = UnityEngine.Rendering.AmbientMode.Skybox;
UnityEngine.RenderSettings.skybox = {{materialSkybox}}; // [n1]
UnityEngine.DynamicGI.UpdateEnvironment();
// Intensity control
UnityEngine.RenderSettings.ambientIntensity = 1.0f;
```
[n1]: See [How to get a skybox material in Runtime Unity Editor](#how-to-get-a-skybox-material-in-runtime-unity-editor).

### Custom
```cs
UnityEngine.RenderSettings.ambientMode = UnityEngine.Rendering.AmbientMode.Custom;
UnityEngine.RenderSettings.ambientProbe = {{lightProbeCustom}}; // UnityEngine.Rendering.SphericalHarmonicsL2 [n2]
```
[n2]: You can construct `UnityEngine.Rendering.SphericalHarmonicsL2` yourself https://docs.unity3d.com/ScriptReference/Rendering.SphericalHarmonicsL2.html, see below.
```cs
UnityEngine.Rendering.SphericalHarmonicsL2 sh;
sh.Clear();
sh.AddAmbientLight(new UnityEngine.Color(0.35f, 0.35f, 0.35f));
sh.AddDirectionalLight(new UnityEngine.Vector3(0f,1f,0f).normalized, new UnityEngine.Color(0.1f, 0.1f, 0.1f), 0.25f);
UnityEngine.RenderSettings.ambientMode = UnityEngine.Rendering.AmbientMode.Custom;
UnityEngine.RenderSettings.ambientProbe = sh;
```

## Ambient lighting specular term
### Skybox
```cs
UnityEngine.RenderSettings.defaultReflectionMode = UnityEngine.Rendering.DefaultReflectionMode.Skybox;
UnityEngine.RenderSettings.skybox = {{materialSkybox}}; // [n3]
// Intensity control
UnityEngine.RenderSettings.defaultReflectionResolution = 1024;
UnityEngine.RenderSettings.reflectionIntensity = 1.0f;
```
[n3]: This only works in Unity Editor, and we can't rebake the built-in default `ReflectionProbe` at runtime. There is a workaround:
- https://forum.unity.com/threads/solved-scenemanager-loadscene-make-the-scene-darker-a-bug.542440/#post-7752681
- https://issuetracker.unity3d.com/issues/dynamicgi-dot-updateenvironment-fails-to-update-gameobject-when-more-than-one-material-is-assigned

But this already involves the use of the next option, so it is not classified as this.

### Custom
```cs
UnityEngine.RenderSettings.defaultReflectionMode = UnityEngine.Rendering.DefaultReflectionMode.Custom;
UnityEngine.RenderSettings.customReflection = {{cubemapCustom}}; // [n5]
/*
UnityEngine.RenderSettings.customReflection = (UnityEngine.Cubemap)UnityEngine.RenderSettings.skybox.GetTexture("_Tex"); [n4]
*/
// Intensity control
UnityEngine.RenderSettings.reflectionIntensity = 1.0f;
```
[n4]: If we have already setup `UnityEngine.RenderSettings.skybox`, then this is a easy and quick way.

[n5]: At runtime, we need to do a lot of things in order to load the image as a `Cubemap`. Some examples:
- https://forum.unity.com/threads/loading-skybox-texture-from-disk-at-runtime.667402/#post-4494838
- https://assetstore.unity.com/packages/tools/utilities/panorama-to-cubemap-13616

## How to get a skybox material in Runtime Unity Editor
1. Find a mod item that use `Skybox/Cubemap` shader, like **Az/Skybox/\***, **[Cz]/SkyBox/\***, **nashi/Skybox/\***, etc., place it.
2. Choose it in the workspace and open Material Editor to check the renderer name, like **dome_sphere**.
3. Search the renderer name in Runtime Unity Editor Object Browser to find the `GameObject`.
4. Click **Inspect** to inspect the found `GameObject`, check its **Components**, find the component `UnityEngine.MeshRenderer`, like **dome_sphere (UnityEngine.MeshRenderer)**.
5. Enter the component `UnityEngine.MeshRenderer`, find the property `sharedMaterial`.
6. Right click `sharedMaterial` and choose **Send to REPL**, a line of code will appear in Runtime Unity Editor REPL, such as `var q = (UnityEngine.Material)InteropTempVar;`; Or enter the property `sharedMaterial`, then go to Runtime Unity Editor REPL and type the code `var q = geti();`.
7. Click **Run** to run the code in Runtime Unity Editor REPL.
8. Now the variable `q` carries our skybox material.

## Related: Local indirect lighting
### Light Probes (diffuse term)
Baked only  
https://docs.unity3d.com/ScriptReference/LightProbes.html

### Reflection Probe (specular term)
Baked or realtime  
https://docs.unity3d.com/ScriptReference/ReflectionProbe.html

## Notes
- Ambient lighting requires shader support to work.
- The greater the `Glossiness` and `Metallic` of the material, the more pronounced the ambient specular reflections will be. If `Glossiness` and `Metallic` are too small, ambient specular reflections may become invisible.
- All changes in Runtime Unity Editor will not be saved to the scene file, you need to record them yourself.