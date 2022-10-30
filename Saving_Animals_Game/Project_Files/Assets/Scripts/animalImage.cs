using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class animalImage : MonoBehaviour
{
    public GameObject Image;
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.E))
        {
            Image.SetActive(false);
            Time.timeScale = 1f;
        }
    }
}
