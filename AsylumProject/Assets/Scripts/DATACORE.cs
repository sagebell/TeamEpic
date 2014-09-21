using UnityEngine;
using System.Collections;

public class DATACORE : MonoBehaviour {

	// Variable to hold The Player's game object
	public GameObject thePlayer = null;
	public GUIText horrorMeter = null;

	// Reticle Textures
	public Texture _TargetReticleBase = null;
	//public Texture _TargetReticleHighlight = null;
	public Texture _targetReticleEnemy = null;
	public Texture _targetReticleInteract = null;
	public Texture _targetReticlePickUp = null;

	public bool _aimingAtEnemy = false;
	public bool _aimingAtInteract = false;
	public bool _aimingAtPickUp = false;

	public GameObject _targetAimingAt = null;

	// Horror Textures and Images
	/* SPACE FOR DeLOMBA's HORROR STUFF*/

	// The maximum distance a player can be from interacting with an object
	public float interactionDistance = 5.0f;

	// Use this for initialization
	void Start () {
		// Initialize the player object if it is not already set
		if (thePlayer == null) {
			thePlayer = GameObject.FindGameObjectWithTag("Player");
			if(thePlayer == null) {
				Debug.Log("MARK THE PLAYER OBJECT WITH THE PLAYER TAG!!!");
			}
		}	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
