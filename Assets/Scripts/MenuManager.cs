
/****************************************************************************
 * Written by Sean Robbins in January 2020                                  *
 *                                                                          *
 * The Purpose of the Menu Manager is to controll and  manage all the       *  
 * processes associated with the ingame menu. Cannot use the gamemanager    *
 * script to controll these processes as because of how VRTK procedurally   *
 * generates the headset follower functions there needs to be a different   *
 * menu for each scene                                                      *
 *                                                                          *
 * Editted by sean Robbins 1/27/2020                                        *
 ****************************************************************************/
//Note: At the Moment is only applied in the cocpit scene on the controllers, Once testing is complete
//can set it up in all scenes.
//Update: Bug where when leaving and entering Photon Room Menu Stops working, Specifically the buttons become noninteractive
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using Photon.Pun;
using Photon.Realtime;
using UnityEngine.UI;
using VRTK;

public class MenuManager : MonoBehaviourPunCallbacks
{
    #region private fields

    [SerializeField]
    private Canvas Menu;

    [SerializeField]
    private Text PlayerList;

    private List<Player> Plist;

    [SerializeField]
    private GameObject Lcontroller;

    [SerializeField]
    private GameObject Rcontroller;

    [SerializeField] private GameManager gameManager;
    #endregion

    #region UnityMethods

    /// <summary>
    /// On the load of the scene makes sure that the menu is disabled, and is not
    /// in the players view
    /// </summary>
    public void Start() {
        Debug.Log("Awake called by Menu Manager");
        Menu.enabled = false;
        
        PrintPlayers();
    }

    #endregion


    #region VRTK Methods

    /// <summary>
    /// When the Start menu button is pressed this method is called by the Unity Events component on the controller
    /// that is pressed. When called it enables or disables the Menu, and teleport features as well as switching the
    /// pointer renderer on the controller from the bezier pointer to the straight pointer
    /// </summary>
    public void OpenCloseMenu() {
        gameManager = FindObjectOfType<GameManager>();
        Menu.enabled = !Menu.enabled;
        if(Menu.enabled) {

            Menu.GetComponent<VRTK_UICanvas>().enabled = true;
            //Enable the straight Pointer Renderer attached to the controller
            Lcontroller.GetComponent<VRTK_StraightPointerRenderer>().enabled = true;
            Rcontroller.GetComponent<VRTK_StraightPointerRenderer>().enabled = true;

            //set the pointer rendered in the VRTK_Pointer Script to the straight pointer renderer
            Lcontroller.GetComponent<VRTK_Pointer>().pointerRenderer = Lcontroller.GetComponent<VRTK_StraightPointerRenderer>();
            Rcontroller.GetComponent<VRTK_Pointer>().pointerRenderer = Rcontroller.GetComponent<VRTK_StraightPointerRenderer>();

            //disable the bezier pointer renderer
            Lcontroller.GetComponent<VRTK_BezierPointerRenderer>().enabled = false;
            Rcontroller.GetComponent<VRTK_BezierPointerRenderer>().enabled = false;

            //disable teleport
            Lcontroller.GetComponent<VRTK_Pointer>().enableTeleport = false;
            Rcontroller.GetComponent<VRTK_Pointer>().enableTeleport = false;

            //Enable the UI pointer script when in the menu
            Lcontroller.GetComponent<VRTK_UIPointer>().enabled = true;
            Rcontroller.GetComponent<VRTK_UIPointer>().enabled = true;
        }
        else {
            //enable the bezier pointer renderer
            Lcontroller.GetComponent<VRTK_BezierPointerRenderer>().enabled = true;
            Rcontroller.GetComponent<VRTK_BezierPointerRenderer>().enabled = true;

            //set the pointer rendered in the VRTK_Pointer Script to the Bezier pointer renderer
            Lcontroller.GetComponent<VRTK_Pointer>().pointerRenderer = Lcontroller.GetComponent<VRTK_BezierPointerRenderer>();
            Rcontroller.GetComponent<VRTK_Pointer>().pointerRenderer = Rcontroller.GetComponent<VRTK_BezierPointerRenderer>();

            //Disable the straight Pointer Renderer attached to the controller
            Lcontroller.GetComponent<VRTK_StraightPointerRenderer>().enabled = false;
            Rcontroller.GetComponent<VRTK_StraightPointerRenderer>().enabled = false;

            //disable the UI Pointer script when not in the menu
            Lcontroller.GetComponent<VRTK_UIPointer>().enabled = false;
            Rcontroller.GetComponent<VRTK_UIPointer>().enabled = false;

            //enable Teleportif not in cockpit
            if (FindObjectOfType<CockpitManager>() != null) {
                Lcontroller.GetComponent<VRTK_Pointer>().enableTeleport = true;
                Rcontroller.GetComponent<VRTK_Pointer>().enableTeleport = true;
            }
        }
        
    }

    

    #endregion

    #region GameManagerMethodCalls

    //calls the GameManagerQuit Method to exit the Game
    public void Quit() {
        gameManager.QuitGame();
    }

    //leaves the Photon Room and returns to menu
    public void QuitToMenu() {
        gameManager.LeaveRoom();
    }

    #endregion


    #region PUNCallbacks

    /// <summary>
    /// Method for displaying all the players in the photon room in the menu.
    /// </summary>
    private void PrintPlayers()
    {
        PlayerList.text = "Players: ";

        foreach (Player p in PhotonNetwork.PlayerList)
        {
            PlayerList.text += "\n" + p.NickName;
        }



    }

    /// <summary>
    /// This Method is called when a player enters the room and calls the PrintPlayers Method to update the playerList
    /// in the ingame Menu
    /// </summary>
    public override void OnPlayerEnteredRoom(Player newPlayer)
    {
        base.OnPlayerEnteredRoom(newPlayer);
        
        PrintPlayers();
    }

    /// <summary>
    /// This Method is called when a player leaves the room and calls the PrintPlayers Method to update the playerList
    /// in the ingame Menu
    /// </summary>
    public override void OnPlayerLeftRoom(Player otherPlayer)
    {
        base.OnPlayerLeftRoom(otherPlayer);
        
        PrintPlayers();
    }

    #endregion
}
