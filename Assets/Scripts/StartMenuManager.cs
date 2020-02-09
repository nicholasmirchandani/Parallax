/************************************************************************
 * Written by Sean Robbins in January 2020                              *
 *                                                                      *
 *                                                                      *
 * The Purpose of the Start Menu Manager Script is to control the       *
 * functionality of the interactions in the start menu and to load the  *
 * game in offline play                                                 *
 *                                                                      *
 ************************************************************************/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StartMenuManager : MonoBehaviour
{
    /// <summary>
    /// This method is called by the Play Offline Button and starts the game by loading in the Cockpit scene
    /// </summary>
    public void startOffline()
    {
        GameManager.Instance.ReturnToCockpit();
    }
}
