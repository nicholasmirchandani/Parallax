using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GravitySensor : Sensor
{
    //TODO: code specific to the Gravity sensor

    #region Variables

    #endregion

    #region Methods
    protected override void OnComplete() {
        GameManager.Instance.planetProgresses[(int)FindObjectOfType<PlanetManager>().currentPlanet].hasGravity = true;
        GameManager.Instance.planetProgresses[(int)FindObjectOfType<PlanetManager>().currentPlanet].CheckIsComplete();
    }

    #endregion
}
