using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnterDialog : MonoBehaviour
{
    public GameObject enterdialog;
    public GameObject faildialog;
    public PlayerController player;

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.tag == "Player" && player.Save >= 1)
        {
            enterdialog.SetActive(true);
        }
        else if (collision.tag == "Player" && player.Save == 0)
        {
            faildialog.SetActive(true);
        }
    }

    private void OnTriggerExit2D(Collider2D collision)
    {
        if (collision.tag == "Player")
        {
            enterdialog.SetActive(false);
            faildialog.SetActive(false);
        }
    }
}
