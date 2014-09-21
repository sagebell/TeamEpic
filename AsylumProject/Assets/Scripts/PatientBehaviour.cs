using UnityEngine;
using System.Collections;

public class PatientBehaviour : MonoBehaviour {

	public Transform position1 = null;
	public Transform position2 = null;
	public Transform EventPosition = null;
	public Transform[] resolutionWaypoints;

	public int currentWaypoint = 0;
	public bool faceWaypoint = false;

	public float dist1 = 0.0f;
	public float dist2 = 0.0f;
	public float distEvent = 0.0f;

	public bool triggerEvent = false;
	public bool walkTo = true;
	public bool audioTriggered = false;
	public bool triggerFlipped = false;
	public bool resolveEvent = false;

	public DATACORE dataCore = null;

	public OrderlyBehavoiur orderly = null;
	public NurseBehaviour nurse = null;

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
				
				if(currentWaypoint < resolutionWaypoints.Length) {
					//this.transform.LookAt(waypoints[currentWaypoint].position);
					transform.position = Vector3.MoveTowards (transform.position, resolutionWaypoints[currentWaypoint].position, 2.0f * Time.deltaTime);
				}
				if(currentWaypoint == 1) {
					nurse.SendMessage("ResolveFreakOut");
					orderly.SendMessage("ResolveFreakOut");
				}
			}
		}
		else if(triggerEvent == false && audioTriggered == false) {
			dist1 = (this.transform.position - position1.position).magnitude;
			dist2 = (this.transform.position - position2.position).magnitude;

			if (dist1 < 0.1f) {
				walkTo = true;
				transform.LookAt (position2.position);
			}
			if (dist2 < 0.1f) {
				walkTo = false;
				transform.LookAt (position1.position);
			}

			if (walkTo) transform.position = Vector3.MoveTowards (transform.position, position2.position, 2.0f * Time.deltaTime);
			else transform.position = Vector3.MoveTowards (transform.position, position1.position, 2.0f * Time.deltaTime);
		} 
		else if (audioTriggered == true && triggerEvent == true) {
			// Trigger FreakOutResolve on patient, nurse, and orderly
			if(audio.isPlaying == false) {
				Debug.Log ("AUDIO FINISHED PLAYING");
				ResolveFreakOut();
			} 
		}
		else {
			distEvent = (this.transform.position - EventPosition.position).magnitude;

			if(distEvent < 0.1f) {
				if(triggerFlipped == false) {
					audio.Play ();
					transform.LookAt (dataCore.thePlayer.transform.position);
					audioTriggered = true;
					nurse.SendMessage("TriggerFreakOut");
					orderly.SendMessage("TriggerFreakOut");
					triggerFlipped = true;
					Debug.Log ("PATIENT FREAKOUT POSITION REACHED. LOOKING AT PLAYER AND PLAYING AUDIO");
				}
				//audio.Play ();
				//transform.LookAt (dataCore.thePlayer.transform.position);
				//audioTriggered = true;
				//nurse.SendMessage("TriggerFreakOut");
				//orderly.SendMessage("TriggerFreakOut");
				//triggerEvent = false;
				//Debug.Log ("PATIENT FREAKOUT POSITION REACHED. LOOKING AT PLAYER AND PLAYING AUDIO");
			}
			else{
				transform.LookAt (EventPosition.position);
				transform.position = Vector3.MoveTowards (transform.position, EventPosition.position, 2.0f * Time.deltaTime);
			}
		}


	}

	public void TriggerFreakOut() {
		triggerEvent = true;
		Debug.Log ("PATIENT TRIGGERED");
	}

	public void ResolveFreakOut() {
		resolveEvent = true;
		Debug.Log ("PATIENT RESOLVING FREAKOUT");
	}
}
