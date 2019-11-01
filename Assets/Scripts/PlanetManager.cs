/************************************************************************
 * Written by Nicholas Mirchandani in October 2019                      *
 *                                                                      *
 * The purpose of PlanetManager.cs is to call GameManager functions.    *
 * Can't use GameManager for calls directly since UnityEvents require a *
 * GameObject in the scene for function calls, and since GameManager    *
 * floats between scenes you can't reference it in the inspector in     *
 * every scene. Also sets planet gravity on scene load                  *
 *                                                                      *
 * Updated by Nicholas Mirchandani on 10/29/19                          *
 * Updated by Dan Haub on 11/1/19                                       *
 ************************************************************************/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlanetManager : MonoBehaviour {
    [SerializeField] private float planetGravity; //allows us to keep track of the current planet's gravity

    //Runs when new planet scene is opened
    public void Awake() {
        SetGravity();
    }

    //Returns user to cockpit
    public void ReturnToCockpit() {
        GameManager.Instance.ReturnToCockpit();
    }

    //Sets current gravity based on current planet
    private void SetGravity() {
        GameManager.Instance.SetGravity(planetGravity);
    }
}


