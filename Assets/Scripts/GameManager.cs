﻿/************************************************************************
 * Written by Nicholas Mirchandani in October 2019                      *
 *                                                                      *
 * The purpose of GameManager.cs is to facilitate interplanetary travel,*
 * keep track of values that must persist between planets, and maintain *
 * directly modify the Physics.gravity vector                           *
 *                                                                      *
 * Updated by Nicholas Mirchandani on 10/25/19                          *
 * Updated by Dan Haub on 11/1/19                                       *
 ************************************************************************/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour {
    [System.Serializable]
    public enum Planet {
        MERCURY,
        VENUS,
        EARTH,
        MARS,
        JUPITER,
        SATURN,
        URANUS,
        NEPTUNE,
        PLUTO,
        NONE
    }

    public static GameManager Instance;     //Reference to GameManager at all times
    [SerializeField] private Planet targetPlanet;   //Allows us to track and modify target planet to beam to

    [SerializeField] private float currentGravity; //Allows us to track current gravity
    [SerializeField] private bool gravityEnabled = true; //Allows us to track if gravity is currently enabled

    //Awake is called when script instance is loaded
    void Awake() {
        //If this isn't the first instance of GameManager, destroy it.  There must only be one at any given time, accessible through GameManager.Instance
        if(Instance == null) {
            Instance = this;
            DontDestroyOnLoad(this);
        } else {
            Destroy(gameObject);
        }

        targetPlanet = Planet.NONE;
        SetGravity();
    }

    // Update is called once per frame
    void Update() {
        //Debug Code used to call BeamToPlanet and ReturnToCockpit for now
        if(Input.GetKeyDown(KeyCode.B)) {
            BeamToPlanet();
        }
        if(Input.GetKeyDown(KeyCode.R)) {
            ReturnToCockpit();
        }
    }

    //Mutator for target planet
    public void SetTargetPlanet(string planetName) {
        Planet planet = Planet.MERCURY;
        //Note: Using String instead of enum since Unity Events does not support enum parameters.  As such, input must be parsed
        if(planetName.Equals("Mercury")) {
            planet = Planet.MERCURY;
        } else if(planetName.Equals("Venus")) {
            planet = Planet.VENUS;
        } else if(planetName.Equals("Earth")) {
            planet = Planet.EARTH;
        } else if(planetName.Equals("Mars")) {
            planet = Planet.MARS;
        } else if(planetName.Equals("Jupiter")) {
            planet = Planet.JUPITER;
        } else if(planetName.Equals("Saturn")) {
            planet = Planet.SATURN;
        } else if(planetName.Equals("Uranus")) {
            planet = Planet.URANUS;
        } else if(planetName.Equals("Neptune")) {
            planet = Planet.NEPTUNE;
        } else if(planetName.Equals("Pluto")) {
            planet = Planet.PLUTO;
        } else {
            Debug.Log("NOTE: Unrecognized string '" + planetName + "' passed to SetTargetPlanet.  Defaulting to Mercury");
        }
        targetPlanet = planet;
    }

    //Beams to target planet
    public void BeamToPlanet() {
        switch(targetPlanet) {
            case Planet.MERCURY:
                SceneManager.LoadScene("Mercury");
                break;
            case Planet.VENUS:
                SceneManager.LoadScene("Venus");
                break;
            case Planet.EARTH:
                SceneManager.LoadScene("Earth");
                break;
            case Planet.MARS:
                SceneManager.LoadScene("Mars");
                break;
            case Planet.JUPITER:
                SceneManager.LoadScene("Jupiter");
                break;
            case Planet.SATURN:
                SceneManager.LoadScene("Saturn");
                break;
            case Planet.URANUS:
                SceneManager.LoadScene("Uranus");
                break;
            case Planet.NEPTUNE:
                SceneManager.LoadScene("Neptune");
                break;
            case Planet.PLUTO:
                SceneManager.LoadScene("Pluto");
                break;
            default:
                Debug.Log("ERROR: UNKNOWN PLANET TO BEAM TO");
                break;
        }
    }

    //Returns to Cockpit
    public void ReturnToCockpit() {
        SceneManager.LoadScene("Cockpit");
    }

    //Sets current gravity based to passed force value
    //Note: Only changes gravity in Y direction
    public void SetGravity(float newGravityForce) {
        Physics.gravity = new Vector3(0, newGravityForce, 0);
        currentGravity = newGravityForce;
    }

    //Sets gravity to Earth's gravity
    public void SetGravity() {
        SetGravity(-9.798F);
    }

    //TODO: Make sure objects in zero gravity still conserve momentum
    //Toggles gravity
    public void ToggleGravity() {
        if(gravityEnabled) {
            Physics.gravity = new Vector3(0, 0, 0);
        }
        if(!gravityEnabled) {
            Physics.gravity = new Vector3(0, currentGravity, 0);
        }
        gravityEnabled = !gravityEnabled;
    }

    //Calculates difference to earth gravity
    public float GetDiffToEarthGravity() {
        return (-9.798F - currentGravity);
    }
}
