using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TutorialManager : MonoBehaviour {
    public string[] stepList;

    public GameObject[] ChallengeZones;
    public GameObject TeleportZone;
    public int stepNumber = 0;
    public Text messageDisplay;
    public bool teleportComplete = false;
    public bool firstZoneComplete = false;
    public bool allZoneComplete = false;

    public bool grabComplete = false;

    // Start is called before the first frame update
    void Start() {
        AssignSteps();
        UpdateText();
        Invoke("SetToZero", 1f);

    }

    // Update is called once per frame
    void Update() {
        
    }
    void AssignSteps() {
        stepList[0] = "First, we will look at teleporting. To teleport, first you must know to where you are moving.";
        stepList[1] = "Hold down the touchpad atop the controller to show your teleport location.";
        stepList[2] = "Now that you can see your destination, release the touchpad to teleport.";
        stepList[3] = "Congratulations, you have teleported!";
        stepList[4] = "Now that you know how to teleport, it's time to teach you to use teleport zones.";
        stepList[5] = "Teleport zones are blue circles on the ground that turn green when your teleport curves lands on it. " +
            "When you teleport to it, the zone will snap you to its center, or to another location. Try it for yourself!";
        stepList[6] = "Try to land your teleport curve onto the blue teleport zone. When the zone turns green, release the touchpad!";
        stepList[7] = "HURRAY!";
    }
    void SetToZero() {
        stepNumber = 0;
        UpdateText();
        Invoke("SetToOne", 3f);
    }

    void SetToOne() {
        stepNumber = 1;
        UpdateText();
    }

    void UpdateText() {
        //messageDisplay.text = stepList[stepNumber];
        Debug.Log(stepList[stepNumber]);
    }
    //
    public void CurveShown() {
        if (!teleportComplete) {
            stepNumber = 2;
            UpdateText();
        }
        else if (!firstZoneComplete) {
            stepNumber = 6;
            UpdateText();
        }

    }

    public void TeleportTrigger() {
        if (!teleportComplete) {
            stepNumber = 3;
            UpdateText();
            teleportComplete = true;
            Invoke("ZoneStep1", 2f);
        }
        else if(!firstZoneComplete) {
            if (true) { //will check if player teleported to teleport zone
                stepNumber = 7;
                UpdateText();
            }

        }


    }
    public void ZoneStep1() {
        stepNumber = 4;
        UpdateText();
        Invoke("ZoneStep2", 8f);
    } 
    public void ZoneStep2() {
        stepNumber = 5;
        UpdateText();
    }
    public void RevealAllZones() {
        for(int i = 0; i < ChallengeZones.Length; i++) {
            ChallengeZones[i].SetActive(true);
        }
    }
}

