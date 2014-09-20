using UnityEngine;
using System.Collections;

public class AnimateFemale : MonoBehaviour 
{
	public Animator m_anim = null;
	public Transform [] waypoints = null;
	public int currentWaypoint = 0;
	public bool movementTriggered = false;
	//public AnimatorOverrideController m_anim = null;

	enum animState {WALKING, JUMP, LEFT_TURN, RIGHT_TURN, RIGHT_STRAFE_WALKING, LEFT_STRAFE_WALKING};
	string[] m_animNames = new string[7]{"idle", "walking", "jump", "left_turn", "right_turn", "right_strafe_walking", "left_strafe_walking"};
	
	int nextIndex = 0;

	void Awake ()
	{
		m_anim = GetComponent<Animator>();
		m_anim.Play(m_animNames[(int)animState.WALKING]);
		movementTriggered = false;
	}
	
	
	void Update ()
	{
		PlayAnimation();

		if (movementTriggered == true) {
			PlayAnimation(1);
			float distToCurrentPosition = (waypoints[currentWaypoint].position - transform.position).magnitude;
			if(distToCurrentPosition < 0.1f) {
				++currentWaypoint;
				Debug.Log ("Changing Way Point " + currentWaypoint);
			}
			
			if(currentWaypoint < waypoints.Length) {
				//this.transform.LookAt(waypoints[currentWaypoint].position);
				transform.position = Vector3.MoveTowards (transform.position, waypoints[currentWaypoint].position, 2.0f * Time.deltaTime);
			} else {
				movementTriggered = false;
			}
		}
	}

	void PlayAnimation(){

		if (!Input.GetKeyUp(KeyCode.P))
			return;

		nextIndex = (nextIndex + 1) % m_animNames.Length;

		string animName = m_animNames[nextIndex];

		Debug.LogWarning("Playing " + animName);
		m_anim.Play(animName);
	}

	void PlayAnimation( int index){
		
		//if (!Input.GetKeyUp(KeyCode.P))
		//	return;
		
		//nextIndex = (nextIndex + 1) % m_animNames.Length;
		
		string animName = m_animNames[index];
		
		Debug.LogWarning("Playing " + animName);
		m_anim.Play(animName);
	}


	void DoMovement() {
		movementTriggered = true;
		//transform.position = Vector3.MoveTowards ();
	}
}
