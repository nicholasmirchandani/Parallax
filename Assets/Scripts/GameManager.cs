/************************************************************************
 * Written by Nicholas Mirchandani in October 2019                      *
 *                                                                      *
 * The purpose of GameManager.cs is to facilitate interplanetary travel,*
 * keep track of values that must persist between planets, and maintain *
 * directly modify the Physics.gravity vector                           *
 *                                                                      *
 * Updated by Nicholas Mirchandani on 11/12/19                          *
 * Updated by Dan Haub on 11/1/19                                       *
 * Updated by Sean Robbins on 1/21/2020                                 *
 ************************************************************************/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

using Photon.Pun;
using Photon.Realtime;
using UnityEngine.UI;

public class GameManager : MonoBehaviourPunCallbacks {
    [System.Serializable] public enum Planet {
        MERCURY,
        VENUS,
        MARS,
        JUPITER,
        SATURN,
        URANUS,
        NEPTUNE,
        NONE
    }

    public static GameManager Instance;     //Reference to GameManager at all times
    public Planet targetPlanet;   //Allows us to track and modify target planet to beam to
    public bool isConfirmed = false;


    public float currentGravity; //Allows us to track current gravity
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

        
        targetPlanet = Planet.MERCURY;
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
        if(Input.GetKeyDown(KeyCode.C)) {
            ToggleIsConfirmed();
        }
        if(Input.GetKeyDown(KeyCode.LeftArrow)) {
            ScrollTargetPlanetLeft();
        }
        if(Input.GetKeyDown(KeyCode.RightArrow)) {
            ScrollTargetPlanetRight();
        }
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            Debug.Log("Leaving the Networked Room");
            LeaveRoom();
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
        } else {
            Debug.Log("NOTE: Unrecognized string '" + planetName + "' passed to SetTargetPlanet.  Defaulting to Mercury");
        }
        targetPlanet = planet;
    }

    //Updates target planet left one
    public void ScrollTargetPlanetLeft() {
        if (!PhotonNetwork.IsMasterClient) {
            return;
        }

        if (targetPlanet != Planet.MERCURY) {
            targetPlanet -= 1;
        }
    }

    //Updates target planet right one
    public void ScrollTargetPlanetRight() {
        if (!PhotonNetwork.IsMasterClient) {
            return;
        }

        if (targetPlanet != Planet.NEPTUNE) {
            targetPlanet += 1;
        }
    }

    //Beams to target planet
    public void BeamToPlanet() {
        if(!PhotonNetwork.IsMasterClient) {
            return;
        }
        if(!isConfirmed) {
            Debug.Log("Need to confirm planet!");
            //TODO: Need to confirm planet popup
            return;
        }
        switch(targetPlanet) {
            case Planet.MERCURY:
                PhotonNetwork.LoadLevel("Mercury");
                break;
            case Planet.VENUS:
                PhotonNetwork.LoadLevel("Venus");
                break;
            case Planet.MARS:
                PhotonNetwork.LoadLevel("Mars");
                break;
            case Planet.JUPITER:
                PhotonNetwork.LoadLevel("Jupiter");
                break;
            case Planet.SATURN:
                PhotonNetwork.LoadLevel("Saturn");
                break;
            case Planet.URANUS:
                PhotonNetwork.LoadLevel("Uranus");
                break;
            case Planet.NEPTUNE:
                PhotonNetwork.LoadLevel("Neptune");
                break;
            default:
                Debug.Log("ERROR: UNKNOWN PLANET TO BEAM TO");
                break;
        }
        isConfirmed = false;
    }

    //Returns to Cockpit
    public void ReturnToCockpit() {

        if (!PhotonNetwork.IsMasterClient) {
            return;
        }
        PhotonNetwork.LoadLevel("Cockpit");
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
    public float CalcDiffToEarthGravity() {
        return (-9.798F - currentGravity);
    }

    public void ToggleIsConfirmed() {
        isConfirmed = !isConfirmed;
        //TODO: Confirmed appear/disappear here
    }

    //Quits Game
    public void QuitGame() {
        Application.Quit();
    }




    //--------------------Photon Code Test Section----------------------------



    #region Photon Callbacks

    
    /// <summary>
    /// Called when the local player left the room. We need to load the launcher scene.
    /// </summary>
    public override void OnLeftRoom() {
        SceneManager.LoadScene(0);
        Cursor.lockState = CursorLockMode.None;
    }

    //Called when a player enters the photon room called by every player in the room
    public override void OnPlayerEnteredRoom(Player other) {
        Debug.LogFormat("OnPlayerEnteredRoom() {0}",  other.NickName); // not seen if you're the player connecting

        
        if (PhotonNetwork.IsMasterClient) {
            Debug.LogFormat("OnPlayerEnteredRoom IsMasterClient {0}", PhotonNetwork.IsMasterClient); // called before OnPlayerLeftRoom
            
            //code to call when a player enters the room, called only by the master client in this if statement


        }
    }

    //Called When a Player leaves the Photon Room by every other player in the room
    public override void OnPlayerLeftRoom(Player other) {
        Debug.LogFormat("OnPlayerLeftRoom() {0}", other.NickName); // seen when other disconnects
        

        if (PhotonNetwork.IsMasterClient) {
            Debug.LogFormat("OnPlayerLeftRoom IsMasterClient {0}", PhotonNetwork.IsMasterClient); // called before OnPlayerLeftRoom
        }
    }




    #endregion


    #region Public Methods

    //Called when player leaves the Photon Networked Room
    public void LeaveRoom() {
        PhotonNetwork.LeaveRoom();
    }

    //Called 
   


    #endregion



}
