﻿/************************************************************************
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

    public GameObject[] hologramPlanets;
    public Material mercuryMaterial;
    public Material venusMaterial;
    public Material marsMaterial;
    public Material jupiterMaterial;
    public Material saturnMaterial;
    public Material uranusMaterial;
    public Material neptuneMaterial;
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

    private Coroutine scrollingCoroutine;
    private Color originalColor;
    private Color32 customGreen;

    //Runs each time cockpit scene is loaded
    private void Awake() {
        originalColor = hologramPlanets[0].GetComponent<Renderer>().material.GetColor("_MainColor");
        customGreen = new Color32(49, 233, 86, 1);
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
        if(GameManager.Instance.isConfirmed) {
            ThePlanetsGreen.SetActive(true);
            ThePlanetsWhite.SetActive(false);
            foreach(GameObject hologramPlanet in hologramPlanets) {
                hologramPlanet.GetComponent<Renderer>().material.SetColor("_MainColor", customGreen);
            }
        } else {
            ThePlanetsWhite.SetActive(true);
            ThePlanetsGreen.SetActive(false);
            foreach(GameObject hologramPlanet in hologramPlanets) {
                hologramPlanet.GetComponent<Renderer>().material.SetColor("_MainColor", originalColor);
            }
        }
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
        UpdatePlanetHologram();
        CheckIsComplete();
    }

    private void UpdatePlanetHologram() {
        foreach(GameObject hologramPlanet in hologramPlanets) {
            Renderer hologramPlanetRenderer = hologramPlanet.GetComponent<Renderer>();
            switch (GameManager.Instance.targetPlanet) {
                case GameManager.Planet.MERCURY:
                    hologramPlanetRenderer.material = mercuryMaterial;
                    break;
                case GameManager.Planet.VENUS:
                    hologramPlanetRenderer.material = venusMaterial;
                    break;
                case GameManager.Planet.MARS:
                    hologramPlanetRenderer.material = marsMaterial;
                    break;
                case GameManager.Planet.JUPITER:
                    hologramPlanetRenderer.material = jupiterMaterial;
                    break;
                case GameManager.Planet.SATURN:
                    hologramPlanetRenderer.material = saturnMaterial;
                    break;
                case GameManager.Planet.URANUS:
                    hologramPlanetRenderer.material = uranusMaterial;
                    break;
                case GameManager.Planet.NEPTUNE:
                    hologramPlanetRenderer.material = neptuneMaterial;
                    break;
                default:
                    break;
            }
        }
    }

    private void CheckIsComplete() {
        if (GameManager.Instance.planetProgresses[(int)GameManager.Instance.targetPlanet].isComplete) {
            PlanetCompleteIndicator.SetActive(true);
        }
        else {
            PlanetCompleteIndicator.SetActive(false);
        }
    }

    public void StartScrollingRight() {
        Debug.Log("Start scrolling right");
        if(scrollingCoroutine != null) {
            StopCoroutine(scrollingCoroutine);
        }
        scrollingCoroutine = StartCoroutine(ScrollingRight());
    }

    public void StartScrollingLeft() {
        Debug.Log("Start scrolling left");
        if (scrollingCoroutine != null) {
            StopCoroutine(scrollingCoroutine);
        }
        scrollingCoroutine = StartCoroutine(ScrollingLeft());
    }
    
    public void StopScrollingRight() {
        Debug.Log("Stop scrolling right");
        if (scrollingCoroutine != null) {
            StopCoroutine(scrollingCoroutine);
        }
    }

    public void StopScrollingLeft() {
        Debug.Log("Stop scrolling left");
        if (scrollingCoroutine != null) {
            StopCoroutine(scrollingCoroutine);
        }
    }

    private IEnumerator ScrollingRight() {
        while(true) {
            ScrollTargetPlanetRight();
            yield return new WaitForSeconds(0.5f);
        }
    }

    private IEnumerator ScrollingLeft() {
        while (true) {
            ScrollTargetPlanetLeft();
            yield return new WaitForSeconds(0.5f);
        }
    }
}