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
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
