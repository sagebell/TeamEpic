using UnityEngine;
using System.Collections;

public class InteractionBehaviourCS : MonoBehaviour {

	// PLACE THIS ON ANY ITEM THAT CAN DENCREASE THE HORROR METER OR THE PLAYER CAN INTERACT WITH

	void Clicked() {
		this.SendMessage("PlayAudioOne");
	}

}
