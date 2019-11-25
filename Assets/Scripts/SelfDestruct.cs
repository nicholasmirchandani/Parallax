/************************************************************************
 * Written by Ryan Millares on November 2019                            *
 *                                                                      *
 * The purpose of SelfDestruct.cs is to allow for instantiated particle *
 * effects to destroy themselves after a specified delay to prevent     *
 * game objects from cluttering the hierarchy from multiple teleports.  *
 *                                                                      *
 ************************************************************************/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SelfDestruct : MonoBehaviour {
    public float delay;
    // Start is called before the first frame update
    void Start() {
        Destroy(gameObject, delay);
    }

}
