using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using VRTK;

public class PlanetOrbit : MonoBehaviour
{
    [SerializeField] private float HorizontalAxisLength;
    [SerializeField] private float VerticalAxisLength;
    [SerializeField] private float yearLengthInEarthYears;
    [SerializeField] private float siderealPeriodInEarthYears; //Time for planet to rotate once, not respective to the sun
    [SerializeField] private VRTK_InteractableObject interactable;

    private float PlanetScale;
    private float HorizontalAxisLengthExpanded;
    private float VerticalAxisLengthExpanded;
    private float PlanetScaleExpanded;

    public bool lineUp { get; set; }
    public bool expanded { get; set; }

    private float currentOrbitT;
    private float currentRotationT;
    private float currentHorzontalAxisLength;
    private float currentVerticalAxisLength;
    private float currentPlanetScale;

    private float lerpDuration = 5f;
    private bool onTargetPos = true;
    private bool lerpingBackToTarget = false;

    private Vector3 previousExpectedPosition;
    private Vector3 previousExpectedScale;

    private void Start() {
        previousExpectedPosition = transform.position;
        previousExpectedScale = transform.localScale;
        PlanetScale = gameObject.transform.localScale.x;
        HorizontalAxisLengthExpanded = Mathf.Pow(HorizontalAxisLength, 2);
        VerticalAxisLengthExpanded = Mathf.Pow(VerticalAxisLength, 2);
        PlanetScaleExpanded = Mathf.Pow(PlanetScale, 2);

        currentHorzontalAxisLength = HorizontalAxisLength;
        currentVerticalAxisLength = VerticalAxisLength;
        currentPlanetScale = PlanetScale;
    }

    public void Orbit(float t) {
        if(lineUp) {
            if(currentOrbitT > Mathf.PI) {
                currentOrbitT = Mathf.Lerp(currentOrbitT, 2 * Mathf.PI, 0.05f);
            } else {
                currentOrbitT = Mathf.Lerp(currentOrbitT, 0, 0.05f);
            }
        } else {
            currentOrbitT = ((t / yearLengthInEarthYears) + currentOrbitT) % (2 * Mathf.PI);
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

        if (!interactable.IsGrabbed())
        {
            if (!onTargetPos && !lerpingBackToTarget)
            {
                lerpingBackToTarget = true;
                StartCoroutine(LerpDuration());
            }
            Vector3 targetPosition = new Vector3(currentHorzontalAxisLength * Mathf.Cos(currentOrbitT), 0, currentVerticalAxisLength * Mathf.Sin(currentOrbitT));

            if (onTargetPos)
            {

                transform.localPosition = targetPosition;
            }
            else
            {
                transform.localPosition = Vector3.Lerp(transform.localPosition, targetPosition, 1f);
            }

            Vector3 targetScale = new Vector3(currentPlanetScale, currentPlanetScale, currentPlanetScale);

            if (Mathf.Approximately(transform.localScale.x, previousExpectedScale.x) &&
                Mathf.Approximately(transform.localScale.z, previousExpectedScale.z))
            {
                transform.localScale = targetScale;
            }
            else
            {
                Debug.Log("SCALE LERP");
                transform.localScale = Vector3.Lerp(transform.localScale, targetScale, 1f);
            }
        }
        else
        {
            onTargetPos = false;
        }

        previousExpectedPosition = new Vector3(currentHorzontalAxisLength * Mathf.Cos(currentOrbitT), 0, currentVerticalAxisLength * Mathf.Sin(currentOrbitT));
        previousExpectedScale = new Vector3(currentPlanetScale, currentPlanetScale, currentPlanetScale);
    }

    public void Rotate(float t)
    {
        if (!interactable.IsGrabbed())
        {
            transform.Rotate(0f, (((t / siderealPeriodInEarthYears) + currentRotationT) % (2 * Mathf.PI)), 0f);
        }
    }

    IEnumerator LerpDuration()
    {
        yield return new WaitForSeconds(lerpDuration);
        lerpingBackToTarget = false;
        onTargetPos = true;

    }
}
