.class public final Lsk;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onCaptureQueueEmpty(Landroid/hardware/camera2/CameraCaptureSession;)V

    :cond_0
    return-void
.end method

.method public static b(Lyo;Lyc;Ljava/util/ArrayList;I)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    const/4 v12, 0x2

    if-nez p3, :cond_0

    iget v1, v0, Lyo;->av:I

    iget-object v2, v0, Lyo;->ay:[Lyk;

    move v14, v1

    move-object v15, v2

    const/16 v16, 0x0

    goto :goto_0

    :cond_0
    iget v1, v0, Lyo;->aw:I

    iget-object v2, v0, Lyo;->ax:[Lyk;

    move v14, v1

    move-object v15, v2

    const/16 v16, 0x2

    :goto_0
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v14, :cond_75

    aget-object v1, v15, v9

    iget-boolean v2, v1, Lyk;->t:Z

    const/4 v3, 0x3

    const/16 v8, 0x8

    const/16 v17, 0x0

    const/4 v7, 0x1

    if-nez v2, :cond_18

    iget v2, v1, Lyk;->o:I

    add-int/2addr v2, v2

    iget-object v5, v1, Lyk;->a:Lyn;

    move-object v6, v5

    const/16 v18, 0x0

    :goto_2
    if-nez v18, :cond_13

    iget v13, v1, Lyk;->i:I

    add-int/2addr v13, v7

    iput v13, v1, Lyk;->i:I

    iget-object v13, v5, Lyn;->ao:[Lyn;

    iget v4, v1, Lyk;->o:I

    aput-object v17, v13, v4

    iget-object v13, v5, Lyn;->an:[Lyn;

    aput-object v17, v13, v4

    iget v13, v5, Lyn;->ai:I

    if-eq v13, v8, :cond_d

    iget v13, v1, Lyk;->l:I

    add-int/2addr v13, v7

    iput v13, v1, Lyk;->l:I

    invoke-virtual {v5, v4}, Lyn;->N(I)I

    move-result v4

    if-eq v4, v3, :cond_2

    iget v4, v1, Lyk;->m:I

    iget v13, v1, Lyk;->o:I

    if-nez v13, :cond_1

    invoke-virtual {v5}, Lyn;->j()I

    move-result v13

    goto :goto_3

    :cond_1
    invoke-virtual {v5}, Lyn;->h()I

    move-result v13

    :goto_3
    add-int/2addr v4, v13

    iput v4, v1, Lyk;->m:I

    :cond_2
    iget v4, v1, Lyk;->m:I

    iget-object v13, v5, Lyn;->S:[Lym;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Lym;->b()I

    move-result v13

    add-int/2addr v4, v13

    iput v4, v1, Lyk;->m:I

    iget-object v13, v5, Lyn;->S:[Lym;

    add-int/lit8 v20, v2, 0x1

    aget-object v13, v13, v20

    invoke-virtual {v13}, Lym;->b()I

    move-result v13

    add-int/2addr v4, v13

    iput v4, v1, Lyk;->m:I

    iget v4, v1, Lyk;->n:I

    iget-object v13, v5, Lyn;->S:[Lym;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Lym;->b()I

    move-result v13

    add-int/2addr v4, v13

    iput v4, v1, Lyk;->n:I

    iget-object v13, v5, Lyn;->S:[Lym;

    aget-object v13, v13, v20

    invoke-virtual {v13}, Lym;->b()I

    move-result v13

    add-int/2addr v4, v13

    iput v4, v1, Lyk;->n:I

    iget-object v4, v1, Lyk;->b:Lyn;

    if-nez v4, :cond_3

    iput-object v5, v1, Lyk;->b:Lyn;

    :cond_3
    iput-object v5, v1, Lyk;->d:Lyn;

    iget-object v4, v5, Lyn;->ar:[I

    iget v13, v1, Lyk;->o:I

    aget v4, v4, v13

    if-ne v4, v3, :cond_d

    iget-object v4, v5, Lyn;->v:[I

    aget v4, v4, v13

    if-eqz v4, :cond_4

    if-eq v4, v3, :cond_4

    if-ne v4, v12, :cond_c

    const/4 v4, 0x2

    :cond_4
    iget v12, v1, Lyk;->j:I

    add-int/2addr v12, v7

    iput v12, v1, Lyk;->j:I

    iget-object v12, v5, Lyn;->am:[F

    aget v12, v12, v13

    const/4 v13, 0x0

    cmpl-float v21, v12, v13

    if-lez v21, :cond_5

    iget v13, v1, Lyk;->k:F

    add-float/2addr v13, v12

    iput v13, v1, Lyk;->k:F

    :cond_5
    iget v13, v5, Lyn;->ai:I

    if-eq v13, v8, :cond_9

    if-eqz v4, :cond_6

    if-ne v4, v3, :cond_9

    :cond_6
    const/4 v4, 0x0

    cmpg-float v12, v12, v4

    if-gez v12, :cond_7

    iput-boolean v7, v1, Lyk;->q:Z

    goto :goto_4

    :cond_7
    iput-boolean v7, v1, Lyk;->r:Z

    :goto_4
    iget-object v4, v1, Lyk;->h:Ljava/util/ArrayList;

    if-nez v4, :cond_8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lyk;->h:Ljava/util/ArrayList;

    :cond_8
    iget-object v4, v1, Lyk;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v4, v1, Lyk;->f:Lyn;

    if-nez v4, :cond_a

    iput-object v5, v1, Lyk;->f:Lyn;

    :cond_a
    iget-object v4, v1, Lyk;->g:Lyn;

    if-eqz v4, :cond_b

    iget-object v4, v4, Lyn;->an:[Lyn;

    iget v12, v1, Lyk;->o:I

    aput-object v5, v4, v12

    :cond_b
    iput-object v5, v1, Lyk;->g:Lyn;

    :cond_c
    iget v4, v1, Lyk;->o:I

    :cond_d
    if-eq v6, v5, :cond_e

    iget-object v4, v6, Lyn;->ao:[Lyn;

    iget v6, v1, Lyk;->o:I

    aput-object v5, v4, v6

    :cond_e
    iget-object v4, v5, Lyn;->S:[Lym;

    add-int/lit8 v6, v2, 0x1

    aget-object v4, v4, v6

    iget-object v4, v4, Lym;->f:Lym;

    if-eqz v4, :cond_f

    iget-object v4, v4, Lym;->d:Lyn;

    iget-object v6, v4, Lyn;->S:[Lym;

    aget-object v6, v6, v2

    iget-object v6, v6, Lym;->f:Lym;

    if-eqz v6, :cond_f

    iget-object v6, v6, Lym;->d:Lyn;

    if-eq v6, v5, :cond_10

    :cond_f
    move-object/from16 v4, v17

    :cond_10
    if-eqz v4, :cond_11

    const/4 v6, 0x0

    goto :goto_5

    :cond_11
    const/4 v6, 0x1

    :goto_5
    if-nez v4, :cond_12

    move-object v4, v5

    :cond_12
    move/from16 v18, v6

    const/4 v12, 0x2

    move-object v6, v5

    move-object v5, v4

    goto/16 :goto_2

    :cond_13
    iget-object v4, v1, Lyk;->b:Lyn;

    if-eqz v4, :cond_14

    iget v6, v1, Lyk;->m:I

    iget-object v4, v4, Lyn;->S:[Lym;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lym;->b()I

    move-result v4

    sub-int/2addr v6, v4

    iput v6, v1, Lyk;->m:I

    :cond_14
    iget-object v4, v1, Lyk;->d:Lyn;

    if-eqz v4, :cond_15

    iget v6, v1, Lyk;->m:I

    add-int/lit8 v2, v2, 0x1

    iget-object v4, v4, Lyn;->S:[Lym;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Lym;->b()I

    move-result v2

    sub-int/2addr v6, v2

    iput v6, v1, Lyk;->m:I

    :cond_15
    iput-object v5, v1, Lyk;->c:Lyn;

    iget v2, v1, Lyk;->o:I

    if-nez v2, :cond_16

    iget-boolean v2, v1, Lyk;->p:Z

    if-eqz v2, :cond_16

    iget-object v2, v1, Lyk;->c:Lyn;

    iput-object v2, v1, Lyk;->e:Lyn;

    goto :goto_6

    :cond_16
    iget-object v2, v1, Lyk;->a:Lyn;

    iput-object v2, v1, Lyk;->e:Lyn;

    :goto_6
    iget-boolean v2, v1, Lyk;->r:Z

    if-eqz v2, :cond_17

    iget-boolean v2, v1, Lyk;->q:Z

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    goto :goto_7

    :cond_17
    const/4 v2, 0x0

    :goto_7
    iput-boolean v2, v1, Lyk;->s:Z

    :cond_18
    iput-boolean v7, v1, Lyk;->t:Z

    if-eqz v11, :cond_1a

    iget-object v2, v1, Lyk;->a:Lyn;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_8

    :cond_19
    move/from16 v27, v9

    move/from16 v30, v14

    move-object/from16 v31, v15

    goto/16 :goto_48

    :cond_1a
    :goto_8
    iget-object v12, v1, Lyk;->a:Lyn;

    iget-object v13, v1, Lyk;->c:Lyn;

    iget-object v6, v1, Lyk;->b:Lyn;

    iget-object v5, v1, Lyk;->d:Lyn;

    iget-object v2, v1, Lyk;->e:Lyn;

    iget v4, v1, Lyk;->k:F

    iget-object v8, v1, Lyk;->f:Lyn;

    iget-object v8, v1, Lyk;->g:Lyn;

    iget-object v8, v0, Lyo;->ar:[I

    aget v8, v8, p3

    if-nez p3, :cond_1e

    iget v3, v2, Lyn;->ak:I

    if-nez v3, :cond_1b

    const/16 v23, 0x1

    goto :goto_9

    :cond_1b
    const/16 v23, 0x0

    :goto_9
    if-ne v3, v7, :cond_1c

    const/16 v24, 0x1

    goto :goto_a

    :cond_1c
    const/16 v24, 0x0

    :goto_a
    const/4 v7, 0x2

    if-ne v3, v7, :cond_1d

    const/4 v3, 0x1

    goto :goto_b

    :cond_1d
    const/4 v3, 0x0

    :goto_b
    move-object v7, v12

    move/from16 v26, v24

    move/from16 v24, v23

    move/from16 v23, v4

    const/4 v4, 0x0

    goto :goto_f

    :cond_1e
    iget v3, v2, Lyn;->al:I

    if-nez v3, :cond_1f

    const/4 v7, 0x1

    goto :goto_c

    :cond_1f
    const/4 v7, 0x0

    :goto_c
    move/from16 v23, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_20

    const/4 v4, 0x1

    goto :goto_d

    :cond_20
    const/4 v4, 0x0

    :goto_d
    move/from16 v24, v4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_21

    const/4 v3, 0x1

    goto :goto_e

    :cond_21
    const/4 v3, 0x0

    :goto_e
    move/from16 v26, v24

    const/4 v4, 0x0

    move/from16 v24, v7

    move-object v7, v12

    :goto_f
    move/from16 v27, v9

    if-nez v4, :cond_30

    iget-object v4, v7, Lyn;->S:[Lym;

    aget-object v4, v4, v16

    const/4 v9, 0x1

    if-eq v9, v3, :cond_22

    const/16 v29, 0x4

    goto :goto_10

    :cond_22
    const/16 v29, 0x1

    :goto_10
    invoke-virtual {v4}, Lym;->b()I

    move-result v9

    iget-object v11, v7, Lyn;->ar:[I

    aget v11, v11, p3

    move/from16 v30, v14

    const/4 v14, 0x3

    if-ne v11, v14, :cond_23

    iget-object v11, v7, Lyn;->v:[I

    aget v11, v11, p3

    if-nez v11, :cond_23

    const/4 v11, 0x1

    goto :goto_11

    :cond_23
    const/4 v11, 0x0

    :goto_11
    iget-object v14, v4, Lym;->f:Lym;

    if-eqz v14, :cond_24

    if-eq v7, v12, :cond_24

    invoke-virtual {v14}, Lym;->b()I

    move-result v31

    add-int v9, v9, v31

    :cond_24
    if-eqz v3, :cond_25

    if-eq v7, v12, :cond_25

    if-eq v7, v6, :cond_25

    const/16 v29, 0x8

    :cond_25
    if-eqz v14, :cond_29

    if-ne v7, v6, :cond_26

    move-object/from16 v31, v15

    iget-object v15, v4, Lym;->i:Lyh;

    iget-object v14, v14, Lym;->i:Lyh;

    move-object/from16 v32, v2

    const/4 v2, 0x6

    invoke-virtual {v10, v15, v14, v9, v2}, Lyc;->g(Lyh;Lyh;II)V

    goto :goto_12

    :cond_26
    move-object/from16 v32, v2

    move-object/from16 v31, v15

    iget-object v2, v4, Lym;->i:Lyh;

    iget-object v14, v14, Lym;->i:Lyh;

    const/16 v15, 0x8

    invoke-virtual {v10, v2, v14, v9, v15}, Lyc;->g(Lyh;Lyh;II)V

    :goto_12
    if-eqz v11, :cond_27

    if-nez v3, :cond_27

    const/16 v29, 0x5

    :cond_27
    if-ne v7, v6, :cond_28

    if-eqz v3, :cond_28

    iget-object v2, v7, Lyn;->U:[Z

    aget-boolean v2, v2, p3

    if-eqz v2, :cond_28

    const/4 v2, 0x5

    goto :goto_13

    :cond_28
    move/from16 v2, v29

    :goto_13
    iget-object v11, v4, Lym;->i:Lyh;

    iget-object v4, v4, Lym;->f:Lym;

    iget-object v4, v4, Lym;->i:Lyh;

    invoke-virtual {v10, v11, v4, v9, v2}, Lyc;->m(Lyh;Lyh;II)V

    goto :goto_14

    :cond_29
    move-object/from16 v32, v2

    move-object/from16 v31, v15

    :goto_14
    const/4 v2, 0x2

    if-ne v8, v2, :cond_2b

    iget v2, v7, Lyn;->ai:I

    const/16 v4, 0x8

    if-eq v2, v4, :cond_2a

    iget-object v2, v7, Lyn;->ar:[I

    aget v2, v2, p3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2a

    iget-object v2, v7, Lyn;->S:[Lym;

    add-int/lit8 v4, v16, 0x1

    aget-object v4, v2, v4

    iget-object v4, v4, Lym;->i:Lyh;

    aget-object v2, v2, v16

    iget-object v2, v2, Lym;->i:Lyh;

    const/4 v9, 0x5

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v2, v11, v9}, Lyc;->g(Lyh;Lyh;II)V

    :cond_2a
    iget-object v2, v7, Lyn;->S:[Lym;

    aget-object v2, v2, v16

    iget-object v2, v2, Lym;->i:Lyh;

    iget-object v4, v0, Lyo;->S:[Lym;

    aget-object v4, v4, v16

    iget-object v4, v4, Lym;->i:Lyh;

    const/16 v9, 0x8

    const/4 v11, 0x0

    invoke-virtual {v10, v2, v4, v11, v9}, Lyc;->g(Lyh;Lyh;II)V

    :cond_2b
    iget-object v2, v7, Lyn;->S:[Lym;

    add-int/lit8 v4, v16, 0x1

    aget-object v2, v2, v4

    iget-object v2, v2, Lym;->f:Lym;

    if-eqz v2, :cond_2c

    iget-object v2, v2, Lym;->d:Lyn;

    iget-object v4, v2, Lyn;->S:[Lym;

    aget-object v4, v4, v16

    iget-object v4, v4, Lym;->f:Lym;

    if-eqz v4, :cond_2c

    iget-object v4, v4, Lym;->d:Lyn;

    if-eq v4, v7, :cond_2d

    :cond_2c
    move-object/from16 v2, v17

    :cond_2d
    if-eqz v2, :cond_2e

    const/4 v4, 0x0

    goto :goto_15

    :cond_2e
    const/4 v4, 0x1

    :goto_15
    if-eqz v2, :cond_2f

    move-object v7, v2

    :cond_2f
    move-object/from16 v11, p2

    move/from16 v9, v27

    move/from16 v14, v30

    move-object/from16 v15, v31

    move-object/from16 v2, v32

    goto/16 :goto_f

    :cond_30
    move-object/from16 v32, v2

    move/from16 v30, v14

    move-object/from16 v31, v15

    if-eqz v5, :cond_35

    iget-object v2, v13, Lyn;->S:[Lym;

    add-int/lit8 v4, v16, 0x1

    aget-object v2, v2, v4

    iget-object v2, v2, Lym;->f:Lym;

    if-eqz v2, :cond_34

    iget-object v2, v5, Lyn;->S:[Lym;

    aget-object v2, v2, v4

    iget-object v7, v5, Lyn;->ar:[I

    aget v7, v7, p3

    const/4 v9, 0x3

    if-ne v7, v9, :cond_32

    iget-object v7, v5, Lyn;->v:[I

    aget v7, v7, p3

    if-nez v7, :cond_32

    if-nez v3, :cond_32

    iget-object v7, v2, Lym;->f:Lym;

    iget-object v9, v7, Lym;->d:Lyn;

    if-ne v9, v0, :cond_31

    iget-object v9, v2, Lym;->i:Lyh;

    iget-object v7, v7, Lym;->i:Lyh;

    invoke-virtual {v2}, Lym;->b()I

    move-result v11

    neg-int v11, v11

    const/4 v14, 0x5

    invoke-virtual {v10, v9, v7, v11, v14}, Lyc;->m(Lyh;Lyh;II)V

    goto :goto_17

    :cond_31
    const/4 v14, 0x5

    goto :goto_16

    :cond_32
    const/4 v14, 0x5

    :goto_16
    if-eqz v3, :cond_33

    iget-object v7, v2, Lym;->f:Lym;

    iget-object v9, v7, Lym;->d:Lyn;

    if-ne v9, v0, :cond_33

    iget-object v9, v2, Lym;->i:Lyh;

    iget-object v7, v7, Lym;->i:Lyh;

    invoke-virtual {v2}, Lym;->b()I

    move-result v11

    neg-int v11, v11

    const/4 v15, 0x4

    invoke-virtual {v10, v9, v7, v11, v15}, Lyc;->m(Lyh;Lyh;II)V

    :cond_33
    :goto_17
    iget-object v7, v2, Lym;->i:Lyh;

    iget-object v9, v13, Lyn;->S:[Lym;

    aget-object v4, v9, v4

    iget-object v4, v4, Lym;->f:Lym;

    iget-object v4, v4, Lym;->i:Lyh;

    invoke-virtual {v2}, Lym;->b()I

    move-result v2

    neg-int v2, v2

    const/4 v9, 0x6

    invoke-virtual {v10, v7, v4, v2, v9}, Lyc;->h(Lyh;Lyh;II)V

    goto :goto_18

    :cond_34
    const/4 v14, 0x5

    goto :goto_18

    :cond_35
    const/4 v14, 0x5

    :goto_18
    const/4 v11, 0x2

    if-ne v8, v11, :cond_36

    iget-object v2, v0, Lyo;->S:[Lym;

    add-int/lit8 v4, v16, 0x1

    aget-object v2, v2, v4

    iget-object v2, v2, Lym;->i:Lyh;

    iget-object v7, v13, Lyn;->S:[Lym;

    aget-object v4, v7, v4

    iget-object v7, v4, Lym;->i:Lyh;

    invoke-virtual {v4}, Lym;->b()I

    move-result v4

    const/16 v8, 0x8

    invoke-virtual {v10, v2, v7, v4, v8}, Lyc;->g(Lyh;Lyh;II)V

    :cond_36
    iget-object v2, v1, Lyk;->h:Ljava/util/ArrayList;

    if-eqz v2, :cond_42

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x1

    if-le v4, v7, :cond_41

    iget-boolean v7, v1, Lyk;->q:Z

    if-eqz v7, :cond_37

    iget-boolean v7, v1, Lyk;->s:Z

    if-nez v7, :cond_37

    iget v7, v1, Lyk;->j:I

    int-to-float v7, v7

    move/from16 v23, v7

    goto :goto_19

    :cond_37
    :goto_19
    move-object/from16 v9, v17

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1a
    if-ge v7, v4, :cond_40

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lyn;

    iget-object v11, v15, Lyn;->am:[F

    aget v11, v11, p3

    const/16 v19, 0x0

    cmpg-float v22, v11, v19

    if-gez v22, :cond_39

    iget-boolean v11, v1, Lyk;->s:Z

    if-eqz v11, :cond_38

    iget-object v11, v15, Lyn;->S:[Lym;

    add-int/lit8 v14, v16, 0x1

    aget-object v14, v11, v14

    iget-object v14, v14, Lym;->i:Lyh;

    aget-object v11, v11, v16

    iget-object v11, v11, Lym;->i:Lyh;

    const/4 v0, 0x0

    const/4 v15, 0x4

    invoke-virtual {v10, v14, v11, v0, v15}, Lyc;->m(Lyh;Lyh;II)V

    const/4 v15, 0x0

    goto :goto_1c

    :cond_38
    const/4 v0, 0x4

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_1b

    :cond_39
    const/4 v0, 0x4

    :goto_1b
    const/16 v19, 0x0

    cmpl-float v22, v11, v19

    if-nez v22, :cond_3a

    iget-object v11, v15, Lyn;->S:[Lym;

    add-int/lit8 v14, v16, 0x1

    aget-object v14, v11, v14

    iget-object v14, v14, Lym;->i:Lyh;

    aget-object v11, v11, v16

    iget-object v11, v11, Lym;->i:Lyh;

    const/16 v0, 0x8

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v11, v15, v0}, Lyc;->m(Lyh;Lyh;II)V

    :goto_1c
    move-object/from16 v19, v1

    move-object/from16 v33, v2

    move/from16 v22, v4

    goto/16 :goto_20

    :cond_3a
    const/4 v0, 0x0

    if-eqz v9, :cond_3f

    iget-object v9, v9, Lyn;->S:[Lym;

    aget-object v0, v9, v16

    iget-object v0, v0, Lym;->i:Lyh;

    add-int/lit8 v22, v16, 0x1

    aget-object v9, v9, v22

    iget-object v9, v9, Lym;->i:Lyh;

    iget-object v14, v15, Lyn;->S:[Lym;

    move-object/from16 v33, v2

    aget-object v2, v14, v16

    iget-object v2, v2, Lym;->i:Lyh;

    aget-object v14, v14, v22

    iget-object v14, v14, Lym;->i:Lyh;

    move/from16 v22, v4

    invoke-virtual/range {p1 .. p1}, Lyc;->a()Lyb;

    move-result-object v4

    move-object/from16 v34, v15

    const/4 v15, 0x0

    iput v15, v4, Lyb;->b:F

    move-object/from16 v19, v1

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v35, v23, v15

    if-eqz v35, :cond_3e

    cmpl-float v35, v8, v11

    if-nez v35, :cond_3b

    goto :goto_1d

    :cond_3b
    cmpl-float v35, v8, v15

    if-nez v35, :cond_3c

    iget-object v2, v4, Lyb;->e:Lya;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v2, v0, v8}, Lya;->g(Lyh;F)V

    iget-object v0, v4, Lyb;->e:Lya;

    invoke-virtual {v0, v9, v1}, Lya;->g(Lyh;F)V

    goto :goto_1e

    :cond_3c
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v28, v11, v15

    if-nez v28, :cond_3d

    iget-object v0, v4, Lyb;->e:Lya;

    invoke-virtual {v0, v2, v1}, Lya;->g(Lyh;F)V

    iget-object v0, v4, Lyb;->e:Lya;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v14, v1}, Lya;->g(Lyh;F)V

    goto :goto_1e

    :cond_3d
    const/high16 v15, -0x40800000    # -1.0f

    div-float v8, v8, v23

    div-float v28, v11, v23

    iget-object v15, v4, Lyb;->e:Lya;

    invoke-virtual {v15, v0, v1}, Lya;->g(Lyh;F)V

    iget-object v0, v4, Lyb;->e:Lya;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v9, v1}, Lya;->g(Lyh;F)V

    iget-object v0, v4, Lyb;->e:Lya;

    div-float v8, v8, v28

    invoke-virtual {v0, v14, v8}, Lya;->g(Lyh;F)V

    iget-object v0, v4, Lyb;->e:Lya;

    neg-float v1, v8

    invoke-virtual {v0, v2, v1}, Lya;->g(Lyh;F)V

    goto :goto_1e

    :cond_3e
    :goto_1d
    iget-object v1, v4, Lyb;->e:Lya;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v8}, Lya;->g(Lyh;F)V

    iget-object v0, v4, Lyb;->e:Lya;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v9, v1}, Lya;->g(Lyh;F)V

    iget-object v0, v4, Lyb;->e:Lya;

    invoke-virtual {v0, v14, v8}, Lya;->g(Lyh;F)V

    iget-object v0, v4, Lyb;->e:Lya;

    invoke-virtual {v0, v2, v1}, Lya;->g(Lyh;F)V

    :goto_1e
    invoke-virtual {v10, v4}, Lyc;->e(Lyb;)V

    goto :goto_1f

    :cond_3f
    move-object/from16 v19, v1

    move-object/from16 v33, v2

    move/from16 v22, v4

    move-object/from16 v34, v15

    :goto_1f
    move v8, v11

    move-object/from16 v9, v34

    :goto_20
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v19

    move/from16 v4, v22

    move-object/from16 v2, v33

    const/4 v11, 0x2

    const/4 v14, 0x5

    move-object/from16 v0, p0

    goto/16 :goto_1a

    :cond_40
    move-object/from16 v19, v1

    goto :goto_21

    :cond_41
    move-object/from16 v19, v1

    goto :goto_21

    :cond_42
    move-object/from16 v19, v1

    :goto_21
    if-eqz v6, :cond_4a

    if-eq v6, v5, :cond_44

    if-eqz v3, :cond_43

    goto :goto_22

    :cond_43
    move-object v14, v5

    move-object v15, v6

    move/from16 v0, v27

    goto/16 :goto_27

    :cond_44
    :goto_22
    iget-object v0, v12, Lyn;->S:[Lym;

    aget-object v0, v0, v16

    iget-object v1, v13, Lyn;->S:[Lym;

    add-int/lit8 v2, v16, 0x1

    aget-object v1, v1, v2

    iget-object v0, v0, Lym;->f:Lym;

    if-eqz v0, :cond_45

    iget-object v0, v0, Lym;->i:Lyh;

    move-object v3, v0

    goto :goto_23

    :cond_45
    move-object/from16 v3, v17

    :goto_23
    iget-object v0, v1, Lym;->f:Lym;

    if-eqz v0, :cond_46

    iget-object v0, v0, Lym;->i:Lyh;

    goto :goto_24

    :cond_46
    move-object/from16 v0, v17

    :goto_24
    iget-object v4, v6, Lyn;->S:[Lym;

    aget-object v4, v4, v16

    if-eqz v5, :cond_47

    iget-object v1, v5, Lyn;->S:[Lym;

    aget-object v1, v1, v2

    goto :goto_25

    :cond_47
    :goto_25
    if-eqz v3, :cond_49

    if-eqz v0, :cond_49

    if-nez p3, :cond_48

    move-object/from16 v2, v32

    iget v2, v2, Lyn;->af:F

    move v7, v2

    goto :goto_26

    :cond_48
    move-object/from16 v2, v32

    iget v2, v2, Lyn;->ag:F

    move v7, v2

    :goto_26
    invoke-virtual {v4}, Lym;->b()I

    move-result v8

    invoke-virtual {v1}, Lym;->b()I

    move-result v9

    iget-object v2, v4, Lym;->i:Lyh;

    iget-object v11, v1, Lym;->i:Lyh;

    const/4 v12, 0x7

    move-object/from16 v1, p1

    move v4, v8

    move-object v14, v5

    move v5, v7

    move-object v15, v6

    move-object v6, v0

    move-object v7, v11

    move v8, v9

    move/from16 v0, v27

    move v9, v12

    invoke-virtual/range {v1 .. v9}, Lyc;->d(Lyh;Lyh;IFLyh;Lyh;II)V

    goto/16 :goto_42

    :cond_49
    move-object v14, v5

    move-object v15, v6

    move/from16 v0, v27

    goto/16 :goto_42

    :cond_4a
    move-object v14, v5

    move-object v15, v6

    move/from16 v0, v27

    :goto_27
    if-eqz v24, :cond_5d

    if-eqz v15, :cond_5d

    move-object/from16 v1, v19

    iget v2, v1, Lyk;->j:I

    if-lez v2, :cond_4b

    iget v1, v1, Lyk;->i:I

    if-ne v1, v2, :cond_4b

    const/4 v11, 0x1

    goto :goto_28

    :cond_4b
    const/4 v11, 0x0

    :goto_28
    move-object v8, v15

    move-object v9, v8

    :goto_29
    if-eqz v9, :cond_5c

    iget-object v1, v9, Lyn;->ao:[Lyn;

    aget-object v1, v1, p3

    move-object v7, v1

    :goto_2a
    if-eqz v7, :cond_4c

    iget v1, v7, Lyn;->ai:I

    const/16 v6, 0x8

    if-ne v1, v6, :cond_4d

    iget-object v1, v7, Lyn;->ao:[Lyn;

    aget-object v7, v1, p3

    goto :goto_2a

    :cond_4c
    const/16 v6, 0x8

    :cond_4d
    if-nez v7, :cond_4f

    if-ne v9, v14, :cond_4e

    goto :goto_2b

    :cond_4e
    move/from16 v27, v0

    move-object/from16 v19, v7

    move-object/from16 v21, v8

    move-object v0, v9

    move/from16 v22, v11

    const/4 v11, 0x5

    goto/16 :goto_33

    :cond_4f
    :goto_2b
    iget-object v1, v9, Lyn;->S:[Lym;

    aget-object v1, v1, v16

    iget-object v2, v1, Lym;->i:Lyh;

    iget-object v3, v1, Lym;->f:Lym;

    if-eqz v3, :cond_50

    iget-object v3, v3, Lym;->i:Lyh;

    goto :goto_2c

    :cond_50
    move-object/from16 v3, v17

    :goto_2c
    if-eq v8, v9, :cond_51

    iget-object v3, v8, Lyn;->S:[Lym;

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Lym;->i:Lyh;

    goto :goto_2d

    :cond_51
    if-ne v9, v15, :cond_53

    iget-object v3, v12, Lyn;->S:[Lym;

    aget-object v3, v3, v16

    iget-object v3, v3, Lym;->f:Lym;

    if-eqz v3, :cond_52

    iget-object v3, v3, Lym;->i:Lyh;

    goto :goto_2d

    :cond_52
    move-object/from16 v3, v17

    :cond_53
    :goto_2d
    invoke-virtual {v1}, Lym;->b()I

    move-result v1

    iget-object v4, v9, Lyn;->S:[Lym;

    add-int/lit8 v5, v16, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lym;->b()I

    move-result v4

    if-eqz v7, :cond_54

    iget-object v6, v7, Lyn;->S:[Lym;

    aget-object v6, v6, v16

    move-object/from16 v19, v7

    iget-object v7, v6, Lym;->i:Lyh;

    goto :goto_2e

    :cond_54
    move-object/from16 v19, v7

    iget-object v6, v13, Lyn;->S:[Lym;

    aget-object v6, v6, v5

    iget-object v6, v6, Lym;->f:Lym;

    if-eqz v6, :cond_55

    iget-object v7, v6, Lym;->i:Lyh;

    goto :goto_2e

    :cond_55
    move-object/from16 v7, v17

    :goto_2e
    move/from16 v27, v0

    iget-object v0, v9, Lyn;->S:[Lym;

    aget-object v0, v0, v5

    iget-object v0, v0, Lym;->i:Lyh;

    if-eqz v6, :cond_56

    invoke-virtual {v6}, Lym;->b()I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_2f

    :cond_56
    :goto_2f
    iget-object v6, v8, Lyn;->S:[Lym;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lym;->b()I

    move-result v6

    add-int/2addr v1, v6

    if-eqz v2, :cond_5a

    if-eqz v3, :cond_5a

    if-eqz v7, :cond_5a

    if-eqz v0, :cond_5a

    if-ne v9, v15, :cond_57

    iget-object v1, v15, Lyn;->S:[Lym;

    aget-object v1, v1, v16

    invoke-virtual {v1}, Lym;->b()I

    move-result v1

    move v6, v1

    goto :goto_30

    :cond_57
    move v6, v1

    :goto_30
    if-ne v9, v14, :cond_58

    iget-object v1, v14, Lyn;->S:[Lym;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lym;->b()I

    move-result v1

    move/from16 v22, v1

    goto :goto_31

    :cond_58
    move/from16 v22, v4

    :goto_31
    const/4 v5, 0x1

    if-eq v5, v11, :cond_59

    const/16 v23, 0x5

    goto :goto_32

    :cond_59
    const/16 v23, 0x8

    :goto_32
    const/high16 v25, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move v4, v6

    const/16 v28, 0x1

    move/from16 v5, v25

    const/16 v21, 0x8

    move-object v6, v7

    move-object v7, v0

    move-object v0, v8

    move/from16 v8, v22

    move-object/from16 v21, v0

    move-object v0, v9

    move/from16 v22, v11

    const/4 v11, 0x5

    move/from16 v9, v23

    invoke-virtual/range {v1 .. v9}, Lyc;->d(Lyh;Lyh;IFLyh;Lyh;II)V

    goto :goto_33

    :cond_5a
    move-object/from16 v21, v8

    move-object v0, v9

    move/from16 v22, v11

    const/4 v11, 0x5

    :goto_33
    iget v1, v0, Lyn;->ai:I

    const/16 v9, 0x8

    if-eq v1, v9, :cond_5b

    move-object v8, v0

    goto :goto_34

    :cond_5b
    move-object/from16 v8, v21

    :goto_34
    move-object/from16 v9, v19

    move/from16 v11, v22

    move/from16 v0, v27

    goto/16 :goto_29

    :cond_5c
    move/from16 v27, v0

    goto/16 :goto_42

    :cond_5d
    move/from16 v27, v0

    move-object/from16 v1, v19

    const/16 v9, 0x8

    const/4 v11, 0x5

    if-eqz v26, :cond_6c

    if-eqz v15, :cond_6c

    iget v0, v1, Lyk;->j:I

    if-lez v0, :cond_5e

    iget v1, v1, Lyk;->i:I

    if-ne v1, v0, :cond_5e

    const/4 v0, 0x1

    goto :goto_35

    :cond_5e
    const/4 v0, 0x0

    :goto_35
    move-object v7, v15

    move-object v8, v7

    :goto_36
    if-eqz v8, :cond_69

    iget-object v1, v8, Lyn;->ao:[Lyn;

    aget-object v1, v1, p3

    :goto_37
    if-eqz v1, :cond_5f

    iget v2, v1, Lyn;->ai:I

    if-ne v2, v9, :cond_5f

    iget-object v1, v1, Lyn;->ao:[Lyn;

    aget-object v1, v1, p3

    goto :goto_37

    :cond_5f
    if-eq v8, v15, :cond_67

    if-eq v8, v14, :cond_67

    if-eqz v1, :cond_67

    if-ne v1, v14, :cond_60

    move-object/from16 v6, v17

    goto :goto_38

    :cond_60
    move-object v6, v1

    :goto_38
    iget-object v1, v8, Lyn;->S:[Lym;

    aget-object v1, v1, v16

    iget-object v2, v1, Lym;->i:Lyh;

    iget-object v3, v1, Lym;->f:Lym;

    iget-object v3, v7, Lyn;->S:[Lym;

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Lym;->i:Lyh;

    invoke-virtual {v1}, Lym;->b()I

    move-result v1

    iget-object v5, v8, Lyn;->S:[Lym;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lym;->b()I

    move-result v5

    if-eqz v6, :cond_62

    iget-object v9, v6, Lyn;->S:[Lym;

    aget-object v9, v9, v16

    iget-object v11, v9, Lym;->i:Lyh;

    move-object/from16 v19, v6

    iget-object v6, v9, Lym;->f:Lym;

    if-eqz v6, :cond_61

    iget-object v6, v6, Lym;->i:Lyh;

    goto :goto_39

    :cond_61
    move-object/from16 v6, v17

    :goto_39
    move-object/from16 v36, v11

    move-object v11, v6

    move-object/from16 v6, v36

    goto :goto_3b

    :cond_62
    move-object/from16 v19, v6

    iget-object v6, v14, Lyn;->S:[Lym;

    aget-object v9, v6, v16

    if-eqz v9, :cond_63

    iget-object v6, v9, Lym;->i:Lyh;

    goto :goto_3a

    :cond_63
    move-object/from16 v6, v17

    :goto_3a
    iget-object v11, v8, Lyn;->S:[Lym;

    aget-object v11, v11, v4

    iget-object v11, v11, Lym;->i:Lyh;

    :goto_3b
    if-eqz v9, :cond_64

    invoke-virtual {v9}, Lym;->b()I

    move-result v9

    add-int/2addr v5, v9

    move v9, v5

    goto :goto_3c

    :cond_64
    move v9, v5

    :goto_3c
    iget-object v5, v7, Lyn;->S:[Lym;

    aget-object v4, v5, v4

    invoke-virtual {v4}, Lym;->b()I

    move-result v4

    add-int/2addr v4, v1

    const/4 v5, 0x1

    if-eq v5, v0, :cond_65

    const/16 v21, 0x4

    goto :goto_3d

    :cond_65
    const/16 v21, 0x8

    :goto_3d
    if-eqz v2, :cond_66

    if-eqz v3, :cond_66

    if-eqz v6, :cond_66

    if-eqz v11, :cond_66

    const/high16 v22, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    const/16 v23, 0x1

    move/from16 v5, v22

    move-object/from16 v22, v7

    move-object v7, v11

    move-object v11, v8

    move v8, v9

    move/from16 v28, v0

    const/16 v0, 0x8

    const/16 v25, 0x4

    move/from16 v9, v21

    invoke-virtual/range {v1 .. v9}, Lyc;->d(Lyh;Lyh;IFLyh;Lyh;II)V

    goto :goto_3e

    :cond_66
    move/from16 v28, v0

    move-object/from16 v22, v7

    move-object v11, v8

    const/16 v0, 0x8

    const/16 v23, 0x1

    const/16 v25, 0x4

    :goto_3e
    move-object/from16 v8, v19

    goto :goto_3f

    :cond_67
    move/from16 v28, v0

    move-object/from16 v22, v7

    move-object v11, v8

    const/16 v0, 0x8

    const/16 v23, 0x1

    const/16 v25, 0x4

    move-object v8, v1

    :goto_3f
    iget v1, v11, Lyn;->ai:I

    if-eq v1, v0, :cond_68

    move-object v7, v11

    goto :goto_40

    :cond_68
    move-object/from16 v7, v22

    :goto_40
    move/from16 v0, v28

    const/16 v9, 0x8

    const/4 v11, 0x5

    goto/16 :goto_36

    :cond_69
    iget-object v0, v15, Lyn;->S:[Lym;

    aget-object v0, v0, v16

    iget-object v1, v12, Lyn;->S:[Lym;

    aget-object v1, v1, v16

    iget-object v1, v1, Lym;->f:Lym;

    iget-object v2, v14, Lyn;->S:[Lym;

    add-int/lit8 v3, v16, 0x1

    aget-object v11, v2, v3

    iget-object v2, v13, Lyn;->S:[Lym;

    aget-object v2, v2, v3

    iget-object v12, v2, Lym;->f:Lym;

    if-eqz v1, :cond_6b

    if-eq v15, v14, :cond_6a

    iget-object v2, v0, Lym;->i:Lyh;

    iget-object v1, v1, Lym;->i:Lyh;

    invoke-virtual {v0}, Lym;->b()I

    move-result v0

    const/4 v3, 0x5

    invoke-virtual {v10, v2, v1, v0, v3}, Lyc;->m(Lyh;Lyh;II)V

    goto :goto_41

    :cond_6a
    if-eqz v12, :cond_6b

    iget-object v2, v0, Lym;->i:Lyh;

    iget-object v3, v1, Lym;->i:Lyh;

    invoke-virtual {v0}, Lym;->b()I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    iget-object v6, v11, Lym;->i:Lyh;

    iget-object v7, v12, Lym;->i:Lyh;

    invoke-virtual {v11}, Lym;->b()I

    move-result v8

    const/4 v9, 0x5

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Lyc;->d(Lyh;Lyh;IFLyh;Lyh;II)V

    :cond_6b
    :goto_41
    if-eqz v12, :cond_6c

    if-eq v15, v14, :cond_6c

    iget-object v0, v11, Lym;->i:Lyh;

    iget-object v1, v12, Lym;->i:Lyh;

    invoke-virtual {v11}, Lym;->b()I

    move-result v2

    neg-int v2, v2

    const/4 v3, 0x5

    invoke-virtual {v10, v0, v1, v2, v3}, Lyc;->m(Lyh;Lyh;II)V

    :cond_6c
    :goto_42
    if-nez v24, :cond_6d

    if-eqz v26, :cond_74

    :cond_6d
    if-eqz v15, :cond_74

    if-eq v15, v14, :cond_74

    iget-object v0, v15, Lyn;->S:[Lym;

    aget-object v1, v0, v16

    if-nez v14, :cond_6e

    move-object v6, v15

    goto :goto_43

    :cond_6e
    move-object v6, v14

    :goto_43
    add-int/lit8 v2, v16, 0x1

    iget-object v3, v6, Lyn;->S:[Lym;

    aget-object v3, v3, v2

    iget-object v4, v1, Lym;->f:Lym;

    if-eqz v4, :cond_6f

    iget-object v4, v4, Lym;->i:Lyh;

    goto :goto_44

    :cond_6f
    move-object/from16 v4, v17

    :goto_44
    iget-object v5, v3, Lym;->f:Lym;

    if-eqz v5, :cond_70

    iget-object v5, v5, Lym;->i:Lyh;

    goto :goto_45

    :cond_70
    move-object/from16 v5, v17

    :goto_45
    if-eq v13, v6, :cond_72

    iget-object v5, v13, Lyn;->S:[Lym;

    aget-object v5, v5, v2

    iget-object v5, v5, Lym;->f:Lym;

    if-eqz v5, :cond_71

    iget-object v5, v5, Lym;->i:Lyh;

    move-object/from16 v17, v5

    goto :goto_46

    :cond_71
    goto :goto_46

    :cond_72
    move-object/from16 v17, v5

    :goto_46
    if-ne v15, v6, :cond_73

    aget-object v3, v0, v2

    goto :goto_47

    :cond_73
    :goto_47
    if-eqz v4, :cond_74

    if-eqz v17, :cond_74

    invoke-virtual {v1}, Lym;->b()I

    move-result v0

    iget-object v5, v6, Lyn;->S:[Lym;

    aget-object v2, v5, v2

    invoke-virtual {v2}, Lym;->b()I

    move-result v8

    iget-object v2, v1, Lym;->i:Lyh;

    const/high16 v5, 0x3f000000    # 0.5f

    iget-object v7, v3, Lym;->i:Lyh;

    const/4 v9, 0x5

    move-object/from16 v1, p1

    move-object v3, v4

    move v4, v0

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v9}, Lyc;->d(Lyh;Lyh;IFLyh;Lyh;II)V

    :cond_74
    :goto_48
    add-int/lit8 v9, v27, 0x1

    const/4 v12, 0x2

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    move/from16 v14, v30

    move-object/from16 v15, v31

    goto/16 :goto_1

    :cond_75
    return-void
.end method
