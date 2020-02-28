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
using UnityEngine.UI;

public class PlanetManager : MonoBehaviour {
    #region PLanetVariables
    /// <summary>
    /// The Variables that players will need to read using the sensors, Unique to each planet.
    /// Set these variables in Unity Editor as they will need to be different per scene.
    /// </summary>
    [SerializeField] public float planetGravity; //allows us to keep track of the current planet's gravity
    [SerializeField] public float planetTemp;
    [SerializeField] public string planetPressure;
    [SerializeField] public string planetAtmosphere;
    [SerializeField] public string planetChemicalComp;

    #endregion
    public GameManager.Planet currentPlanet;

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


