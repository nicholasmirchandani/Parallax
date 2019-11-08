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
            dir = (interact.transform.position - transform.position).normalized; //gets the vector from player to object
  
            dotProd = Vector3.Dot(dir, transform.forward); //calculates the dot product wait...
            if(dotProd > 0.99) { 
                return true;
            }

        }
        return false;
    }
    void Popup() {
        if (CheckInView()) { 
            popup.SetActive(true);//show the popup if looking at/near the object
        }
        else {
            popup.SetActive(false); //hide it once player looks away
        }
    }
}
