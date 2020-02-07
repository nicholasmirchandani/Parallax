using System.Collections;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using VRTK;

public class MenuFix : MonoBehaviour {
    public GameObject EventSystem;
    public VRTK_UIPointer RightPointerController;
    public VRTK_UIPointer LeftPointerController;

    public VRTK_VRInputModule inputModule;

    private void Start() {
        StartCoroutine(LateStart(1));
    }

    private void Update() {

        if (inputModule != null) {
                if (inputModule.pointers.Count == 0) {
                    inputModule.pointers.Add(RightPointerController);
                    inputModule.pointers.Add(LeftPointerController);
                    
                }
            }
    }

    IEnumerator LateStart(float waitTime) {
        yield return new WaitForSeconds(waitTime);
        EventSystem.SetActive(true);
        inputModule = EventSystem.GetComponent<VRTK_VRInputModule>();
    }
}