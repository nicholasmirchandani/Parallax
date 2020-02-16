/************************************************************************
 * Written by Nicholas Mirchandani in October 2019                      *
 *                                                                      *
 * The purpose of CockpitManager.cs is to call GameManager functions.   *
 * Can't use GameManager for calls directly since UnityEvents require a *
 * GameObject in the scene for function calls, and since GameManager    *
 * floats between scenes you can't reference it in the inspector in     *
 * every scene.                                                         *
 *                                                                      *
 * Updated by Nicholas Mirchandani on 11/12/19                          *
 * Updated by Dan Haub on 10/29/19                                      *
 ************************************************************************/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using Photon.Pun;
using Photon.Realtime;
using UnityEngine.UI;


public class CockpitManager : MonoBehaviourPunCallbacks {

    public GameObject ThePlanetsGreen;
    public GameObject ThePlanetsWhite;
    public GameObject ThePlanetsHolder;
    public GameObject ThePlanetsMercury;
    public GameObject ThePlanetsVenus;
    public GameObject ThePlanetsMars;
    public GameObject ThePlanetsJupiter;
    public GameObject ThePlanetsSaturn;
    public GameObject ThePlanetsUranus;
    public GameObject ThePlanetsNeptune;
    public GameObject PlanetCompleteIndicator;


    //Runs each time cockpit scene is loaded
    private void Awake() {
        GameManager.Instance.SetGravity();
        UpdateScreenPositions();
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

    //Mutator for isConfirmed; simply toggles the value
    public void ToggleIsConfirmed() {
        if(GameManager.Instance.isNetworked && !Photon.Pun.PhotonNetwork.IsMasterClient) {
            return;
        }
        GameManager.Instance.ToggleIsConfirmed();
        ThePlanetsGreen.SetActive(GameManager.Instance.isConfirmed);
        ThePlanetsWhite.SetActive(!GameManager.Instance.isConfirmed);
    }

    //Scrolls screen left and updates selected planet as needed
    public void ScrollTargetPlanetLeft() {
        if (!GameManager.Instance.isConfirmed) {
            GameManager.Instance.ScrollTargetPlanetLeft();
            UpdateScreenPositions();
        }
    }

    //Scrolls screen right and updates selected planet as needed
    public void ScrollTargetPlanetRight() {
        if (!GameManager.Instance.isConfirmed) {
            GameManager.Instance.ScrollTargetPlanetRight();
            UpdateScreenPositions();
        }
    }

    //Contains case logic to update screen positions
    public void UpdateScreenPositions() {
        switch (GameManager.Instance.targetPlanet) {
            case GameManager.Planet.MERCURY:
                ThePlanetsHolder.transform.position = ThePlanetsMercury.transform.position;
                break;
            case GameManager.Planet.VENUS:
                ThePlanetsHolder.transform.position = ThePlanetsVenus.transform.position;
                break;
            case GameManager.Planet.MARS:
                ThePlanetsHolder.transform.position = ThePlanetsMars.transform.position;
                break;
            case GameManager.Planet.JUPITER:
                ThePlanetsHolder.transform.position = ThePlanetsJupiter.transform.position;
                break;
            case GameManager.Planet.SATURN:
                ThePlanetsHolder.transform.position = ThePlanetsSaturn.transform.position;
                break;
            case GameManager.Planet.URANUS:
                ThePlanetsHolder.transform.position = ThePlanetsUranus.transform.position;
                break;
            case GameManager.Planet.NEPTUNE:
                ThePlanetsHolder.transform.position = ThePlanetsNeptune.transform.position;
                break;
            default:
                break;
        }
        CheckIsComplete();
    }

    private void CheckIsComplete() {
        if (GameManager.Instance.planetProgresses[(int)GameManager.Instance.targetPlanet].isComplete) {
            PlanetCompleteIndicator.SetActive(true);
        }
        else {
            PlanetCompleteIndicator.SetActive(false);
        }
    }
    
}