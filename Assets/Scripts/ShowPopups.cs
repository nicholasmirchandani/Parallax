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
    private GameObject store;
    private Vector3 dir;
    private float dotProd;
    private Vector3 adjustPos = new Vector3(0F, 0.5F, 0F);
    private Vector3 pos;
    public float range;
    private GameObject clone;
    public float proximity;
    

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

        if (CheckInView() && CheckProximity()) { 
            if(clone == null) {
                ShowOver();
            }
            //show the popup if looking at/near the object
        }
        else {
            if(clone != null){
                Destroy(clone);
            }
            //hide it once player looks away
        }
    }
    void ShowOver() {
        pos += adjustPos;
        
        clone = Instantiate(popup, pos, Quaternion.identity);
        clone.transform.LookAt(this.transform);
        clone.transform.Rotate(clone.transform.rotation.x, clone.transform.rotation.y + 180, clone.transform.rotation.z);

    }
    bool CheckProximity(){
        float x = pos.x - transform.position.x;
        float y = pos.y - transform.position.y;
        float z = pos.z - transform.position.z;
        if(Mathf.Sqrt(x*x + y*y + z*z) < proximity){
            return true;
        }
        else{
            return false;
        }

    }

}
