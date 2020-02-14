/************************************************************************
 * Written by Sean Robbins and Nick Mirchandani in January 2020         *
 *                                                                      *
 *                                                                      *
 * The Purpose of the sample reader script it so check when the player  *
 * puts a valid sample into the sample reader and lets the object go for*
 * the sample to be collected                                           *
 *                                                                      *
 ************************************************************************/

using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SampleReader : MonoBehaviour {

    private void OnCollisionEnter(Collision collision)
    {
        /*Checks to see if the colliding object is a sample and if it is destroy it
        *collisions only work when the player is not holding the object so they will
        *have to drop it in*/
        if (collision.gameObject.tag == "Sample") {
            //TODO: Update GameManaager as well as destroy
            //TODO: Implement Dans Animation
            Destroy(collision.gameObject);
            GameManager.Instance.planetProgresses[(int)FindObjectOfType<PlanetManager>().currentPlanet].hasChemicalComp = true;
            GameManager.Instance.planetProgresses[(int)FindObjectOfType<PlanetManager>().currentPlanet].CheckIsComplete();
        }
    }

}
