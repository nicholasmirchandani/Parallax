/************************************************************************
 * Written by Sean Robbins and Nick Mirchandani in October 2019         *
 *                                                                      *
 *                                                                      *
 * The Purpose of the Breakdown script is to generate smaller rocks     *
 * when a larger rock is interacted with by the player for the purpose  *
 * of sample collection.                                                *
 *                                                                      *
 * Updated by Nicholas Mirchandani on 2/8/20                            *
 ************************************************************************/


using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class BreakDown : MonoBehaviour {
    //holds the gameobject that will be generated
    public GameObject smallPrefab;

    //contains the positions and number of gameobjects to be created
    public Transform[] desiredPositions;

    //generates the desired prefabs and deletes the larger starting object
    public void Breakdown() {
        for(int i = 0; i < desiredPositions.Length; ++i) {
            GameObject part = GameObject.Instantiate(smallPrefab);
            part.transform.position = desiredPositions[i].position;
        }
        Destroy(gameObject);
    }
}
