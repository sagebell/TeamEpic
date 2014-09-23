using UnityEngine;
using System.Collections;

public class NurseBehaviour : MonoBehaviour {

	public bool triggerEvent = false;

	public Transform EventPosition = null;
	public Transform[] resolutionWaypoints;

	public int currentWaypoint = 0;
	public bool faceWaypoint = false;

	public PatientBehaviour patient;
	public OrderlyBehavoiur orderly;

	public float dist = 0.0f;

	public DATACORE dataCore = null;
	public bool resolveEvent = false;

	// Use this for initialization
	void Start () {
		if (dataCore == null) {
			dataCore = GameObject.FindGameObjectWithTag("GameLogic").GetComponent<DATACORE>();
		}
	}
	
	// Update is called once per frame
	void Update () {

		if (resolveEvent == true) {
			if(currentWaypoint >= resolutionWaypoints.Length) {
				// Do nothing
				this.gameObject.SetActive(false);
			} 
			else {
				if(faceWaypoint == false) {
					transform.LookAt(resolutionWaypoints[currentWaypoint]);
					faceWaypoint = true;
				}
				
				float distToCurrentPosition = (resolutionWaypoints[currentWaypoint].position - transform.position).magnitude;
				
				if(distToCurrentPosition < 0.5f) {
					++currentWaypoint;
					faceWaypoint = false;
					Debug.Log ("Changing Way Point " + currentWaypoint);
				}

				if(currentWaypoint == 5) {
					// Turn the player's movement back on
					dataCore.thePlayer.SendMessage("ToggleMovement");
					// Turn the medicine counter collider back on
					this.gameObject.GetComponent<RemoveColliderBehaviour>().ToggleCollider ();
				}

				
				if(currentWaypoint < resolutionWaypoints.Length) {
					//this.transform.LookAt(waypoints[currentWaypoint].position);
					transform.position = Vector3.MoveTowards (transform.position, resolutionWaypoints[currentWaypoint].position, 2.0f * Time.deltaTime);
				}
			}
		} else {
			//var offset = transform.position - EventPosition.position;
			//dist = offset.magnitude;

			dist = (transform.position - EventPosition.position).magnitude;

			if (triggerEvent && dist > 1.0f)
				transform.position = Vector3.MoveTowards (transform.position, EventPosition.position, 2.0f * Time.deltaTime);

			if (dist < 1.0f) {
				//Transform temp = patient.transform;
				//temp.position.y = transform.position.y;
				//transform.LookAt (temp.position);
				transform.LookAt (patient.transform.position);
				//Quaternion newRotation = Quaternion.LookRotation (Patient.transform.position - transform.position, Vector3.up);
				//newRotation.y = 0.0f;
				//transform.rotation = Quaternion.Slerp (transform.rotation, newRotation, 0.5f * Time.deltaTime);
			}
		}
	}

	void OnTriggerEnter(Collider theCollider) {
		if (theCollider.gameObject.layer == 9) {
			// TRIGGER FREAKOUT EVENT
			Debug.Log ("FREAKING OUT");
			patient.SendMessage("TriggerFreakOut");
			//orderly.SendMessage("TriggerFreakOut");
			//TriggerFreakOut();
			//dataCore.thePlayer.SendMessage("ToggleFreezePlayer");
			dataCore.thePlayer.SendMessage("ToggleMovement");
			CapsuleCollider [] colls = this.GetComponents<CapsuleCollider>();
            if (colls != null) {
                Debug.Log("CapsuleColliders found");

                //for (var n = 0; n < colls.Length; n++)
                //{
                  //  if (colls[n].isTrigger == true)
                        colls[1].enabled = false;
                //}
            }

		}
	}

	void TriggerFreakOut() {
		triggerEvent = true;
		this.gameObject.GetComponent<RemoveColliderBehaviour>().ToggleCollider ();
	}

	void ResolveFreakOut() {
		resolveEvent = true;
		Debug.Log ("NURSE RESOLVING FREAKOUT");
	}
}
