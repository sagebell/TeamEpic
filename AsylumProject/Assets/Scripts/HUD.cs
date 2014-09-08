using UnityEngine;
using System.Collections;

public class HUD : MonoBehaviour {

	// Reticle Position
	public Rect positionReticle;

	// Horror Position
	/* SPACE FOR DeLOMBA's HORROR STUFF*/

	// Link to the DATACORE
	public DATACORE _dataCore = null;

	// Use this for initialization
	void Start () {
		if (_dataCore == null) {
			_dataCore = GameObject.FindGameObjectWithTag("GameLogic").GetComponent<DATACORE>();
		}

		positionReticle = new Rect (Screen.width / 2 - _dataCore._TargetReticleBase.width / 2, Screen.height / 2 - _dataCore._TargetReticleBase.height / 2, _dataCore._TargetReticleBase.width, _dataCore._TargetReticleBase.height);

		Screen.showCursor = false;
		Screen.lockCursor = true;
	}

	void Update() {

	}
	
	void FixedUpdate () {
		if (Input.GetKeyDown(KeyCode.Escape) == true) {
			Debug.Log("Escape Pushed");
			Screen.lockCursor = false;
			Screen.showCursor = true;
			Application.Quit();
		}

		if (Camera.current == null) return;
		RaycastHit hitInfo;
		Ray ray = Camera.current.ScreenPointToRay (new Vector2(Screen.width / 2, Screen.height / 2));

		if (Physics.Raycast (ray, out hitInfo, 9999.0f, LayerMask.GetMask("Enemy", "PickUp", "Interact"))) {


		} else {

		}
	}

	void OnGUI() {
		// Draw Target Reticle
		GUI.DrawTexture (positionReticle, _dataCore._TargetReticleBase);

		// Determine Target Reticle Highlight

		// Draw Horror Meter Stuff
	}
}
