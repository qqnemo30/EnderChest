using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Helper : MonoBehaviour
{
    protected Animator anim;
    protected AudioSource SaveAudio;

    protected virtual void Start()
    {
        anim = GetComponent<Animator>();
        SaveAudio = GetComponent<AudioSource>();
    }

    public void SaveEnd()
    {
        Destroy(gameObject);
    }

    public void Save()
    {
        GetComponent<Collider2D>().enabled = false;
        anim.SetTrigger("save");
        SaveAudio.Play();
    }
}
