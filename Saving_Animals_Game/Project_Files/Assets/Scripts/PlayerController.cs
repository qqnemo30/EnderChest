using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class PlayerController : MonoBehaviour
{
    private Rigidbody2D rb;
    private Animator anim;
    private bool isGround;
    private bool isHurt;//默认false
    private int extraJump;

    public float speed;
    public float jumpforce;
    public Collider2D coll;
    public Collider2D DisColl;
    public LayerMask ground;
    public AudioSource jumpAudio, hurtAudio;
    public Transform CeilingCheck, GroundCheck;
    public int Cherry;
    public int Book;
    public int Save;
    public Text CherryNum;
    public Text BookNum;
    public Text SaveNum;

    void Start()
    {
        rb = GetComponent<Rigidbody2D>();
        anim = GetComponent<Animator>();
    }

    void FixedUpdate()
    {
        if (!isHurt)
        {
            Movement();
        }
        SwitchAnim();
        isGround = Physics2D.OverlapCircle(GroundCheck.position, 0.2f, ground);
    }

    private void Update()
    {
        newJump();
        Crouch();
    }

    //移动
    void Movement()
    {
        float horizontalmove = Input.GetAxis("Horizontal");// -1 a left  1 d right
        float facedirection = Input.GetAxisRaw("Horizontal");
        //角色移动
        if (horizontalmove != 0)
        {
            rb.velocity = new Vector2(horizontalmove * speed * Time.fixedDeltaTime, rb.velocity.y);
            anim.SetFloat("running", Mathf.Abs(facedirection));
        }
        if (facedirection != 0)
        {
            transform.localScale = new Vector3(facedirection, 1, 1);
        }
    }

    //动画切换
    void SwitchAnim()
    {
        if (rb.velocity.y < 0.1f && !coll.IsTouchingLayers(ground))
        {
            anim.SetBool("falling", true);
        }
        if (anim.GetBool("climbing"))
        {
            anim.SetBool("climbing", false);
        }
        if (anim.GetBool("jumping"))
        {
            if (rb.velocity.y < 0)
            {
                anim.SetBool("jumping", false);
                anim.SetBool("falling", true);
            }
        }
        else if (isHurt)
        {
            anim.SetBool("hurt", true);
            anim.SetFloat("running", 0);
            if (Mathf.Abs(rb.velocity.x) < 0.3f)
            {
                anim.SetBool("hurt", false);
                isHurt = false;
            }
        }
        else if (coll.IsTouchingLayers(ground))
        {
            anim.SetBool("falling", false);
        }
    }

    //匍匐前进
    void Crouch()
    {
        if (!Physics2D.OverlapCircle(CeilingCheck.position, 0.2f, ground))
        {
            if (Input.GetButton("Crouch"))
            {
                anim.SetBool("crouching", true);
                DisColl.enabled = false;
            }
            else
            {
                anim.SetBool("crouching", false);
                DisColl.enabled = true;
            }
        }
    }

    //向上爬
    void Climb()
    {
        if (Input.GetButton("Climb"))
        {
            anim.SetBool("climbing", true);
            rb.velocity = Vector2.up * (speed * 0.01f);
        }
        else
        {
            anim.SetBool("climbing", false);
        }
    }

    //角色跳跃
    void newJump()
    {
        if (isGround)
        {
            extraJump = 1;
        }
        if (Input.GetButtonDown("Jump") && extraJump > 0)
        {
            rb.velocity = Vector2.up * jumpforce;//new Vector2 (0, 1)
            extraJump--;
            jumpAudio.Play();
            anim.SetBool("jumping", true);
        }
    }

    //碰撞帧触发器
    private void OnTriggerStay2D(Collider2D collision)
    {
        //Climb Ladders
        if (collision.tag == "Ladder")
        {
            Climb();
        }
        //Save Animals
        if (collision.tag == "Animal")
        {
            DisColl.enabled = false;
            if (Input.GetKeyDown(KeyCode.E))
            {
                if (Book >= 3)
                {
                    Save = Save + 1;
                    Animal animal = collision.GetComponent<Animal>();
                    animal.Save();
                    SaveNum.text = Save.ToString();
                }
            }
        }
    }

    //碰撞触发器
    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.tag == "Cherry")
        {
            Cherry = Cherry + 1;
            Collection collection = collision.GetComponent<Collection>();
            collection.Collect();
            CherryNum.text = Cherry.ToString();
        }
        else if (collision.tag == "Book")
        {
            Book = Book + 1;
            Collection collection = collision.GetComponent<Collection>();
            collection.Collect();
            BookNum.text = Book.ToString();
        }
        if (collision.tag == "DeadLine")
        {
            GetComponent<AudioSource>().enabled = false;
            Invoke("Restart", 2);
        }
    }

    //消灭敌人或受伤
    private void OnCollisionEnter2D(Collision2D collision)
    {
        if (collision.gameObject.tag == "Enemy")
        {
            Enemy enemy = collision.gameObject.GetComponent<Enemy>();
            if (anim.GetBool("falling"))
            {
                rb.velocity = new Vector2(rb.velocity.x, 10);
                enemy.JumpOn();
                anim.SetBool("jumping", true);
            }
            else if (transform.position.x < collision.gameObject.transform.position.x)
            {
                rb.velocity = new Vector2(-10, rb.velocity.y);
                hurtAudio.Play();
                isHurt = true;
            }
            else if (transform.position.x > collision.gameObject.transform.position.x)
            {
                rb.velocity = new Vector2(10, rb.velocity.y);
                hurtAudio.Play();
                isHurt = true;
            }
        }
    }

    //重新开始
    void Restart()
    {
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
    }

}
