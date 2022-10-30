﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Animal_Panda : Animal
{
    private Rigidbody2D rb;
    private Collider2D coll;

    protected override void Start()
    {
        base.Start();
        rb = GetComponent<Rigidbody2D>();
        coll = GetComponent<Collider2D>();
    }
}
