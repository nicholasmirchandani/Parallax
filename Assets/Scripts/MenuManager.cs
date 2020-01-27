
/****************************************************************************
 * Written by Sean Robbins in January 2020                                  *
 *                                                                          *
 * The Purpose of the Menu Manager is to controll and  manage all the       *  
 * processes associated with the ingame menu. Cannot use the gamemanager    *
 * script to controll these processes as because of how VRTK procedurally   *
 * generates the headset follower functions there needs to be a different   *
 * menu for each scene                                                      *
 *                                                                          *
 ****************************************************************************/
//Note: At the Moment is only applied in the cocpit scene on the controllers, Once testing is complete
//can set it up in all scenes.
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using Photon.Pun;
using Photon.Realtime;
using UnityEngine.UI;
using VRTK;

public class MenuManager : MonoBehaviourPunCallbacks
{
    #region Menu Managment

    [SerializeField]
    private Canvas Menu;

    [SerializeField]
    private Text PlayerList;

    [SerializeField]
    private GameObject Lcontroller;

    [SerializeField]
    private GameObject Rcontroller;

    /// <summary>
    /// On the load of the scene makes sure that the menu is disabled, and is not
    /// in the players view
    /// </summary>
    public void Start() {
        Menu.enabled = false;
    }

    /// <summary>
    /// When the Start menu button is pressed this method is called by the Unity Events component on the controller
    /// that is pressed. When called it enables or disables the Menu, and teleport features as well as switching the
    /// pointer renderer on the controller from the bezier pointer to the straight pointer
    /// </summary>
    public void OpenCloseMenu() {
        Menu.enabled = !Menu.enabled;
        if(Menu.enabled) {
            Lcontroller.GetComponent<VRTK_Pointer>().pointerRenderer = Lcontroller.GetComponent<VRTK_StraightPointerRenderer>();
            Rcontroller.GetComponent<VRTK_Pointer>().pointerRenderer = Rcontroller.GetComponent<VRTK_StraightPointerRenderer>();
            Lcontroller.GetComponent<VRTK_Pointer>().enableTeleport = false;
            Rcontroller.GetComponent<VRTK_Pointer>().enableTeleport = false;
        }
        else {
            Lcontroller.GetComponent<VRTK_Pointer>().pointerRenderer = Lcontroller.GetComponent<VRTK_BezierPointerRenderer>();
            Rcontroller.GetComponent<VRTK_Pointer>().pointerRenderer = Rcontroller.GetComponent<VRTK_BezierPointerRenderer>();
            Lcontroller.GetComponent<VRTK_Pointer>().enableTeleport = true;
            Rcontroller.GetComponent<VRTK_Pointer>().enableTeleport = true;
        }
        
    }

    /// <summary>
    /// Debug option that should be removed in the final game.
    /// opens and closes the menu on the m key press
    /// </summary>
    private void Update() {
        if (Input.GetKeyDown(KeyCode.M)) {
            OpenCloseMenu();
        }

        PrintPlayers();
    }

    /// <summary>
    /// Method for displaying all the players in the photon room in the menu.
    /// </summary>
    private void PrintPlayers() {
        PlayerList.text = "Players: ";

        foreach (Player p in PhotonNetwork.PlayerList) {
            PlayerList.text += "\n" + p.NickName;
        }
    }

    #endregion
}
