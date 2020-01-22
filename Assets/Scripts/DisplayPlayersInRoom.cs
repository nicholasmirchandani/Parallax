using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

using Photon.Pun;
using Photon.Realtime;
using UnityEngine.UI;

public class DisplayPlayersInRoom : MonoBehaviourPunCallbacks
{

    #region Public Fields

    public Text PlayersList;

    #endregion
    // Start is called before the first frame update
    void Start() {
        PlayersList.text = "Players: ";
        foreach(Player p in PhotonNetwork.PlayerList)
        {
            PlayersList.text += "\n" + p.NickName;
        }
        
    }

    // Update is called once per frame
    void Update() {
        
    }
}
