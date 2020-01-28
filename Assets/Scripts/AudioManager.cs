/************************************************************************
 * Cowritten by Ryan Millares on January 2020                           *
 *                                                                      *
 * The purpose of AudioManager.cs is to provide functionality for the   *
 * management of audio clips and accompanying subtitle texts, as well   *
 * as making sure     *
 *                                                                      *
 ************************************************************************/
using System;
using UnityEngine;
using UnityEngine.UI;

public class AudioManager : MonoBehaviour {
    public Text subtitleDisplay;
    bool isPlay = false;
    public Audiofile[] audioFiles;
    [System.Serializable] public struct Subtitle {
        public string line;
        public float startTime;
        public float endTime;
    }

    [System.Serializable] public struct Audiofile {
        public string name;
        public AudioClip clip;
        public Subtitle[] subtitleList;

    }
  

    // Start is called before the first frame update
    void Start(){
        
    }

    // Update is called once per frame
    void Update() {
        
    }
    public void PlayFile(string name) {
        AudioSource sound = new AudioSource();
        sound.clip = Array.Find(audioFiles, a => a.clip.name.Equals(name)).clip;
        sound.Play();
        UpdateText(sound, Array.Find(audioFiles, a => a.clip.name.Equals(name)).subtitleList);
    }
    public void UpdateText(AudioSource AS, Subtitle[] texts) {
        bool lineAssigned = false;
        float timestamp;
        int currentindex = 0;
        while (AS.isPlaying) {
            while(currentindex != texts.Length) {
                timestamp = AS.time;
                if (timestamp >= texts[currentindex].startTime && !lineAssigned) {

                    subtitleDisplay.text = texts[currentindex].line;
                    lineAssigned = true;

                } else if (timestamp >= texts[currentindex].endTime && lineAssigned) {
                    subtitleDisplay.text = "";
                    lineAssigned = false;   
                    ++currentindex;
                }
            }
            

        }
        
    } 


}
