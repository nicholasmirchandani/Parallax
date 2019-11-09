/************************************************************************
 * Written by Ryan Millares in November 2019                             *
 *                                                                      *
 * The purpose of ShowPopups.cs is to provide functionality for the     *
 * display of certain popups or highlights thats should become visible  *
 * when an interactable object is a certain distance from the neck      *
 * camera's line of sight.                                              *
 *                                                                      *
 ************************************************************************/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ShowPopups : MonoBehaviour {
    //double xpos, ypos, zpos, xrot, yrot, zrot;
    public GameObject popup;
    public GameObject[] interacts;
    private Vector3 dir;
    private float dotProd;
    private Vector3 adjustPos = new Vector3(0F, 0.5F, 0F);
    private Vector3 pos;
    private Vector3 currentRot;
    public float range;
    private GameObject clone;
    private Vector3 newRot;
    private float x, y, z;
    

    // Start is called before the first frame update
    void Awake() {
        interacts = GameObject.FindGameObjectsWithTag("Interactable");
         //store all 

    }

    // Update is called once per frame
    void Update(){
        InvokeRepeating("Popup", 2.0f, 1.0f);
    }
    
    bool CheckInView() {
        
        foreach (GameObject interact in interacts){

            pos = interact.transform.position;
            dir = (pos - transform.position).normalized; //gets the vector from player to object
            
            dotProd = Vector3.Dot(dir, transform.forward); //calculates the dot product wait...
            if(dotProd > range) {
               
                return true;
            }

        }
        return false;
    }
    void Popup() {

        if (CheckInView()) { 
            ShowOver();//show the popup if looking at/near the object
        }
        else {
            if(clone != null){
                Destroy(clone);
            }
            //hide it once player looks away
        }
    }
    void ShowOver() {
        float newX, newY, newZ;
        pos += adjustPos;
        x = transform.forward.x;
        y = transform.forward.y;
        z = transform.forward.z;
        newX = (Mathf.Atan2(Mathf.Sqrt(Mathf.Pow(y, 2) + Mathf.Pow(z, 2)), x))*180 / Mathf.PI;
        newY = (Mathf.Atan2(Mathf.Sqrt(Mathf.Pow(x, 2) + Mathf.Pow(z, 2)), y))*180 / Mathf.PI;
        newZ = (Mathf.Atan2(Mathf.Sqrt(Mathf.Pow(y, 2) + Mathf.Pow(x, 2)), z))*180 / Mathf.PI;
        newRot = new Vector3(newX - 180F, newY - 90F, 0);
        Debug.Log(newX);
        Debug.Log(newY);
        Debug.Log(newZ);



        currentRot = new Vector3(-GameObject.Find("Neck").transform.rotation.x, this.transform.rotation.y - 90, 0);
        clone = Instantiate(popup, pos, Quaternion.Euler(newRot - new Vector3(0F, 90F, 0F)));
        
    }
    
}
