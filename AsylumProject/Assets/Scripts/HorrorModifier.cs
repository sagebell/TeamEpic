using UnityEngine;
using System.Collections;

public class HorrorModifier : MonoBehaviour
{
	public bool InduceHorror = false;
	public bool ReduceHorror = false;
	public float Modifier = 1.0f;
	public float DistanceOnEntry;
	public float Distance;

	public void Awake()
	{
		Modifier *= 0.01f;
		if (InduceHorror)
			ReduceHorror = false;
	}

	public void OnTriggerEnter(Collider other)
	{
		Vector3 offset = other.transform.position - transform.position;
		DistanceOnEntry = offset.sqrMagnitude;
	}

	public void OnTriggerStay(Collider other)
	{
		var player = other.GetComponent<PlayerScript>();
		if (player == null) {
			Debug.Log("COLLIDER NOT THE PLAYER");
			return;
		}

		Vector3 offset = other.transform.position - transform.position;
		Distance = offset.sqrMagnitude;

		if (InduceHorror) {
			player.HorrorMeter += (DistanceOnEntry / Distance) * Modifier;
			Debug.Log("INDUCING HORROR");
		} else if (ReduceHorror) { 
			player.HorrorMeter -= (DistanceOnEntry / Distance) * Modifier;
			Debug.Log("REDUCING HORROR");
		}
	}
}
