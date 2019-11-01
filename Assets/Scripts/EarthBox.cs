
/************************************************************************
 * Written by Ryan Millares in October 2019                      *
 *                                                                      *
 * The purpose of EarthBox.cs is to provide Earth Box functionality     *
 * The Earth Box is to simulate Earth's gravity on other planets,  *
 * GameObject in the scene for function calls, and since GameManager    *
 * floats between scenes you can't reference it in the inspector in     *
 * every scene.                                                         *
 *                                                                      *
 * Updated by Ryan Millares on 11/01/19                                 *
 ************************************************************************/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System;

public class EarthBox : MonoBehaviour {

    private void OnTriggerEnter(Collider other) {
        string colliderName = other.gameObject.name;
        if (colliderName.Substring(0,14).Equals("[VRTK][AUTOGEN]") || other.gameObject.tag == "Hand") { //to exclude the controllers from receiving ConstantForce
            return;
        }
        ConstantForce cf = other.gameObject.AddComponent<ConstantForce>();
        cf.force = new Vector3(0F, GameManager.Instance.GetDiffToEarthGravity(), 0F);



    }
    private void OnTriggerExit(Collider other) {
        
    ConstantForce cf = other.gameObject.GetComponent<ConstantForce>();
        if (cf == null) {
            return;
        }
        Destroy(cf);
    }
    
}
