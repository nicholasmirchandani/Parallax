using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System;

public class EarthBox : MonoBehaviour
{
   
    private ConstantForce cf;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
    private void OnTriggerEnter(Collider other)
    {
        //Debug.Log("enter");

        cf = other.gameObject.AddComponent<ConstantForce>();
        cf.force = new Vector3(0F, GameManager.Instance.getDiffToEarthGravity(), 0F);
        //cf.force = new Vector3(0F, 18.0F, 0F); //to test if works



    }
    private void OnTriggerExit(Collider other)
    {
        
        Destroy(cf);
       // Debug.Log("exit");
    }
    
}
