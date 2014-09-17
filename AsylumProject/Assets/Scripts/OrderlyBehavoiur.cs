using UnityEngine;
using System.Collections;

public class OrderlyBehavoiur : MonoBehaviour {

	public Vector3 _Target = Vector3.zero;
	public GameObject _Player = null;

	public bool triggerEvent = false;

	// Use this for initialization
	void Start () {
     
	}

	/*
	// Update is called once per frame
	void Update () {
		if (_Target != Vector3.zero) {
			this.transform.LookAt (_Target);
			_Target = _Player.transform.position;
		}
	}
	*/

	void OnTriggerEnter(Collider theCollider) {
		if (theCollider.gameObject.layer == 9) {
			if(audio != null){
				if(audio.isPlaying == false) audio.Play ();
			}
			_Player = theCollider.gameObject;
			_Target = theCollider.gameObject.transform.position;
		}
	}


	void OnTriggerStay(Collider theCollider) {
		if (theCollider.gameObject.layer == 9) this.transform.LookAt (_Player.transform.position);
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
		Debug.Log ("ORDERLY TRIGGERED");
	}
}
