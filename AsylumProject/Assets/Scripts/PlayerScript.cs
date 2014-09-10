using UnityEngine;
using System.Collections;

public class PlayerScript : MonoBehaviour {
	public GameObject leftHandTarget = null;
	public GameObject rightHandTarget = null;
	public float HorrorMeterMax = 100.0f;

	public float HorrorMeter = 0.0f;

	private DATACORE dataCore = null;
	    public float hSbarValue;


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
		HorrorMeter -= 0.001f;

		if (HorrorMeter <= 0f) HorrorMeter = 0f;
		if (HorrorMeter >= 100.0f) HorrorMeter = 100.0f;

		
	}
}
