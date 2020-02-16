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
using VRTK;

public class VRLever : MonoBehaviour {
    bool minEnabled;
    bool maxEnabled;
    public UnityEvent MaxAngleReached;
    public UnityEvent MaxAngleExited;
    public UnityEvent MinAngleReached;
    public UnityEvent MinAngleExited;
    private Quaternion resetPosition;

    // Start is called before the first frame update
    void Start() {
        //Subscribes OnMaxAngleReached and OnMinAngleReached to VRTK's built in MaxAngleReached and MinAngleReached events, respectively
        GetComponent<VRTK_RotateTransformGrabAttach>().MaxAngleReached += OnMaxAngleReached;
        GetComponent<VRTK_RotateTransformGrabAttach>().MinAngleReached += OnMinAngleReached;
        GetComponent<VRTK_RotateTransformGrabAttach>().MaxAngleExited += OnMaxAngleExited;
        GetComponent<VRTK_RotateTransformGrabAttach>().MinAngleExited += OnMinAngleExited;
    }

    //Runs when lever is fully rotated towards its maximum angle
    void OnMaxAngleReached(object sender, RotateTransformGrabAttachEventArgs e) {
        //Ensures our MaxAngleReached UnityEvent is only called once per lever flip
        MaxAngleReached?.Invoke();
    }

    //Runs when lever is exiting its minimum angle
    void OnMaxAngleExited(object sender, RotateTransformGrabAttachEventArgs e) {
        //Ensures our MinAngleReached UnityEvent is only called once per lever flip
        MaxAngleExited?.Invoke();
    }

    //Runs when lever is fully rotated towards its minimum angle
    void OnMinAngleReached(object sender, RotateTransformGrabAttachEventArgs e) {
        //Ensures our MinAngleReached UnityEvent is only called once per lever flip
        MinAngleReached?.Invoke();
    }

    //Runs when lever is exiting its minimum angle
    void OnMinAngleExited(object sender, RotateTransformGrabAttachEventArgs e) {
        //Ensures our MinAngleReached UnityEvent is only called once per lever flip
        MinAngleExited?.Invoke();
    }

    public void ResetAngle() {
        GetComponent<VRTK_RotateTransformGrabAttach>().ResetRotation();
        MaxAngleExited?.Invoke();
        MinAngleExited?.Invoke();
    }
}
