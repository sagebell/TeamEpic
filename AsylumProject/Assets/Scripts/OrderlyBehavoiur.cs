using UnityEngine;
using System.Collections;

public class OrderlyBehavoiur : MonoBehaviour {

    public Transform[] eventPositions;

	public Transform[] resolutionWaypoints;

	public Vector3 _Target = Vector3.zero;

	public GameObject _Player = null;
	public GameObject patient = null;

	public bool triggerEvent = false;

	public float dist = 0.0f;

	public int currentWaypoint = 0;
	public bool faceWaypoint = false;
	public bool resolveEvent = false;

	public DATACORE dataCore = null;

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
				
				if(distToCurrentPosition < 1.5f) {
					++currentWaypoint;
					faceWaypoint = false;
					Debug.Log ("Changing Way Point " + currentWaypoint);
				}

				if(currentWaypoint < resolutionWaypoints.Length) {
					//this.transform.LookAt(waypoints[currentWaypoint].position);
					transform.position = Vector3.MoveTowards (transform.position, resolutionWaypoints[currentWaypoint].position, 2.0f * Time.deltaTime);
				}
			}
		}
		else if (triggerEvent == true) {

            if (currentWaypoint >= eventPositions.Length) {
                transform.LookAt(patient.transform.position);
            }
            else
            {
                if (faceWaypoint == false)
                {
                    transform.LookAt(eventPositions[currentWaypoint]);
                    faceWaypoint = true;
                }

                float distToCurrentPosition = (eventPositions[currentWaypoint].position - transform.position).magnitude;

                if (distToCurrentPosition < 1.0f)
                {
                    ++currentWaypoint;
                    faceWaypoint = false;
                    Debug.Log("Changing Way Point " + currentWaypoint);
                }

                if (currentWaypoint < eventPositions.Length)
                {
                    transform.position = Vector3.MoveTowards(transform.position, eventPositions[currentWaypoint].position, 4.0f * Time.deltaTime);
                } 
            }
			//dist = (transform.position - eventPosition.position).magnitude;
			
			//if (triggerEvent && dist > 1.0f)
				//transform.position = Vector3.MoveTowards (transform.position, eventPosition.position, 2.0f * Time.deltaTime);
			
			//if (dist < 1.0f) {
				//Transform temp = patient.transform;
				//temp.position.y = transform.position.y;
				//transform.LookAt (temp.position);
				//transform.LookAt (patient.transform.position);
				//Quaternion newRotation = Quaternion.LookRotation (Patient.transform.position - transform.position, Vector3.up);
				//newRotation.y = 0.0f;
				//transform.rotation = Quaternion.Slerp (transform.rotation, newRotation, 0.5f * Time.deltaTime);
			//}
		}
		/*
		if (_Target != Vector3.zero) {
			this.transform.LookAt (_Target);
			_Target = _Player.transform.position;
		}
		*/
	}

	void OnTriggerEnter(Collider theCollider) {
		if (theCollider.gameObject.layer == 9 && triggerEvent == false) {
			if(audio != null){
				if(audio.isPlaying == false) audio.Play ();
			}
			_Player = theCollider.gameObject;
			_Target = theCollider.gameObject.transform.position;
		}
	}


	void OnTriggerStay(Collider theCollider) {
		if (theCollider.gameObject.layer == 9 && triggerEvent == false) this.transform.LookAt (_Player.transform.position);
		//if (_Target != Vector3.zero) {
		//	this.transform.LookAt (_Target);
		//	_Target = _Player.transform.position;
		//}
	}
	/**/

	void OnTriggerExit(Collider theCollider) {
		_Target = Vector3.zero;
	}

	public void TriggerFreakOut() {
		triggerEvent = true;
        currentWaypoint = 0;
		Debug.Log ("ORDERLY TRIGGERED");
		this.gameObject.GetComponent<RemoveColliderBehaviour>().ToggleCollider ();
	}

	void ResolveFreakOut() {
		resolveEvent = true;
        currentWaypoint = 0;
		Debug.Log ("ORDERLY RESOLVING FREAKOUT");
	}
}
