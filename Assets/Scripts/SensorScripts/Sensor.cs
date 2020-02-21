/************************************************************************
 * Written by Sean Robbins and Nick Mirchandani in January 2020         *
 *                                                                      *
 *                                                                      *
 * The Purpose of the Sensor script it so check when the player is using*
 * The Sensor Object to get  temperature readout and after using it     
 * correctly the sensor finishes.                                      *
 *                                                                      *
 ************************************************************************/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using VRTK;

//TODO: Use VRTK Grab Events
public class Sensor : MonoBehaviour {
    #region variables
    public float timeMax = 5;
    private float currentTime = 0;
    private Coroutine countRoutine;
    private bool hasFinished = false;
    private bool isRunning = false;
    protected bool hasMeasurement = false;
    private Rigidbody rb;
    private Transform pbTransform;
    private Color32 completeColor = new Color32(49, 233, 86, 255);

    [SerializeField]
    private Image progressBar;
    #endregion


    #region Methods
    //gets the rigidbody of the sensor
    protected virtual void Start() {
        rb = GetComponent<Rigidbody>();
        pbTransform = progressBar.GetComponent<Transform>();
        pbTransform.localScale = new Vector3(0,1,1); 
    }

    /// <summary>
    ///starts the coroutine for timing
    ///if the player is not grabbing the object end the coroutine for timing
    ///if the player is holding the sensor end the coroutine for timing
    /// </summary>
    private void Update() {
        if(!hasMeasurement) {
            if (!hasFinished && !rb.isKinematic) {
                StopTimer();
            }
            else if (!isRunning) {
                StartTimer();
            }
        }
    }

    /// <summary>
    /// start the coroutine for timing
    /// </summary>
    public void StartTimer() {
        countRoutine = StartCoroutine(Count());
        pbTransform.localScale = new Vector3(0, 1, 1);
        isRunning = true;
    }

    /// <summary>
    /// end the coroutine for timing if the player lets go 
    /// or the tim hits the correct value
    /// </summary>
    public void StopTimer() {
        if(!hasFinished && isRunning) {
            StopCoroutine(countRoutine);
            currentTime = 0;
            isRunning = false;
        }
    }

    /// <summary>
    /// the coroutine to determine if the player is holding the sensor long enough for it to get a read
    /// </summary>
    IEnumerator Count() {
        while(currentTime < timeMax) {
            currentTime += Time.deltaTime;
            pbTransform.localScale = new Vector3(pbTransform.localScale.x + Time.deltaTime / timeMax,1,1);
            yield return new WaitForEndOfFrame();
        }
        hasFinished = true;
        Debug.Log("Finished Count");
        OnComplete();
    }

    protected virtual void OnComplete() {
        pbTransform.localScale = new Vector3(1, 1, 1);
        progressBar.color = completeColor;
    }
    #endregion
}
