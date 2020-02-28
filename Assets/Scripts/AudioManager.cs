/************************************************************************
 * Cowritten by Ryan Millares, Nick Mirchandani, and Dan Haub 2/2020    *
 *                                                                      *
 * The purpose of AudioManager.cs is to provide functionality for the   *
 * management of audio clips and accompanying subtitle texts.           *
 *                                                                      *
 ************************************************************************/
using System;
using UnityEngine;
using UnityEngine.UI;

public class AudioManager : MonoBehaviour {
    #region variables
    public Text subtitleDisplay;
    public Audiofile[] audioFiles;

    private AudioSource source;
    private Audiofile currentFile;
    private float timestamp = 0;
    private int subtitleIndex = 0;
    private bool subtitleSwitched = true;
    #endregion

    #region structs
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
    #endregion

    #region methods
    // Start is called before the first frame update
    void Awake(){
        source = GetComponent<AudioSource>();
    }

    // Ensures subtitles are updated each fame
    void Update() {
        if (source.isPlaying) {
            timestamp += Time.deltaTime;
            UpdateSubtitle(currentFile.subtitleList);
        }
    }

    //Plays an audio file by name and displays its subtitles
    public void PlayFile(string name) {
        if(source.isPlaying) {
            source.Stop();
        }

        //resets the values used for subtitles
        timestamp = 0;
        subtitleIndex = 0;
        subtitleSwitched = true;
        subtitleDisplay.text = "";

        //searches for the next subtitle by name
        currentFile = Array.Find<Audiofile>(audioFiles, x => x.name == name);
        source.clip = currentFile.clip;
        source.Play();
        UpdateSubtitle(currentFile.subtitleList);

    }

    //Updates the subtitle being displayed
    private void UpdateSubtitle(Subtitle[] subtitles) {
        //ensures there are more subtitles remaining
        if(subtitleIndex < subtitles.Length) {
            //checks if the current time stamp is within the range for the current subtitle index
            if (subtitles[subtitleIndex].startTime <= timestamp && timestamp <= subtitles[subtitleIndex].endTime) {
                subtitleDisplay.text = subtitles[subtitleIndex].line;
                subtitleSwitched = false;
            }
            //increments subtitle index in between subtitles only once
            else{
                subtitleDisplay.text = "";
                if(subtitleIndex < subtitles.Length && !subtitleSwitched) {
                    ++subtitleIndex;
                    subtitleSwitched = true;
                }
            }
        }
    }
    #endregion
}