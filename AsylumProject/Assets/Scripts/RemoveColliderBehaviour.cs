using UnityEngine;
using System.Collections;

public class RemoveColliderBehaviour : MonoBehaviour {

	public GameObject target;
	public bool _IsToggle = true;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnMouseUpAsButton() {
		if (_IsToggle) {
			Debug.Log ("TOGGLING COLLIDERS");

			target.SetActive(!target.activeSelf);
		} else {
			target.SetActive(false);
		}
	}
}
