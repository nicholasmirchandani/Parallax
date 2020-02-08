using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using VRTK;
using UnityEngine.Events;
using VRTK.UnityEventHelper;
using System;

public class MeasureMass : MonoBehaviour
{
    //Start is called before the first frame update
    //One bug in the script is that if the mass of an objectr changes while the object is on the scale it will
    //Decrement by that value when the object is removed even though it never updated the value when the mass was changed

    public float totalMass;
    public List<GameObject> measuring;
    public GameObject scale;
    public GameObject scaleSurface;
    void Start() {
        //starts with zero minus the mass of the scale base object that is iniially collides with
        totalMass = 0;
        measuring = new List<GameObject>();
        scale = gameObject.transform.parent.gameObject;
        scaleSurface = gameObject;
    }

    //Update is called once per frame

    //When there is a collision with on the surface of the scale this method is called to attach the mass attach script to the object
    private void OnCollisionStay(Collision collision) {
        Debug.Log("COLLISION!!! with " + collision.gameObject.name);
        //When called store the game object of the collision generated 
        GameObject temp = collision.gameObject;
        //Check to see if the colliding object already has a mass atatch script
        if (temp.GetComponent<MassAttach>() == null) {
            //If it does not add one and store the game objects of the scale so that they can be referenced
            temp.AddComponent<MassAttach>();
            temp.GetComponent<MassAttach>().setScale(scale, scaleSurface);
        }
    }

    /*Called when an object stops colliding with the scale surface
     * if the object has a Mass Attach script remove the object from the list of objects to be measures
     * then remove the Mass Attach script from the object*/
    private void OnCollisionExit(Collision collision) {
        //Store the colliding object in temp
        GameObject temp = collision.gameObject;
        //Get the colliding objects Mass Attach script
        MassAttach tma = temp.GetComponent<MassAttach>();
        //If the tma is not null that means that the script was stored successfully so remove it from the object
        if(tma != null) {
            Pop(temp);
            Destroy(tma);
        }   
    }

    //Called every physics frame
    //updates measures the values of the mass on the scale
    private void FixedUpdate() {
        totalMass = 0;
        //Loops through all game objects on the scale and sums the mass values
        foreach(GameObject g in measuring) {
            totalMass += g.GetComponent<MassAttach>().mass;
        }
    }

    /*called by the Mass Attach Script to store the game object 
     *the script is attached to in the list of objects to be measured*/
    public void Store(GameObject value) {
        //Adds the passed in game object to the list of items to measured
        measuring.Add(value);
        GameManager.Instance.planetProgresses[(int)FindObjectOfType<PlanetManager>().currentPlanet].hasGravity = true;
        GameManager.Instance.planetProgresses[(int)FindObjectOfType<PlanetManager>().currentPlanet].CheckIsComplete();
    }

    //Called when an object has exited the collision
    //removes the object from the list of objects to be measured
    public void Pop(GameObject value) {
        //Removes the item from the list
        measuring.Remove(value);
    }
}
