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
using VRTK;

//TODO: Use VRTK Grab Events
public class Sensor : MonoBehaviour {
    #region variables
    public float timeMax = 5;
    private float currentTime = 0;
    private Coroutine countRoutine;
    private bool hasFinished = false;
    private bool isRunning = false;
    private Rigidbody rb;
    #endregion


    #region Methods
    //gets the rigidbody of the sensor
    private void Start() {
        rb = GetComponent<Rigidbody>();
    }

    /// <summary>
    ///starts the coroutine for timing
    ///if the player is not grabbing the object end the coroutine for timing
    ///if the player is holding the sensor end the coroutine for timing
    /// </summary>
    private void Update() {
        
        if(!hasFinished && !rb.isKinematic) {
            StopTimer();
        } else if (!isRunning) {
            StartTimer();
        }
    }

    /// <summary>
    /// start the coroutine for timing
    /// </summary>
    public void StartTimer() {
        countRoutine = StartCoroutine(Count());
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
            yield return new WaitForEndOfFrame();
        }
        hasFinished = true;
        Debug.Log("Finished Count");
        //TODO: Remove Destroy and update gameManager instead
        Destroy(gameObject);
    }
    #endregion
}
