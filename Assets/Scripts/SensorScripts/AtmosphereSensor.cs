using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class AtmosphereSensor: Sensor
{
    //TODO: code specific to the Atmosphere sensor

    #region Variables
    [SerializeField] private Text displayScreen;
    #endregion

    #region Methods

    protected override void OnComplete() {
        string readout = FindObjectOfType<PlanetManager>().planetAtmosphere;
        displayScreen.text = readout;
        GameManager.Instance.planetProgresses[(int)FindObjectOfType<PlanetManager>().currentPlanet].hasAtmosphericComp = true;
        GameManager.Instance.planetProgresses[(int)FindObjectOfType<PlanetManager>().currentPlanet].CheckIsComplete();
    }
    #endregion
}
