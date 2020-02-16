using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MassAttach : MonoBehaviour
{
    // Start is called before the first frame update
    public GameObject scale;
    public GameObject scaleSurface;
    public float mass;
    void Start()
    {
        mass = gameObject.GetComponent<Rigidbody>().mass;
    }

    // Update is called once per frame

    private void OnCollisionStay(Collision collision)
    {
        GameObject temp = collision.gameObject;
        if ((!temp.Equals(scale)) && (!temp.Equals(scaleSurface)))
        {
            if (temp.GetComponent<MassAttach>() == null)
            {
                temp.AddComponent<MassAttach>();
                temp.GetComponent<MassAttach>().setScale(scale, scaleSurface);
            }
        }
    }
    private void OnCollisionExit(Collision collision)
    {
        GameObject temp = collision.gameObject;
        if ((!temp.Equals(scale)) && (!temp.Equals(scaleSurface)))
        {
            MassAttach tma = temp.GetComponent<MassAttach>();
            if (tma != null)
            {
                scaleSurface.GetComponent<MeasureMass>().Pop(temp);
                Destroy(tma);
            }
        }
    }

    public void setScale(GameObject scale, GameObject scaleSurface)
    {
        this.scale = scale;
        this.scaleSurface = scaleSurface;
        scaleSurface.GetComponent<MeasureMass>().Store(gameObject);
    }

}
