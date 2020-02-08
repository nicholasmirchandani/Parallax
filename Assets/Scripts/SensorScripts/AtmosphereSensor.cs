using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AtmosphereSensor: Sensor
{
    //TODO: code specific to the Atmosphere sensor

    #region Variables

    #endregion

    #region Methods

    protected override void OnComplete() {
        GameManager.Instance.planetProgresses[(int)FindObjectOfType<PlanetManager>().currentPlanet].hasAtmosphericComp = true;
        GameManager.Instance.planetProgresses[(int)FindObjectOfType<PlanetManager>().currentPlanet].CheckIsComplete();
    }
    #endregion
}
