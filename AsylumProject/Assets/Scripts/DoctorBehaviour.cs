using UnityEngine;
using System.Collections;

public class DoctorBehaviour : MonoBehaviour {

	public AudioSource [] audioSources;

	public bool audioOneTriggered = false;
	public bool audioTwoTriggered = false;
	public bool faceWaypoint = false;

	public Transform[] waypoints;
	public int currentWaypoint = 0;

	public DATACORE dataCore = null;

	public GameObject nurse = null;
	
	// Use this for initialization
	void Start () {
		if (dataCore == null) {
			dataCore = GameObject.FindGameObjectWithTag("GameLogic").GetComponent<DATACORE>();
		}

		Debug.Log ("Number of AudioSources " + audioSources.Length );
	}
	
	// Update is called once per frame
	void Update () {
		if (audioOneTriggered == true) {
			if(audioSources[0].isPlaying == true) {
				// Look at player
				this.transform.LookAt (dataCore.thePlayer.transform.position);
				currentWaypoint = 0;
			} else {
				nurse.SendMessage ("DoMovement");
				//if(faceWaypoint == false) {
				//	transform.LookAt(waypoints[currentWaypoint]);
				//	faceWaypoint = true;
				//}
				// Move to nurse position
				if(currentWaypoint >= waypoints.Length) {
					audioOneTriggered = false;
					audioTwoTriggered = true;
					PlayAudioTwo();
					//faceWaypoint = false;
					//currentWaypoint = 0;
				} 
				else {
					if(faceWaypoint == false) {
						transform.LookAt(waypoints[currentWaypoint]);
						faceWaypoint = true;
					}

					float distToCurrentPosition = (waypoints[currentWaypoint].position - transform.position).magnitude;

					if(distToCurrentPosition < 0.5f) {
						++currentWaypoint;
						faceWaypoint = false;
						Debug.Log ("Changing Way Point " + currentWaypoint);
					}
					
					if(currentWaypoint < waypoints.Length) {
						//this.transform.LookAt(waypoints[currentWaypoint].position);
						transform.position = Vector3.MoveTowards (transform.position, waypoints[currentWaypoint].position, 2.0f * Time.deltaTime);
					}
				}
			}
		}

		// When At nurse position, trigger audio two
		if (audioTwoTriggered == true) {
			if(audioSources[1].isPlaying == true) {
				this.transform.LookAt(new Vector3(nurse.transform.position.x, this.transform.position.y, nurse.transform.position.z));
			} else {
				// When audio two is finished, allow player to move
				audioTwoTriggered = false;
				dataCore.thePlayer.SendMessage("ToggleMovement");
			}
		}
	}

	void PlayAudioOne() {
		audioSources[0].Play ();
		audioOneTriggered = true;
		Destroy(GetComponent<InteractionBehaviourCS>());
		//ItemScriptCS temp = this.gameObject.GetComponent<ItemScriptCS> ();

		//if (temp == null) Debug.Log ("NO ITEM SCRIP");
		//Destroy(this.gameObject.GetComponent <ItemScriptCS>());

	}

	void PlayAudioTwo() {
		audioSources[1].Play ();
	}
}
