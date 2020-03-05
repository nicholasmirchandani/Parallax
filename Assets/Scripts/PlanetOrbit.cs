using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlanetOrbit : MonoBehaviour
{
    [SerializeField] private float HorizontalAxisLength;
    [SerializeField] private float VerticalAxisLength;
    [SerializeField] private float timeInEarthYears;
    [SerializeField] private TrailRenderer trail;
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
            
            if (trail.emitting){
                trail.emitting = false;
                trail.Clear();
            }
            
            if(currentT > Mathf.PI) {
                currentT = Mathf.Lerp(currentT, 2 * Mathf.PI, 0.05f);
            } else {
                currentT = Mathf.Lerp(currentT, 0, 0.05f);
            }
        } else {
            trail.emitting = true;
            currentT = ((t / timeInEarthYears) + currentT) % (2 * Mathf.PI);
        }

        if (expanded) {
            currentHorzontalAxisLength = Mathf.Lerp(currentHorzontalAxisLength, HorizontalAxisLengthExpanded, 0.05f);
            currentVerticalAxisLength = Mathf.Lerp(currentVerticalAxisLength, VerticalAxisLengthExpanded, 0.05f);
            currentPlanetScale = Mathf.Lerp(currentPlanetScale, PlanetScaleExpanded, 0.05f);

            if(!Mathf.Approximately(currentHorzontalAxisLength, HorizontalAxisLengthExpanded) &&
                !Mathf.Approximately(currentVerticalAxisLength, VerticalAxisLengthExpanded) &&
                !Mathf.Approximately(currentPlanetScale, PlanetScaleExpanded)){
                if (trail.emitting)
                {
                    trail.emitting = false;
                    trail.Clear();
                }
            } else if(!lineUp){
                trail.emitting = true;
            }

        } else {
            currentHorzontalAxisLength = Mathf.Lerp(currentHorzontalAxisLength, HorizontalAxisLength, 0.05f);
            currentVerticalAxisLength = Mathf.Lerp(currentVerticalAxisLength, VerticalAxisLength, 0.05f);
            currentPlanetScale = Mathf.Lerp(currentPlanetScale, PlanetScale, 0.05f);

            if (!Mathf.Approximately(currentHorzontalAxisLength, HorizontalAxisLength) &&
                !Mathf.Approximately(currentVerticalAxisLength, VerticalAxisLength) &&
                !Mathf.Approximately(currentPlanetScale, PlanetScale))
            {
                if (trail.emitting)
                {
                    trail.emitting = false;
                    trail.Clear();
                }
            }
            else if (!lineUp)
            {
                trail.emitting = true;
            }
        }
        //Assuming planets are childed to controller
        transform.localPosition = new Vector3(currentHorzontalAxisLength * Mathf.Cos(currentT), 0, currentVerticalAxisLength * Mathf.Sin(currentT));
        transform.localScale = new Vector3(currentPlanetScale, currentPlanetScale, currentPlanetScale);

        //transform.position = new Vector3(HorizontalAxisLength * Mathf.Cos(currentT) + origin.x, origin.y, VerticalAxisLength * Mathf.Sin(currentT) + origin.z);
        /*
        HorizontalAxisLength * Mathf.Cos(currentT);
        VerticalAxisLength * Mathf.Sin(currentT);
        */
    }
}
