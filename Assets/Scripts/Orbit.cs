/************************************************************************
 * Created by Sean Robbins 2/13/2020                                    *
 * The Purpose of the Orbit script is to control the positions of the   *
 * Planet Holograms in the Simulation Room for lesson to based on       *
 * a parameterized version of the equation of an ellipse based on a     *
 * variable T.                                                          *
 * **********************************************************************/


using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Orbit : MonoBehaviour
{
    [SerializeField]
    private Transform origin;

    private Coroutine OrbitRoutine;

    public bool lineUp;

    [SerializeField]
    [Tooltip("Float that parameter t will increment by. A negative value will cause reversed orbit")]
    private float rotationSpeed;

    private float originX;
    private float originY;
    private float originZ;

    public GameObject[] planets;
    public float t;


    public void StartOrbit()
    {
        OrbitRoutine = StartCoroutine(OrbitController());
    }

    IEnumerator OrbitController()
    {
        while(true) {
            for(int i = 0; i < planets.Length; ++i) {
                planets[i].GetComponent<Orbit>().orbit(t);
            }
            t = ( t + rotationSpeed ) % ( 2 * Mathf.PI );
            yield return new WaitForEndOfFrame();
        }
    }

    public void StopOrbit()
    {
        StopCoroutine(OrbitController());
    }
  
    protected virtual void orbit(float t){

    }

}
