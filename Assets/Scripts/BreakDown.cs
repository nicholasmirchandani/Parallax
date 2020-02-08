using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BreakDown : MonoBehaviour {
    public GameObject smallPrefab;
    public Transform[] desiredPositions;
    // Start is called before the first frame update
    public void Breakdown() {
        for(int i = 0; i < desiredPositions.Length; ++i) {
            GameObject part = GameObject.Instantiate(smallPrefab);
            part.transform.position = desiredPositions[i].position;
        }
        Destroy(gameObject);
    }

    private void Update() {
        if(Input.GetKeyDown(KeyCode.J)) {
            Breakdown();
        }
    }
}
