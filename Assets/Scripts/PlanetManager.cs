using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlanetManager : MonoBehaviour
{
    public void ReturnToCockpit() {
        GameManager.Instance.ReturnToCockpit();
    }
}
