using UnityEngine;
using System.Collections;

public class PatientBehaviour : MonoBehaviour {

	public Transform position1 = null;
	public Transform position2 = null;
	public Transform EventPosition = null;

	public float dist1 = 0.0f;
	public float dist2 = 0.0f;

	public bool triggerEvent = false;
	public bool walkTo = true;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		dist1 = (this.transform.position - position1.position).magnitude;
		dist2 = (this.transform.position - position2.position).magnitude;

		if (dist1 < 0.1f) {
			walkTo = true;
			transform.LookAt (position1.position);
		}
		if (dist2 < 0.1f) {
			walkTo = false;
			transform.LookAt (position2.position);
		}

		if (walkTo) transform.position = Vector3.MoveTowards (transform.position, position2.position, 2.0f * Time.deltaTime);
		else transform.position = Vector3.MoveTowards (transform.position, position1.position, 2.0f * Time.deltaTime);
	}

	public void TriggerFreakOut() {
		triggerEvent = true;
		Debug.Log ("PATIENT TRIGGERED");
	}
}
