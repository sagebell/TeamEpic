﻿using UnityEngine;
using System.Collections;

public class MainMenu : MonoBehaviour {

    void Awake() {
        Screen.showCursor = true;
        Screen.lockCursor = false;
    }

    void Update() {
        if (Input.GetKey(KeyCode.Escape)) {
            Application.Quit();
        }
    }

    void OnGUI () {
        // Make a background box
        GUI.Box(new Rect(80,120,256,90), "Main Menu");
    
        if(GUI.Button(new Rect(90, 160, 236, 20), "Start Game")) {
            Application.LoadLevel(1);
        }
    }
}