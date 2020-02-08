/************************************************************************
 * Written by Sean Robbins in January 2020                              *
 *                                                                      *
 * The purpose of FixCursor.cs is to return control of the mouse to the *
 * user in specific edge cases where VRTK would keep control.           *
 *                                                                      *
 ************************************************************************/


using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;



public class FixCursor : MonoBehaviour {
    /// <summary>
    /// Called Whenever the Scene is Loaded in and Gaurantees that the mouse is active
    /// Necessary as VRTK locks out the cursor when it is enabled
    /// </summary>
    private void Awake() {
        Debug.Log("Scene Loaded");
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;
    }

   
}
