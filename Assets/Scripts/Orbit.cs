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

//TODO: Rename OrbitController
public class Orbit : MonoBehaviour
{
    private Coroutine OrbitRoutine;
    private bool lineUp;
    public bool LineUp {
        get {
            return lineUp;
        }

        set {
            foreach (GameObject go in planets) {
                go.GetComponent<PlanetOrbit>().lineUp = value;
            }
            lineUp = value;
        }
    }
    private Vector3 origin;

    [SerializeField]
    [Tooltip("Float that parameter t will increment by. A negative value will cause reversed orbit")]
    private float rotationSpeed = 1;

    public GameObject[] planets;
    public float controllerT = 0f;

    private void Update() {
        if (Input.GetKeyDown(KeyCode.J)) {
            StartOrbit();
        }
        if(Input.GetKeyDown(KeyCode.E)) {
            ToggleLineUp();
        }
    }
    private void Start() {
        origin = transform.position;
    }

    public void StartOrbit() {
        OrbitRoutine = StartCoroutine(OrbitController());
    }

    public void ToggleLineUp() {
        LineUp = !LineUp;
    }

    IEnumerator OrbitController() {
        Debug.Log("Orbit coroutine made");
        while (true) {
            controllerT = (controllerT + rotationSpeed) % (2 * Mathf.PI);
            for (int i = 0; i < planets.Length; ++i) {
                planets[i].GetComponent<PlanetOrbit>().Orbit(Time.deltaTime * rotationSpeed, origin);
            }
            yield return new WaitForEndOfFrame();
        }
    }

    public void StopOrbit() {
        StopCoroutine(OrbitRoutine);
    }
}
