using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PressureSensor : Sensor
{
    //TODO: code specific to the Pressure sensor

    #region Variables
    [SerializeField] private Text displayScreen;
    #endregion

    #region Methods

    protected override void Start() {
        base.Start();
        if (GameManager.Instance.planetProgresses[(int)FindObjectOfType<PlanetManager>().currentPlanet].hasPressure) {
            OnComplete();
        }
    }

    protected override void OnComplete() {
        base.OnComplete();
        string readout = FindObjectOfType<PlanetManager>().planetPressure.ToString();
        readout += " atm";
        displayScreen.text = readout;
        GameManager.Instance.planetProgresses[(int)FindObjectOfType<PlanetManager>().currentPlanet].hasPressure = true;
        GameManager.Instance.planetProgresses[(int)FindObjectOfType<PlanetManager>().currentPlanet].CheckIsComplete();
        hasMeasurement = true;
    }
    #endregion
}
