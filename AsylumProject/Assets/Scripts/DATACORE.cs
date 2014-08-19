using UnityEngine;
using System.Collections;

public class DATACORE : MonoBehaviour {

	// Variable to hold The Player's game object
	public GameObject thePlayer = null;
	public GUIText horrorMeter = null;

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
