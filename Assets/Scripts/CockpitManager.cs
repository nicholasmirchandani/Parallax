/************************************************************************
 * Written by Nicholas Mirchandani in October 2019                      *
 *                                                                      *
 * The purpose of CockpitManager.cs is to call GameManager functions.   *
 * Can't use GameManager for calls directly since UnityEvents require a *
 * GameObject in the scene for function calls, and since GameManager    *
 * floats between scenes you can't reference it in the inspector in     *
 * every scene.                                                         *
 *                                                                      *
 * Updated by Nicholas Mirchandani on 10/29/19                          *
 * Updated by Dan Haub on 10/29/19                                      *
 ************************************************************************/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CockpitManager : MonoBehaviour {
    //Runs each time cockpit scene is loaded
    private void Awake() {
        GameManager.Instance.SetGravity();
    }

    //Mutator for target planet
    public void SetTargetPlanet(string planetName) {
        GameManager.Instance.SetTargetPlanet(planetName);
    }

    //Beams to target planet
    public void BeamToPlanet() {
        GameManager.Instance.BeamToPlanet();
    }

    //Toggles use of gravity
    public void ToggleGravity() {
        GameManager.Instance.ToggleGravity();
    }
}