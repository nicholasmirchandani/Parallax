/************************************************************************
 * Written by Dan Haub in November 2019 (edited from VRButton_1.cs)     *
 *                                                                      *
 * The purpose of VRButton_2.cs is to serve as a basic button setup     *
 * script to be used on any button in the scene.  It's meant to be as   *
 * simple as possible to run quickly and be intuitive.                  *
 *                                                                      *
 * Edited by Dan Haub 11/8/19                                           *
 ************************************************************************/

using UnityEngine;
using UnityEngine.Events;

public class VRButton_2 : MonoBehaviour {
    public UnityEvent buttonPress;
    public UnityEvent buttonRelease;
    public GameObject button;
    public float lowPosTrigger;
    public float highPosTrigger;

    [SerializeField] private bool buttonPressed = false;

    //Runs once per game frame
    private void Update() {
        //Notes Button High/Low value
        if (!buttonPressed && button.transform.localPosition.y < lowPosTrigger) {
            buttonPressed = true;
            buttonPress.Invoke();
        }
        else if (buttonPressed && button.transform.localPosition.y > highPosTrigger) {
            buttonPressed = false;
            buttonRelease.Invoke();
        }
    }
}