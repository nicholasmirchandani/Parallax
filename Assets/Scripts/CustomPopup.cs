using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CustomPopup : MonoBehaviour
{
    public GameObject message;
    private GameObject messageClone;
    private bool cloneExists;

    private void Awake() {
        cloneExists = false;
    }

    public void ShowPopup(Transform transformToLookAt) {
        cloneExists = true;
        messageClone = Instantiate(message, this.transform.position, Quaternion.identity);
    }

    public void HidePopup() {
        cloneExists = false;
        Destroy(messageClone);
    }

    public bool PopupIsShowing() {
        return cloneExists;
    }
}

/*
 * //Displays custom popup message right above interactable object, facing the player
    void ShowOver(GameObject interactable) { 
        //instantiates the custom message to face the player
        GameObject clone = Instantiate(interactable.GetComponent<CustomPopup>().message, interactable.transform.position + adjustPos, Quaternion.identity);
        clone.transform.LookAt(this.transform);
        clone.transform.Rotate(clone.transform.rotation.x, clone.transform.rotation.y + 180, clone.transform.rotation.z);
    }
 */
