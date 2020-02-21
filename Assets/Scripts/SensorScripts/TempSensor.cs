using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TempSensor : Sensor
{
    //TODO: code specific to the Temp sensor

    #region Variables
    [SerializeField] private Text displayScreen;
    #endregion

    #region Methods

    protected override void Start() {
        base.Start();
        if(GameManager.Instance.planetProgresses[(int)FindObjectOfType<PlanetManager>().currentPlanet].hasTemperature) {
            OnComplete();
        }
    }

    protected override void OnComplete() {
        base.OnComplete();
        string readout = FindObjectOfType<PlanetManager>().planetTemp.ToString();
        readout += "° F";
        displayScreen.text = readout;
        GameManager.Instance.planetProgresses[(int)FindObjectOfType<PlanetManager>().currentPlanet].hasTemperature = true;
        GameManager.Instance.planetProgresses[(int)FindObjectOfType<PlanetManager>().currentPlanet].CheckIsComplete();
        hasMeasurement = true;
    }
    #endregion
}
