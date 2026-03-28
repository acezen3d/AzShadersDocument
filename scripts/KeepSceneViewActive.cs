#if UNITY_EDITOR
using UnityEditor;

[InitializeOnLoad]
public static class KeepSceneViewActive
{
#if UNITY_2017_2_OR_NEWER
    static KeepSceneViewActive()
    {
        EditorApplication.playModeStateChanged += OnPlayModeChanged;
    }

    private static void OnPlayModeChanged(PlayModeStateChange state)
    {
        if (state == PlayModeStateChange.EnteredPlayMode)
        {
            EditorWindow.FocusWindowIfItsOpen<SceneView>();
        }
    }
#else
    static KeepSceneViewActive()
    {
        EditorApplication.playmodeStateChanged += OnPlayModeChanged;
    }

    private static void OnPlayModeChanged()
    {
        if (EditorApplication.isPlaying)
        {
            EditorWindow.FocusWindowIfItsOpen<SceneView>();
        }
    }
#endif
}
#endif
