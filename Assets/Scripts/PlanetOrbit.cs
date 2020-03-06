using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlanetOrbit : MonoBehaviour
{
    [SerializeField] private float HorizontalAxisLength;
    [SerializeField] private float VerticalAxisLength;
    [SerializeField] private float timeInEarthYears;
    private float PlanetScale;
    private float HorizontalAxisLengthExpanded;
    private float VerticalAxisLengthExpanded;
    private float PlanetScaleExpanded;

    public bool lineUp { get; set; }
    public bool expanded { get; set; }

    private float currentT;
    private float currentHorzontalAxisLength;
    private float currentVerticalAxisLength;
    private float currentPlanetScale;

    private void Start() {
        PlanetScale = gameObject.transform.localScale.x;
        HorizontalAxisLengthExpanded = Mathf.Pow(HorizontalAxisLength, 2);
        VerticalAxisLengthExpanded = Mathf.Pow(VerticalAxisLength, 2);
        PlanetScaleExpanded = Mathf.Pow(PlanetScale, 2);

        currentHorzontalAxisLength = HorizontalAxisLength;
        currentVerticalAxisLength = VerticalAxisLength;
        currentPlanetScale = PlanetScale;
    }

    public void Orbit(float t, Vector3 origin) {
        if(lineUp) {
            if(currentT > Mathf.PI) {
                currentT = Mathf.Lerp(currentT, 2 * Mathf.PI, 0.05f);
            } else {
                currentT = Mathf.Lerp(currentT, 0, 0.05f);
            }
        } else {
            currentT = ((t / timeInEarthYears) + currentT) % (2 * Mathf.PI);
        }

        if (expanded) {
            currentHorzontalAxisLength = Mathf.Lerp(currentHorzontalAxisLength, HorizontalAxisLengthExpanded, 0.05f);
            currentVerticalAxisLength = Mathf.Lerp(currentVerticalAxisLength, VerticalAxisLengthExpanded, 0.05f);
            currentPlanetScale = Mathf.Lerp(currentPlanetScale, PlanetScaleExpanded, 0.05f);

        } else {
            currentHorzontalAxisLength = Mathf.Lerp(currentHorzontalAxisLength, HorizontalAxisLength, 0.05f);
            currentVerticalAxisLength = Mathf.Lerp(currentVerticalAxisLength, VerticalAxisLength, 0.05f);
            currentPlanetScale = Mathf.Lerp(currentPlanetScale, PlanetScale, 0.05f);
        }
        //Assuming planets are childed to controller
        transform.localPosition = new Vector3(currentHorzontalAxisLength * Mathf.Cos(currentT), 0, currentVerticalAxisLength * Mathf.Sin(currentT));
        transform.localScale = new Vector3(currentPlanetScale, currentPlanetScale, currentPlanetScale);
    }
}
