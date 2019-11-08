using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VerticalSpring : MonoBehaviour
{
    public float targetYPos; // Where the spring is at rest
    public float maxYPos; // The maxium height of the object attached to the spring
    public float minYPos; // The minimum height of the object attached to the spring
    public float springConstant; // The strength of the spring ('k' in equations)
    public float damper; // The strength of the dampening applied to the spring

    private Vector3 newPos;
    private Rigidbody thisRigidBody;

    private void Start() {
        thisRigidBody = this.gameObject.GetComponent<Rigidbody>();
    }

    // Update runs once per frame, makes sure the object on the spring doesn't move laterally or beyond the bounds of the spring
    private void Update() {
        //Allows us to only set the location of the game object when necessary
        bool resetPosXZ = false;
        bool resetPosY = false;

        //Stores the current Y position and the new Y position to be calculated, by default they are the same
        float currentYPos = this.gameObject.transform.localPosition.y;
        float newYPos = currentYPos;

        //Checks to see if the object has moved laterally
        if(this.gameObject.transform.localPosition.x != 0F || this.gameObject.transform.localPosition.z != 0F) {
           resetPosXZ = true;
        }

        //Checks to see if the object has moved beyond the bounds of the spring
        if(currentYPos < minYPos) {
            resetPosY = true;
            newYPos = minYPos;
        } else if (currentYPos > maxYPos) {
            resetPosY = true;
            newYPos = maxYPos;
        }

        //Resets position of object if necessary
        if(resetPosY || resetPosXZ) {
            this.gameObject.transform.localPosition = new Vector3(0F, newYPos, 0F);
        }
    }
    
    // Fixed Update is called once per physics frame, calculates force in eq: F= (-k * x) - (b * v)
    // Note: in equation, k is spring constant, F is the force, x is the distance between
    // the current Y position and the target Y position, and v is the velocity
    private void FixedUpdate() {
        float scaleMultiplier = this.gameObject.transform.lossyScale.y; // Takes Y scale of parent into account when calculating physics

        float currentYPos = this.gameObject.transform.localPosition.y; 

        float currentVelocity = 0;

        //Calculates the magnitude and direction of the velocity of the object on the spring
        if(this.gameObject.GetComponent<Rigidbody>().velocity.normalized == this.gameObject.transform.up) {
            currentVelocity = this.gameObject.GetComponent<Rigidbody>().velocity.magnitude;
        } else if(this.gameObject.GetComponent<Rigidbody>().velocity.normalized == -this.gameObject.transform.up) {
            currentVelocity = -this.gameObject.GetComponent<Rigidbody>().velocity.magnitude;
        }

        //Calculates distance to the target position
        float positionDifference = currentYPos - targetYPos;

        //Calculates force necessary to model the spring
        float newForceStrength = (-(springConstant) * positionDifference) - (damper * currentVelocity);

        //Applies the force to the game object
        this.gameObject.GetComponent<Rigidbody>().AddForce(newForceStrength * this.gameObject.transform.up * scaleMultiplier);
    }
    
}
