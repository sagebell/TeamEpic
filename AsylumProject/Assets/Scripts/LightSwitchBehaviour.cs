using UnityEngine;
using System.Collections;

// Attach this to a switch object, then add one light object that it will affect
public class LightSwitchBehaviour : MonoBehaviour {

	public GameObject lightObject = null;

	public DATACORE dataCore = null;

	// Use this for initialization
	void Start () {
		if (dataCore == null) {
			dataCore = GameObject.FindGameObjectWithTag("GameLogic").GetComponent<DATACORE>();
		}
	}

	void OnMouseUpAsButton() {
		float dist = Vector3.Distance (this.gameObject.transform.position, dataCore.thePlayer.transform.position);
	
		if (light != null) {
			if(dist < dataCore.interactionDistance) {
				lightObject.SetActive(!lightObject.activeSelf);
			}
		}
	}
}
