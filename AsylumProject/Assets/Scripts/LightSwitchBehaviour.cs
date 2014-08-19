using UnityEngine;
using System.Collections;

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
		float dist = Vector3.Distance (this.gameObject.transform.position, dataCore.thePlayer.transform.postion);
	
		if (light != null) {
			if(dist < dataCore.interactionDistance) {
				lightObject.SetActive(!lightObject.activeSelf);
			}
		}
	}
}
