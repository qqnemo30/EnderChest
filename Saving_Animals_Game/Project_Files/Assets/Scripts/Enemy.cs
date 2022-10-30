using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemy : MonoBehaviour
{
    protected Animator anim;
    protected AudioSource deathAudio;

    protected virtual void Start()
    {
        anim = GetComponent<Animator>();
        deathAudio = GetComponent<AudioSource>();
    }

    public void Death()
    {
        Destroy(gameObject);
    }

    public void JumpOn()
    {
        GetComponent<Collider2D>().enabled = false;
        anim.SetTrigger("death");
        deathAudio.Play();
    }

}
