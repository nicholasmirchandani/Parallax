using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlanetOrbit : Orbit
{
    [SerializeField]
    private float HorizontalAxisLength;

    [SerializeField]
    private float VerticalAxisLength;


    protected override void orbit(float t) {
        if(lineUp && t == 0) {
            return;
        }
        float tempX = gameObject.transform.position.x;
        float tempY = gameObject.transform.position.y;
        float tempz = gameObject.transform.position.x;
        tempX = HorizontalAxisLength * Mathf.Cos(t);
        tempY = VerticalAxisLength * Mathf.Sin(t);
    }
}
