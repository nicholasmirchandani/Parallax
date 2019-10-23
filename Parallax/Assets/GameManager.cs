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

    public static GameManager Instance;
    [SerializeField] private Planet targetPlanet;

    void Awake() {
        if(Instance == null) {
            Instance = this;
            DontDestroyOnLoad(this);
        } else {
            Destroy(gameObject);
        }

    }

    // Update is called once per frame
    void Update() {
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

    void ReturnToCockpit() {
        SceneManager.LoadScene("Cockpit");
        Debug.Log("Return to cockpit!");
    }
}
