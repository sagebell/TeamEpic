using UnityEngine;
using System.Collections;

public class NurseBehaviour : MonoBehaviour {

	public bool triggerEvent = false;
	public Transform EventPosition = null;

	public PatientBehaviour Patient;
	public OrderlyBehavoiur orderly;

	public float dist = 0.0f;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		var offset = transform.position - EventPosition.position;
		dist = offset.magnitude;

		if (triggerEvent && dist > 1.75f)
			transform.position = Vector3.MoveTowards (transform.position, EventPosition.position, 2.0f * Time.deltaTime);

		if (dist < 1.75f) {
			Transform temp = Patient.transform;
			//temp.position.y = transform.position.y;
			//transform.LookAt (temp.position);
			transform.LookAt (Patient.transform.position);
			//Quaternion newRotation = Quaternion.LookRotation (Patient.transform.position - transform.position, Vector3.up);
			//newRotation.y = 0.0f;
			//transform.rotation = Quaternion.Slerp (transform.rotation, newRotation, 0.5f * Time.deltaTime);
		}
	}

	void OnTriggerEnter(Collider theCollider) {
		if (theCollider.gameObject.layer == 9) {
			// TRIGGER FREAKOUT EVENT
			Debug.Log ("FREAKING OUT");
			Patient.SendMessage("TriggerFreakOut");
			orderly.SendMessage("TriggerFreakOut");
			CapsuleCollider [] colls = this.GetComponents<CapsuleCollider>();
			if(colls != null) Debug.Log ("CapsuleColliders found");

			for (var n = 0; n < colls.Length; n++)
			{
				if (colls[n].isTrigger == true)
					colls[n].enabled = false;
			}

		}
	}

	void TriggerFreakOut() {
		triggerEvent = true;
		//this.SendMessage("ToggleCollider");
		this.gameObject.GetComponent<RemoveColliderBehaviour>().ToggleCollider ();
	}
}
