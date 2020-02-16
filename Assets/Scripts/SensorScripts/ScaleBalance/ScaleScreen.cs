/************************************************************************
 * Written by Nicholas Mirchandani in November 2019                     *
 *                                                                      *
 * The purpose of ScaleScreen.cs is to display the weight of an object  *
 * retrieved via multiplying its mass, obtained by a MeasureMass, with  *
 * the planet's current gravity (held in GameManager as currentGravity) *
 *                                                                      *
 * Updated by Nicholas Mirchandani on 11/25/19                          *
 ************************************************************************/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ScaleScreen : MonoBehaviour
{
    public MeasureMass mMass;
    public Text screenText;

    // Update is called once per frame
    void Update()
    {
        screenText.text = (mMass.totalMass * GameManager.Instance.currentGravity * -1).ToString() + " lbs";
    }
}
