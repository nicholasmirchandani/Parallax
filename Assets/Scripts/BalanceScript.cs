using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using VRTK;
using UnityEngine.Events;
using VRTK.UnityEventHelper;
using System;
using VRTK.Controllables.PhysicsBased;
using VRTK.Controllables.ArtificialBased;



/************************************************************************
 * Written by Sean Robbins in November 2019                              *
 *                                                                       *
 * The purpose of BalanceScript.cs is to serve as a script to control    *
 * the behavior of a balance measuring and showing the difference in mass*
 * between objects                                                       *
 * One bug is when an object is held on top of another object the scale  *
 * ONCollisonExit called incorrectly causing the scale to incorrectly    * 
 * measure the mass                                                      *
 *                                                                       *
 ************************************************************************/


    /* Notes 
     *Delay in rotation when an object is added to the scale when another object is already on the scale
     * believe this is caused by a calc rotate being preempted by fixed update
     */

public class BalanceScript : MonoBehaviour
{
    //The two platforms that measure the mass of the objects on the scale
    public GameObject LeftPlatform;
    public GameObject RightPlatform;

    //The values of the masses on each of the platforms
    public float rightMass;
    public float leftMass;

    //Bool value to see if a collision has entered or exited the two platforms
    public bool blocked;

    //Bool value to see if the scakle has reset to the default position
    public bool hasReset;

    //A float value that determines the direction of the rotation, as well as the current angle the balance is at
    private float rotateValue;

    //A float value that determines the speed of the rotation, this value should always be based on the rotate value
    private float rotateAmount;

    //This is the value that determines the base rotate location of the balance, should be set to 0
    private float REST_VALUE = 0;

    //how quickly the balance rotates
    //determioned by the amount of the rotate value
    private float rotateStrength;
    
    //Start is called before the first frame update
    void Start()
    {
        //Initializes the main variables
        //Sets reset variable to false as the balance should be at the default rotation
        hasReset = false;
        
        //Rotate amount should be set to zero at the start as there is no direction of rotation
        rotateAmount = 0;

        //Reads the mass values of the two scales to set the starting value of the left and right masses
        leftMass = LeftPlatform.GetComponent<MeasureMass>().totalMass;
        rightMass = RightPlatform.GetComponent<MeasureMass>().totalMass;

        //Blocked is set to false signifying that on collision enter and exit have not been called yet
        blocked = false;
    }

    private void FixedUpdate()
    {
        //If a collision is detected in the measure mass variant script blocked will be set to true
        //This signifies that a collision has been detected on either the left or right platform and to check to see if the scale needs to be rotated
        calcRotate();
        if(blocked) {
            //If there is no rotate value signfying that the mass of each side is equal
            //If the left and right masses are equal in addition to this and the scale has not reset yet have the scale reset
            if (rotateValue == 0 && leftMass == rightMass && !hasReset) {
                hasReset = true;
                rotateValue = (-gameObject.GetComponent<VRTK_ArtificialRotator>().GetValue());
                rotateAmount = gameObject.GetComponent<VRTK_ArtificialRotator>().GetValue();
            } else if (rotateValue == 0) {
                //The if condition above occurs when the sides of the balance have reached a limit of rotation and will no longer rotate
                //Thus signifying the rotator scripts no longer need to be called
                hasReset = false;
                blocked = false;
            }
            //Rotate the scale 
            //Is only called if a change has been detected on one of the platforms and rotation has not ceased
            Rotate();
        }  
    }

    public void Rotate() {
        //Check the direction of rotation based on the rotation value against the rest value
        if( rotateValue < 1 && rotateValue > -1) {
            rotateValue = 0;
        } else if (rotateValue > REST_VALUE) {
            rotateAmount += rotateStrength;
            RotateRight(rotateAmount);
            rotateValue -= rotateStrength;
        } else if (rotateValue < REST_VALUE) {
            rotateAmount -= rotateStrength;
            RotateLeft(rotateAmount);
            rotateValue += rotateStrength;
        }
    }

    //Called by the measure mass script on each of the platforms
    //Gets the mass of each platform and calculates the direction of rotation based on them
    //Initializes the rotate amount to the current angle of the rotator
    //Sets blocked to true to signify to the update method that a rotation is needed
    public void calcRotate() {
        leftMass = LeftPlatform.GetComponent<MeasureMass>().totalMass;
        rightMass = RightPlatform.GetComponent<MeasureMass>().totalMass;

        rotateValue = rightMass - leftMass;
        float rotateCheck = Math.Abs(rotateValue);
        rotateStrength = .05f;

        if(rotateCheck == 0) {
            rotateStrength = .5f;
        } else if(rotateCheck > 0 && rotateCheck <= 10) {
            rotateStrength = .1f;
        } else if(rotateCheck > 10 && rotateCheck <= 25) {
            rotateStrength = .25f;
        } else if(rotateCheck > 25 && rotateCheck <= 50) {
            rotateStrength = .5f;
        } else if(rotateCheck > 50 && rotateCheck <= 100) {
            rotateStrength = .75f;
        } else if (rotateCheck > 100) {
            rotateStrength = 1f;
        }

        rotateAmount = gameObject.GetComponent<VRTK_ArtificialRotator>().GetValue();
        blocked = true;
    }

    //Rotates the balance in the right direction and each of the platforms in the opposite direction so that they always stay flat
    private void RotateRight(float r) {
        gameObject.GetComponent<VRTK_ArtificialRotator>().SetValue(r);
        LeftPlatform.GetComponent<VRTK_ArtificialRotator>().SetValue(-r);
        RightPlatform.GetComponent<VRTK_ArtificialRotator>().SetValue(-r);
    }

    //Rotates the balance in the left direction and each of the platforms in the opposite direction so that they always stay flat
    private void RotateLeft(float r) {
        gameObject.GetComponent<VRTK_ArtificialRotator>().SetValue(r);
        LeftPlatform.GetComponent<VRTK_ArtificialRotator>().SetValue(-r);
        RightPlatform.GetComponent<VRTK_ArtificialRotator>().SetValue(-r);
    }
}
