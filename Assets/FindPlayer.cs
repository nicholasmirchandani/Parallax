using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FindPlayer : MonoBehaviour
{
    public static FindPlayer instance;
    private void Awake()
    {
        instance = this;
    }
}
