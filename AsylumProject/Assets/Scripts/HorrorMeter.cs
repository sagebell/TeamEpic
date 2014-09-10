using UnityEngine;


public class HorrorMeter : MonoBehaviour
{

	public PlayerScript Player;
    public Texture2D bgImage; 
    public Texture2D fgImage;

	void OnGUI () {
        // Create one Group to contain both images
        // Adjust the first 2 coordinates to place it somewhere else on-screen
        GUI.BeginGroup (new Rect (Screen.width / 4f, 10, 1024, 32));
    
        // Draw the background image
        GUI.Box (new Rect (0, 0, 800, 32), bgImage);
    
            // Create a second Group which will be clipped
            // We want to clip the image and not scale it, which is why we need the second Group
            GUI.BeginGroup (new Rect (0, 0, Player.HorrorMeter * 8, 32));
        
            // Draw the foreground image
            GUI.Box (new Rect (0, 0, 800, 32), fgImage);
        
            // End both Groups
            GUI.EndGroup ();
        
        GUI.EndGroup ();
    }
}
