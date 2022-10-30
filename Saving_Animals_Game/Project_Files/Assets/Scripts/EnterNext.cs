using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class EnterNext : MonoBehaviour
{
    public PlayerController player;
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.E) && player.Save >= 1)
        {
            if (SceneManager.GetActiveScene().buildIndex != 3)
            {
                SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
            }
            else if (SceneManager.GetActiveScene().buildIndex == 3)
            {
                SceneManager.LoadScene(0);
            }
        }
    }
}
