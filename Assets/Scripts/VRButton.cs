/************************************************************************
 * Written by Dan Haub in October 2019                                  *
 *                                                                      *
 * The purpose of VRButton.cs is to serve as a basic button setup       *
 * script to be used on any button in the scene.  It's meant to be as   *
 * simple as possible to run quickly and be intuitive.                  *
 *                                                                      *
 * Edited by Nicholas Mirchandani on 10/27/19                           *
 ************************************************************************/

using UnityEngine;
using UnityEngine.Events;

public class VRButton : MonoBehaviour
{
    public UnityEvent buttonPress;
    public UnityEvent buttonRelease;
    public GameObject button;
    public float lowPosTrigger;
    public float highPosTrigger;
    public float minYPos;
    public float maxYPos;

    [SerializeField] private bool buttonPressed = false;

    //TODO: Implement Custom Spring implementation to allow use of FixedUpdate instead of Update.  Currently, Spring Joints run after FixedUpdate code, nullifying any physics programming we'd do there.

    //Runs once per game frame
    private void Update()
    {
        //Disallows x-z movement
        if (button.transform.localPosition.x != 0.0f || button.transform.localPosition.z != 0.0f)
        {
            button.transform.localPosition = new Vector3(0f, button.transform.localPosition.y, 0f);
        }

        //Notes Button High/Low value
        if (!buttonPressed && button.transform.localPosition.y < lowPosTrigger)
        {
            buttonPressed = true;
            buttonPress.Invoke();
        }
        else if (buttonPressed && button.transform.localPosition.y > highPosTrigger)
        {
            buttonPressed = false;
            buttonRelease.Invoke();
        }

        //Constrains y movement to bounds set in editor
        if (button.transform.localPosition.y > maxYPos)
        {
            button.transform.localPosition = new Vector3(0f, maxYPos, 0f);
        }

    }
}