/************************************************************************
 * Cowritten by Ryan Millares and Dan Haub November 2019                *
 *                                                                      *
 * The purpose of CustomPopup.cs is to provide functionality for making *
 * visible a provided popup or tool-tip message above an interactable   *
 * object and facing the player, as well as hiding it when needed.      *
 *                                                                      *
 ************************************************************************/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CustomPopup : MonoBehaviour
{
    public GameObject message; //tool-tip prefab
    private GameObject messageClone;
    private bool cloneExists;

    private void Awake() {
        cloneExists = false;
    }
    //instatiates clone of message prefab right above object, facing the player's location
    public void ShowPopup(Transform transformToLookAt) {
        cloneExists = true;
        Vector3 adjPos = new Vector3(0F, 0.5F, 0F);
        messageClone = Instantiate(message, this.transform.position + adjPos, Quaternion.identity);
        messageClone.transform.LookAt(transformToLookAt);
        messageClone.transform.Rotate(messageClone.transform.rotation.x, messageClone.transform.rotation.y + 180, messageClone.transform.rotation.z);

    }
    //destroys message clone
    public void HidePopup() {
        cloneExists = false;
        Destroy(messageClone);
    }
    //returns true if popup for the parent object is being displayed
    public bool PopupIsShowing() {
        return cloneExists;
    }
}


