using UnityEngine;
using System.Collections;

public class PlayerScript : MonoBehaviour {
	public GameObject leftHandTarget = null;
	public GameObject rightHandTarget = null;
	public float HorrorMeterMax = 100.0f;

	public float HorrorMeter = 0.0f;

	private DATACORE dataCore = null;
    public float hSbarValue;

	public bool movementFrozen = false;

	public Transform holdPosition = null;

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

		if (movementFrozen == true) {
			this.transform.position = holdPosition.transform.position;
		}

		this.SendMessage ("ToggleMovement");
	}
	
	// Update is called once per frame
	void Update () {
		HorrorMeter -= 0.001f;

		if (HorrorMeter <= 0f)
			HorrorMeter = 0f;

		if (HorrorMeter >= 100.0f) 
		{
			Screen.showCursor = true;
			Application.LoadLevel(2);
			HorrorMeter = 100.0f;
		}

		
	}
}
