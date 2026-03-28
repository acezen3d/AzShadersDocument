# Auto replace shaders from asset bundles in Unity Editor (Play mode)

See the video tutorial at https://www.patreon.com/posts/154178832.

## Notes
- The scripts mentioned in the video can be found here: https://github.com/acezen3d/AzShadersDocument/tree/main/scripts.
- Currently the following Az shaders have stub shaders available:
  - [Az Standard shaders](../az_standard/editor_stub)
- The stub shaders are not real; they are fake shaders that will be replaced with the real ones in the game by Material Editor.
- In Unity Editor, materials using these stub shaders will only have `MainTex` take effect in Edit mode, which is expected behavior (since the stub shaders only include this function). To see the full rendering result in Unity Editor, please follow the tutorial.
