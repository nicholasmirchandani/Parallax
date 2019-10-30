using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CockpitManager : MonoBehaviour
{
    //Mutator for target planet
    public void SetTargetPlanet(string planetName)
    {
        GameManager.Instance.SetTargetPlanet(planetName);
    }

    //Beams to target planet
    public void BeamToPlanet()
    {
        GameManager.Instance.BeamToPlanet();
    }
}