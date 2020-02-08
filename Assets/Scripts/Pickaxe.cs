
/************************************************************************
 * Written by Nicholas Mirchandani in February 2020                     *
 *                                                                      *
 * The purpose of Pickaxe.cs is to efficiently process when the pickaxe *
 * attempts to break a breakable object and call the appropriate break  *
 * function.  Incredibly simple and easy to understand, but necessary.  *
 *                                                                      *
 * Updated by Nicholas Mirchandani on 2/8/20                            *
 ************************************************************************/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Pickaxe : MonoBehaviour
{
    //Utilizing OnTriggerEnter to detect when entering a breakable object
    private void OnTriggerEnter(Collider other) {
        if(other.GetComponent<BreakDown>() != null) {
            other.GetComponent<BreakDown>().Breakdown();
        }
    }
}
