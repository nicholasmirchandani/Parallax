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

    // Update runs once per frame,
    private void Update() {
        bool resetPosXZ = false;
        bool resetPosY = false;

        float oldYPos = this.gameObject.transform.localPosition.y;
        float newYPos = oldYPos;

        if(this.gameObject.transform.localPosition.x != 0F || this.gameObject.transform.localPosition.z != 0F) {
            resetPosXZ = true;
        }

        if(oldYPos < minYPos) {
            resetPosY = true;
            newYPos = minYPos;
        } else if (oldYPos > maxYPos) {
            resetPosY = true;
            newYPos = maxYPos;
        }

        if(resetPosY || resetPosXZ) {
            this.gameObject.transform.localPosition = new Vector3(0F, newYPos, 0F);
        }
    }

    // Fixed Update is called once per physics frame, calculates force in eq: F= (-k * x) - (b * v)
    // Note: in equation, k is spring constant, F is the force, x is the distance between
    // the current Y position and the target Y position, and v is the velocity
    private void FixedUpdate() {
        float currentYPos = this.gameObject.transform.localPosition.y;
        //float currentYVelocity = this.gameObject.GetComponent<Rigidbody>().velocity;

        float positionDifference = currentYPos - targetYPos;
        float newForceStrength = -(springConstant) * positionDifference;

        Debug.Log("Force Applied: " + newForceStrength.ToString() + ", Position Difference: " + positionDifference.ToString());
        this.gameObject.GetComponent<Rigidbody>().AddForce(new Vector3(0F, newForceStrength, 0F));
    }
}
