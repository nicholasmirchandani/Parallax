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
 * Updated by Dan Haub on 10/29/19                                      *
 ************************************************************************/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlanetManager : MonoBehaviour {
    public GameManager.Planet currentPlanet;
    [SerializeField] private float planetGravity;

    //runs when new planet scene is opened
    public void Awake() {
        currentPlanet = GameManager.Instance.currentPlanet;
        SetGravity();
    }

    //returns user to cockpit
    public void ReturnToCockpit() {
        GameManager.Instance.ReturnToCockpit();
    }

    //Sets current gravity based on current planet
    private void SetGravity() {
        float newGravityForce;

        /*
        //Gravity values obtained from https://www.smartconversion.com/otherInfo/gravity_of_planets_and_the_sun.aspx
        if(currentPlanet.Equals(GameManager.Planet.MERCURY)) {
            newGravityForce = 3.7F;
        } else if(currentPlanet.Equals(GameManager.Planet.VENUS)) {
            newGravityForce = 8.87F;
        } else if(currentPlanet.Equals(GameManager.Planet.EARTH)) {
            newGravityForce = 9.798F;
        } else if(currentPlanet.Equals(GameManager.Planet.MARS)) {
            newGravityForce = 3.71F;
        } else if(currentPlanet.Equals(GameManager.Planet.JUPITER)) {
            newGravityForce = 24.92F;
        } else if(currentPlanet.Equals(GameManager.Planet.SATURN)) {
            newGravityForce = 10.44F;
        } else if(currentPlanet.Equals(GameManager.Planet.URANUS)) {
            newGravityForce = 8.87F;
        } else if(currentPlanet.Equals(GameManager.Planet.NEPTUNE)) {
            newGravityForce = 11.15F;
        } else if(currentPlanet.Equals(GameManager.Planet.PLUTO)) {
            newGravityForce = 0.58F;
        } else {
            newGravityForce = 9.798F;
        } */

        GameManager.Instance.SetGravity(planetGravity);
    }
}


