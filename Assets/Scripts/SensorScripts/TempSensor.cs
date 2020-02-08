﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TempSensor : Sensor
{
    //TODO: code specific to the Temp sensor

    #region Variables

    #endregion

    #region Methods

    protected override void OnComplete() {
        GameManager.Instance.planetProgresses[(int)FindObjectOfType<PlanetManager>().currentPlanet].hasTemperature = true;
        GameManager.Instance.planetProgresses[(int)FindObjectOfType<PlanetManager>().currentPlanet].CheckIsComplete();
    }
    #endregion
}
