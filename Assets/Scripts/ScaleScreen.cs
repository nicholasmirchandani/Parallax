using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ScaleScreen : MonoBehaviour
{
    public MeasureMass mMass;
    public Text screenText;
    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        screenText.text = (mMass.totalMass * GameManager.Instance.currentGravity * -1).ToString() + " lbs";
        Debug.Log("Total weight is " + mMass.totalMass * GameManager.Instance.currentGravity * -1); //Brute forcing a weight reading every 
    }
}
