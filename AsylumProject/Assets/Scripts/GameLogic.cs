using UnityEngine;
using System.Collections;

public class GameLogic : MonoBehaviour {

    public DATACORE _dataCore = null;

    public GameObject backStoryItem = null;

    public bool waitForAudio = false;

	// Use this for initialization
	void Start () {
	    if(_dataCore == null) {
            _dataCore = GameObject.FindGameObjectWithTag("GameLogic").GetComponent<DATACORE>();
        }
	}
	
	// Update is called once per frame
	void Update () {
        if (backStoryItem != null) {
            if (backStoryItem.audio.isPlaying == true) {
                waitForAudio = true;
            }

            if (waitForAudio == true) {
                if(backStoryItem.audio.isPlaying == false) {
                    Application.LoadLevel("TitleScreen");
                }
            }
        }
	}
}
