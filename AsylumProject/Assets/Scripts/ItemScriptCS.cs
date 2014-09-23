using UnityEngine;
using System.Collections;

public class ItemScriptCS : MonoBehaviour {
	// PLACE THIS ON ANY ITEM THAT CAN BE PICKED UP BY THE PLAYER OR ON AUDIO FILES

    public bool audioTriggered = false;

    void Update() {
        if(audioTriggered == true) {
            if(audio.isPlaying == false){
                audioTriggered = false;
            }
        }
    }

	void Clicked() {
		audio.Play ();
        audioTriggered = true;
        //this.GetComponent<ItemScriptCS>().enabled = true;
        Destroy(GetComponent<ItemScriptCS>());
	}
}