using UnityEngine;
using System.Collections;

public class ItemScriptCS : MonoBehaviour {
	// PLACE THIS ON ANY ITEM THAT CAN BE PICKED UP BY THE PLAYER OR ON AUDIO FILES

	void Clicked() {
		audio.Play ();
	}
}