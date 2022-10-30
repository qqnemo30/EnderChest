using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Collection_Book : Collection
{
    private Rigidbody2D rb;
    private Collider2D coll;
    public GameObject animalImage;

    protected override void Start()
    {
        base.Start();
        rb = GetComponent<Rigidbody2D>();
        coll = GetComponent<Collider2D>();
    }

    protected override void CollectEnd()
    {
        animalImage.SetActive(true);
        Time.timeScale = 0f;
        Destroy(gameObject);
    }
}
