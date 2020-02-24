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
    private AudioSource sound;
    private float timestamp = 0;
    private bool lineAssigned = false;
    private int theIndex;
    private int currentindex = 0;

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
    void Awake(){
        sound = GetComponent<AudioSource>();
        
    }

    // Update is called once per frame
    void Update() {
        //DEBUG
        if(Input.GetKeyDown(KeyCode.J)) {
            PlayFile(0);
        }

        if (sound.isPlaying) {
            timestamp += Time.deltaTime;
            UpdateText(sound, audioFiles[theIndex].subtitleList);
            
            if (!sound.isPlaying) {
                timestamp = 0;
                currentindex = 0;
                lineAssigned = false;
            }
        }
    }

    public void PlayFile(int index) {
        subtitleDisplay.text = "";
        theIndex = index;
        Debug.Log(audioFiles[index].name);
        for(int i = 0; i < audioFiles.Length; i++) {
            Debug.Log(audioFiles[i].name);
        }
        Audiofile soundFile = audioFiles[index];
        Debug.Log(soundFile.clip.name);
        //Debug.Log(sound);

        

        sound.PlayOneShot(soundFile.clip);
        UpdateText(sound, audioFiles[index].subtitleList);
    }

    public void UpdateText(AudioSource AS, Subtitle[] texts) {
        
        //bool isDone = false;
        //float timestamp = 0;
        //int currentindex = 0;
        //while (AS.isPlaying) {
        if((currentindex != texts.Length)) {
        

         


               
                if (timestamp >= texts[currentindex].startTime && !lineAssigned) {
                    Debug.Log("Line set!");
                    Debug.Log(texts[currentindex].startTime);
                    subtitleDisplay.text = texts[currentindex].line;
                    lineAssigned = true;    

                }
                else if (timestamp >= texts[currentindex].endTime && lineAssigned) {
                    Debug.Log("Line Removed!");
                    Debug.Log(texts[currentindex].endTime);

                    subtitleDisplay.text = "";
                    lineAssigned = false;
                    if(currentindex == texts.Length) {
                        //isDone = true;
                    }
                    else {
                        ++currentindex;

                    }

                }
           }
       
        //}

            

       
        
    }




}
