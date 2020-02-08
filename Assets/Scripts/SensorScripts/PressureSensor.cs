using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PressureSensor : Sensor
{
    //TODO: code specific to the Pressure sensor

    #region Variables

    #endregion

    #region Methods

    protected override void OnComplete() {
        GameManager.Instance.planetProgresses[(int)FindObjectOfType<PlanetManager>().currentPlanet].hasPressure = true;
        GameManager.Instance.planetProgresses[(int)FindObjectOfType<PlanetManager>().currentPlanet].CheckIsComplete();
    }
    #endregion
}
