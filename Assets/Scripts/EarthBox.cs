﻿
/************************************************************************
 * Written by Ryan Millares in October 2019                             *
 *                                                                      *
 * The purpose of EarthBox.cs is to provide Earth Box functionality     *
 * the Earth Box is to simulate Earth's gravity on other planets, by    *
 * applying a constant force upwards on interactable objects that enter *
 * in the box that would generate a net downwards force of 9.798F. When *
 * an object leaves the box, this consant force component is destroyed  *
 *                                                                      *
 * Updated by Ryan Millares on 11/01/19                                 *
 * Updated by Dan Haub on 11/2/19                                       *
 * Updated by Nicholas Mirchandani on 11/3/19                           *
 ************************************************************************/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System;

public class EarthBox : MonoBehaviour {

    //Runs when an object enters the earth box, adds a constant force
    private void OnTriggerEnter(Collider other) {
        string colliderName = other.gameObject.name;
        string colliderParentName = other.gameObject.transform.parent.name;
        if (!((colliderName.Length > 15) && colliderName.Substring(0,15).Equals("[VRTK][AUTOGEN]") || (colliderParentName.Length > 15) && colliderParentName.Substring(0,15).Equals("[VRTK][AUTOGEN]")) && !(other.gameObject.tag == "Hand")) { //to exclude the controllers from receiving ConstantForce
            ConstantForce cf = other.gameObject.AddComponent<ConstantForce>();
            cf.force = new Vector3(0F, GameManager.Instance.CalcDiffToEarthGravity(), 0F);
        }
    }

    //Runs when an object leaves the earth box, removes the constant force
    private void OnTriggerExit(Collider other) {
        ConstantForce cf = other.gameObject.GetComponent<ConstantForce>();
        if (cf == null) {
            return;
        }
        Destroy(cf);
    }
}
