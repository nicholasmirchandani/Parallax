/************************************************************************
 * Written by Nicholas Mirchandani in October 2019                      *
 *                                                                      *
 * The purpose of GameManager.cs is to facilitate interplanetary travel *
 * and keep track of values that must persist between planets.          *
 *                                                                      *
 * Updated by Nicholas Mirchandani on 10/25/19                          *
 ************************************************************************/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour {
    public enum Planet {
        MERCURY,
        VENUS,
        EARTH,
        MARS,
        JUPITER,
        SATURN,
        URANUS,
        NEPTUNE,
        PLUTO
    }

    public static GameManager Instance;     //Reference to GameManager at all times
    [SerializeField] private Planet targetPlanet;   //Allows us to track and modify target planet to beam to

    //Awake is called when script instance is loaded
    void Awake() {
        //If this isn't the first instance of GameManager, destroy it.  There must only be one at any given time, accessible through GameManager.Instance
        if(Instance == null) {
            Instance = this;
            DontDestroyOnLoad(this);
        } else {
            Destroy(gameObject);
        }

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

    //Beams to target planet
    void BeamToPlanet() {
        Debug.Log("Beam to " + targetPlanet);
        switch (targetPlanet) {
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
    void ReturnToCockpit() {
        SceneManager.LoadScene("Cockpit");
        Debug.Log("Return to cockpit!");
    }
}
