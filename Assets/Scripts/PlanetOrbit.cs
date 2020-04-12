using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using VRTK;

public class PlanetOrbit : MonoBehaviour
{
    // Planetary orbit parameters
    [SerializeField] private float HorizontalAxisLength;
    [SerializeField] private float VerticalAxisLength;
    [SerializeField] private float yearLengthInEarthYears;
    [SerializeField] private float siderealPeriodInEarthYears; //Time for planet to rotate once, not respective to the sun

    // Allows checking if grabbed
    private VRTK_InteractableObject interactable;

    // Values used in expanding scale of the solar system
    private float PlanetScale;
    private float HorizontalAxisLengthExpanded;
    private float VerticalAxisLengthExpanded;
    private float PlanetScaleExpanded;

    // Keeps track of the state of the simulation
    public bool lineUp { get; set; }
    public bool expanded { get; set; }

    // Keeps track of current state of indivitual orbiting object
    private float currentOrbitT;
    private float currentRotationT;
    private float currentHorzontalAxisLength;
    private float currentVerticalAxisLength;
    private float currentPlanetScale;

    // Helps return objects to their orbit after beign grabbed
    private float lerpRate = 0f;
    private float lerpTimer = 0f;
    private float lerpDuration = 2.5f;
    private bool onTargetPos = true;
    private bool lerpingBackToTarget = false;
    private Vector3 previousExpectedScale;
    private Vector3 targetUpVector;

    private void Start()
    {
        interactable = GetComponent<VRTK_InteractableObject>();
        previousExpectedScale = transform.localScale;
        PlanetScale = gameObject.transform.localScale.x;
        HorizontalAxisLengthExpanded = Mathf.Pow(HorizontalAxisLength, 2);
        VerticalAxisLengthExpanded = Mathf.Pow(VerticalAxisLength, 2);
        PlanetScaleExpanded = Mathf.Pow(PlanetScale, 2);

        currentHorzontalAxisLength = HorizontalAxisLength;
        currentVerticalAxisLength = VerticalAxisLength;
        currentPlanetScale = PlanetScale;
        targetUpVector = transform.up;
    }

    public void Orbit(float t)
    {
        if (lineUp)
        {
            // Lerps planets to be in line with one another
            if (currentOrbitT > Mathf.PI)
            {
                currentOrbitT = Mathf.Lerp(currentOrbitT, 2 * Mathf.PI, 0.05f);
            }
            else
            {
                currentOrbitT = Mathf.Lerp(currentOrbitT, 0, 0.05f);
            }
        }
        else
        {
            currentOrbitT = ((t / yearLengthInEarthYears) + currentOrbitT) % (2 * Mathf.PI);
        }

        if (expanded)
        {
            //determines scale and position of planet if expanded
            currentHorzontalAxisLength = Mathf.Lerp(currentHorzontalAxisLength, HorizontalAxisLengthExpanded, 0.05f);
            currentVerticalAxisLength = Mathf.Lerp(currentVerticalAxisLength, VerticalAxisLengthExpanded, 0.05f);
            currentPlanetScale = Mathf.Lerp(currentPlanetScale, PlanetScaleExpanded, 0.05f);

        }
        else
        {
            //determines scale and position of planet if not expanded
            currentHorzontalAxisLength = Mathf.Lerp(currentHorzontalAxisLength, HorizontalAxisLength, 0.05f);
            currentVerticalAxisLength = Mathf.Lerp(currentVerticalAxisLength, VerticalAxisLength, 0.05f);
            currentPlanetScale = Mathf.Lerp(currentPlanetScale, PlanetScale, 0.05f);
        }
        //Assuming planets are childed to controller

        if (!interactable.IsGrabbed())
        {
            // After object is released, start coroutine to lerp back to orbit
            if (!onTargetPos && !lerpingBackToTarget)
            {
                lerpingBackToTarget = true;
                StartCoroutine(LerpDuration());
            }

            Vector3 targetPosition = new Vector3
            {
                x = currentHorzontalAxisLength * Mathf.Cos(currentOrbitT),
                y = 0,
                z = currentVerticalAxisLength * Mathf.Sin(currentOrbitT)
            };

            // Ensures planets are on their target position if they should be
            if (onTargetPos)
            {
                transform.localPosition = targetPosition;
            }
            // Otherwise, lerps toward target position by amount determined by the coroutine
            else
            {
                transform.localPosition = Vector3.Lerp(transform.localPosition, targetPosition, lerpRate);
                transform.up = Vector3.Lerp(transform.up, targetUpVector, 0.02f);
            }

            // Determines target scale
            Vector3 targetScale = new Vector3(currentPlanetScale, currentPlanetScale, currentPlanetScale);

            // If planet is near target scale, set it to exactly the target scale
            if (Mathf.Approximately(transform.localScale.x, previousExpectedScale.x) &&
                Mathf.Approximately(transform.localScale.z, previousExpectedScale.z))
            {
                transform.localScale = targetScale;
            }
            // Otherwise, lerp scale toward target scale.
            else
            {
                transform.localScale = Vector3.Lerp(transform.localScale, targetScale, lerpRate);
            }
        }
        // Sets flag when grabbed
        else
        {
            onTargetPos = false;
        }

        previousExpectedScale = new Vector3(currentPlanetScale, currentPlanetScale, currentPlanetScale);
    }

    // Rotates planet around its axis at rate determined by parameters
    public void Rotate(float t)
    {
        if (!interactable.IsGrabbed() && onTargetPos)
        {
            transform.Rotate(0f, (((t / siderealPeriodInEarthYears) + currentRotationT) % (2 * Mathf.PI)), 0f);
        }
    }

    // Coroutine to time how quickly planets return to orbit
    IEnumerator LerpDuration()
    {
        // Resets lerpRate and lerpTimer
        lerpRate = 0f;
        lerpTimer = 0f;

        yield return new WaitForSeconds(lerpDuration);

        lerpingBackToTarget = false;
        onTargetPos = true;
    }

    private void Update()
    {
        if (lerpingBackToTarget)
        {
            //Keeps track of how long the planet has been lerping back to orbit
            lerpTimer += Time.deltaTime;

            //Calculates lerp rate based on lerpTimer and total duration
            lerpRate = Mathf.Pow((lerpTimer / (lerpDuration * 2f)), 3f);
        }
    }
}
