/************************************************************************
 * Written by Sean Robbins in October 2019                              *
 *                                                                      *
 * The purpose of VRLever.cs is to serve as a basic lever setup script  *
 * to be used on any lever in the scene.  It's meant to be as simple as *
 * possible to run quickly and be intuitive.                            *
 *                                                                      *
 * Edited by Nicholas Mirchandani on 10/29/19                           *
 ************************************************************************/

using UnityEngine;
using VRTK.GrabAttachMechanics;
using UnityEngine.Events;

public class VRLever : MonoBehaviour {
    bool minEnabled;
    bool maxEnabled;
    public UnityEvent MaxAngleReached;
    public UnityEvent MinAngleReached;

    // Start is called before the first frame update
    void Start() {
        //Subscribes OnMaxAngleReached and OnMinAngleReached to VRTK's built in MaxAngleReached and MinAngleReached events, respectively
        GetComponent<VRTK_RotateTransformGrabAttach>().MaxAngleReached += OnMaxAngleReached;
        GetComponent<VRTK_RotateTransformGrabAttach>().MinAngleReached += OnMinAngleReached;
        minEnabled = true;
        maxEnabled = true;
    }

    //Runs when lever is fully rotated towards its maximum angle
    void OnMaxAngleReached(object sender, RotateTransformGrabAttachEventArgs e) {
        //Ensures our MaxAngleReached UnityEvent is only called once per lever flip
        GetComponent<VRTK_RotateTransformGrabAttach>().MaxAngleReached -= OnMaxAngleReached;
        maxEnabled = false;
        if(!minEnabled) {
            GetComponent<VRTK_RotateTransformGrabAttach>().MinAngleReached += OnMinAngleReached;
            minEnabled = true;
        }
        MaxAngleReached.Invoke();
    }

    //Runs when lever is fully rotated towards its minimum angle
    void OnMinAngleReached(object sender, RotateTransformGrabAttachEventArgs e) {
        //Ensures our MinAngleReached UnityEvent is only called once per lever flip
        GetComponent<VRTK_RotateTransformGrabAttach>().MinAngleReached -= OnMinAngleReached;
        minEnabled = false;
        if(!maxEnabled) {
            GetComponent<VRTK_RotateTransformGrabAttach>().MaxAngleReached += OnMaxAngleReached;
            maxEnabled = true;
        }
        MinAngleReached.Invoke();
    }

}
