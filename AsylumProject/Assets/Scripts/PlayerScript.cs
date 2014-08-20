using UnityEngine;
using System.Collections;

public class PlayerScript : MonoBehaviour {
	public GameObject leftHandTarget = null;
	public GameObject rightHandTarget = null;

	private DATACORE dataCore = null;


	// Use this for initialization
	void Start () {
		if (dataCore == null) {
			dataCore = GameObject.FindGameObjectWithTag("GameLogic").GetComponent<DATACORE>();
		}

		if (rightHandTarget == null) {
			Debug.Log("Right Hand Not Set!!!");
		}

		if (leftHandTarget == null) {
			Debug.Log("Left Hand Not Set!!!");
		}
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
