using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Animal : MonoBehaviour
{
    protected Animator anim;
    protected AudioSource SaveAudio;
    public GameObject savedialog;

    protected virtual void Start()
    {
        anim = GetComponent<Animator>();
        SaveAudio = GetComponent<AudioSource>();
    }

    public void SaveEnd()
    {
        savedialog.SetActive(false);
        Destroy(gameObject);
    }

    public void Save()
    {
        GetComponent<Collider2D>().enabled = false;
        anim.SetTrigger("save");
        SaveAudio.Play();
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.tag == "Player")
        {
            savedialog.SetActive(true);
        }
    }

    private void OnTriggerExit2D(Collider2D collision)
    {
        if (collision.tag == "Player")
        {
            savedialog.SetActive(false);
        }
    }
}
