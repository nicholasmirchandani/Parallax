using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using Photon.Pun;
using Photon.Realtime;
using UnityEngine.UI;

public class MenuManager : MonoBehaviourPunCallbacks
{
    #region Menu Managment

    [SerializeField]
    private Canvas Menu;

    [SerializeField]
    private Text PlayerList;


    public void Start()
    {
        Menu.enabled = false;
    }

    public void OpenMenu()
    {
        Menu.enabled = !Menu.enabled;
    }

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.M))
        {
            OpenMenu();
        }

        PrintPlayers();
    }

    private void PrintPlayers()
    {
        PlayerList.text = "Players: ";

        foreach (Player p in PhotonNetwork.PlayerList)
        {
            PlayerList.text += "\n" + p.NickName;
        }
    }

    #endregion
}
