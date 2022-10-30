using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemy_Pillager : Enemy
{
    private Rigidbody2D rb;
    private Collider2D coll;
    private bool FaceLeft = false;
    private float leftx, rightx;

    public float Speed;
    public Transform leftpoint, rightpoint;

    protected override void Start()
    {
        base.Start();
        rb = GetComponent<Rigidbody2D>();
        coll = GetComponent<Collider2D>();
        leftx = leftpoint.position.x;
        rightx = rightpoint.position.x;
        Destroy(leftpoint.gameObject);
        Destroy(rightpoint.gameObject);
    }

    void Update()
    {
        Movement();
    }

    void Movement()
    {
        if (FaceLeft)
        {
            if (transform.position.x <= leftx)
            {
                FaceLeft = false;
                transform.localScale = new Vector3(1, 1, 1);
                rb.velocity = new Vector2(Speed, rb.velocity.y);
            }
            else
            {
                rb.velocity = new Vector2(-Speed, rb.velocity.y);
            }

        }
        else
        {
            if (transform.position.x >= rightx)
            {
                FaceLeft = true;
                transform.localScale = new Vector3(-1, 1, 1);
                rb.velocity = new Vector2(-Speed, rb.velocity.y);
            }
            else
            {
                rb.velocity = new Vector2(Speed, rb.velocity.y);
            }
        }
    }
}
