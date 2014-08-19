using UnityEngine;
using System.Collections;

public class LightSwitchBehaviour : MonoBehaviour {
	public GameObject lightObject;

	//private 

	void OnMouseUpAsButton() {
		lightObject.SetActive(!lightObject.activeSelf);
	}
}
