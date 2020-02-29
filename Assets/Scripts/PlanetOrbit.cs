using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlanetOrbit : MonoBehaviour
{
    [SerializeField] private float HorizontalAxisLength;
    [SerializeField] private float VerticalAxisLength;
    [SerializeField] private float timeInEarthYears;

    public bool lineUp { get; set; }

    private float currentT;

    public void Orbit(float t, Vector3 origin) {
        Debug.Log("HERE");
        if(lineUp) {
            if(currentT > Mathf.PI) {
                currentT = Mathf.Lerp(currentT, 2 * Mathf.PI, 0.05f);
            } else {
                currentT = Mathf.Lerp(currentT, 0, 0.05f);
            }
        } else {
            currentT = ((t / timeInEarthYears) + currentT) % (2 * Mathf.PI);
        }
        transform.position = new Vector3(HorizontalAxisLength * Mathf.Cos(currentT) + origin.x, origin.y, VerticalAxisLength * Mathf.Sin(currentT) + origin.z);
        /*
        HorizontalAxisLength * Mathf.Cos(currentT);
        VerticalAxisLength * Mathf.Sin(currentT);
        */
    }
}
