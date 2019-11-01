using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System;

public class EarthBox : MonoBehaviour {

    private void OnTriggerEnter(Collider other) {
        string colliderName = other.gameObject.name;
        if (colliderName.Substring(0,13).Equals("[VRTK][AUTOGEN]")) {
            return;
        }
        ConstantForce cf = other.gameObject.AddComponent<ConstantForce>();
        cf.force = new Vector3(0F, GameManager.Instance.getDiffToEarthGravity(), 0F);



    }
    private void OnTriggerExit(Collider other) {
        
    ConstantForce cf = other.gameObject.GetComponent<ConstantForce>();
        if (cf == null) {
            return;
        }
        Destroy(cf);
    }
    
}
