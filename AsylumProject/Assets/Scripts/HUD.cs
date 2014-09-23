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
		if (Input.GetMouseButtonDown (0)) {
			if (_dataCore._aimingAtPickUp || _dataCore._aimingAtInteract) {
				_dataCore._targetAimingAt.SendMessage("Clicked");
			}
		}

        if (Input.GetKeyDown(KeyCode.Escape) == true)
        {
            Debug.Log("Escape Pushed");
            //Screen.lockCursor = false;
            //Screen.showCursor = true;
            Application.LoadLevel("TitleScreen");
        }
	}
	
	void FixedUpdate () {
	
		if (Camera.main == null) return;
		//Debug.Log ("DOING SCREEN RAYCAST");
		//Debug.Log (Camera.current);
		RaycastHit hitInfo;
		Ray ray = Camera.main.ScreenPointToRay (new Vector2(Screen.width / 2, Screen.height / 2));

		if (Physics.Raycast (ray, out hitInfo, 9999.0f, LayerMask.GetMask("Enemy", "PickUp", "Interact"))) {
			if (_DetectEnemy (hitInfo) == false) {
				if (_DetectInteract (hitInfo) == false) {
					if (_DetectPickUp (hitInfo) == false) {
						return;
					} else Debug.Log ("PICKUP/AUDIO ITEM FOUND");
				} else Debug.Log ("INTERACTIVE ITEM FOUND");
			} else Debug.Log ("HORROR ITEM FOUND");

		} else {
			_dataCore._aimingAtInteract = false;
			_dataCore._aimingAtPickUp = false;
			_dataCore._aimingAtEnemy = false;
			_dataCore._targetAimingAt = null;
			Debug.Log ("NOT POINTING AT ANYTHING RELEVANT");
			//Debug.Log (hitInfo.collider);
		}
	}

	void OnGUI() {
		// Draw Target Reticle
		GUI.DrawTexture (positionReticle, _dataCore._TargetReticleBase);

		// Determine Target Reticle Changes based on 
		// what is in the direct center of the screen
		if (_dataCore._aimingAtEnemy) {
			GUI.DrawTexture(positionReticle, _dataCore._targetReticleEnemy);
		} else if (_dataCore._aimingAtPickUp) {
			GUI.DrawTexture(positionReticle, _dataCore._targetReticlePickUp);
		} else if (_dataCore._aimingAtInteract) {
			GUI.DrawTexture(positionReticle, _dataCore._targetReticleInteract);
		}
	}

	bool _DetectInteract(RaycastHit hit) {
		GameObject interact = null;
		
		if (hit.collider.gameObject.GetComponent<InteractionBehaviourCS> () != null) {
			interact = hit.collider.gameObject.GetComponent<InteractionBehaviourCS> ().gameObject;
		} else {
			_dataCore._aimingAtInteract = false;
			return false;
		}
		
		if (interact != null) {
			Debug.Log ("LOOKING AT " + interact.name);
			_dataCore._aimingAtInteract = true;
			_dataCore._targetAimingAt = interact;
			return true;
		}
		_dataCore._aimingAtInteract = false;
		return false;
	}
	
	bool _DetectPickUp(RaycastHit hit) {
		GameObject pickUp = null;
		
		if (hit.collider.gameObject.GetComponent<ItemScriptCS>()) {
			Debug.Log ("FOUND AN ITEMSCRIPTCS");
			pickUp = hit.collider.gameObject.GetComponent<ItemScriptCS> ().gameObject;
		}else {
			Debug.Log ("DID NOT FIND AN ITEMSCRIPTCS");
			_dataCore._aimingAtPickUp = false;
			return false;
		}
		
		if (pickUp != null) {
			Debug.Log ("LOOKING AT " + pickUp.name);
			_dataCore._aimingAtPickUp = true;
			_dataCore._targetAimingAt = pickUp;
			return true;
		} 
		_dataCore._aimingAtPickUp = false;
		return false;
	}
	
	bool _DetectEnemy(RaycastHit hit) {
		
		GameObject enemy = null;
		
		if (hit.collider.GetComponent<EnemyScriptCS> ()) {
			enemy = hit.collider.GetComponent<EnemyScriptCS>().gameObject;
		} else {
			_dataCore._aimingAtEnemy = false;
			return false;
		}
		
		if (enemy != null) {
			Debug.Log ("AIMING AT AN ENEMY!!!");
			_dataCore._aimingAtEnemy = true;
			_dataCore._targetAimingAt = enemy;
			return true;
		} 
		_dataCore._aimingAtEnemy = false;
		return false;
	}
}
