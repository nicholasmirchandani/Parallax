/************************************************************************
 * Written by Ryan Millares in November 2019                             *
 *                                                                      *
 * The purpose of ShowPopups.cs is to provide functionality for the     *
 * display of certain popups or highlights thats should become visible  *
 * when an interactable object is a certain distance from the neck      *
 * camera's line of sight.                                              *
 *                                                                      *
 * Updated by Dan Haub on 11/10/19                                      *
 ************************************************************************/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ShowPopups : MonoBehaviour {
    public GameObject[] interactables;
    public float range;
    public float proximity;

    private Vector3 adjustPos = new Vector3(0F, 0.5F, 0F);

    //Runs when the scene is opened
    void Awake() {
        //Stores all interactable objects in array
        interactables = GameObject.FindGameObjectsWithTag("Interactable");

        //Invokes Popup() 4 times a second
        InvokeRepeating("Popup", 0f, 0.25f);

    }

    //Checks if there should be a popup above each interactable object
    void Popup() {
        bool objectFound = false; //Allows us to determine if a popup has already been displayed
        foreach (GameObject interactable in interactables) {
            if(!objectFound && CheckInView(interactable) && CheckProximity(interactable)) { //Show the popup if the player is looking at and is near the object
                objectFound = true;
                if(!interactable.GetComponent<CustomPopup>().PopupIsShowing()) {
                    interactable.GetComponent<CustomPopup>().ShowPopup(this.transform);
                }
            } else { //destroy it once player looks away
                if(interactable.GetComponent<CustomPopup>().PopupIsShowing()) {
                    interactable.GetComponent<CustomPopup>().HidePopup();
                }
            }
        }
       
    }

    //Checks to see if the ojbect is in the sight of the player
    bool CheckInView(GameObject interactable) {
        Vector3 dir = (interactable.transform.position - transform.position).normalized; //gets the vector from player to object

        return Vector3.Dot(dir, transform.forward) > range; //If player is looking near the object, return true
    }

    //Checks if player is within a certain distance from an interactable object
    bool CheckProximity(GameObject interactable) { 
        //Calculates the distance between the player and the object being checked
        float diffX = interactable.transform.position.x - transform.position.x;
        float diffY = interactable.transform.position.y - transform.position.y;
        float diffZ = interactable.transform.position.z - transform.position.z;

        if(Mathf.Sqrt(diffX * diffX + diffY * diffY + diffZ * diffZ) < proximity) { //Return true if the distance between the player and the object are in proximity to one another
            return true;
        } else {
            return false;
        }

    }

    
}
