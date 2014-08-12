using UnityEngine;
using System.Collections;

public class ButtonLightBehaviour : MonoBehaviour {
	public GameObject lightObject;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnMouseUpAsButton() {
		lightObject.SetActive(!lightObject.activeSelf);
	}
}
