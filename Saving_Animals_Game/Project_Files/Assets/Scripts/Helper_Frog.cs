using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Helper_Frog : Helper
{
    private Rigidbody2D rb;
    private bool Faceleft = true;
    private float leftx, rightx;
    //private Animator anim;
    private Collider2D Coll;

    public Transform leftpoint, rightpoint;
    public float Speed, jumpforce;
    public LayerMask ground;

    protected override void Start()
    {
        base.Start();

        rb = GetComponent<Rigidbody2D>();
        Coll = GetComponent<Collider2D>();

        leftx = leftpoint.position.x;
        rightx = rightpoint.position.x;
        Destroy(leftpoint.gameObject);
        Destroy(rightpoint.gameObject);
    }

    void Update()
    {
        SwitchAnim();
    }

    void Movement()
    {
        if (Faceleft)
        {
            if (transform.position.x <= leftx)
            {
                Faceleft = false;
                transform.localScale = new Vector3(-1, 1, 1);
                anim.SetBool("jumping", true);
                rb.velocity = new Vector2(Speed, jumpforce);//检测转向后立即执行一次转身跳跃，避免原地跳
            }
            else
            {
                anim.SetBool("jumping", true);
                rb.velocity = new Vector2(-Speed, jumpforce);//先检测后进行跳跃动作，避免反向跳跃
            }

        }
        else
        {
            if (transform.position.x >= rightx)
            {
                Faceleft = true;
                transform.localScale = new Vector3(1, 1, 1);
                anim.SetBool("jumping", true);
                rb.velocity = new Vector2(-Speed, jumpforce);//检测转向后立即执行一次转身跳跃，避免原地跳
            }
            else
            {
                anim.SetBool("jumping", true);
                rb.velocity = new Vector2(Speed, jumpforce);//先检测后进行跳跃动作，避免反向跳跃
            }
        }
        if (Coll.IsTouchingLayers(ground))
        {
            rb.velocity = new Vector2(rb.velocity.x, jumpforce);//总之就是跳跃
        }
    }

    void SwitchAnim()
    {
        if (anim.GetBool("jumping"))
        {
            if (rb.velocity.y < 0.1)
            {
                anim.SetBool("jumping", false);
                anim.SetBool("falling", true);
            }
        }
        if (Coll.IsTouchingLayers(ground) && anim.GetBool("falling"))
        {
            anim.SetBool("falling", false);
        }
    }

}
