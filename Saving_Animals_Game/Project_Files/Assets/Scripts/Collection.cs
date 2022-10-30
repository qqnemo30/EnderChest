using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Collection : MonoBehaviour
{
    protected Animator anim;
    protected AudioSource CollectionAudio;

    protected virtual void Start()
    {
        anim = GetComponent<Animator>();
        CollectionAudio = GetComponent<AudioSource>();
    }

    protected virtual void CollectEnd()
    {
        Destroy(gameObject);
    }

    public void Collect()
    {
        GetComponent<Collider2D>().enabled = false;
        anim.SetTrigger("Collection");
        CollectionAudio.Play();
    }
}
