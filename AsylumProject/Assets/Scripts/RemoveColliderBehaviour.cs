using UnityEngine;
using System.Collections;

public class RemoveColliderBehaviour : MonoBehaviour {

	public GameObject target;
	//public bool _IsToggle = true;
	//private bool _junk = false;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void ToggleCollider() {
		//if (_IsToggle) {
		Debug.Log ("TOGGLING COLLIDERS");

			//target.SetActive(!target.activeSelf);
		//target.renderer.enabled = !target.renderer.enabled;
		target.collider.enabled = !target.collider.enabled;
		//} else {
		//	target.SetActive(false);
		//}
	}
}
