using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using VRTK.GrabAttachMechanics;

public class DrawerManager : MonoBehaviour
{
    #region Private Variables
    
    

    //fields to store the transform data
    private float startX;
    private float startY;
    private float startZ;

    //fields to store the difference in transform data
    private float difX;
    private float difY;
    private float difZ;

    private float changeX;
    private float changeY;
    private float changeZ;

    private int count;

    #endregion


    #region Public Variables

    //The maximum Distance the Drawer can be moved
    public float maxDis;
    [Tooltip("The Speed at which the object returns to start, is the numebr of frames it will take to get there not the speed the object will be moving")]
    public float returnSpeed;
    

    #endregion
    // Start is called before the first frame update
    void Start()
    {
        startX = this.gameObject.GetComponent<Transform>().position.x;
        startY = this.gameObject.GetComponent<Transform>().position.y;
        startZ = this.gameObject.GetComponent<Transform>().position.z;
        count = -1;
    }


    void Update()
    {
        if(count>=0)
        {
            returnStart(changeX, changeY, changeZ);
        }
    }

    // Update is called once per frame
    public void resetPos()
    {
        difX =this.gameObject.GetComponent<Transform>().position.x;
        difY =this.gameObject.GetComponent<Transform>().position.y;
        difZ =this.gameObject.GetComponent<Transform>().position.z;

        changeX = startX - difX;
        changeY = startY - difY;
        changeZ = startZ - difZ;
        count = 0;
        returnStart(changeX, changeY, changeZ);
    }

    void returnStart(float chX, float chY, float chZ)
    {
        if(count == returnSpeed)
        {
            this.gameObject.GetComponent<Transform>().position = new Vector3(startX, startY, startZ);
            count = -1;
            changeX = 0;
            changeY = 0;
            changeZ = 0;
            return;
        }
        difX = difX + (chX / returnSpeed);
        difY = difY + (chY / returnSpeed);
        difZ = difZ + (chZ / returnSpeed);
        this.gameObject.GetComponent<Transform>().position = new Vector3(difX,difY ,difZ);
        count++;
    }

    

    /*void LateUpdate()
    {
        this.gameObject.GetComponent<Transform>().position = new Vector3(difX - .2f, startY, difZ - .2f);
    }*/


}
