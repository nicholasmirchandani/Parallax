using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class triggerExample : MonoBehaviour
{
    // Start is called before the first frame update
    private void OnTriggerEnter(Collider other) {
        Debug.Log("HERE");
        Debug.Log(other.gameObject.name);
    }

    private void OnTriggerExit(Collider other) {
        Debug.Log(other.gameObject.name + "left");
    }
}
