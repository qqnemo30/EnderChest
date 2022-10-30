using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Helper_Eagle : Helper
{
    private Rigidbody2D rb;
    private Collider2D coll;
    private bool isUp = true;
    private float topy, bottomy;

    public float Speed;
    public Transform top, bottom;

    protected override void Start()
    {
        base.Start();
        rb = GetComponent<Rigidbody2D>();
        coll = GetComponent<Collider2D>();
        topy = top.position.y;
        bottomy = bottom.position.y;
        Destroy(top.gameObject);
        Destroy(bottom.gameObject);
    }

    void Update()
    {
        Movement();
    }

    void Movement()
    {
        if (isUp)
        {
            rb.velocity = new Vector2(rb.velocity.x, Speed);
            if (transform.position.y > topy)
            {
                isUp = false;
            }
        }
        else
        {
            rb.velocity = new Vector2(rb.velocity.x, -Speed);
            if (transform.position.y < bottomy)
            {
                isUp = true;
            }
        }
    }

}

