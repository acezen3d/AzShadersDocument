#if UNITY_EDITOR
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using System.Linq;
using UnityEngine.SceneManagement;

public class AutoReplaceShaders : MonoBehaviour
{
    private Dictionary<string, Shader> _shaders = new Dictionary<string, Shader>();
    private Dictionary<string, AssetBundle> _loadedAssetBundles = new Dictionary<string, AssetBundle>();
    [Tooltip("From which asset bundles to load shaders. Shaders are loaded from assets of type GameObject (with Renderer), Material and Shader.")]
    public Object[] AssetBundles;

    private float _nextTime = 0f;
    [Tooltip("Whether to keep replacing shaders periodically in Play mode.")]
    public bool KeepReplacing;
    [Tooltip("The time interval (in seconds) between each shader replacement when Keep Replacing is enabled.")]
    public float Interval = 2f;

    private void LoadShaders()
    {
        foreach (var assetBundleObject in AssetBundles)
        {
            string path = AssetDatabase.GetAssetPath(assetBundleObject);
            if (string.IsNullOrEmpty(path))
                continue;
            if (_loadedAssetBundles.ContainsKey(path))
                continue;

            AssetBundle assetBundle = AssetBundle.LoadFromFile(path);
            _loadedAssetBundles.Add(path, assetBundle);
            var assets = assetBundle.LoadAllAssets();

            foreach (var asset in assets)
            {
                var gameObject = asset as GameObject;
                if (gameObject != null)
                {
                    var renderers = gameObject.GetComponentsInChildren<Renderer>(true);
                    foreach (var renderer in renderers)
                    {
                        var materials = renderer.sharedMaterials;
                        foreach (var mat in materials)
                        {
                            if (mat != null && mat.shader != null)
                                _shaders[mat.shader.name] = mat.shader;
                        }
                    }
                    continue;
                }

                var material = asset as Material;
                if (material != null)
                {
                    if (material.shader != null)
                    {
                        _shaders[material.shader.name] = material.shader;
                    }
                    continue;
                }

                var shader = asset as Shader;
                if (shader != null)
                {
                    _shaders[shader.name] = shader;
                }
            }
        }

        // Debug.Log($"Shaders loaded. Shader count: {_shaders.Count}");
    }

    private void ReleaseShaders()
    {
        _shaders.Clear();
        foreach (var assetBundle in _loadedAssetBundles.Values)
            assetBundle.Unload(true);
        _loadedAssetBundles.Clear();
    }

    private void ReplaceShaders(bool useRealShaders)
    {
        var renderers = SceneManager
            .GetActiveScene()
            .GetRootGameObjects()
            .SelectMany(go => go.GetComponentsInChildren<Renderer>(true));

        foreach (var renderer in renderers)
        {
            foreach (var mat in renderer.sharedMaterials)
            {
                if (mat != null && mat.shader != null)
                {
                    if (useRealShaders)
                    {
                        if (_shaders.ContainsKey(mat.shader.name))
                        {
                            var renderQueue = mat.renderQueue;
                            mat.shader = _shaders[mat.shader.name];
                            mat.renderQueue = renderQueue;
                        }
                    }
                    else
                    {
                        var renderQueue = mat.renderQueue;
                        mat.shader = Shader.Find(mat.shader.name);
                        mat.renderQueue = renderQueue;
                    }
                }
            }
        }
    }

    private void Start()
    {
        LoadShaders();
        ReplaceShaders(true);
    }

    private void Update()
    {
        if (KeepReplacing && Time.time >= _nextTime)
        {
            ReplaceShaders(true);
            _nextTime = Time.time + Mathf.Max(Interval, 0f);
        }
    }

    private void OnApplicationQuit()
    {
        ReplaceShaders(false);
        ReleaseShaders();
    }
}
#endif
