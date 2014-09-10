using UnityEngine;
using System.Collections;

public class AnimateFemale : MonoBehaviour 
{
	public Animator m_anim = null;

	enum animState {WALKING, JUMP, LEFT_TURN, RIGHT_TURN, RIGHT_STRAFE_WALKING, LEFT_STRAFE_WALKING};
	string[] m_animNames = new string[6]{"walking", "jump", "left_turn", "right_turn", "right_strafe_walking", "left_strafe_walking"};
	
	int nextIndex = 0;
	
	
	void Awake ()
	{
		m_anim = GetComponent<Animator>();
		m_anim.Play(m_animNames[(int)animState.WALKING]);
	}
	
	
	void Update ()
	{
		PlayAnimation();
	}

	void PlayAnimation(){

		if (!Input.GetKeyUp(KeyCode.P))
			return;

		nextIndex = (nextIndex + 1) % m_animNames.Length;

		string animName = m_animNames[nextIndex];

		Debug.LogWarning("Playing " + animName);
		m_anim.Play(animName);
	}
}
