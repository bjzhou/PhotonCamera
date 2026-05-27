.class public final Lao;
.super Las;


# instance fields
.field protected final af:Lak;

.field ag:I

.field ah:I

.field public ai:I

.field public aj:Z

.field public ak:Z

.field private am:Lar;

.field private an:I

.field private ao:I

.field private ap:[Lan;

.field private aq:[Lan;

.field private ar:[Lan;

.field private final as:[Z

.field private final at:[Lan;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Las;-><init>()V

    new-instance v0, Lak;

    invoke-direct {v0}, Lak;-><init>()V

    iput-object v0, p0, Lao;->af:Lak;

    const/4 v0, 0x0

    iput v0, p0, Lao;->an:I

    iput v0, p0, Lao;->ao:I

    const/4 v1, 0x4

    new-array v2, v1, [Lan;

    iput-object v2, p0, Lao;->ap:[Lan;

    new-array v2, v1, [Lan;

    iput-object v2, p0, Lao;->aq:[Lan;

    new-array v2, v1, [Lan;

    iput-object v2, p0, Lao;->ar:[Lan;

    const/4 v2, 0x2

    iput v2, p0, Lao;->ai:I

    const/4 v2, 0x3

    new-array v2, v2, [Z

    iput-object v2, p0, Lao;->as:[Z

    new-array v1, v1, [Lan;

    iput-object v1, p0, Lao;->at:[Lan;

    iput-boolean v0, p0, Lao;->aj:Z

    iput-boolean v0, p0, Lao;->ak:Z

    return-void
.end method

.method private final G(Lak;[Lan;Lan;I[Z)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-boolean v4, p5, v3

    aput-boolean v3, p5, v4

    const/4 v5, 0x0

    aput-object v5, p2, v3

    const/4 v6, 0x2

    aput-object v5, p2, v6

    aput-object v5, p2, v4

    const/4 v7, 0x3

    aput-object v5, p2, v7

    const/4 v8, 0x0

    const/4 v9, 0x5

    const/16 v10, 0x8

    if-nez p4, :cond_d

    iget-object v11, v2, Lan;->i:Lam;

    iget-object v11, v11, Lam;->b:Lam;

    if-eqz v11, :cond_0

    iget-object v11, v11, Lam;->a:Lan;

    if-eq v11, v0, :cond_0

    const/4 v11, 0x0

    goto :goto_0

    :cond_0
    const/4 v11, 0x1

    :goto_0
    iput-object v5, v2, Lan;->ab:Lan;

    iget v12, v2, Lan;->K:I

    if-eq v12, v10, :cond_1

    move-object v12, v2

    goto :goto_1

    :cond_1
    move-object v12, v5

    :goto_1
    move-object v14, v2

    move-object v6, v5

    move-object v13, v12

    const/4 v15, 0x0

    :goto_2
    iget-object v4, v14, Lan;->k:Lam;

    iget-object v4, v4, Lam;->b:Lam;

    if-eqz v4, :cond_9

    iput-object v5, v14, Lan;->ab:Lan;

    iget v4, v14, Lan;->K:I

    if-eq v4, v10, :cond_4

    if-nez v12, :cond_2

    move-object v12, v14

    :cond_2
    if-eqz v13, :cond_3

    if-eq v13, v14, :cond_3

    iput-object v14, v13, Lan;->ab:Lan;

    goto :goto_3

    :cond_3
    :goto_3
    move-object v13, v14

    goto :goto_4

    :cond_4
    iget-object v4, v14, Lan;->i:Lam;

    iget-object v5, v4, Lam;->f:Lal;

    iget-object v4, v4, Lam;->b:Lam;

    iget-object v4, v4, Lam;->f:Lal;

    invoke-virtual {v1, v5, v4, v3, v9}, Lak;->n(Lal;Lal;II)V

    iget-object v4, v14, Lan;->k:Lam;

    iget-object v4, v4, Lam;->f:Lal;

    iget-object v5, v14, Lan;->i:Lam;

    iget-object v5, v5, Lam;->f:Lal;

    invoke-virtual {v1, v4, v5, v3, v9}, Lak;->n(Lal;Lal;II)V

    :goto_4
    iget v4, v14, Lan;->K:I

    if-eq v4, v10, :cond_7

    iget v4, v14, Lan;->ad:I

    if-ne v4, v7, :cond_7

    iget v4, v14, Lan;->ae:I

    if-ne v4, v7, :cond_5

    aput-boolean v3, p5, v3

    :cond_5
    iget v4, v14, Lan;->u:F

    cmpg-float v4, v4, v8

    if-gtz v4, :cond_7

    aput-boolean v3, p5, v3

    add-int/lit8 v4, v15, 0x1

    iget-object v5, v0, Lao;->ap:[Lan;

    array-length v8, v5

    if-lt v4, v8, :cond_6

    add-int/2addr v8, v8

    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lan;

    iput-object v5, v0, Lao;->ap:[Lan;

    :cond_6
    iget-object v5, v0, Lao;->ap:[Lan;

    aput-object v14, v5, v15

    move v15, v4

    :cond_7
    iget-object v4, v14, Lan;->k:Lam;

    iget-object v4, v4, Lam;->b:Lam;

    iget-object v4, v4, Lam;->a:Lan;

    iget-object v5, v4, Lan;->i:Lam;

    iget-object v5, v5, Lam;->b:Lam;

    if-nez v5, :cond_8

    goto :goto_5

    :cond_8
    iget-object v5, v5, Lam;->a:Lan;

    if-ne v5, v14, :cond_9

    if-eq v4, v14, :cond_9

    move-object v6, v4

    move-object v14, v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    goto :goto_2

    :cond_9
    :goto_5
    iget-object v1, v14, Lan;->k:Lam;

    iget-object v1, v1, Lam;->b:Lam;

    if-eqz v1, :cond_a

    iget-object v1, v1, Lam;->a:Lan;

    if-eq v1, v0, :cond_a

    const/4 v11, 0x0

    :cond_a
    iget-object v1, v2, Lan;->i:Lam;

    iget-object v1, v1, Lam;->b:Lam;

    if-eqz v1, :cond_c

    iget-object v1, v6, Lan;->k:Lam;

    iget-object v1, v1, Lam;->b:Lam;

    if-nez v1, :cond_b

    goto :goto_6

    :cond_b
    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v1, 0x1

    aput-boolean v1, p5, v1

    :goto_7
    iput-boolean v11, v2, Lan;->X:Z

    const/4 v4, 0x0

    iput-object v4, v6, Lan;->ab:Lan;

    aput-object v2, p2, v3

    const/4 v2, 0x2

    aput-object v12, p2, v2

    aput-object v6, p2, v1

    aput-object v13, p2, v7

    goto/16 :goto_12

    :cond_d
    iget-object v4, v2, Lan;->j:Lam;

    iget-object v4, v4, Lam;->b:Lam;

    if-eqz v4, :cond_e

    iget-object v4, v4, Lam;->a:Lan;

    if-eq v4, v0, :cond_e

    const/4 v4, 0x0

    goto :goto_8

    :cond_e
    const/4 v4, 0x1

    :goto_8
    const/4 v5, 0x0

    iput-object v5, v2, Lan;->ac:Lan;

    iget v5, v2, Lan;->K:I

    if-eq v5, v10, :cond_f

    move-object v5, v2

    goto :goto_9

    :cond_f
    const/4 v5, 0x0

    :goto_9
    move-object v11, v2

    move-object v6, v5

    move-object v8, v6

    const/4 v5, 0x0

    const/4 v12, 0x0

    :goto_a
    iget-object v13, v11, Lan;->l:Lam;

    iget-object v13, v13, Lam;->b:Lam;

    if-eqz v13, :cond_1a

    const/4 v13, 0x0

    iput-object v13, v11, Lan;->ac:Lan;

    iget v13, v11, Lan;->K:I

    if-eq v13, v10, :cond_12

    if-nez v6, :cond_10

    move-object v6, v11

    :cond_10
    if-eqz v8, :cond_11

    if-eq v8, v11, :cond_11

    iput-object v11, v8, Lan;->ac:Lan;

    goto :goto_b

    :cond_11
    :goto_b
    move-object v8, v11

    goto :goto_c

    :cond_12
    iget-object v13, v11, Lan;->j:Lam;

    iget-object v14, v13, Lam;->f:Lal;

    iget-object v13, v13, Lam;->b:Lam;

    iget-object v13, v13, Lam;->f:Lal;

    invoke-virtual {v1, v14, v13, v3, v9}, Lak;->n(Lal;Lal;II)V

    iget-object v13, v11, Lan;->l:Lam;

    iget-object v13, v13, Lam;->f:Lal;

    iget-object v14, v11, Lan;->j:Lam;

    iget-object v14, v14, Lam;->f:Lal;

    invoke-virtual {v1, v13, v14, v3, v9}, Lak;->n(Lal;Lal;II)V

    :goto_c
    iget v13, v11, Lan;->K:I

    if-eq v13, v10, :cond_16

    iget v13, v11, Lan;->ae:I

    if-ne v13, v7, :cond_15

    iget v13, v11, Lan;->ad:I

    if-ne v13, v7, :cond_13

    aput-boolean v3, p5, v3

    :cond_13
    iget v13, v11, Lan;->u:F

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_17

    aput-boolean v3, p5, v3

    add-int/lit8 v13, v12, 0x1

    iget-object v15, v0, Lao;->ap:[Lan;

    array-length v9, v15

    if-lt v13, v9, :cond_14

    add-int/2addr v9, v9

    invoke-static {v15, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lan;

    iput-object v9, v0, Lao;->ap:[Lan;

    :cond_14
    iget-object v9, v0, Lao;->ap:[Lan;

    aput-object v11, v9, v12

    move v12, v13

    goto :goto_d

    :cond_15
    const/4 v14, 0x0

    goto :goto_d

    :cond_16
    const/4 v14, 0x0

    :cond_17
    :goto_d
    iget-object v9, v11, Lan;->l:Lam;

    iget-object v9, v9, Lam;->b:Lam;

    iget-object v9, v9, Lam;->a:Lan;

    iget-object v13, v9, Lan;->j:Lam;

    iget-object v13, v13, Lam;->b:Lam;

    if-nez v13, :cond_18

    goto :goto_e

    :cond_18
    iget-object v13, v13, Lam;->a:Lan;

    if-ne v13, v11, :cond_19

    if-eq v9, v11, :cond_19

    move-object v5, v9

    move-object v11, v5

    const/4 v9, 0x5

    goto :goto_a

    :cond_19
    :goto_e
    move v15, v12

    goto :goto_f

    :cond_1a
    move v15, v12

    :goto_f
    iget-object v1, v11, Lan;->l:Lam;

    iget-object v1, v1, Lam;->b:Lam;

    if-eqz v1, :cond_1b

    iget-object v1, v1, Lam;->a:Lan;

    if-eq v1, v0, :cond_1b

    const/4 v4, 0x0

    :cond_1b
    iget-object v1, v2, Lan;->j:Lam;

    iget-object v1, v1, Lam;->b:Lam;

    if-eqz v1, :cond_1d

    iget-object v1, v5, Lan;->l:Lam;

    iget-object v1, v1, Lam;->b:Lam;

    if-nez v1, :cond_1c

    goto :goto_10

    :cond_1c
    const/4 v1, 0x1

    goto :goto_11

    :cond_1d
    :goto_10
    const/4 v1, 0x1

    aput-boolean v1, p5, v1

    :goto_11
    iput-boolean v4, v2, Lan;->Y:Z

    const/4 v4, 0x0

    iput-object v4, v5, Lan;->ac:Lan;

    aput-object v2, p2, v3

    const/4 v2, 0x2

    aput-object v6, p2, v2

    aput-object v5, p2, v1

    aput-object v8, p2, v7

    :goto_12
    return v15
.end method

.method private final H(Lak;)V
    .locals 30

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    const/4 v14, 0x0

    const/4 v13, 0x0

    :goto_0
    iget v0, v6, Lao;->an:I

    if-ge v13, v0, :cond_4d

    iget-object v0, v6, Lao;->ar:[Lan;

    aget-object v12, v0, v13

    iget-object v2, v6, Lao;->at:[Lan;

    const/4 v4, 0x0

    iget-object v5, v6, Lao;->as:[Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v12

    invoke-direct/range {v0 .. v5}, Lao;->G(Lak;[Lan;Lan;I[Z)I

    move-result v0

    iget-object v1, v6, Lao;->at:[Lan;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    move v0, v13

    const/4 v6, 0x0

    goto/16 :goto_2a

    :cond_0
    iget-object v3, v6, Lao;->as:[Z

    const/4 v4, 0x1

    aget-boolean v5, v3, v4

    if-eqz v5, :cond_2

    invoke-virtual {v12}, Lan;->b()I

    move-result v0

    :goto_1
    if-eqz v1, :cond_1

    iget-object v2, v1, Lan;->i:Lam;

    iget-object v2, v2, Lam;->f:Lal;

    invoke-virtual {v15, v2, v0}, Lak;->h(Lal;I)V

    iget-object v2, v1, Lan;->ab:Lan;

    iget-object v3, v1, Lan;->i:Lam;

    invoke-virtual {v3}, Lam;->a()I

    move-result v3

    invoke-virtual {v1}, Lan;->h()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v1, v1, Lan;->k:Lam;

    invoke-virtual {v1}, Lam;->a()I

    move-result v1

    add-int/2addr v3, v1

    add-int/2addr v0, v3

    move-object v1, v2

    goto :goto_1

    :cond_1
    move v0, v13

    const/4 v6, 0x0

    goto/16 :goto_2a

    :cond_2
    iget v5, v12, Lan;->V:I

    if-nez v5, :cond_3

    const/16 v16, 0x1

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    :goto_2
    if-ne v5, v2, :cond_4

    const/16 v17, 0x1

    goto :goto_3

    :cond_4
    const/16 v17, 0x0

    :goto_3
    iget v7, v6, Lao;->ad:I

    iget v8, v6, Lao;->ai:I

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/16 v18, 0x0

    if-eq v8, v2, :cond_5

    if-ne v8, v9, :cond_1c

    :cond_5
    aget-boolean v3, v3, v14

    if-eqz v3, :cond_1c

    iget-boolean v3, v12, Lan;->X:Z

    if-eqz v3, :cond_1c

    if-nez v17, :cond_1c

    if-eq v7, v2, :cond_1c

    if-nez v5, :cond_1c

    move-object v1, v12

    move-object/from16 v2, v18

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_4
    if-eqz v1, :cond_d

    iget v2, v1, Lan;->K:I

    if-ne v2, v9, :cond_6

    goto :goto_7

    :cond_6
    add-int/lit8 v3, v3, 0x1

    iget v2, v1, Lan;->ad:I

    if-eq v2, v11, :cond_9

    invoke-virtual {v1}, Lan;->h()I

    move-result v2

    add-int/2addr v5, v2

    iget-object v2, v1, Lan;->i:Lam;

    iget-object v7, v2, Lam;->b:Lam;

    if-eqz v7, :cond_7

    invoke-virtual {v2}, Lam;->a()I

    move-result v2

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v5, v2

    iget-object v2, v1, Lan;->k:Lam;

    iget-object v7, v2, Lam;->b:Lam;

    if-eqz v7, :cond_8

    invoke-virtual {v2}, Lam;->a()I

    move-result v2

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v5, v2

    goto :goto_7

    :cond_9
    iget v2, v1, Lan;->Z:F

    add-float/2addr v4, v2

    :goto_7
    iget-object v2, v1, Lan;->k:Lam;

    iget-object v2, v2, Lam;->b:Lam;

    if-eqz v2, :cond_a

    iget-object v2, v2, Lam;->a:Lan;

    goto :goto_8

    :cond_a
    move-object/from16 v2, v18

    :goto_8
    if-eqz v2, :cond_c

    iget-object v7, v2, Lan;->i:Lam;

    iget-object v7, v7, Lam;->b:Lam;

    if-eqz v7, :cond_b

    iget-object v7, v7, Lam;->a:Lan;

    if-eq v7, v1, :cond_c

    :cond_b
    move-object/from16 v2, v18

    :cond_c
    move-object/from16 v29, v2

    move-object v2, v1

    move-object/from16 v1, v29

    goto :goto_4

    :cond_d
    if-eqz v2, :cond_f

    iget-object v1, v2, Lan;->k:Lam;

    iget-object v1, v1, Lam;->b:Lam;

    if-eqz v1, :cond_e

    iget-object v2, v1, Lam;->a:Lan;

    iget v2, v2, Lan;->w:I

    goto :goto_9

    :cond_e
    const/4 v2, 0x0

    :goto_9
    if-eqz v1, :cond_10

    iget-object v1, v1, Lam;->a:Lan;

    if-ne v1, v6, :cond_10

    invoke-virtual/range {p0 .. p0}, Lan;->g()I

    move-result v2

    goto :goto_a

    :cond_f
    const/4 v2, 0x0

    :cond_10
    :goto_a
    int-to-float v1, v5

    add-int/lit8 v3, v3, 0x1

    int-to-float v2, v2

    sub-float/2addr v2, v1

    if-nez v0, :cond_11

    int-to-float v1, v3

    div-float v1, v2, v1

    move v3, v1

    goto :goto_b

    :cond_11
    int-to-float v1, v0

    div-float v1, v2, v1

    move v3, v1

    const/4 v1, 0x0

    :goto_b
    if-eqz v12, :cond_1b

    iget-object v5, v12, Lan;->i:Lam;

    iget-object v7, v5, Lam;->b:Lam;

    if-eqz v7, :cond_12

    invoke-virtual {v5}, Lam;->a()I

    move-result v5

    goto :goto_c

    :cond_12
    const/4 v5, 0x0

    :goto_c
    iget-object v7, v12, Lan;->k:Lam;

    iget-object v8, v7, Lam;->b:Lam;

    if-eqz v8, :cond_13

    invoke-virtual {v7}, Lam;->a()I

    move-result v7

    goto :goto_d

    :cond_13
    const/4 v7, 0x0

    :goto_d
    iget v8, v12, Lan;->K:I

    const/high16 v16, 0x3f000000    # 0.5f

    if-eq v8, v9, :cond_17

    int-to-float v5, v5

    add-float/2addr v1, v5

    iget-object v8, v12, Lan;->i:Lam;

    iget-object v8, v8, Lam;->f:Lal;

    add-float v9, v1, v16

    float-to-int v9, v9

    invoke-virtual {v15, v8, v9}, Lak;->h(Lal;I)V

    iget v8, v12, Lan;->ad:I

    if-ne v8, v11, :cond_15

    cmpl-float v8, v4, v10

    if-nez v8, :cond_14

    sub-float v5, v3, v5

    int-to-float v8, v7

    sub-float/2addr v5, v8

    add-float/2addr v1, v5

    goto :goto_e

    :cond_14
    iget v8, v12, Lan;->Z:F

    mul-float v8, v8, v2

    div-float/2addr v8, v4

    int-to-float v9, v7

    sub-float/2addr v8, v5

    sub-float/2addr v8, v9

    add-float/2addr v1, v8

    goto :goto_e

    :cond_15
    invoke-virtual {v12}, Lan;->h()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    :goto_e
    iget-object v5, v12, Lan;->k:Lam;

    iget-object v5, v5, Lam;->f:Lal;

    add-float v8, v1, v16

    float-to-int v8, v8

    invoke-virtual {v15, v5, v8}, Lak;->h(Lal;I)V

    if-nez v0, :cond_16

    add-float/2addr v1, v3

    :cond_16
    int-to-float v5, v7

    add-float/2addr v1, v5

    goto :goto_f

    :cond_17
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v3, v5

    sub-float v5, v1, v5

    iget-object v7, v12, Lan;->i:Lam;

    iget-object v7, v7, Lam;->f:Lal;

    add-float v5, v5, v16

    float-to-int v5, v5

    invoke-virtual {v15, v7, v5}, Lak;->h(Lal;I)V

    iget-object v7, v12, Lan;->k:Lam;

    iget-object v7, v7, Lam;->f:Lal;

    invoke-virtual {v15, v7, v5}, Lak;->h(Lal;I)V

    :goto_f
    iget-object v5, v12, Lan;->k:Lam;

    iget-object v5, v5, Lam;->b:Lam;

    if-eqz v5, :cond_18

    iget-object v5, v5, Lam;->a:Lan;

    goto :goto_10

    :cond_18
    move-object/from16 v5, v18

    :goto_10
    if-eqz v5, :cond_19

    iget-object v7, v5, Lan;->i:Lam;

    iget-object v7, v7, Lam;->b:Lam;

    if-eqz v7, :cond_19

    iget-object v7, v7, Lam;->a:Lan;

    if-eq v7, v12, :cond_19

    move-object/from16 v12, v18

    goto :goto_11

    :cond_19
    move-object v12, v5

    :goto_11
    if-ne v12, v6, :cond_1a

    move-object/from16 v12, v18

    :cond_1a
    const/16 v9, 0x8

    goto/16 :goto_b

    :cond_1b
    move v0, v13

    const/4 v6, 0x0

    goto/16 :goto_2a

    :cond_1c
    if-eqz v0, :cond_35

    if-eqz v17, :cond_1d

    move-object v0, v1

    move-object/from16 v2, v18

    move-object v3, v2

    goto/16 :goto_1e

    :cond_1d
    move-object/from16 v3, v18

    :goto_12
    if-eqz v1, :cond_25

    iget v5, v1, Lan;->ad:I

    if-eq v5, v11, :cond_22

    iget-object v5, v1, Lan;->i:Lam;

    invoke-virtual {v5}, Lam;->a()I

    move-result v5

    if-eqz v3, :cond_1e

    iget-object v3, v3, Lan;->k:Lam;

    invoke-virtual {v3}, Lam;->a()I

    move-result v3

    add-int/2addr v5, v3

    goto :goto_13

    :cond_1e
    :goto_13
    iget-object v3, v1, Lan;->i:Lam;

    iget-object v7, v3, Lam;->b:Lam;

    iget-object v8, v7, Lam;->a:Lan;

    iget v8, v8, Lan;->ad:I

    if-ne v8, v11, :cond_1f

    const/4 v8, 0x2

    goto :goto_14

    :cond_1f
    const/4 v8, 0x3

    :goto_14
    iget-object v3, v3, Lam;->f:Lal;

    iget-object v7, v7, Lam;->f:Lal;

    invoke-virtual {v15, v3, v7, v5, v8}, Lak;->i(Lal;Lal;II)V

    iget-object v3, v1, Lan;->k:Lam;

    invoke-virtual {v3}, Lam;->a()I

    move-result v3

    iget-object v5, v1, Lan;->k:Lam;

    iget-object v5, v5, Lam;->b:Lam;

    iget-object v5, v5, Lam;->a:Lan;

    iget-object v5, v5, Lan;->i:Lam;

    iget-object v7, v5, Lam;->b:Lam;

    if-eqz v7, :cond_20

    iget-object v7, v7, Lam;->a:Lan;

    if-ne v7, v1, :cond_20

    invoke-virtual {v5}, Lam;->a()I

    move-result v5

    add-int/2addr v3, v5

    :cond_20
    iget-object v5, v1, Lan;->k:Lam;

    iget-object v7, v5, Lam;->b:Lam;

    iget-object v8, v7, Lam;->a:Lan;

    iget v8, v8, Lan;->ad:I

    if-ne v8, v11, :cond_21

    const/4 v8, 0x2

    goto :goto_15

    :cond_21
    const/4 v8, 0x3

    :goto_15
    iget-object v5, v5, Lam;->f:Lal;

    iget-object v7, v7, Lam;->f:Lal;

    neg-int v3, v3

    invoke-virtual {v15, v5, v7, v3, v8}, Lak;->j(Lal;Lal;II)V

    goto :goto_17

    :cond_22
    iget v3, v1, Lan;->Z:F

    add-float/2addr v10, v3

    iget-object v3, v1, Lan;->k:Lam;

    iget-object v5, v3, Lam;->b:Lam;

    if-eqz v5, :cond_23

    invoke-virtual {v3}, Lam;->a()I

    move-result v3

    iget-object v5, v6, Lao;->at:[Lan;

    aget-object v5, v5, v11

    if-eq v1, v5, :cond_24

    iget-object v5, v1, Lan;->k:Lam;

    iget-object v5, v5, Lam;->b:Lam;

    iget-object v5, v5, Lam;->a:Lan;

    iget-object v5, v5, Lan;->i:Lam;

    invoke-virtual {v5}, Lam;->a()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_16

    :cond_23
    const/4 v3, 0x0

    :cond_24
    :goto_16
    iget-object v5, v1, Lan;->k:Lam;

    iget-object v5, v5, Lam;->f:Lal;

    iget-object v7, v1, Lan;->i:Lam;

    iget-object v7, v7, Lam;->f:Lal;

    invoke-virtual {v15, v5, v7, v14, v4}, Lak;->i(Lal;Lal;II)V

    iget-object v5, v1, Lan;->k:Lam;

    iget-object v7, v5, Lam;->f:Lal;

    iget-object v5, v5, Lam;->b:Lam;

    iget-object v5, v5, Lam;->f:Lal;

    neg-int v3, v3

    invoke-virtual {v15, v7, v5, v3, v4}, Lak;->j(Lal;Lal;II)V

    :goto_17
    iget-object v3, v1, Lan;->ab:Lan;

    move-object/from16 v29, v3

    move-object v3, v1

    move-object/from16 v1, v29

    goto/16 :goto_12

    :cond_25
    if-ne v0, v4, :cond_2a

    iget-object v0, v6, Lao;->ap:[Lan;

    aget-object v0, v0, v14

    iget-object v1, v0, Lan;->i:Lam;

    invoke-virtual {v1}, Lam;->a()I

    move-result v1

    iget-object v3, v0, Lan;->i:Lam;

    iget-object v3, v3, Lam;->b:Lam;

    if-eqz v3, :cond_26

    invoke-virtual {v3}, Lam;->a()I

    move-result v3

    add-int/2addr v1, v3

    :cond_26
    iget-object v3, v0, Lan;->k:Lam;

    invoke-virtual {v3}, Lam;->a()I

    move-result v3

    iget-object v5, v0, Lan;->k:Lam;

    iget-object v5, v5, Lam;->b:Lam;

    if-eqz v5, :cond_27

    invoke-virtual {v5}, Lam;->a()I

    move-result v5

    add-int/2addr v3, v5

    :cond_27
    iget-object v5, v12, Lan;->k:Lam;

    iget-object v5, v5, Lam;->b:Lam;

    iget-object v5, v5, Lam;->f:Lal;

    iget-object v7, v6, Lao;->at:[Lan;

    aget-object v8, v7, v11

    if-ne v0, v8, :cond_28

    aget-object v5, v7, v4

    iget-object v5, v5, Lan;->k:Lam;

    iget-object v5, v5, Lam;->b:Lam;

    iget-object v5, v5, Lam;->f:Lal;

    :cond_28
    iget v7, v0, Lan;->c:I

    if-ne v7, v4, :cond_29

    iget-object v0, v12, Lan;->i:Lam;

    iget-object v7, v0, Lam;->f:Lal;

    iget-object v0, v0, Lam;->b:Lam;

    iget-object v0, v0, Lam;->f:Lal;

    invoke-virtual {v15, v7, v0, v1, v4}, Lak;->i(Lal;Lal;II)V

    iget-object v0, v12, Lan;->k:Lam;

    iget-object v0, v0, Lam;->f:Lal;

    neg-int v1, v3

    invoke-virtual {v15, v0, v5, v1, v4}, Lak;->j(Lal;Lal;II)V

    iget-object v0, v12, Lan;->k:Lam;

    iget-object v0, v0, Lam;->f:Lal;

    iget-object v1, v12, Lan;->i:Lam;

    iget-object v1, v1, Lam;->f:Lal;

    invoke-virtual {v12}, Lan;->h()I

    move-result v3

    invoke-virtual {v15, v0, v1, v3, v2}, Lak;->n(Lal;Lal;II)V

    move v0, v13

    const/4 v6, 0x0

    goto/16 :goto_2a

    :cond_29
    iget-object v2, v0, Lan;->i:Lam;

    iget-object v7, v2, Lam;->f:Lal;

    iget-object v2, v2, Lam;->b:Lam;

    iget-object v2, v2, Lam;->f:Lal;

    invoke-virtual {v15, v7, v2, v1, v4}, Lak;->n(Lal;Lal;II)V

    iget-object v0, v0, Lan;->k:Lam;

    iget-object v0, v0, Lam;->f:Lal;

    neg-int v1, v3

    invoke-virtual {v15, v0, v5, v1, v4}, Lak;->n(Lal;Lal;II)V

    goto/16 :goto_1d

    :cond_2a
    const/4 v1, 0x0

    :goto_18
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_34

    iget-object v5, v6, Lao;->ap:[Lan;

    aget-object v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    aget-object v5, v5, v1

    iget-object v8, v7, Lan;->i:Lam;

    iget-object v9, v8, Lam;->f:Lal;

    iget-object v14, v7, Lan;->k:Lam;

    iget-object v14, v14, Lam;->f:Lal;

    iget-object v2, v5, Lan;->i:Lam;

    iget-object v2, v2, Lam;->f:Lal;

    iget-object v4, v5, Lan;->k:Lam;

    iget-object v4, v4, Lam;->f:Lal;

    move/from16 v28, v0

    iget-object v0, v6, Lao;->at:[Lan;

    move-object/from16 v16, v4

    aget-object v4, v0, v11

    if-ne v5, v4, :cond_2b

    const/4 v4, 0x1

    aget-object v0, v0, v4

    iget-object v0, v0, Lan;->k:Lam;

    iget-object v0, v0, Lam;->f:Lal;

    goto :goto_19

    :cond_2b
    move-object/from16 v0, v16

    :goto_19
    invoke-virtual {v8}, Lam;->a()I

    move-result v4

    iget-object v8, v7, Lan;->i:Lam;

    iget-object v8, v8, Lam;->b:Lam;

    if-eqz v8, :cond_2c

    iget-object v8, v8, Lam;->a:Lan;

    iget-object v8, v8, Lan;->k:Lam;

    iget-object v11, v8, Lam;->b:Lam;

    if-eqz v11, :cond_2c

    iget-object v11, v11, Lam;->a:Lan;

    if-ne v11, v7, :cond_2c

    invoke-virtual {v8}, Lam;->a()I

    move-result v8

    add-int/2addr v4, v8

    :cond_2c
    iget-object v8, v7, Lan;->i:Lam;

    iget-object v8, v8, Lam;->b:Lam;

    iget-object v8, v8, Lam;->f:Lal;

    const/4 v11, 0x2

    invoke-virtual {v15, v9, v8, v4, v11}, Lak;->i(Lal;Lal;II)V

    iget-object v4, v7, Lan;->k:Lam;

    invoke-virtual {v4}, Lam;->a()I

    move-result v4

    iget-object v8, v7, Lan;->k:Lam;

    iget-object v8, v8, Lam;->b:Lam;

    if-eqz v8, :cond_2e

    iget-object v8, v7, Lan;->ab:Lan;

    if-eqz v8, :cond_2e

    iget-object v8, v8, Lan;->i:Lam;

    iget-object v11, v8, Lam;->b:Lam;

    if-eqz v11, :cond_2d

    invoke-virtual {v8}, Lam;->a()I

    move-result v8

    goto :goto_1a

    :cond_2d
    const/4 v8, 0x0

    :goto_1a
    add-int/2addr v4, v8

    goto :goto_1b

    :cond_2e
    :goto_1b
    iget-object v8, v7, Lan;->k:Lam;

    iget-object v8, v8, Lam;->b:Lam;

    iget-object v8, v8, Lam;->f:Lal;

    neg-int v4, v4

    const/4 v11, 0x2

    invoke-virtual {v15, v14, v8, v4, v11}, Lak;->j(Lal;Lal;II)V

    if-ne v1, v3, :cond_32

    iget-object v3, v5, Lan;->i:Lam;

    invoke-virtual {v3}, Lam;->a()I

    move-result v3

    iget-object v4, v5, Lan;->i:Lam;

    iget-object v4, v4, Lam;->b:Lam;

    if-eqz v4, :cond_2f

    iget-object v4, v4, Lam;->a:Lan;

    iget-object v4, v4, Lan;->k:Lam;

    iget-object v8, v4, Lam;->b:Lam;

    if-eqz v8, :cond_2f

    iget-object v8, v8, Lam;->a:Lan;

    if-ne v8, v5, :cond_2f

    invoke-virtual {v4}, Lam;->a()I

    move-result v4

    add-int/2addr v3, v4

    :cond_2f
    iget-object v4, v5, Lan;->i:Lam;

    iget-object v4, v4, Lam;->b:Lam;

    iget-object v4, v4, Lam;->f:Lal;

    const/4 v8, 0x2

    invoke-virtual {v15, v2, v4, v3, v8}, Lak;->i(Lal;Lal;II)V

    iget-object v3, v5, Lan;->k:Lam;

    iget-object v4, v6, Lao;->at:[Lan;

    const/4 v8, 0x3

    aget-object v11, v4, v8

    if-ne v5, v11, :cond_30

    const/4 v3, 0x1

    aget-object v4, v4, v3

    iget-object v3, v4, Lan;->k:Lam;

    :cond_30
    invoke-virtual {v3}, Lam;->a()I

    move-result v4

    iget-object v8, v3, Lam;->b:Lam;

    if-eqz v8, :cond_31

    iget-object v8, v8, Lam;->a:Lan;

    iget-object v8, v8, Lan;->i:Lam;

    iget-object v11, v8, Lam;->b:Lam;

    if-eqz v11, :cond_31

    iget-object v11, v11, Lam;->a:Lan;

    if-ne v11, v5, :cond_31

    invoke-virtual {v8}, Lam;->a()I

    move-result v8

    add-int/2addr v4, v8

    :cond_31
    iget-object v3, v3, Lam;->b:Lam;

    iget-object v3, v3, Lam;->f:Lal;

    neg-int v4, v4

    const/4 v8, 0x2

    invoke-virtual {v15, v0, v3, v4, v8}, Lak;->j(Lal;Lal;II)V

    goto :goto_1c

    :cond_32
    const/4 v8, 0x2

    :goto_1c
    iget v3, v12, Lan;->f:I

    if-lez v3, :cond_33

    invoke-virtual {v15, v14, v9, v3, v8}, Lak;->j(Lal;Lal;II)V

    :cond_33
    invoke-virtual/range {p1 .. p1}, Lak;->a()Lai;

    move-result-object v3

    iget v4, v7, Lan;->Z:F

    iget v11, v5, Lan;->Z:F

    iget-object v8, v7, Lan;->i:Lam;

    invoke-virtual {v8}, Lam;->a()I

    move-result v21

    iget-object v7, v7, Lan;->k:Lam;

    invoke-virtual {v7}, Lam;->a()I

    move-result v23

    iget-object v7, v5, Lan;->i:Lam;

    invoke-virtual {v7}, Lam;->a()I

    move-result v25

    iget-object v5, v5, Lan;->k:Lam;

    invoke-virtual {v5}, Lam;->a()I

    move-result v27

    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v10

    move/from16 v19, v11

    move-object/from16 v20, v9

    move-object/from16 v22, v14

    move-object/from16 v24, v2

    move-object/from16 v26, v0

    invoke-virtual/range {v16 .. v27}, Lai;->f(FFFLal;ILal;ILal;ILal;I)V

    invoke-virtual {v15, v3}, Lak;->g(Lai;)V

    move/from16 v0, v28

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v11, 0x3

    const/4 v14, 0x0

    goto/16 :goto_18

    :cond_34
    :goto_1d
    move v0, v13

    const/4 v6, 0x0

    goto/16 :goto_2a

    :cond_35
    move-object v0, v1

    move-object/from16 v2, v18

    move-object v3, v2

    const/4 v14, 0x0

    :goto_1e
    if-eqz v0, :cond_49

    iget-object v4, v0, Lan;->ab:Lan;

    if-nez v4, :cond_36

    iget-object v2, v6, Lao;->at:[Lan;

    const/4 v5, 0x1

    aget-object v2, v2, v5

    const/4 v5, 0x1

    goto :goto_1f

    :cond_36
    move v5, v14

    :goto_1f
    if-eqz v17, :cond_3b

    iget-object v7, v0, Lan;->i:Lam;

    invoke-virtual {v7}, Lam;->a()I

    move-result v8

    if-eqz v3, :cond_37

    iget-object v3, v3, Lan;->k:Lam;

    invoke-virtual {v3}, Lam;->a()I

    move-result v3

    add-int/2addr v8, v3

    goto :goto_20

    :cond_37
    :goto_20
    if-eq v1, v0, :cond_38

    const/4 v3, 0x3

    goto :goto_21

    :cond_38
    const/4 v3, 0x1

    :goto_21
    iget-object v9, v7, Lam;->f:Lal;

    iget-object v10, v7, Lam;->b:Lam;

    iget-object v10, v10, Lam;->f:Lal;

    invoke-virtual {v15, v9, v10, v8, v3}, Lak;->i(Lal;Lal;II)V

    iget v3, v0, Lan;->ad:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_3a

    iget-object v3, v0, Lan;->k:Lam;

    iget v8, v0, Lan;->c:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_39

    iget v8, v0, Lan;->e:I

    invoke-virtual {v0}, Lan;->h()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v3, v3, Lam;->f:Lal;

    iget-object v7, v7, Lam;->f:Lal;

    const/4 v11, 0x3

    invoke-virtual {v15, v3, v7, v8, v11}, Lak;->n(Lal;Lal;II)V

    goto/16 :goto_22

    :cond_39
    const/4 v11, 0x3

    iget-object v8, v7, Lam;->f:Lal;

    iget-object v9, v7, Lam;->b:Lam;

    iget-object v9, v9, Lam;->f:Lal;

    iget v10, v7, Lam;->c:I

    invoke-virtual {v15, v8, v9, v10, v11}, Lak;->i(Lal;Lal;II)V

    iget-object v3, v3, Lam;->f:Lal;

    iget-object v7, v7, Lam;->f:Lal;

    iget v8, v0, Lan;->e:I

    invoke-virtual {v15, v3, v7, v8, v11}, Lak;->j(Lal;Lal;II)V

    goto :goto_22

    :cond_3a
    const/4 v11, 0x3

    goto :goto_22

    :cond_3b
    const/4 v11, 0x3

    const/4 v7, 0x5

    if-nez v16, :cond_3d

    if-eqz v5, :cond_3d

    if-eqz v3, :cond_3d

    iget-object v3, v0, Lan;->k:Lam;

    iget-object v8, v3, Lam;->b:Lam;

    if-nez v8, :cond_3c

    iget-object v3, v3, Lam;->f:Lal;

    invoke-virtual {v0}, Lan;->b()I

    move-result v7

    iget v8, v0, Lan;->y:I

    add-int/2addr v7, v8

    invoke-virtual {v15, v3, v7}, Lak;->h(Lal;I)V

    goto :goto_22

    :cond_3c
    invoke-virtual {v3}, Lam;->a()I

    move-result v3

    iget-object v8, v0, Lan;->k:Lam;

    iget-object v8, v8, Lam;->f:Lal;

    iget-object v9, v2, Lan;->k:Lam;

    iget-object v9, v9, Lam;->b:Lam;

    iget-object v9, v9, Lam;->f:Lal;

    neg-int v3, v3

    invoke-virtual {v15, v8, v9, v3, v7}, Lak;->n(Lal;Lal;II)V

    goto :goto_22

    :cond_3d
    if-nez v16, :cond_3f

    if-nez v5, :cond_3f

    if-nez v3, :cond_3f

    iget-object v3, v0, Lan;->i:Lam;

    iget-object v8, v3, Lam;->b:Lam;

    if-nez v8, :cond_3e

    iget-object v3, v3, Lam;->f:Lal;

    invoke-virtual {v0}, Lan;->b()I

    move-result v7

    invoke-virtual {v15, v3, v7}, Lak;->h(Lal;I)V

    goto :goto_22

    :cond_3e
    invoke-virtual {v3}, Lam;->a()I

    move-result v3

    iget-object v8, v0, Lan;->i:Lam;

    iget-object v8, v8, Lam;->f:Lal;

    iget-object v9, v12, Lan;->i:Lam;

    iget-object v9, v9, Lam;->b:Lam;

    iget-object v9, v9, Lam;->f:Lal;

    invoke-virtual {v15, v8, v9, v3, v7}, Lak;->n(Lal;Lal;II)V

    :goto_22
    move-object/from16 v19, v0

    move-object v3, v12

    move v0, v13

    const/4 v6, 0x0

    goto/16 :goto_27

    :cond_3f
    iget-object v7, v0, Lan;->i:Lam;

    iget-object v8, v0, Lan;->k:Lam;

    invoke-virtual {v7}, Lam;->a()I

    move-result v10

    invoke-virtual {v8}, Lam;->a()I

    move-result v14

    iget-object v9, v7, Lam;->f:Lal;

    iget-object v11, v7, Lam;->b:Lam;

    iget-object v11, v11, Lam;->f:Lal;

    move-object/from16 v19, v0

    const/4 v0, 0x1

    invoke-virtual {v15, v9, v11, v10, v0}, Lak;->i(Lal;Lal;II)V

    iget-object v9, v8, Lam;->f:Lal;

    iget-object v11, v8, Lam;->b:Lam;

    iget-object v11, v11, Lam;->f:Lal;

    neg-int v6, v14

    invoke-virtual {v15, v9, v11, v6, v0}, Lak;->j(Lal;Lal;II)V

    iget-object v0, v7, Lam;->b:Lam;

    if-eqz v0, :cond_40

    iget-object v0, v0, Lam;->f:Lal;

    goto :goto_23

    :cond_40
    move-object/from16 v0, v18

    :goto_23
    if-nez v3, :cond_42

    iget-object v0, v12, Lan;->i:Lam;

    iget-object v0, v0, Lam;->b:Lam;

    if-eqz v0, :cond_41

    iget-object v0, v0, Lam;->f:Lal;

    move-object v9, v0

    goto :goto_24

    :cond_41
    move-object/from16 v9, v18

    goto :goto_24

    :cond_42
    move-object v9, v0

    :goto_24
    if-nez v4, :cond_44

    iget-object v0, v2, Lan;->k:Lam;

    iget-object v0, v0, Lam;->b:Lam;

    if-eqz v0, :cond_43

    iget-object v4, v0, Lam;->a:Lan;

    goto :goto_25

    :cond_43
    move-object/from16 v4, v18

    goto :goto_25

    :cond_44
    :goto_25
    if-eqz v4, :cond_47

    iget-object v0, v4, Lan;->i:Lam;

    iget-object v0, v0, Lam;->f:Lal;

    if-eqz v5, :cond_46

    iget-object v0, v2, Lan;->k:Lam;

    iget-object v0, v0, Lam;->b:Lam;

    if-eqz v0, :cond_45

    iget-object v0, v0, Lam;->f:Lal;

    goto :goto_26

    :cond_45
    move-object/from16 v0, v18

    :cond_46
    :goto_26
    if-eqz v9, :cond_47

    if-eqz v0, :cond_47

    iget-object v3, v7, Lam;->f:Lal;

    const/high16 v11, 0x3f000000    # 0.5f

    iget-object v6, v8, Lam;->f:Lal;

    move-object/from16 v7, p1

    move-object v8, v3

    const/4 v3, 0x3

    move-object v3, v12

    move-object v12, v0

    move v0, v13

    move-object v13, v6

    const/4 v6, 0x0

    invoke-virtual/range {v7 .. v14}, Lak;->m(Lal;Lal;IFLal;Lal;I)V

    goto :goto_27

    :cond_47
    move-object v3, v12

    move v0, v13

    const/4 v6, 0x0

    :goto_27
    const/4 v7, 0x1

    if-ne v7, v5, :cond_48

    move-object/from16 v4, v18

    :cond_48
    move-object/from16 v6, p0

    move v13, v0

    move-object v12, v3

    move-object v0, v4

    move v14, v5

    move-object/from16 v3, v19

    goto/16 :goto_1e

    :cond_49
    move-object v3, v12

    move v0, v13

    const/4 v6, 0x0

    if-eqz v17, :cond_4c

    iget-object v1, v1, Lan;->i:Lam;

    iget-object v4, v2, Lan;->k:Lam;

    invoke-virtual {v1}, Lam;->a()I

    move-result v10

    invoke-virtual {v4}, Lam;->a()I

    move-result v14

    iget-object v5, v3, Lan;->i:Lam;

    iget-object v5, v5, Lam;->b:Lam;

    if-eqz v5, :cond_4a

    iget-object v5, v5, Lam;->f:Lal;

    move-object v9, v5

    goto :goto_28

    :cond_4a
    move-object/from16 v9, v18

    :goto_28
    iget-object v2, v2, Lan;->k:Lam;

    iget-object v2, v2, Lam;->b:Lam;

    if-eqz v2, :cond_4b

    iget-object v2, v2, Lam;->f:Lal;

    move-object v12, v2

    goto :goto_29

    :cond_4b
    move-object/from16 v12, v18

    :goto_29
    if-eqz v9, :cond_4c

    if-eqz v12, :cond_4c

    iget-object v2, v4, Lam;->f:Lal;

    neg-int v5, v14

    const/4 v7, 0x1

    invoke-virtual {v15, v2, v12, v5, v7}, Lak;->j(Lal;Lal;II)V

    iget-object v8, v1, Lam;->f:Lal;

    iget v11, v3, Lan;->H:F

    iget-object v13, v4, Lam;->f:Lal;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Lak;->m(Lal;Lal;IFLal;Lal;I)V

    :cond_4c
    :goto_2a
    add-int/lit8 v13, v0, 0x1

    const/4 v14, 0x0

    move-object/from16 v6, p0

    goto/16 :goto_0

    :cond_4d
    return-void
.end method

.method private final I(Lak;)V
    .locals 30

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    const/4 v14, 0x0

    const/4 v13, 0x0

    :goto_0
    iget v0, v6, Lao;->ao:I

    if-ge v13, v0, :cond_50

    iget-object v0, v6, Lao;->aq:[Lan;

    aget-object v12, v0, v13

    iget-object v2, v6, Lao;->at:[Lan;

    const/4 v4, 0x1

    iget-object v5, v6, Lao;->as:[Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v12

    invoke-direct/range {v0 .. v5}, Lao;->G(Lak;[Lan;Lan;I[Z)I

    move-result v0

    iget-object v1, v6, Lao;->at:[Lan;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    move v0, v13

    const/4 v6, 0x0

    goto/16 :goto_2b

    :cond_0
    iget-object v3, v6, Lao;->as:[Z

    const/4 v4, 0x1

    aget-boolean v5, v3, v4

    if-eqz v5, :cond_2

    invoke-virtual {v12}, Lan;->c()I

    move-result v0

    :goto_1
    if-eqz v1, :cond_1

    iget-object v2, v1, Lan;->j:Lam;

    iget-object v2, v2, Lam;->f:Lal;

    invoke-virtual {v15, v2, v0}, Lak;->h(Lal;I)V

    iget-object v2, v1, Lan;->ac:Lan;

    iget-object v3, v1, Lan;->j:Lam;

    invoke-virtual {v3}, Lam;->a()I

    move-result v3

    invoke-virtual {v1}, Lan;->d()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v1, v1, Lan;->l:Lam;

    invoke-virtual {v1}, Lam;->a()I

    move-result v1

    add-int/2addr v3, v1

    add-int/2addr v0, v3

    move-object v1, v2

    goto :goto_1

    :cond_1
    move v0, v13

    const/4 v6, 0x0

    goto/16 :goto_2b

    :cond_2
    iget v5, v12, Lan;->W:I

    if-nez v5, :cond_3

    const/16 v16, 0x1

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    :goto_2
    if-ne v5, v2, :cond_4

    const/16 v17, 0x1

    goto :goto_3

    :cond_4
    const/16 v17, 0x0

    :goto_3
    iget v7, v6, Lao;->ae:I

    iget v8, v6, Lao;->ai:I

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/16 v18, 0x0

    if-eq v8, v2, :cond_5

    if-ne v8, v9, :cond_1c

    :cond_5
    aget-boolean v3, v3, v14

    if-eqz v3, :cond_1c

    iget-boolean v3, v12, Lan;->Y:Z

    if-eqz v3, :cond_1c

    if-nez v17, :cond_1c

    if-eq v7, v2, :cond_1c

    if-nez v5, :cond_1c

    move-object v1, v12

    move-object/from16 v2, v18

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_4
    if-eqz v1, :cond_d

    iget v2, v1, Lan;->K:I

    if-ne v2, v9, :cond_6

    goto :goto_7

    :cond_6
    add-int/lit8 v3, v3, 0x1

    iget v2, v1, Lan;->ae:I

    if-eq v2, v11, :cond_9

    invoke-virtual {v1}, Lan;->d()I

    move-result v2

    add-int/2addr v5, v2

    iget-object v2, v1, Lan;->j:Lam;

    iget-object v7, v2, Lam;->b:Lam;

    if-eqz v7, :cond_7

    invoke-virtual {v2}, Lam;->a()I

    move-result v2

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v5, v2

    iget-object v2, v1, Lan;->l:Lam;

    iget-object v7, v2, Lam;->b:Lam;

    if-eqz v7, :cond_8

    invoke-virtual {v2}, Lam;->a()I

    move-result v2

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v5, v2

    goto :goto_7

    :cond_9
    iget v2, v1, Lan;->aa:F

    add-float/2addr v4, v2

    :goto_7
    iget-object v2, v1, Lan;->l:Lam;

    iget-object v2, v2, Lam;->b:Lam;

    if-eqz v2, :cond_a

    iget-object v2, v2, Lam;->a:Lan;

    goto :goto_8

    :cond_a
    move-object/from16 v2, v18

    :goto_8
    if-eqz v2, :cond_c

    iget-object v7, v2, Lan;->j:Lam;

    iget-object v7, v7, Lam;->b:Lam;

    if-eqz v7, :cond_b

    iget-object v7, v7, Lam;->a:Lan;

    if-eq v7, v1, :cond_c

    :cond_b
    move-object/from16 v2, v18

    :cond_c
    move-object/from16 v29, v2

    move-object v2, v1

    move-object/from16 v1, v29

    goto :goto_4

    :cond_d
    if-eqz v2, :cond_f

    iget-object v1, v2, Lan;->l:Lam;

    iget-object v1, v1, Lam;->b:Lam;

    if-eqz v1, :cond_e

    iget-object v2, v1, Lam;->a:Lan;

    iget v2, v2, Lan;->w:I

    goto :goto_9

    :cond_e
    const/4 v2, 0x0

    :goto_9
    if-eqz v1, :cond_10

    iget-object v1, v1, Lam;->a:Lan;

    if-ne v1, v6, :cond_10

    invoke-virtual/range {p0 .. p0}, Lan;->a()I

    move-result v2

    goto :goto_a

    :cond_f
    const/4 v2, 0x0

    :cond_10
    :goto_a
    int-to-float v1, v5

    add-int/lit8 v3, v3, 0x1

    int-to-float v2, v2

    sub-float/2addr v2, v1

    if-nez v0, :cond_11

    int-to-float v1, v3

    div-float v1, v2, v1

    move v3, v1

    goto :goto_b

    :cond_11
    int-to-float v1, v0

    div-float v1, v2, v1

    move v3, v1

    const/4 v1, 0x0

    :goto_b
    if-eqz v12, :cond_1b

    iget-object v5, v12, Lan;->j:Lam;

    iget-object v7, v5, Lam;->b:Lam;

    if-eqz v7, :cond_12

    invoke-virtual {v5}, Lam;->a()I

    move-result v5

    goto :goto_c

    :cond_12
    const/4 v5, 0x0

    :goto_c
    iget-object v7, v12, Lan;->l:Lam;

    iget-object v8, v7, Lam;->b:Lam;

    if-eqz v8, :cond_13

    invoke-virtual {v7}, Lam;->a()I

    move-result v7

    goto :goto_d

    :cond_13
    const/4 v7, 0x0

    :goto_d
    iget v8, v12, Lan;->K:I

    const/high16 v16, 0x3f000000    # 0.5f

    if-eq v8, v9, :cond_17

    int-to-float v5, v5

    add-float/2addr v1, v5

    iget-object v8, v12, Lan;->j:Lam;

    iget-object v8, v8, Lam;->f:Lal;

    add-float v9, v1, v16

    float-to-int v9, v9

    invoke-virtual {v15, v8, v9}, Lak;->h(Lal;I)V

    iget v8, v12, Lan;->ae:I

    if-ne v8, v11, :cond_15

    cmpl-float v8, v4, v10

    if-nez v8, :cond_14

    sub-float v5, v3, v5

    int-to-float v8, v7

    sub-float/2addr v5, v8

    add-float/2addr v1, v5

    goto :goto_e

    :cond_14
    iget v8, v12, Lan;->aa:F

    mul-float v8, v8, v2

    div-float/2addr v8, v4

    int-to-float v9, v7

    sub-float/2addr v8, v5

    sub-float/2addr v8, v9

    add-float/2addr v1, v8

    goto :goto_e

    :cond_15
    invoke-virtual {v12}, Lan;->d()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    :goto_e
    iget-object v5, v12, Lan;->l:Lam;

    iget-object v5, v5, Lam;->f:Lal;

    add-float v8, v1, v16

    float-to-int v8, v8

    invoke-virtual {v15, v5, v8}, Lak;->h(Lal;I)V

    if-nez v0, :cond_16

    add-float/2addr v1, v3

    :cond_16
    int-to-float v5, v7

    add-float/2addr v1, v5

    goto :goto_f

    :cond_17
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v3, v5

    sub-float v5, v1, v5

    iget-object v7, v12, Lan;->j:Lam;

    iget-object v7, v7, Lam;->f:Lal;

    add-float v5, v5, v16

    float-to-int v5, v5

    invoke-virtual {v15, v7, v5}, Lak;->h(Lal;I)V

    iget-object v7, v12, Lan;->l:Lam;

    iget-object v7, v7, Lam;->f:Lal;

    invoke-virtual {v15, v7, v5}, Lak;->h(Lal;I)V

    :goto_f
    iget-object v5, v12, Lan;->l:Lam;

    iget-object v5, v5, Lam;->b:Lam;

    if-eqz v5, :cond_18

    iget-object v5, v5, Lam;->a:Lan;

    goto :goto_10

    :cond_18
    move-object/from16 v5, v18

    :goto_10
    if-eqz v5, :cond_19

    iget-object v7, v5, Lan;->j:Lam;

    iget-object v7, v7, Lam;->b:Lam;

    if-eqz v7, :cond_19

    iget-object v7, v7, Lam;->a:Lan;

    if-eq v7, v12, :cond_19

    move-object/from16 v12, v18

    goto :goto_11

    :cond_19
    move-object v12, v5

    :goto_11
    if-ne v12, v6, :cond_1a

    move-object/from16 v12, v18

    :cond_1a
    const/16 v9, 0x8

    goto/16 :goto_b

    :cond_1b
    move v0, v13

    const/4 v6, 0x0

    goto/16 :goto_2b

    :cond_1c
    if-eqz v0, :cond_35

    if-eqz v17, :cond_1d

    move-object v0, v1

    move-object/from16 v2, v18

    move-object v3, v2

    goto/16 :goto_1e

    :cond_1d
    move-object/from16 v3, v18

    :goto_12
    if-eqz v1, :cond_25

    iget v5, v1, Lan;->ae:I

    if-eq v5, v11, :cond_22

    iget-object v5, v1, Lan;->j:Lam;

    invoke-virtual {v5}, Lam;->a()I

    move-result v5

    if-eqz v3, :cond_1e

    iget-object v3, v3, Lan;->l:Lam;

    invoke-virtual {v3}, Lam;->a()I

    move-result v3

    add-int/2addr v5, v3

    goto :goto_13

    :cond_1e
    :goto_13
    iget-object v3, v1, Lan;->j:Lam;

    iget-object v7, v3, Lam;->b:Lam;

    iget-object v8, v7, Lam;->a:Lan;

    iget v8, v8, Lan;->ae:I

    if-ne v8, v11, :cond_1f

    const/4 v8, 0x2

    goto :goto_14

    :cond_1f
    const/4 v8, 0x3

    :goto_14
    iget-object v3, v3, Lam;->f:Lal;

    iget-object v7, v7, Lam;->f:Lal;

    invoke-virtual {v15, v3, v7, v5, v8}, Lak;->i(Lal;Lal;II)V

    iget-object v3, v1, Lan;->l:Lam;

    invoke-virtual {v3}, Lam;->a()I

    move-result v3

    iget-object v5, v1, Lan;->l:Lam;

    iget-object v5, v5, Lam;->b:Lam;

    iget-object v5, v5, Lam;->a:Lan;

    iget-object v5, v5, Lan;->j:Lam;

    iget-object v7, v5, Lam;->b:Lam;

    if-eqz v7, :cond_20

    iget-object v7, v7, Lam;->a:Lan;

    if-ne v7, v1, :cond_20

    invoke-virtual {v5}, Lam;->a()I

    move-result v5

    add-int/2addr v3, v5

    :cond_20
    iget-object v5, v1, Lan;->l:Lam;

    iget-object v7, v5, Lam;->b:Lam;

    iget-object v8, v7, Lam;->a:Lan;

    iget v8, v8, Lan;->ae:I

    if-ne v8, v11, :cond_21

    const/4 v8, 0x2

    goto :goto_15

    :cond_21
    const/4 v8, 0x3

    :goto_15
    iget-object v5, v5, Lam;->f:Lal;

    iget-object v7, v7, Lam;->f:Lal;

    neg-int v3, v3

    invoke-virtual {v15, v5, v7, v3, v8}, Lak;->j(Lal;Lal;II)V

    goto :goto_17

    :cond_22
    iget v3, v1, Lan;->aa:F

    add-float/2addr v10, v3

    iget-object v3, v1, Lan;->l:Lam;

    iget-object v5, v3, Lam;->b:Lam;

    if-eqz v5, :cond_23

    invoke-virtual {v3}, Lam;->a()I

    move-result v3

    iget-object v5, v6, Lao;->at:[Lan;

    aget-object v5, v5, v11

    if-eq v1, v5, :cond_24

    iget-object v5, v1, Lan;->l:Lam;

    iget-object v5, v5, Lam;->b:Lam;

    iget-object v5, v5, Lam;->a:Lan;

    iget-object v5, v5, Lan;->j:Lam;

    invoke-virtual {v5}, Lam;->a()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_16

    :cond_23
    const/4 v3, 0x0

    :cond_24
    :goto_16
    iget-object v5, v1, Lan;->l:Lam;

    iget-object v5, v5, Lam;->f:Lal;

    iget-object v7, v1, Lan;->j:Lam;

    iget-object v7, v7, Lam;->f:Lal;

    invoke-virtual {v15, v5, v7, v14, v4}, Lak;->i(Lal;Lal;II)V

    iget-object v5, v1, Lan;->l:Lam;

    iget-object v7, v5, Lam;->f:Lal;

    iget-object v5, v5, Lam;->b:Lam;

    iget-object v5, v5, Lam;->f:Lal;

    neg-int v3, v3

    invoke-virtual {v15, v7, v5, v3, v4}, Lak;->j(Lal;Lal;II)V

    :goto_17
    iget-object v3, v1, Lan;->ac:Lan;

    move-object/from16 v29, v3

    move-object v3, v1

    move-object/from16 v1, v29

    goto/16 :goto_12

    :cond_25
    if-ne v0, v4, :cond_2a

    iget-object v0, v6, Lao;->ap:[Lan;

    aget-object v0, v0, v14

    iget-object v1, v0, Lan;->j:Lam;

    invoke-virtual {v1}, Lam;->a()I

    move-result v1

    iget-object v3, v0, Lan;->j:Lam;

    iget-object v3, v3, Lam;->b:Lam;

    if-eqz v3, :cond_26

    invoke-virtual {v3}, Lam;->a()I

    move-result v3

    add-int/2addr v1, v3

    :cond_26
    iget-object v3, v0, Lan;->l:Lam;

    invoke-virtual {v3}, Lam;->a()I

    move-result v3

    iget-object v5, v0, Lan;->l:Lam;

    iget-object v5, v5, Lam;->b:Lam;

    if-eqz v5, :cond_27

    invoke-virtual {v5}, Lam;->a()I

    move-result v5

    add-int/2addr v3, v5

    :cond_27
    iget-object v5, v12, Lan;->l:Lam;

    iget-object v5, v5, Lam;->b:Lam;

    iget-object v5, v5, Lam;->f:Lal;

    iget-object v7, v6, Lao;->at:[Lan;

    aget-object v8, v7, v11

    if-ne v0, v8, :cond_28

    aget-object v5, v7, v4

    iget-object v5, v5, Lan;->l:Lam;

    iget-object v5, v5, Lam;->b:Lam;

    iget-object v5, v5, Lam;->f:Lal;

    :cond_28
    iget v7, v0, Lan;->d:I

    if-ne v7, v4, :cond_29

    iget-object v0, v12, Lan;->j:Lam;

    iget-object v7, v0, Lam;->f:Lal;

    iget-object v0, v0, Lam;->b:Lam;

    iget-object v0, v0, Lam;->f:Lal;

    invoke-virtual {v15, v7, v0, v1, v4}, Lak;->i(Lal;Lal;II)V

    iget-object v0, v12, Lan;->l:Lam;

    iget-object v0, v0, Lam;->f:Lal;

    neg-int v1, v3

    invoke-virtual {v15, v0, v5, v1, v4}, Lak;->j(Lal;Lal;II)V

    iget-object v0, v12, Lan;->l:Lam;

    iget-object v0, v0, Lam;->f:Lal;

    iget-object v1, v12, Lan;->j:Lam;

    iget-object v1, v1, Lam;->f:Lal;

    invoke-virtual {v12}, Lan;->d()I

    move-result v3

    invoke-virtual {v15, v0, v1, v3, v2}, Lak;->n(Lal;Lal;II)V

    move v0, v13

    const/4 v6, 0x0

    goto/16 :goto_2b

    :cond_29
    iget-object v2, v0, Lan;->j:Lam;

    iget-object v7, v2, Lam;->f:Lal;

    iget-object v2, v2, Lam;->b:Lam;

    iget-object v2, v2, Lam;->f:Lal;

    invoke-virtual {v15, v7, v2, v1, v4}, Lak;->n(Lal;Lal;II)V

    iget-object v0, v0, Lan;->l:Lam;

    iget-object v0, v0, Lam;->f:Lal;

    neg-int v1, v3

    invoke-virtual {v15, v0, v5, v1, v4}, Lak;->n(Lal;Lal;II)V

    goto/16 :goto_1d

    :cond_2a
    const/4 v1, 0x0

    :goto_18
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_34

    iget-object v5, v6, Lao;->ap:[Lan;

    aget-object v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    aget-object v5, v5, v1

    iget-object v8, v7, Lan;->j:Lam;

    iget-object v9, v8, Lam;->f:Lal;

    iget-object v14, v7, Lan;->l:Lam;

    iget-object v14, v14, Lam;->f:Lal;

    iget-object v2, v5, Lan;->j:Lam;

    iget-object v2, v2, Lam;->f:Lal;

    iget-object v4, v5, Lan;->l:Lam;

    iget-object v4, v4, Lam;->f:Lal;

    move/from16 v28, v0

    iget-object v0, v6, Lao;->at:[Lan;

    move-object/from16 v16, v4

    aget-object v4, v0, v11

    if-ne v5, v4, :cond_2b

    const/4 v4, 0x1

    aget-object v0, v0, v4

    iget-object v0, v0, Lan;->l:Lam;

    iget-object v0, v0, Lam;->f:Lal;

    goto :goto_19

    :cond_2b
    move-object/from16 v0, v16

    :goto_19
    invoke-virtual {v8}, Lam;->a()I

    move-result v4

    iget-object v8, v7, Lan;->j:Lam;

    iget-object v8, v8, Lam;->b:Lam;

    if-eqz v8, :cond_2c

    iget-object v8, v8, Lam;->a:Lan;

    iget-object v8, v8, Lan;->l:Lam;

    iget-object v11, v8, Lam;->b:Lam;

    if-eqz v11, :cond_2c

    iget-object v11, v11, Lam;->a:Lan;

    if-ne v11, v7, :cond_2c

    invoke-virtual {v8}, Lam;->a()I

    move-result v8

    add-int/2addr v4, v8

    :cond_2c
    iget-object v8, v7, Lan;->j:Lam;

    iget-object v8, v8, Lam;->b:Lam;

    iget-object v8, v8, Lam;->f:Lal;

    const/4 v11, 0x2

    invoke-virtual {v15, v9, v8, v4, v11}, Lak;->i(Lal;Lal;II)V

    iget-object v4, v7, Lan;->l:Lam;

    invoke-virtual {v4}, Lam;->a()I

    move-result v4

    iget-object v8, v7, Lan;->l:Lam;

    iget-object v8, v8, Lam;->b:Lam;

    if-eqz v8, :cond_2e

    iget-object v8, v7, Lan;->ac:Lan;

    if-eqz v8, :cond_2e

    iget-object v8, v8, Lan;->j:Lam;

    iget-object v11, v8, Lam;->b:Lam;

    if-eqz v11, :cond_2d

    invoke-virtual {v8}, Lam;->a()I

    move-result v8

    goto :goto_1a

    :cond_2d
    const/4 v8, 0x0

    :goto_1a
    add-int/2addr v4, v8

    goto :goto_1b

    :cond_2e
    :goto_1b
    iget-object v8, v7, Lan;->l:Lam;

    iget-object v8, v8, Lam;->b:Lam;

    iget-object v8, v8, Lam;->f:Lal;

    neg-int v4, v4

    const/4 v11, 0x2

    invoke-virtual {v15, v14, v8, v4, v11}, Lak;->j(Lal;Lal;II)V

    if-ne v1, v3, :cond_32

    iget-object v3, v5, Lan;->j:Lam;

    invoke-virtual {v3}, Lam;->a()I

    move-result v3

    iget-object v4, v5, Lan;->j:Lam;

    iget-object v4, v4, Lam;->b:Lam;

    if-eqz v4, :cond_2f

    iget-object v4, v4, Lam;->a:Lan;

    iget-object v4, v4, Lan;->l:Lam;

    iget-object v8, v4, Lam;->b:Lam;

    if-eqz v8, :cond_2f

    iget-object v8, v8, Lam;->a:Lan;

    if-ne v8, v5, :cond_2f

    invoke-virtual {v4}, Lam;->a()I

    move-result v4

    add-int/2addr v3, v4

    :cond_2f
    iget-object v4, v5, Lan;->j:Lam;

    iget-object v4, v4, Lam;->b:Lam;

    iget-object v4, v4, Lam;->f:Lal;

    const/4 v8, 0x2

    invoke-virtual {v15, v2, v4, v3, v8}, Lak;->i(Lal;Lal;II)V

    iget-object v3, v5, Lan;->l:Lam;

    iget-object v4, v6, Lao;->at:[Lan;

    const/4 v8, 0x3

    aget-object v11, v4, v8

    if-ne v5, v11, :cond_30

    const/4 v3, 0x1

    aget-object v4, v4, v3

    iget-object v3, v4, Lan;->l:Lam;

    :cond_30
    invoke-virtual {v3}, Lam;->a()I

    move-result v4

    iget-object v8, v3, Lam;->b:Lam;

    if-eqz v8, :cond_31

    iget-object v8, v8, Lam;->a:Lan;

    iget-object v8, v8, Lan;->j:Lam;

    iget-object v11, v8, Lam;->b:Lam;

    if-eqz v11, :cond_31

    iget-object v11, v11, Lam;->a:Lan;

    if-ne v11, v5, :cond_31

    invoke-virtual {v8}, Lam;->a()I

    move-result v8

    add-int/2addr v4, v8

    :cond_31
    iget-object v3, v3, Lam;->b:Lam;

    iget-object v3, v3, Lam;->f:Lal;

    neg-int v4, v4

    const/4 v8, 0x2

    invoke-virtual {v15, v0, v3, v4, v8}, Lak;->j(Lal;Lal;II)V

    goto :goto_1c

    :cond_32
    const/4 v8, 0x2

    :goto_1c
    iget v3, v12, Lan;->h:I

    if-lez v3, :cond_33

    invoke-virtual {v15, v14, v9, v3, v8}, Lak;->j(Lal;Lal;II)V

    :cond_33
    invoke-virtual/range {p1 .. p1}, Lak;->a()Lai;

    move-result-object v3

    iget v4, v7, Lan;->aa:F

    iget v11, v5, Lan;->aa:F

    iget-object v8, v7, Lan;->j:Lam;

    invoke-virtual {v8}, Lam;->a()I

    move-result v21

    iget-object v7, v7, Lan;->l:Lam;

    invoke-virtual {v7}, Lam;->a()I

    move-result v23

    iget-object v7, v5, Lan;->j:Lam;

    invoke-virtual {v7}, Lam;->a()I

    move-result v25

    iget-object v5, v5, Lan;->l:Lam;

    invoke-virtual {v5}, Lam;->a()I

    move-result v27

    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v10

    move/from16 v19, v11

    move-object/from16 v20, v9

    move-object/from16 v22, v14

    move-object/from16 v24, v2

    move-object/from16 v26, v0

    invoke-virtual/range {v16 .. v27}, Lai;->f(FFFLal;ILal;ILal;ILal;I)V

    invoke-virtual {v15, v3}, Lak;->g(Lai;)V

    move/from16 v0, v28

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v11, 0x3

    const/4 v14, 0x0

    goto/16 :goto_18

    :cond_34
    :goto_1d
    move v0, v13

    const/4 v6, 0x0

    goto/16 :goto_2b

    :cond_35
    move-object v0, v1

    move-object/from16 v2, v18

    move-object v3, v2

    const/4 v14, 0x0

    :goto_1e
    if-eqz v0, :cond_4c

    iget-object v4, v0, Lan;->ac:Lan;

    if-nez v4, :cond_36

    iget-object v2, v6, Lao;->at:[Lan;

    const/4 v5, 0x1

    aget-object v2, v2, v5

    const/4 v5, 0x1

    goto :goto_1f

    :cond_36
    move v5, v14

    :goto_1f
    if-eqz v17, :cond_3e

    iget-object v7, v0, Lan;->j:Lam;

    invoke-virtual {v7}, Lam;->a()I

    move-result v8

    if-eqz v3, :cond_37

    iget-object v3, v3, Lan;->l:Lam;

    invoke-virtual {v3}, Lam;->a()I

    move-result v3

    add-int/2addr v8, v3

    goto :goto_20

    :cond_37
    :goto_20
    if-eq v1, v0, :cond_38

    const/4 v3, 0x3

    goto :goto_21

    :cond_38
    const/4 v3, 0x1

    :goto_21
    iget-object v9, v7, Lam;->b:Lam;

    if-eqz v9, :cond_39

    iget-object v10, v7, Lam;->f:Lal;

    iget-object v9, v9, Lam;->f:Lal;

    goto :goto_22

    :cond_39
    iget-object v9, v0, Lan;->m:Lam;

    iget-object v10, v9, Lam;->b:Lam;

    if-eqz v10, :cond_3a

    iget-object v9, v9, Lam;->f:Lal;

    iget-object v10, v10, Lam;->f:Lal;

    invoke-virtual {v7}, Lam;->a()I

    move-result v11

    sub-int/2addr v8, v11

    move-object/from16 v29, v10

    move-object v10, v9

    move-object/from16 v9, v29

    goto :goto_22

    :cond_3a
    move-object/from16 v9, v18

    move-object v10, v9

    :goto_22
    if-eqz v10, :cond_3b

    if-eqz v9, :cond_3b

    invoke-virtual {v15, v10, v9, v8, v3}, Lak;->i(Lal;Lal;II)V

    :cond_3b
    iget v3, v0, Lan;->ae:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_3d

    iget-object v3, v0, Lan;->l:Lam;

    iget v8, v0, Lan;->d:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3c

    iget v8, v0, Lan;->g:I

    invoke-virtual {v0}, Lan;->d()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v3, v3, Lam;->f:Lal;

    iget-object v7, v7, Lam;->f:Lal;

    const/4 v11, 0x3

    invoke-virtual {v15, v3, v7, v8, v11}, Lak;->n(Lal;Lal;II)V

    goto/16 :goto_23

    :cond_3c
    const/4 v11, 0x3

    iget-object v8, v7, Lam;->f:Lal;

    iget-object v9, v7, Lam;->b:Lam;

    iget-object v9, v9, Lam;->f:Lal;

    iget v10, v7, Lam;->c:I

    invoke-virtual {v15, v8, v9, v10, v11}, Lak;->i(Lal;Lal;II)V

    iget-object v3, v3, Lam;->f:Lal;

    iget-object v7, v7, Lam;->f:Lal;

    iget v8, v0, Lan;->g:I

    invoke-virtual {v15, v3, v7, v8, v11}, Lak;->j(Lal;Lal;II)V

    goto :goto_23

    :cond_3d
    const/4 v11, 0x3

    goto :goto_23

    :cond_3e
    const/4 v11, 0x3

    const/4 v7, 0x5

    if-nez v16, :cond_40

    if-eqz v5, :cond_40

    if-eqz v3, :cond_40

    iget-object v3, v0, Lan;->l:Lam;

    iget-object v8, v3, Lam;->b:Lam;

    if-nez v8, :cond_3f

    iget-object v3, v3, Lam;->f:Lal;

    invoke-virtual {v0}, Lan;->c()I

    move-result v7

    iget v8, v0, Lan;->z:I

    add-int/2addr v7, v8

    invoke-virtual {v15, v3, v7}, Lak;->h(Lal;I)V

    goto :goto_23

    :cond_3f
    invoke-virtual {v3}, Lam;->a()I

    move-result v3

    iget-object v8, v0, Lan;->l:Lam;

    iget-object v8, v8, Lam;->f:Lal;

    iget-object v9, v2, Lan;->l:Lam;

    iget-object v9, v9, Lam;->b:Lam;

    iget-object v9, v9, Lam;->f:Lal;

    neg-int v3, v3

    invoke-virtual {v15, v8, v9, v3, v7}, Lak;->n(Lal;Lal;II)V

    goto :goto_23

    :cond_40
    if-nez v16, :cond_42

    if-nez v5, :cond_42

    if-nez v3, :cond_42

    iget-object v3, v0, Lan;->j:Lam;

    iget-object v8, v3, Lam;->b:Lam;

    if-nez v8, :cond_41

    iget-object v3, v3, Lam;->f:Lal;

    invoke-virtual {v0}, Lan;->c()I

    move-result v7

    invoke-virtual {v15, v3, v7}, Lak;->h(Lal;I)V

    goto :goto_23

    :cond_41
    invoke-virtual {v3}, Lam;->a()I

    move-result v3

    iget-object v8, v0, Lan;->j:Lam;

    iget-object v8, v8, Lam;->f:Lal;

    iget-object v9, v12, Lan;->j:Lam;

    iget-object v9, v9, Lam;->b:Lam;

    iget-object v9, v9, Lam;->f:Lal;

    invoke-virtual {v15, v8, v9, v3, v7}, Lak;->n(Lal;Lal;II)V

    :goto_23
    move-object/from16 v19, v0

    move-object v3, v12

    move v0, v13

    const/4 v6, 0x0

    goto/16 :goto_28

    :cond_42
    iget-object v7, v0, Lan;->j:Lam;

    iget-object v8, v0, Lan;->l:Lam;

    invoke-virtual {v7}, Lam;->a()I

    move-result v10

    invoke-virtual {v8}, Lam;->a()I

    move-result v14

    iget-object v9, v7, Lam;->f:Lal;

    iget-object v11, v7, Lam;->b:Lam;

    iget-object v11, v11, Lam;->f:Lal;

    move-object/from16 v19, v0

    const/4 v0, 0x1

    invoke-virtual {v15, v9, v11, v10, v0}, Lak;->i(Lal;Lal;II)V

    iget-object v9, v8, Lam;->f:Lal;

    iget-object v11, v8, Lam;->b:Lam;

    iget-object v11, v11, Lam;->f:Lal;

    neg-int v6, v14

    invoke-virtual {v15, v9, v11, v6, v0}, Lak;->j(Lal;Lal;II)V

    iget-object v0, v7, Lam;->b:Lam;

    if-eqz v0, :cond_43

    iget-object v0, v0, Lam;->f:Lal;

    goto :goto_24

    :cond_43
    move-object/from16 v0, v18

    :goto_24
    if-nez v3, :cond_45

    iget-object v0, v12, Lan;->j:Lam;

    iget-object v0, v0, Lam;->b:Lam;

    if-eqz v0, :cond_44

    iget-object v0, v0, Lam;->f:Lal;

    move-object v9, v0

    goto :goto_25

    :cond_44
    move-object/from16 v9, v18

    goto :goto_25

    :cond_45
    move-object v9, v0

    :goto_25
    if-nez v4, :cond_47

    iget-object v0, v2, Lan;->l:Lam;

    iget-object v0, v0, Lam;->b:Lam;

    if-eqz v0, :cond_46

    iget-object v4, v0, Lam;->a:Lan;

    goto :goto_26

    :cond_46
    move-object/from16 v4, v18

    goto :goto_26

    :cond_47
    :goto_26
    if-eqz v4, :cond_4a

    iget-object v0, v4, Lan;->j:Lam;

    iget-object v0, v0, Lam;->f:Lal;

    if-eqz v5, :cond_49

    iget-object v0, v2, Lan;->l:Lam;

    iget-object v0, v0, Lam;->b:Lam;

    if-eqz v0, :cond_48

    iget-object v0, v0, Lam;->f:Lal;

    goto :goto_27

    :cond_48
    move-object/from16 v0, v18

    :cond_49
    :goto_27
    if-eqz v9, :cond_4a

    if-eqz v0, :cond_4a

    iget-object v3, v7, Lam;->f:Lal;

    const/high16 v11, 0x3f000000    # 0.5f

    iget-object v6, v8, Lam;->f:Lal;

    move-object/from16 v7, p1

    move-object v8, v3

    const/4 v3, 0x3

    move-object v3, v12

    move-object v12, v0

    move v0, v13

    move-object v13, v6

    const/4 v6, 0x0

    invoke-virtual/range {v7 .. v14}, Lak;->m(Lal;Lal;IFLal;Lal;I)V

    goto :goto_28

    :cond_4a
    move-object v3, v12

    move v0, v13

    const/4 v6, 0x0

    :goto_28
    const/4 v7, 0x1

    if-ne v7, v5, :cond_4b

    move-object/from16 v4, v18

    :cond_4b
    move-object/from16 v6, p0

    move v13, v0

    move-object v12, v3

    move-object v0, v4

    move v14, v5

    move-object/from16 v3, v19

    goto/16 :goto_1e

    :cond_4c
    move-object v3, v12

    move v0, v13

    const/4 v6, 0x0

    if-eqz v17, :cond_4f

    iget-object v1, v1, Lan;->j:Lam;

    iget-object v4, v2, Lan;->l:Lam;

    invoke-virtual {v1}, Lam;->a()I

    move-result v10

    invoke-virtual {v4}, Lam;->a()I

    move-result v14

    iget-object v5, v3, Lan;->j:Lam;

    iget-object v5, v5, Lam;->b:Lam;

    if-eqz v5, :cond_4d

    iget-object v5, v5, Lam;->f:Lal;

    move-object v9, v5

    goto :goto_29

    :cond_4d
    move-object/from16 v9, v18

    :goto_29
    iget-object v2, v2, Lan;->l:Lam;

    iget-object v2, v2, Lam;->b:Lam;

    if-eqz v2, :cond_4e

    iget-object v2, v2, Lam;->f:Lal;

    move-object v12, v2

    goto :goto_2a

    :cond_4e
    move-object/from16 v12, v18

    :goto_2a
    if-eqz v9, :cond_4f

    if-eqz v12, :cond_4f

    iget-object v2, v4, Lam;->f:Lal;

    neg-int v5, v14

    const/4 v7, 0x1

    invoke-virtual {v15, v2, v12, v5, v7}, Lak;->j(Lal;Lal;II)V

    iget-object v8, v1, Lam;->f:Lal;

    iget v11, v3, Lan;->I:F

    iget-object v13, v4, Lam;->f:Lal;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Lak;->m(Lal;Lal;IFLal;Lal;I)V

    :cond_4f
    :goto_2b
    add-int/lit8 v13, v0, 0x1

    const/4 v14, 0x0

    move-object/from16 v6, p0

    goto/16 :goto_0

    :cond_50
    return-void
.end method


# virtual methods
.method final A(Lan;I)V
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_4

    :goto_0
    iget-object p2, p1, Lan;->i:Lam;

    iget-object v1, p2, Lam;->b:Lam;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lam;->a:Lan;

    iget-object v2, v1, Lan;->k:Lam;

    iget-object v2, v2, Lam;->b:Lam;

    if-eqz v2, :cond_0

    if-ne v2, p2, :cond_0

    if-eq v1, p1, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    :goto_1
    iget p2, p0, Lao;->an:I

    if-ge v0, p2, :cond_2

    iget-object p2, p0, Lao;->ar:[Lan;

    aget-object p2, p2, v0

    if-ne p2, p1, :cond_1

    goto :goto_4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Lao;->ar:[Lan;

    array-length v1, v0

    if-lt p2, v1, :cond_3

    add-int/2addr v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lan;

    iput-object p2, p0, Lao;->ar:[Lan;

    :cond_3
    iget-object p2, p0, Lao;->ar:[Lan;

    iget v0, p0, Lao;->an:I

    aput-object p1, p2, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lao;->an:I

    return-void

    :cond_4
    :goto_2
    iget-object p2, p1, Lan;->j:Lam;

    iget-object v1, p2, Lam;->b:Lam;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lam;->a:Lan;

    iget-object v2, v1, Lan;->l:Lam;

    iget-object v2, v2, Lam;->b:Lam;

    if-eqz v2, :cond_5

    if-ne v2, p2, :cond_5

    if-eq v1, p1, :cond_5

    move-object p1, v1

    goto :goto_2

    :cond_5
    :goto_3
    iget p2, p0, Lao;->ao:I

    if-ge v0, p2, :cond_7

    iget-object p2, p0, Lao;->aq:[Lan;

    aget-object p2, p2, v0

    if-eq p2, p1, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    return-void

    :cond_7
    add-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Lao;->aq:[Lan;

    array-length v1, v0

    if-lt p2, v1, :cond_8

    add-int/2addr v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lan;

    iput-object p2, p0, Lao;->aq:[Lan;

    :cond_8
    iget-object p2, p0, Lao;->aq:[Lan;

    iget v0, p0, Lao;->ao:I

    aput-object p1, p2, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lao;->ao:I

    return-void
.end method

.method public final B(Lan;[Z)V
    .locals 10

    iget v0, p1, Lan;->ad:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    iget v0, p1, Lan;->ae:I

    if-ne v0, v3, :cond_1

    iget v0, p1, Lan;->u:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    aput-boolean v2, p2, v2

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lan;->f()I

    move-result v0

    iget v4, p1, Lan;->ad:I

    if-ne v4, v3, :cond_3

    iget v4, p1, Lan;->ae:I

    if-eq v4, v3, :cond_3

    iget v4, p1, Lan;->u:F

    cmpl-float v1, v4, v1

    if-gtz v1, :cond_2

    goto :goto_1

    :cond_2
    aput-boolean v2, p2, v2

    return-void

    :cond_3
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p1, Lan;->T:Z

    instance-of v4, p1, Lap;

    if-eqz v4, :cond_7

    move-object p2, p1

    check-cast p2, Lap;

    iget v3, p2, Lap;->ai:I

    if-ne v3, v1, :cond_6

    iget v0, p2, Lap;->ag:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    move v2, v0

    const/4 v4, 0x0

    goto/16 :goto_d

    :cond_4
    iget p2, p2, Lap;->ah:I

    if-eq p2, v1, :cond_5

    move v4, p2

    goto/16 :goto_d

    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_d

    :cond_6
    move v2, v0

    move v4, v2

    goto/16 :goto_d

    :cond_7
    iget-object v4, p1, Lan;->k:Lam;

    invoke-virtual {v4}, Lam;->c()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p1, Lan;->i:Lam;

    invoke-virtual {v4}, Lam;->c()Z

    move-result v4

    if-nez v4, :cond_8

    iget p2, p1, Lan;->w:I

    add-int v2, v0, p2

    move v4, v0

    goto/16 :goto_d

    :cond_8
    iget-object v4, p1, Lan;->k:Lam;

    iget-object v5, v4, Lam;->b:Lam;

    if-eqz v5, :cond_a

    iget-object v6, p1, Lan;->i:Lam;

    iget-object v6, v6, Lam;->b:Lam;

    if-eqz v6, :cond_a

    if-eq v5, v6, :cond_9

    iget-object v7, v5, Lam;->a:Lan;

    iget-object v6, v6, Lam;->a:Lan;

    if-ne v7, v6, :cond_a

    iget-object v6, p1, Lan;->r:Lan;

    if-ne v7, v6, :cond_9

    goto :goto_2

    :cond_9
    aput-boolean v2, p2, v2

    return-void

    :cond_a
    :goto_2
    const/4 v6, 0x0

    if-eqz v5, :cond_b

    iget-object v5, v5, Lam;->a:Lan;

    invoke-virtual {v4}, Lam;->a()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v5}, Lan;->s()Z

    move-result v7

    if-nez v7, :cond_c

    iget-boolean v7, v5, Lan;->T:Z

    if-nez v7, :cond_c

    invoke-virtual {p0, v5, p2}, Lao;->B(Lan;[Z)V

    goto :goto_3

    :cond_b
    move v4, v0

    move-object v5, v6

    :cond_c
    :goto_3
    iget-object v7, p1, Lan;->i:Lam;

    iget-object v8, v7, Lam;->b:Lam;

    if-eqz v8, :cond_d

    iget-object v6, v8, Lam;->a:Lan;

    invoke-virtual {v7}, Lam;->a()I

    move-result v7

    add-int/2addr v0, v7

    invoke-virtual {v6}, Lan;->s()Z

    move-result v7

    if-nez v7, :cond_d

    iget-boolean v7, v6, Lan;->T:Z

    if-nez v7, :cond_d

    invoke-virtual {p0, v6, p2}, Lao;->B(Lan;[Z)V

    goto :goto_4

    :cond_d
    :goto_4
    iget-object p2, p1, Lan;->k:Lam;

    iget-object p2, p2, Lam;->b:Lam;

    const/4 v7, 0x2

    const/4 v8, 0x4

    if-eqz p2, :cond_13

    invoke-virtual {v5}, Lan;->s()Z

    move-result p2

    if-nez p2, :cond_13

    iget-object p2, p1, Lan;->k:Lam;

    iget-object p2, p2, Lam;->b:Lam;

    iget p2, p2, Lam;->g:I

    if-ne p2, v8, :cond_e

    iget p2, v5, Lan;->N:I

    invoke-virtual {v5}, Lan;->f()I

    move-result v9

    sub-int/2addr p2, v9

    add-int/2addr v4, p2

    goto :goto_5

    :cond_e
    if-ne p2, v7, :cond_f

    iget p2, v5, Lan;->N:I

    add-int/2addr v4, p2

    :cond_f
    :goto_5
    iget-boolean p2, v5, Lan;->Q:Z

    if-nez p2, :cond_11

    iget-object p2, v5, Lan;->i:Lam;

    iget-object p2, p2, Lam;->b:Lam;

    if-eqz p2, :cond_10

    iget-object p2, v5, Lan;->k:Lam;

    iget-object p2, p2, Lam;->b:Lam;

    if-eqz p2, :cond_10

    iget p2, v5, Lan;->ad:I

    if-eq p2, v3, :cond_10

    const/4 p2, 0x1

    goto :goto_6

    :cond_10
    const/4 p2, 0x0

    goto :goto_6

    :cond_11
    const/4 p2, 0x1

    :goto_6
    iput-boolean p2, p1, Lan;->Q:Z

    if-eqz p2, :cond_13

    iget-object p2, v5, Lan;->i:Lam;

    iget-object p2, p2, Lam;->b:Lam;

    if-nez p2, :cond_12

    goto :goto_7

    :cond_12
    iget-object p2, p2, Lam;->a:Lan;

    if-eq p2, p1, :cond_13

    :goto_7
    iget p2, v5, Lan;->N:I

    sub-int p2, v4, p2

    add-int/2addr v4, p2

    :cond_13
    iget-object p2, p1, Lan;->i:Lam;

    iget-object p2, p2, Lam;->b:Lam;

    if-eqz p2, :cond_1b

    invoke-virtual {v6}, Lan;->s()Z

    move-result p2

    if-nez p2, :cond_1b

    iget-object p2, p1, Lan;->i:Lam;

    iget-object p2, p2, Lam;->b:Lam;

    iget p2, p2, Lam;->g:I

    if-ne p2, v7, :cond_14

    iget p2, v6, Lan;->M:I

    invoke-virtual {v6}, Lan;->f()I

    move-result v5

    sub-int/2addr p2, v5

    add-int/2addr v0, p2

    goto :goto_8

    :cond_14
    if-ne p2, v8, :cond_15

    iget p2, v6, Lan;->M:I

    add-int/2addr v0, p2

    :cond_15
    :goto_8
    iget-boolean p2, v6, Lan;->P:Z

    if-nez p2, :cond_17

    iget-object p2, v6, Lan;->i:Lam;

    iget-object p2, p2, Lam;->b:Lam;

    if-eqz p2, :cond_16

    iget-object p2, v6, Lan;->k:Lam;

    iget-object p2, p2, Lam;->b:Lam;

    if-eqz p2, :cond_16

    iget p2, v6, Lan;->ad:I

    if-eq p2, v3, :cond_16

    const/4 v2, 0x1

    goto :goto_9

    :cond_16
    goto :goto_9

    :cond_17
    const/4 v2, 0x1

    :goto_9
    iput-boolean v2, p1, Lan;->P:Z

    if-eqz v2, :cond_1a

    iget-object p2, v6, Lan;->k:Lam;

    iget-object p2, p2, Lam;->b:Lam;

    if-nez p2, :cond_18

    goto :goto_a

    :cond_18
    iget-object p2, p2, Lam;->a:Lan;

    if-ne p2, p1, :cond_19

    goto :goto_b

    :cond_19
    :goto_a
    iget p2, v6, Lan;->M:I

    sub-int p2, v0, p2

    add-int v2, v0, p2

    goto :goto_d

    :cond_1a
    :goto_b
    goto :goto_c

    :cond_1b
    :goto_c
    move v2, v0

    :goto_d
    iget p2, p1, Lan;->K:I

    const/16 v0, 0x8

    if-ne p2, v0, :cond_1c

    iget p2, p1, Lan;->s:I

    sub-int/2addr v2, p2

    sub-int/2addr v4, p2

    :cond_1c
    iput v2, p1, Lan;->M:I

    iput v4, p1, Lan;->N:I

    return-void
.end method

.method public final C(Lan;[Z)V
    .locals 10

    iget v0, p1, Lan;->ae:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget v0, p1, Lan;->ad:I

    if-eq v0, v2, :cond_1

    iget v0, p1, Lan;->u:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    aput-boolean v1, p2, v1

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lan;->e()I

    move-result v0

    const/4 v3, 0x1

    iput-boolean v3, p1, Lan;->U:Z

    instance-of v4, p1, Lap;

    const/16 v5, 0x8

    if-eqz v4, :cond_5

    move-object p2, p1

    check-cast p2, Lap;

    iget v2, p2, Lap;->ai:I

    if-nez v2, :cond_4

    iget v0, p2, Lap;->ag:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    move v4, v0

    goto/16 :goto_d

    :cond_2
    iget p2, p2, Lap;->ah:I

    if-eq p2, v2, :cond_3

    move v1, p2

    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_d

    :cond_4
    move v1, v0

    move v4, v1

    goto/16 :goto_d

    :cond_5
    iget-object v4, p1, Lan;->m:Lam;

    iget-object v6, v4, Lam;->b:Lam;

    if-nez v6, :cond_6

    iget-object v6, p1, Lan;->j:Lam;

    iget-object v6, v6, Lam;->b:Lam;

    if-nez v6, :cond_6

    iget-object v6, p1, Lan;->l:Lam;

    iget-object v6, v6, Lam;->b:Lam;

    if-nez v6, :cond_6

    iget p2, p1, Lan;->x:I

    add-int v1, v0, p2

    move v4, v1

    move v1, v0

    goto/16 :goto_d

    :cond_6
    iget-object v6, p1, Lan;->l:Lam;

    iget-object v6, v6, Lam;->b:Lam;

    if-eqz v6, :cond_8

    iget-object v7, p1, Lan;->j:Lam;

    iget-object v7, v7, Lam;->b:Lam;

    if-eqz v7, :cond_8

    if-eq v6, v7, :cond_7

    iget-object v6, v6, Lam;->a:Lan;

    iget-object v7, v7, Lam;->a:Lan;

    if-ne v6, v7, :cond_8

    iget-object v7, p1, Lan;->r:Lan;

    if-ne v6, v7, :cond_7

    goto :goto_1

    :cond_7
    aput-boolean v1, p2, v1

    return-void

    :cond_8
    :goto_1
    invoke-virtual {v4}, Lam;->c()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v1, p1, Lan;->m:Lam;

    iget-object v1, v1, Lam;->b:Lam;

    iget-object v1, v1, Lam;->a:Lan;

    iget-boolean v2, v1, Lan;->U:Z

    if-nez v2, :cond_9

    invoke-virtual {p0, v1, p2}, Lao;->C(Lan;[Z)V

    :cond_9
    iget p2, v1, Lan;->L:I

    iget v2, v1, Lan;->t:I

    sub-int/2addr p2, v2

    add-int/2addr p2, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v2, v1, Lan;->O:I

    iget v1, v1, Lan;->t:I

    sub-int/2addr v2, v1

    add-int/2addr v2, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p1, Lan;->K:I

    if-ne v1, v5, :cond_a

    iget v1, p1, Lan;->t:I

    sub-int/2addr p2, v1

    sub-int/2addr v0, v1

    :cond_a
    iput p2, p1, Lan;->L:I

    iput v0, p1, Lan;->O:I

    return-void

    :cond_b
    iget-object v4, p1, Lan;->j:Lam;

    invoke-virtual {v4}, Lam;->c()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_c

    iget-object v4, p1, Lan;->j:Lam;

    iget-object v7, v4, Lam;->b:Lam;

    iget-object v7, v7, Lam;->a:Lan;

    invoke-virtual {v4}, Lam;->a()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v7}, Lan;->s()Z

    move-result v8

    if-nez v8, :cond_d

    iget-boolean v8, v7, Lan;->U:Z

    if-nez v8, :cond_d

    invoke-virtual {p0, v7, p2}, Lao;->C(Lan;[Z)V

    goto :goto_2

    :cond_c
    move v4, v0

    move-object v7, v6

    :cond_d
    :goto_2
    iget-object v8, p1, Lan;->l:Lam;

    invoke-virtual {v8}, Lam;->c()Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v6, p1, Lan;->l:Lam;

    iget-object v8, v6, Lam;->b:Lam;

    iget-object v8, v8, Lam;->a:Lan;

    invoke-virtual {v6}, Lam;->a()I

    move-result v6

    add-int/2addr v0, v6

    invoke-virtual {v8}, Lan;->s()Z

    move-result v6

    if-nez v6, :cond_e

    iget-boolean v6, v8, Lan;->U:Z

    if-nez v6, :cond_e

    invoke-virtual {p0, v8, p2}, Lao;->C(Lan;[Z)V

    goto :goto_3

    :cond_e
    :goto_3
    move-object v6, v8

    goto :goto_4

    :cond_f
    :goto_4
    iget-object p2, p1, Lan;->j:Lam;

    iget-object p2, p2, Lam;->b:Lam;

    const/4 v8, 0x5

    if-eqz p2, :cond_15

    invoke-virtual {v7}, Lan;->s()Z

    move-result p2

    if-nez p2, :cond_15

    iget-object p2, p1, Lan;->j:Lam;

    iget-object p2, p2, Lam;->b:Lam;

    iget p2, p2, Lam;->g:I

    if-ne p2, v2, :cond_10

    iget p2, v7, Lan;->L:I

    invoke-virtual {v7}, Lan;->e()I

    move-result v9

    sub-int/2addr p2, v9

    add-int/2addr v4, p2

    goto :goto_5

    :cond_10
    if-ne p2, v8, :cond_11

    iget p2, v7, Lan;->L:I

    add-int/2addr v4, p2

    :cond_11
    :goto_5
    iget-boolean p2, v7, Lan;->R:Z

    if-nez p2, :cond_13

    iget-object p2, v7, Lan;->j:Lam;

    iget-object p2, p2, Lam;->b:Lam;

    if-eqz p2, :cond_12

    iget-object p2, p2, Lam;->a:Lan;

    if-eq p2, p1, :cond_12

    iget-object p2, v7, Lan;->l:Lam;

    iget-object p2, p2, Lam;->b:Lam;

    if-eqz p2, :cond_12

    iget-object p2, p2, Lam;->a:Lan;

    if-eq p2, p1, :cond_12

    iget p2, v7, Lan;->ae:I

    if-eq p2, v2, :cond_12

    const/4 p2, 0x1

    goto :goto_6

    :cond_12
    const/4 p2, 0x0

    goto :goto_6

    :cond_13
    const/4 p2, 0x1

    :goto_6
    iput-boolean p2, p1, Lan;->R:Z

    if-eqz p2, :cond_15

    iget-object p2, v7, Lan;->l:Lam;

    iget-object p2, p2, Lam;->b:Lam;

    if-nez p2, :cond_14

    goto :goto_7

    :cond_14
    iget-object p2, p2, Lam;->a:Lan;

    if-eq p2, p1, :cond_15

    :goto_7
    iget p2, v7, Lan;->L:I

    sub-int p2, v4, p2

    add-int/2addr v4, p2

    :cond_15
    iget-object p2, p1, Lan;->l:Lam;

    iget-object p2, p2, Lam;->b:Lam;

    if-eqz p2, :cond_1d

    invoke-virtual {v6}, Lan;->s()Z

    move-result p2

    if-nez p2, :cond_1d

    iget-object p2, p1, Lan;->l:Lam;

    iget-object p2, p2, Lam;->b:Lam;

    iget p2, p2, Lam;->g:I

    if-ne p2, v8, :cond_16

    iget p2, v6, Lan;->O:I

    invoke-virtual {v6}, Lan;->e()I

    move-result v7

    sub-int/2addr p2, v7

    add-int/2addr v0, p2

    goto :goto_8

    :cond_16
    if-ne p2, v2, :cond_17

    iget p2, v6, Lan;->O:I

    add-int/2addr v0, p2

    :cond_17
    :goto_8
    iget-boolean p2, v6, Lan;->S:Z

    if-nez p2, :cond_19

    iget-object p2, v6, Lan;->j:Lam;

    iget-object p2, p2, Lam;->b:Lam;

    if-eqz p2, :cond_18

    iget-object p2, p2, Lam;->a:Lan;

    if-eq p2, p1, :cond_18

    iget-object p2, v6, Lan;->l:Lam;

    iget-object p2, p2, Lam;->b:Lam;

    if-eqz p2, :cond_18

    iget-object p2, p2, Lam;->a:Lan;

    if-eq p2, p1, :cond_18

    iget p2, v6, Lan;->ae:I

    if-eq p2, v2, :cond_18

    const/4 v1, 0x1

    goto :goto_9

    :cond_18
    goto :goto_9

    :cond_19
    const/4 v1, 0x1

    :goto_9
    iput-boolean v1, p1, Lan;->S:Z

    if-eqz v1, :cond_1c

    iget-object p2, v6, Lan;->j:Lam;

    iget-object p2, p2, Lam;->b:Lam;

    if-nez p2, :cond_1a

    goto :goto_a

    :cond_1a
    iget-object p2, p2, Lam;->a:Lan;

    if-ne p2, p1, :cond_1b

    goto :goto_b

    :cond_1b
    :goto_a
    iget p2, v6, Lan;->O:I

    sub-int p2, v0, p2

    add-int v1, v0, p2

    goto :goto_d

    :cond_1c
    :goto_b
    goto :goto_c

    :cond_1d
    :goto_c
    move v1, v0

    :goto_d
    iget p2, p1, Lan;->K:I

    if-ne p2, v5, :cond_1e

    iget p2, p1, Lan;->t:I

    sub-int/2addr v4, p2

    sub-int/2addr v1, p2

    :cond_1e
    iput v4, p1, Lan;->L:I

    iput v1, p1, Lan;->O:I

    return-void
.end method

.method public final D()V
    .locals 30

    move-object/from16 v1, p0

    iget v2, v1, Lao;->w:I

    iget v3, v1, Lao;->x:I

    invoke-virtual/range {p0 .. p0}, Lan;->h()I

    move-result v0

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lan;->d()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput-boolean v4, v1, Lao;->aj:Z

    iput-boolean v4, v1, Lao;->ak:Z

    iget-object v0, v1, Lao;->r:Lan;

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eqz v0, :cond_4

    iget-object v0, v1, Lao;->am:Lar;

    if-nez v0, :cond_0

    new-instance v0, Lar;

    invoke-direct {v0, v1}, Lar;-><init>(Lan;)V

    iput-object v0, v1, Lao;->am:Lar;

    :cond_0
    iget-object v0, v1, Lao;->am:Lar;

    iget v9, v1, Lan;->w:I

    iput v9, v0, Lar;->a:I

    iget v9, v1, Lan;->x:I

    iput v9, v0, Lar;->b:I

    invoke-virtual/range {p0 .. p0}, Lan;->h()I

    move-result v9

    iput v9, v0, Lar;->c:I

    invoke-virtual/range {p0 .. p0}, Lan;->d()I

    move-result v9

    iput v9, v0, Lar;->d:I

    iget-object v9, v0, Lar;->e:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_2

    iget-object v11, v0, Lar;->e:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laq;

    iget-object v12, v11, Laq;->a:Lam;

    iget v12, v12, Lam;->g:I

    invoke-virtual {v1, v12}, Lan;->t(I)Lam;

    move-result-object v12

    iput-object v12, v11, Laq;->a:Lam;

    iget-object v12, v11, Laq;->a:Lam;

    if-eqz v12, :cond_1

    iget-object v13, v12, Lam;->b:Lam;

    iput-object v13, v11, Laq;->b:Lam;

    invoke-virtual {v12}, Lam;->a()I

    move-result v13

    iput v13, v11, Laq;->c:I

    iget v13, v12, Lam;->h:I

    iput v13, v11, Laq;->e:I

    iget v12, v12, Lam;->e:I

    iput v12, v11, Laq;->d:I

    goto :goto_1

    :cond_1
    iput-object v7, v11, Laq;->b:Lam;

    iput v4, v11, Laq;->c:I

    iput v8, v11, Laq;->e:I

    iput v4, v11, Laq;->d:I

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    iput v4, v1, Lan;->w:I

    iput v4, v1, Lan;->x:I

    iget-object v0, v1, Lan;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v0, :cond_3

    iget-object v10, v1, Lan;->q:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lam;

    invoke-virtual {v10}, Lam;->b()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, v1, Lao;->af:Lak;

    iget-object v0, v0, Lak;->g:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v1, v0}, Lan;->z(Landroidx/wear/ambient/AmbientDelegate;)V

    goto :goto_3

    :cond_4
    iput v4, v1, Lao;->w:I

    iput v4, v1, Lao;->x:I

    :goto_3
    iget v9, v1, Lao;->ae:I

    iget v0, v1, Lao;->ad:I

    iget v10, v1, Lao;->ai:I

    const/4 v12, 0x1

    if-ne v10, v8, :cond_17

    if-eq v9, v8, :cond_6

    if-ne v0, v8, :cond_5

    const/4 v0, 0x2

    goto :goto_4

    :cond_5
    move/from16 v22, v3

    goto/16 :goto_f

    :cond_6
    :goto_4
    iget-object v10, v1, Lao;->al:Ljava/util/ArrayList;

    iget-object v13, v1, Lao;->as:[Z

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    aput-boolean v12, v13, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_5
    if-ge v15, v14, :cond_f

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v11, v20

    check-cast v11, Lan;

    invoke-virtual {v11}, Lan;->s()Z

    move-result v20

    if-eqz v20, :cond_7

    move/from16 v21, v0

    move/from16 v22, v3

    move-object/from16 v23, v13

    goto/16 :goto_9

    :cond_7
    iget-boolean v4, v11, Lan;->T:Z

    if-nez v4, :cond_8

    invoke-virtual {v1, v11, v13}, Lao;->B(Lan;[Z)V

    :cond_8
    iget-boolean v4, v11, Lan;->U:Z

    if-nez v4, :cond_9

    invoke-virtual {v1, v11, v13}, Lao;->C(Lan;[Z)V

    :cond_9
    const/4 v4, 0x0

    aget-boolean v21, v13, v4

    if-nez v21, :cond_a

    move/from16 v21, v0

    move/from16 v22, v3

    const/4 v4, 0x0

    goto/16 :goto_b

    :cond_a
    iget v4, v11, Lan;->M:I

    move/from16 v21, v0

    iget v0, v11, Lan;->N:I

    add-int/2addr v4, v0

    invoke-virtual {v11}, Lan;->h()I

    move-result v0

    sub-int/2addr v4, v0

    iget v0, v11, Lan;->L:I

    move/from16 v22, v4

    iget v4, v11, Lan;->O:I

    add-int/2addr v0, v4

    invoke-virtual {v11}, Lan;->d()I

    move-result v4

    sub-int/2addr v0, v4

    iget v4, v11, Lan;->ad:I

    move/from16 v23, v0

    const/4 v0, 0x4

    if-ne v4, v0, :cond_b

    invoke-virtual {v11}, Lan;->h()I

    move-result v4

    iget-object v0, v11, Lan;->i:Lam;

    iget v0, v0, Lam;->c:I

    add-int/2addr v4, v0

    iget-object v0, v11, Lan;->k:Lam;

    iget v0, v0, Lam;->c:I

    add-int/2addr v4, v0

    goto :goto_6

    :cond_b
    move/from16 v4, v22

    :goto_6
    iget v0, v11, Lan;->ae:I

    move/from16 v22, v4

    const/4 v4, 0x4

    if-ne v0, v4, :cond_c

    invoke-virtual {v11}, Lan;->d()I

    move-result v0

    iget-object v4, v11, Lan;->j:Lam;

    iget v4, v4, Lam;->c:I

    add-int/2addr v0, v4

    iget-object v4, v11, Lan;->l:Lam;

    iget v4, v4, Lam;->c:I

    add-int/2addr v0, v4

    goto :goto_7

    :cond_c
    move/from16 v0, v23

    :goto_7
    iget v4, v11, Lan;->K:I

    move-object/from16 v23, v13

    const/16 v13, 0x8

    if-ne v4, v13, :cond_d

    const/4 v0, 0x0

    :cond_d
    if-ne v4, v13, :cond_e

    const/4 v4, 0x0

    goto :goto_8

    :cond_e
    move/from16 v4, v22

    :goto_8
    iget v13, v11, Lan;->M:I

    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v13, v11, Lan;->N:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget v13, v11, Lan;->O:I

    move/from16 v22, v3

    move/from16 v3, v18

    invoke-static {v3, v13}, Ljava/lang/Math;->max(II)I

    move-result v18

    iget v3, v11, Lan;->L:I

    move/from16 v11, v17

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    move/from16 v4, v19

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    :goto_9
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v21

    move/from16 v3, v22

    move-object/from16 v13, v23

    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_f
    move/from16 v21, v0

    move/from16 v22, v3

    move/from16 v11, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v7, v1, Lao;->D:I

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lao;->ag:I

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v3, v1, Lao;->E:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lao;->ah:I

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v14, :cond_10

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lan;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lan;->T:Z

    iput-boolean v4, v3, Lan;->U:Z

    iput-boolean v4, v3, Lan;->P:Z

    iput-boolean v4, v3, Lan;->Q:Z

    iput-boolean v4, v3, Lan;->R:Z

    iput-boolean v4, v3, Lan;->S:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_10
    const/4 v4, 0x0

    :goto_b
    iget-object v0, v1, Lao;->as:[Z

    aget-boolean v0, v0, v4

    if-lez v5, :cond_12

    if-lez v6, :cond_12

    iget v3, v1, Lao;->ag:I

    if-gt v3, v5, :cond_11

    iget v3, v1, Lao;->ah:I

    if-le v3, v6, :cond_12

    const/4 v0, 0x0

    goto :goto_c

    :cond_11
    const/4 v0, 0x0

    :cond_12
    :goto_c
    if-eqz v0, :cond_16

    iget v3, v1, Lao;->ad:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_14

    const/4 v3, 0x1

    iput v3, v1, Lao;->ad:I

    if-lez v5, :cond_13

    iget v4, v1, Lao;->ag:I

    if-ge v5, v4, :cond_13

    iput-boolean v3, v1, Lao;->aj:Z

    invoke-virtual {v1, v5}, Lan;->p(I)V

    goto :goto_d

    :cond_13
    iget v3, v1, Lao;->D:I

    iget v4, v1, Lao;->ag:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lan;->p(I)V

    :cond_14
    :goto_d
    iget v3, v1, Lao;->ae:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_16

    const/4 v3, 0x1

    iput v3, v1, Lao;->ae:I

    if-lez v6, :cond_15

    iget v4, v1, Lao;->ah:I

    if-ge v6, v4, :cond_15

    iput-boolean v3, v1, Lao;->ak:Z

    invoke-virtual {v1, v6}, Lan;->j(I)V

    goto :goto_e

    :cond_15
    iget v3, v1, Lao;->E:I

    iget v4, v1, Lao;->ah:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lan;->j(I)V

    :cond_16
    :goto_e
    move/from16 v3, v21

    goto :goto_10

    :cond_17
    move/from16 v22, v3

    :goto_f
    move v3, v0

    const/4 v0, 0x0

    :goto_10
    const/4 v4, 0x0

    iput v4, v1, Lao;->an:I

    iput v4, v1, Lao;->ao:I

    iget-object v4, v1, Lao;->al:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_11
    if-ge v7, v4, :cond_19

    iget-object v8, v1, Lao;->al:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lan;

    instance-of v10, v8, Las;

    if-eqz v10, :cond_18

    check-cast v8, Las;

    invoke-virtual {v8}, Las;->D()V

    :cond_18
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_19
    move v7, v0

    const/4 v0, 0x0

    const/4 v8, 0x1

    :goto_12
    if-eqz v8, :cond_3e

    const/4 v10, 0x1

    add-int/lit8 v11, v0, 0x1

    :try_start_0
    iget-object v0, v1, Lao;->af:Lak;

    invoke-virtual {v0}, Lak;->l()V

    iget-object v0, v1, Lao;->af:Lak;

    invoke-virtual {v1, v0}, Lao;->E(Lak;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    if-eqz v8, :cond_2c

    :try_start_1
    iget-object v10, v1, Lao;->af:Lak;

    iget-object v12, v10, Lak;->b:Laj;

    invoke-virtual {v12, v10}, Laj;->a(Lak;)V

    invoke-virtual {v10, v12}, Lak;->o(Laj;)V

    const/4 v0, 0x0

    :goto_13
    iget v13, v10, Lak;->e:I

    if-ge v0, v13, :cond_1a

    iget-object v13, v10, Lak;->d:[Z

    const/4 v14, 0x0

    aput-boolean v14, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_1a
    const/4 v0, 0x0

    const/4 v13, 0x0

    :goto_14
    if-nez v13, :cond_2a

    iget-object v13, v12, Laj;->a:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move/from16 v17, v8

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_15
    const/16 v18, 0x0

    if-ge v14, v13, :cond_1e

    move/from16 v19, v13

    :try_start_2
    iget-object v13, v12, Laj;->a:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lal;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v21, 0x5

    move/from16 v21, v7

    const/4 v7, 0x5

    :goto_16
    if-ltz v7, :cond_1d

    move/from16 v23, v2

    :try_start_3
    iget-object v2, v13, Lal;->e:[F

    aget v2, v2, v7

    if-nez v8, :cond_1b

    cmpg-float v24, v2, v18

    if-gez v24, :cond_1b

    if-lt v7, v15, :cond_1b

    move v15, v7

    move-object v8, v13

    :cond_1b
    cmpl-float v2, v2, v18

    if-lez v2, :cond_1c

    if-le v7, v15, :cond_1c

    move v15, v7

    const/4 v8, 0x0

    :cond_1c
    add-int/lit8 v7, v7, -0x1

    move/from16 v2, v23

    goto :goto_16

    :cond_1d
    move/from16 v23, v2

    add-int/lit8 v14, v14, 0x1

    move/from16 v13, v19

    move/from16 v7, v21

    goto :goto_15

    :catch_0
    move-exception v0

    move/from16 v23, v2

    move/from16 v21, v7

    :goto_17
    move/from16 v27, v5

    move/from16 v26, v6

    goto/16 :goto_20

    :cond_1e
    move/from16 v23, v2

    move/from16 v21, v7

    if-eqz v8, :cond_20

    iget-object v2, v10, Lak;->d:[Z

    iget v7, v8, Lal;->a:I

    aget-boolean v13, v2, v7

    if-eqz v13, :cond_1f

    move v2, v0

    const/4 v8, 0x0

    const/4 v13, 0x0

    goto :goto_18

    :cond_1f
    const/4 v13, 0x1

    aput-boolean v13, v2, v7

    add-int/lit8 v0, v0, 0x1

    iget v2, v10, Lak;->e:I

    if-lt v0, v2, :cond_20

    move v2, v0

    const/4 v13, 0x1

    goto :goto_18

    :catch_1
    move-exception v0

    goto :goto_17

    :cond_20
    move v2, v0

    const/4 v13, 0x0

    :goto_18
    if-eqz v8, :cond_29

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v7, 0x0

    const v14, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v15, -0x1

    :goto_19
    iget v0, v10, Lak;->f:I

    if-ge v7, v0, :cond_26

    iget-object v0, v10, Lak;->c:[Lai;

    aget-object v0, v0, v7

    move/from16 v24, v2

    iget-object v2, v0, Lai;->a:Lal;

    iget v2, v2, Lal;->h:I

    move/from16 v25, v13

    const/4 v13, 0x1

    if-eq v2, v13, :cond_23

    iget-object v2, v0, Lai;->d:Lah;

    iget v13, v2, Lah;->e:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move/from16 v26, v6

    const/4 v6, -0x1

    move/from16 v27, v5

    if-ne v13, v6, :cond_21

    move/from16 v28, v9

    goto :goto_1b

    :cond_21
    move v5, v13

    const/4 v13, 0x0

    :goto_1a
    if-eq v5, v6, :cond_24

    :try_start_4
    iget v6, v2, Lah;->a:I

    if-ge v13, v6, :cond_24

    iget-object v6, v2, Lah;->b:[I

    aget v6, v6, v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move/from16 v28, v9

    :try_start_5
    iget v9, v8, Lal;->a:I

    if-ne v6, v9, :cond_22

    iget-object v2, v0, Lai;->d:Lah;

    invoke-virtual {v2, v8}, Lah;->a(Lal;)F

    move-result v2

    cmpg-float v5, v2, v18

    if-gez v5, :cond_25

    iget v0, v0, Lai;->b:F

    neg-float v0, v0

    div-float/2addr v0, v2

    cmpg-float v2, v0, v14

    if-gez v2, :cond_25

    move v14, v0

    move v15, v7

    goto :goto_1b

    :cond_22
    iget-object v6, v2, Lah;->c:[I

    aget v5, v6, v5

    add-int/lit8 v13, v13, 0x1

    move/from16 v9, v28

    const/4 v6, -0x1

    goto :goto_1a

    :catch_2
    move-exception v0

    goto/16 :goto_20

    :cond_23
    move/from16 v27, v5

    move/from16 v26, v6

    :cond_24
    move/from16 v28, v9

    :cond_25
    :goto_1b
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v24

    move/from16 v13, v25

    move/from16 v6, v26

    move/from16 v5, v27

    move/from16 v9, v28

    goto :goto_19

    :cond_26
    move/from16 v24, v2

    move/from16 v27, v5

    move/from16 v26, v6

    move/from16 v28, v9

    move/from16 v25, v13

    if-ltz v15, :cond_28

    iget-object v0, v10, Lak;->c:[Lai;

    aget-object v0, v0, v15

    iget-object v2, v0, Lai;->a:Lal;

    const/4 v5, -0x1

    iput v5, v2, Lal;->b:I

    invoke-virtual {v0, v8}, Lai;->a(Lal;)V

    iget-object v2, v0, Lai;->a:Lal;

    iput v15, v2, Lal;->b:I

    const/4 v2, 0x0

    :goto_1c
    iget v5, v10, Lak;->f:I

    if-ge v2, v5, :cond_27

    iget-object v5, v10, Lak;->c:[Lai;

    aget-object v5, v5, v2

    invoke-virtual {v5, v0}, Lai;->k(Lai;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_27
    invoke-virtual {v12, v10}, Laj;->a(Lak;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    invoke-virtual {v10, v12}, Lak;->o(Laj;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1d

    :catch_3
    move-exception v0

    move-object v2, v0

    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1d
    move/from16 v8, v17

    move/from16 v7, v21

    move/from16 v2, v23

    move/from16 v0, v24

    move/from16 v13, v25

    move/from16 v6, v26

    move/from16 v5, v27

    move/from16 v9, v28

    goto/16 :goto_14

    :cond_28
    move/from16 v8, v17

    move/from16 v7, v21

    move/from16 v2, v23

    move/from16 v0, v24

    move/from16 v6, v26

    move/from16 v5, v27

    move/from16 v9, v28

    goto :goto_1e

    :cond_29
    move/from16 v24, v2

    move/from16 v27, v5

    move/from16 v26, v6

    move/from16 v28, v9

    move/from16 v8, v17

    move/from16 v7, v21

    move/from16 v2, v23

    move/from16 v0, v24

    :goto_1e
    const/4 v13, 0x1

    goto/16 :goto_14

    :cond_2a
    move/from16 v23, v2

    move/from16 v27, v5

    move/from16 v26, v6

    move/from16 v21, v7

    move/from16 v17, v8

    move/from16 v28, v9

    const/4 v0, 0x0

    :goto_1f
    iget v2, v10, Lak;->f:I

    if-ge v0, v2, :cond_2b

    iget-object v2, v10, Lak;->c:[Lai;

    aget-object v2, v2, v0

    iget-object v5, v2, Lai;->a:Lal;

    iget v2, v2, Lai;->b:F

    iput v2, v5, Lal;->d:F
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_2b
    goto :goto_22

    :catch_4
    move-exception v0

    goto :goto_21

    :catch_5
    move-exception v0

    move/from16 v23, v2

    move/from16 v27, v5

    move/from16 v26, v6

    move/from16 v21, v7

    move/from16 v17, v8

    :goto_20
    move/from16 v28, v9

    :goto_21
    move/from16 v8, v17

    goto :goto_23

    :cond_2c
    move/from16 v23, v2

    move/from16 v27, v5

    move/from16 v26, v6

    move/from16 v21, v7

    move/from16 v17, v8

    move/from16 v28, v9

    :goto_22
    move/from16 v8, v17

    goto :goto_24

    :catch_6
    move-exception v0

    move/from16 v23, v2

    move/from16 v27, v5

    move/from16 v26, v6

    move/from16 v21, v7

    move/from16 v28, v9

    :goto_23
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_24
    const/4 v0, 0x3

    if-eqz v8, :cond_2f

    iget-object v2, v1, Lao;->as:[Z

    const/4 v5, 0x0

    const/4 v6, 0x2

    aput-boolean v5, v2, v6

    invoke-virtual/range {p0 .. p0}, Lan;->y()V

    iget-object v6, v1, Lao;->al:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_25
    if-ge v7, v6, :cond_32

    iget-object v8, v1, Lao;->al:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lan;

    invoke-virtual {v8}, Lan;->y()V

    iget v9, v8, Lan;->ad:I

    if-ne v9, v0, :cond_2d

    invoke-virtual {v8}, Lan;->h()I

    move-result v9

    iget v10, v8, Lan;->F:I

    if-ge v9, v10, :cond_2d

    const/4 v9, 0x2

    const/4 v10, 0x1

    aput-boolean v10, v2, v9

    :cond_2d
    iget v9, v8, Lan;->ae:I

    if-ne v9, v0, :cond_2e

    invoke-virtual {v8}, Lan;->d()I

    move-result v9

    iget v8, v8, Lan;->G:I

    if-ge v9, v8, :cond_2e

    const/4 v8, 0x2

    const/4 v9, 0x1

    aput-boolean v9, v2, v8

    :cond_2e
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    :cond_2f
    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lan;->y()V

    const/4 v2, 0x0

    :goto_26
    if-ge v2, v4, :cond_32

    iget-object v6, v1, Lao;->al:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lan;

    iget v7, v6, Lan;->ad:I

    if-ne v7, v0, :cond_30

    invoke-virtual {v6}, Lan;->h()I

    move-result v7

    iget v8, v6, Lan;->F:I

    if-ge v7, v8, :cond_30

    iget-object v0, v1, Lao;->as:[Z

    const/4 v2, 0x2

    const/4 v6, 0x1

    aput-boolean v6, v0, v2

    goto :goto_27

    :cond_30
    iget v7, v6, Lan;->ae:I

    if-ne v7, v0, :cond_31

    invoke-virtual {v6}, Lan;->d()I

    move-result v7

    iget v6, v6, Lan;->G:I

    if-ge v7, v6, :cond_31

    iget-object v0, v1, Lao;->as:[Z

    const/4 v2, 0x2

    const/4 v6, 0x1

    aput-boolean v6, v0, v2

    goto :goto_27

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_32
    :goto_27
    const/16 v2, 0x8

    if-ge v11, v2, :cond_35

    iget-object v0, v1, Lao;->as:[Z

    const/4 v6, 0x2

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_35

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_28
    if-ge v0, v4, :cond_33

    iget-object v8, v1, Lao;->al:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lan;

    iget v9, v8, Lan;->w:I

    invoke-virtual {v8}, Lan;->h()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v9, v8, Lan;->x:I

    invoke-virtual {v8}, Lan;->d()I

    move-result v8

    add-int/2addr v9, v8

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_33
    iget v0, v1, Lao;->D:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v6, v1, Lao;->E:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v7, 0x2

    if-ne v3, v7, :cond_34

    invoke-virtual/range {p0 .. p0}, Lan;->h()I

    move-result v8

    if-ge v8, v0, :cond_34

    invoke-virtual {v1, v0}, Lan;->p(I)V

    iput v7, v1, Lao;->ad:I

    const/4 v0, 0x1

    const/16 v21, 0x1

    goto :goto_29

    :cond_34
    const/4 v0, 0x0

    :goto_29
    move/from16 v8, v28

    if-ne v8, v7, :cond_36

    invoke-virtual/range {p0 .. p0}, Lan;->d()I

    move-result v9

    if-ge v9, v6, :cond_36

    invoke-virtual {v1, v6}, Lan;->j(I)V

    iput v7, v1, Lao;->ae:I

    const/4 v0, 0x1

    const/16 v21, 0x1

    goto :goto_2a

    :cond_35
    move/from16 v8, v28

    const/4 v0, 0x0

    :cond_36
    :goto_2a
    iget v6, v1, Lao;->D:I

    invoke-virtual/range {p0 .. p0}, Lan;->h()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lan;->h()I

    move-result v7

    if-le v6, v7, :cond_37

    invoke-virtual {v1, v6}, Lan;->p(I)V

    const/4 v6, 0x1

    iput v6, v1, Lao;->ad:I

    const/4 v0, 0x1

    const/16 v21, 0x1

    :cond_37
    iget v6, v1, Lao;->E:I

    invoke-virtual/range {p0 .. p0}, Lan;->d()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lan;->d()I

    move-result v7

    if-le v6, v7, :cond_38

    invoke-virtual {v1, v6}, Lan;->j(I)V

    const/4 v6, 0x1

    iput v6, v1, Lao;->ae:I

    const/4 v0, 0x1

    const/16 v21, 0x1

    :cond_38
    if-nez v21, :cond_3d

    iget v6, v1, Lao;->ad:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_39

    if-lez v27, :cond_39

    invoke-virtual/range {p0 .. p0}, Lan;->h()I

    move-result v6

    move/from16 v7, v27

    if-le v6, v7, :cond_3a

    const/4 v6, 0x1

    iput-boolean v6, v1, Lao;->aj:Z

    iput v6, v1, Lao;->ad:I

    invoke-virtual {v1, v7}, Lan;->p(I)V

    const/4 v0, 0x1

    const/16 v21, 0x1

    goto :goto_2b

    :cond_39
    move/from16 v7, v27

    :cond_3a
    :goto_2b
    iget v6, v1, Lao;->ae:I

    const/4 v9, 0x2

    if-ne v6, v9, :cond_3b

    if-lez v26, :cond_3b

    invoke-virtual/range {p0 .. p0}, Lan;->d()I

    move-result v6

    move/from16 v10, v26

    if-le v6, v10, :cond_3c

    const/4 v6, 0x1

    iput-boolean v6, v1, Lao;->ak:Z

    iput v6, v1, Lao;->ae:I

    invoke-virtual {v1, v10}, Lan;->j(I)V

    const/4 v0, 0x1

    const/16 v21, 0x1

    goto :goto_2c

    :cond_3b
    move/from16 v10, v26

    :cond_3c
    const/4 v6, 0x1

    goto :goto_2c

    :cond_3d
    move/from16 v10, v26

    move/from16 v7, v27

    const/4 v6, 0x1

    const/4 v9, 0x2

    :goto_2c
    move v5, v7

    move v9, v8

    move v6, v10

    move/from16 v7, v21

    move/from16 v2, v23

    move v8, v0

    move v0, v11

    goto/16 :goto_12

    :cond_3e
    move/from16 v23, v2

    move/from16 v21, v7

    move v8, v9

    const/4 v5, 0x0

    iget-object v0, v1, Lao;->r:Lan;

    if-eqz v0, :cond_40

    iget v0, v1, Lao;->D:I

    invoke-virtual/range {p0 .. p0}, Lan;->h()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, v1, Lao;->E:I

    invoke-virtual/range {p0 .. p0}, Lan;->d()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v4, v1, Lao;->am:Lar;

    iget v6, v4, Lar;->a:I

    iput v6, v1, Lan;->w:I

    iget v6, v4, Lar;->b:I

    iput v6, v1, Lan;->x:I

    iget v6, v4, Lar;->c:I

    invoke-virtual {v1, v6}, Lan;->p(I)V

    iget v6, v4, Lar;->d:I

    invoke-virtual {v1, v6}, Lan;->j(I)V

    iget-object v6, v4, Lar;->e:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_2d
    if-ge v5, v6, :cond_3f

    iget-object v7, v4, Lar;->e:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laq;

    iget-object v9, v7, Laq;->a:Lam;

    iget v9, v9, Lam;->g:I

    invoke-virtual {v1, v9}, Lan;->t(I)Lam;

    move-result-object v10

    iget-object v11, v7, Laq;->b:Lam;

    iget v12, v7, Laq;->c:I

    const/4 v13, -0x1

    iget v14, v7, Laq;->e:I

    iget v15, v7, Laq;->d:I

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v16}, Lam;->d(Lam;IIIIZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    :cond_3f
    invoke-virtual {v1, v0}, Lan;->p(I)V

    invoke-virtual {v1, v2}, Lan;->j(I)V

    goto :goto_2e

    :cond_40
    move/from16 v2, v23

    iput v2, v1, Lao;->w:I

    move/from16 v2, v22

    iput v2, v1, Lao;->x:I

    :goto_2e
    if-eqz v21, :cond_41

    iput v3, v1, Lao;->ad:I

    iput v8, v1, Lao;->ae:I

    :cond_41
    iget-object v0, v1, Lao;->af:Lak;

    iget-object v0, v0, Lak;->g:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v1, v0}, Lan;->z(Landroidx/wear/ambient/AmbientDelegate;)V

    iget-object v0, v1, Lan;->r:Lan;

    move-object v2, v1

    :goto_2f
    if-eqz v0, :cond_42

    iget-object v2, v0, Lan;->r:Lan;

    move-object/from16 v29, v2

    move-object v2, v0

    move-object/from16 v0, v29

    goto :goto_2f

    :cond_42
    if-ne v1, v2, :cond_43

    invoke-virtual/range {p0 .. p0}, Lan;->q()V

    :cond_43
    return-void
.end method

.method public final E(Lak;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p1}, Lan;->x(Lak;)V

    iget-object v2, v0, Lao;->al:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, v0, Lao;->ai:I

    const/4 v4, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v3, v8, :cond_1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    const/16 v16, 0x1

    goto/16 :goto_f

    :cond_1
    :goto_0
    iget-object v3, v0, Lao;->al:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x3

    const/4 v11, -0x1

    if-ge v9, v3, :cond_4

    iget-object v12, v0, Lao;->al:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lan;

    iput v11, v12, Lan;->a:I

    iput v11, v12, Lan;->b:I

    iget v11, v12, Lan;->ad:I

    if-eq v11, v10, :cond_2

    iget v11, v12, Lan;->ae:I

    if-ne v11, v10, :cond_3

    :cond_2
    iput v7, v12, Lan;->a:I

    iput v7, v12, Lan;->b:I

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    if-nez v9, :cond_36

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_3
    if-ge v9, v3, :cond_32

    iget-object v5, v0, Lao;->al:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lan;

    iget v6, v5, Lan;->a:I

    const/high16 v17, 0x3f000000    # 0.5f

    if-ne v6, v11, :cond_12

    iget v6, v0, Lao;->ad:I

    if-ne v6, v8, :cond_5

    iput v7, v5, Lan;->a:I

    goto/16 :goto_6

    :cond_5
    iget v11, v5, Lan;->ad:I

    if-ne v11, v10, :cond_6

    iput v7, v5, Lan;->a:I

    goto/16 :goto_6

    :cond_6
    if-eq v6, v8, :cond_7

    if-ne v11, v4, :cond_7

    iget-object v6, v5, Lan;->i:Lam;

    invoke-virtual {v1, v6}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v11

    iput-object v11, v6, Lam;->f:Lal;

    iget-object v6, v5, Lan;->k:Lam;

    invoke-virtual {v1, v6}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v11

    iput-object v11, v6, Lam;->f:Lal;

    iget-object v6, v5, Lan;->i:Lam;

    iget v11, v6, Lam;->c:I

    invoke-virtual/range {p0 .. p0}, Lan;->h()I

    move-result v18

    iget-object v4, v5, Lan;->k:Lam;

    iget v4, v4, Lam;->c:I

    sub-int v4, v18, v4

    iget-object v6, v6, Lam;->f:Lal;

    invoke-virtual {v1, v6, v11}, Lak;->h(Lal;I)V

    iget-object v6, v5, Lan;->k:Lam;

    iget-object v6, v6, Lam;->f:Lal;

    invoke-virtual {v1, v6, v4}, Lak;->h(Lal;I)V

    invoke-virtual {v5, v11, v4}, Lan;->k(II)V

    iput v8, v5, Lan;->a:I

    goto/16 :goto_6

    :cond_7
    iget-object v4, v5, Lan;->i:Lam;

    iget-object v6, v4, Lam;->b:Lam;

    if-eqz v6, :cond_a

    iget-object v11, v5, Lan;->k:Lam;

    iget-object v11, v11, Lam;->b:Lam;

    if-eqz v11, :cond_a

    iget-object v6, v6, Lam;->a:Lan;

    if-ne v6, v0, :cond_9

    iget-object v6, v11, Lam;->a:Lan;

    if-ne v6, v0, :cond_9

    invoke-virtual {v4}, Lam;->a()I

    move-result v4

    iget-object v6, v5, Lan;->k:Lam;

    invoke-virtual {v6}, Lam;->a()I

    move-result v6

    iget v11, v0, Lao;->ad:I

    if-ne v11, v10, :cond_8

    invoke-virtual/range {p0 .. p0}, Lan;->h()I

    move-result v11

    sub-int/2addr v11, v6

    goto :goto_4

    :cond_8
    invoke-virtual {v5}, Lan;->h()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lan;->h()I

    move-result v18

    sub-int v18, v18, v4

    sub-int v18, v18, v6

    sub-int v6, v18, v11

    iget v11, v5, Lan;->H:F

    int-to-float v6, v6

    mul-float v6, v6, v11

    add-float v6, v6, v17

    float-to-int v6, v6

    add-int/2addr v4, v6

    invoke-virtual {v5}, Lan;->h()I

    move-result v6

    add-int v11, v4, v6

    :goto_4
    iget-object v6, v5, Lan;->i:Lam;

    invoke-virtual {v1, v6}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v10

    iput-object v10, v6, Lam;->f:Lal;

    iget-object v6, v5, Lan;->k:Lam;

    invoke-virtual {v1, v6}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v10

    iput-object v10, v6, Lam;->f:Lal;

    iget-object v6, v5, Lan;->i:Lam;

    iget-object v6, v6, Lam;->f:Lal;

    invoke-virtual {v1, v6, v4}, Lak;->h(Lal;I)V

    iget-object v6, v5, Lan;->k:Lam;

    iget-object v6, v6, Lam;->f:Lal;

    invoke-virtual {v1, v6, v11}, Lak;->h(Lal;I)V

    iput v8, v5, Lan;->a:I

    invoke-virtual {v5, v4, v11}, Lan;->k(II)V

    goto/16 :goto_6

    :cond_9
    iput v7, v5, Lan;->a:I

    goto/16 :goto_6

    :cond_a
    if-eqz v6, :cond_b

    iget-object v10, v6, Lam;->a:Lan;

    if-ne v10, v0, :cond_b

    invoke-virtual {v4}, Lam;->a()I

    move-result v4

    invoke-virtual {v5}, Lan;->h()I

    move-result v6

    add-int/2addr v6, v4

    iget-object v10, v5, Lan;->i:Lam;

    invoke-virtual {v1, v10}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v11

    iput-object v11, v10, Lam;->f:Lal;

    iget-object v10, v5, Lan;->k:Lam;

    invoke-virtual {v1, v10}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v11

    iput-object v11, v10, Lam;->f:Lal;

    iget-object v10, v5, Lan;->i:Lam;

    iget-object v10, v10, Lam;->f:Lal;

    invoke-virtual {v1, v10, v4}, Lak;->h(Lal;I)V

    iget-object v10, v5, Lan;->k:Lam;

    iget-object v10, v10, Lam;->f:Lal;

    invoke-virtual {v1, v10, v6}, Lak;->h(Lal;I)V

    iput v8, v5, Lan;->a:I

    invoke-virtual {v5, v4, v6}, Lan;->k(II)V

    goto/16 :goto_6

    :cond_b
    iget-object v10, v5, Lan;->k:Lam;

    iget-object v10, v10, Lam;->b:Lam;

    if-eqz v10, :cond_c

    iget-object v11, v10, Lam;->a:Lan;

    if-ne v11, v0, :cond_c

    invoke-virtual {v1, v4}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v6

    iput-object v6, v4, Lam;->f:Lal;

    iget-object v4, v5, Lan;->k:Lam;

    invoke-virtual {v1, v4}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v6

    iput-object v6, v4, Lam;->f:Lal;

    invoke-virtual/range {p0 .. p0}, Lan;->h()I

    move-result v4

    iget-object v6, v5, Lan;->k:Lam;

    invoke-virtual {v6}, Lam;->a()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual {v5}, Lan;->h()I

    move-result v6

    sub-int v6, v4, v6

    iget-object v10, v5, Lan;->i:Lam;

    iget-object v10, v10, Lam;->f:Lal;

    invoke-virtual {v1, v10, v6}, Lak;->h(Lal;I)V

    iget-object v10, v5, Lan;->k:Lam;

    iget-object v10, v10, Lam;->f:Lal;

    invoke-virtual {v1, v10, v4}, Lak;->h(Lal;I)V

    iput v8, v5, Lan;->a:I

    invoke-virtual {v5, v6, v4}, Lan;->k(II)V

    goto/16 :goto_6

    :cond_c
    if-eqz v6, :cond_d

    iget-object v11, v6, Lam;->a:Lan;

    iget v11, v11, Lan;->a:I

    if-ne v11, v8, :cond_d

    iget-object v6, v6, Lam;->f:Lal;

    invoke-virtual {v1, v4}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v10

    iput-object v10, v4, Lam;->f:Lal;

    iget-object v4, v5, Lan;->k:Lam;

    invoke-virtual {v1, v4}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v10

    iput-object v10, v4, Lam;->f:Lal;

    iget v4, v6, Lal;->d:F

    iget-object v6, v5, Lan;->i:Lam;

    invoke-virtual {v6}, Lam;->a()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    add-float v4, v4, v17

    invoke-virtual {v5}, Lan;->h()I

    move-result v6

    float-to-int v4, v4

    add-int/2addr v6, v4

    iget-object v10, v5, Lan;->i:Lam;

    iget-object v10, v10, Lam;->f:Lal;

    invoke-virtual {v1, v10, v4}, Lak;->h(Lal;I)V

    iget-object v10, v5, Lan;->k:Lam;

    iget-object v10, v10, Lam;->f:Lal;

    invoke-virtual {v1, v10, v6}, Lak;->h(Lal;I)V

    iput v8, v5, Lan;->a:I

    invoke-virtual {v5, v4, v6}, Lan;->k(II)V

    goto/16 :goto_6

    :cond_d
    if-eqz v10, :cond_e

    iget-object v11, v10, Lam;->a:Lan;

    iget v11, v11, Lan;->a:I

    if-ne v11, v8, :cond_e

    iget-object v6, v10, Lam;->f:Lal;

    invoke-virtual {v1, v4}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v10

    iput-object v10, v4, Lam;->f:Lal;

    iget-object v4, v5, Lan;->k:Lam;

    invoke-virtual {v1, v4}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v10

    iput-object v10, v4, Lam;->f:Lal;

    iget v4, v6, Lal;->d:F

    iget-object v6, v5, Lan;->k:Lam;

    invoke-virtual {v6}, Lam;->a()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    add-float v4, v4, v17

    invoke-virtual {v5}, Lan;->h()I

    move-result v6

    float-to-int v4, v4

    sub-int v6, v4, v6

    iget-object v10, v5, Lan;->i:Lam;

    iget-object v10, v10, Lam;->f:Lal;

    invoke-virtual {v1, v10, v6}, Lak;->h(Lal;I)V

    iget-object v10, v5, Lan;->k:Lam;

    iget-object v10, v10, Lam;->f:Lal;

    invoke-virtual {v1, v10, v4}, Lak;->h(Lal;I)V

    iput v8, v5, Lan;->a:I

    invoke-virtual {v5, v6, v4}, Lan;->k(II)V

    goto/16 :goto_6

    :cond_e
    if-nez v6, :cond_12

    if-nez v10, :cond_12

    instance-of v6, v5, Lap;

    if-eqz v6, :cond_11

    move-object v6, v5

    check-cast v6, Lap;

    iget v10, v6, Lap;->ai:I

    if-ne v10, v7, :cond_12

    invoke-virtual {v1, v4}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v10

    iput-object v10, v4, Lam;->f:Lal;

    iget-object v4, v5, Lan;->k:Lam;

    invoke-virtual {v1, v4}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v10

    iput-object v10, v4, Lam;->f:Lal;

    iget v4, v6, Lap;->ag:I

    const/4 v10, -0x1

    if-eq v4, v10, :cond_f

    int-to-float v4, v4

    goto :goto_5

    :cond_f
    iget v4, v6, Lap;->ah:I

    if-eq v4, v10, :cond_10

    invoke-virtual/range {p0 .. p0}, Lan;->h()I

    move-result v6

    sub-int/2addr v6, v4

    int-to-float v4, v6

    goto :goto_5

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lan;->h()I

    move-result v4

    int-to-float v4, v4

    iget v6, v6, Lap;->af:F

    mul-float v4, v4, v6

    :goto_5
    add-float v4, v4, v17

    iget-object v6, v5, Lan;->i:Lam;

    iget-object v6, v6, Lam;->f:Lal;

    float-to-int v4, v4

    invoke-virtual {v1, v6, v4}, Lak;->h(Lal;I)V

    iget-object v6, v5, Lan;->k:Lam;

    iget-object v6, v6, Lam;->f:Lal;

    invoke-virtual {v1, v6, v4}, Lak;->h(Lal;I)V

    iput v8, v5, Lan;->a:I

    iput v8, v5, Lan;->b:I

    invoke-virtual {v5, v4, v4}, Lan;->k(II)V

    invoke-virtual/range {p0 .. p0}, Lan;->d()I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Lan;->o(II)V

    goto :goto_6

    :cond_11
    invoke-virtual {v1, v4}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v6

    iput-object v6, v4, Lam;->f:Lal;

    iget-object v4, v5, Lan;->k:Lam;

    invoke-virtual {v1, v4}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v6

    iput-object v6, v4, Lam;->f:Lal;

    iget v4, v5, Lan;->w:I

    invoke-virtual {v5}, Lan;->h()I

    move-result v6

    add-int/2addr v6, v4

    iget-object v10, v5, Lan;->i:Lam;

    iget-object v10, v10, Lam;->f:Lal;

    invoke-virtual {v1, v10, v4}, Lak;->h(Lal;I)V

    iget-object v4, v5, Lan;->k:Lam;

    iget-object v4, v4, Lam;->f:Lal;

    invoke-virtual {v1, v4, v6}, Lak;->h(Lal;I)V

    iput v8, v5, Lan;->a:I

    :cond_12
    :goto_6
    iget v4, v5, Lan;->b:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_2f

    iget v4, v0, Lao;->ae:I

    if-ne v4, v8, :cond_13

    iput v7, v5, Lan;->b:I

    goto/16 :goto_9

    :cond_13
    iget v6, v5, Lan;->ae:I

    const/4 v10, 0x3

    if-ne v6, v10, :cond_14

    iput v7, v5, Lan;->b:I

    goto/16 :goto_9

    :cond_14
    if-eq v4, v8, :cond_17

    const/4 v4, 0x4

    if-ne v6, v4, :cond_17

    iget-object v4, v5, Lan;->j:Lam;

    invoke-virtual {v1, v4}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v6

    iput-object v6, v4, Lam;->f:Lal;

    iget-object v4, v5, Lan;->l:Lam;

    invoke-virtual {v1, v4}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v6

    iput-object v6, v4, Lam;->f:Lal;

    iget-object v4, v5, Lan;->j:Lam;

    iget v6, v4, Lam;->c:I

    invoke-virtual/range {p0 .. p0}, Lan;->d()I

    move-result v10

    iget-object v11, v5, Lan;->l:Lam;

    iget v11, v11, Lam;->c:I

    sub-int/2addr v10, v11

    iget-object v4, v4, Lam;->f:Lal;

    invoke-virtual {v1, v4, v6}, Lak;->h(Lal;I)V

    iget-object v4, v5, Lan;->l:Lam;

    iget-object v4, v4, Lam;->f:Lal;

    invoke-virtual {v1, v4, v10}, Lak;->h(Lal;I)V

    iget v4, v5, Lan;->C:I

    if-gtz v4, :cond_15

    iget v4, v5, Lan;->K:I

    const/16 v11, 0x8

    if-ne v4, v11, :cond_16

    :cond_15
    iget-object v4, v5, Lan;->m:Lam;

    invoke-virtual {v1, v4}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v11

    iput-object v11, v4, Lam;->f:Lal;

    iget-object v4, v5, Lan;->m:Lam;

    iget-object v4, v4, Lam;->f:Lal;

    iget v11, v5, Lan;->C:I

    add-int/2addr v11, v6

    invoke-virtual {v1, v4, v11}, Lak;->h(Lal;I)V

    :cond_16
    invoke-virtual {v5, v6, v10}, Lan;->o(II)V

    iput v8, v5, Lan;->b:I

    goto/16 :goto_9

    :cond_17
    iget-object v4, v5, Lan;->j:Lam;

    iget-object v6, v4, Lam;->b:Lam;

    if-eqz v6, :cond_1c

    iget-object v10, v5, Lan;->l:Lam;

    iget-object v10, v10, Lam;->b:Lam;

    if-eqz v10, :cond_1c

    iget-object v6, v6, Lam;->a:Lan;

    if-ne v6, v0, :cond_1b

    iget-object v6, v10, Lam;->a:Lan;

    if-ne v6, v0, :cond_1b

    invoke-virtual {v4}, Lam;->a()I

    move-result v4

    iget-object v6, v5, Lan;->l:Lam;

    invoke-virtual {v6}, Lam;->a()I

    move-result v6

    iget v10, v0, Lao;->ae:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_18

    invoke-virtual {v5}, Lan;->d()I

    move-result v6

    add-int/2addr v6, v4

    goto :goto_7

    :cond_18
    invoke-virtual {v5}, Lan;->d()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lan;->d()I

    move-result v18

    sub-int v18, v18, v4

    sub-int v18, v18, v6

    sub-int v6, v18, v10

    int-to-float v4, v4

    iget v10, v5, Lan;->I:F

    int-to-float v6, v6

    mul-float v6, v6, v10

    add-float/2addr v4, v6

    add-float v4, v4, v17

    invoke-virtual {v5}, Lan;->d()I

    move-result v6

    float-to-int v4, v4

    add-int/2addr v6, v4

    :goto_7
    iget-object v10, v5, Lan;->j:Lam;

    invoke-virtual {v1, v10}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v11

    iput-object v11, v10, Lam;->f:Lal;

    iget-object v10, v5, Lan;->l:Lam;

    invoke-virtual {v1, v10}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v11

    iput-object v11, v10, Lam;->f:Lal;

    iget-object v10, v5, Lan;->j:Lam;

    iget-object v10, v10, Lam;->f:Lal;

    invoke-virtual {v1, v10, v4}, Lak;->h(Lal;I)V

    iget-object v10, v5, Lan;->l:Lam;

    iget-object v10, v10, Lam;->f:Lal;

    invoke-virtual {v1, v10, v6}, Lak;->h(Lal;I)V

    iget v10, v5, Lan;->C:I

    if-gtz v10, :cond_19

    iget v10, v5, Lan;->K:I

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1a

    :cond_19
    iget-object v10, v5, Lan;->m:Lam;

    invoke-virtual {v1, v10}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v11

    iput-object v11, v10, Lam;->f:Lal;

    iget-object v10, v5, Lan;->m:Lam;

    iget-object v10, v10, Lam;->f:Lal;

    iget v11, v5, Lan;->C:I

    add-int/2addr v11, v4

    invoke-virtual {v1, v10, v11}, Lak;->h(Lal;I)V

    :cond_1a
    iput v8, v5, Lan;->b:I

    invoke-virtual {v5, v4, v6}, Lan;->o(II)V

    goto/16 :goto_9

    :cond_1b
    iput v7, v5, Lan;->b:I

    goto/16 :goto_9

    :cond_1c
    if-eqz v6, :cond_1f

    iget-object v10, v6, Lam;->a:Lan;

    if-ne v10, v0, :cond_1f

    invoke-virtual {v4}, Lam;->a()I

    move-result v4

    invoke-virtual {v5}, Lan;->d()I

    move-result v6

    add-int/2addr v6, v4

    iget-object v10, v5, Lan;->j:Lam;

    invoke-virtual {v1, v10}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v11

    iput-object v11, v10, Lam;->f:Lal;

    iget-object v10, v5, Lan;->l:Lam;

    invoke-virtual {v1, v10}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v11

    iput-object v11, v10, Lam;->f:Lal;

    iget-object v10, v5, Lan;->j:Lam;

    iget-object v10, v10, Lam;->f:Lal;

    invoke-virtual {v1, v10, v4}, Lak;->h(Lal;I)V

    iget-object v10, v5, Lan;->l:Lam;

    iget-object v10, v10, Lam;->f:Lal;

    invoke-virtual {v1, v10, v6}, Lak;->h(Lal;I)V

    iget v10, v5, Lan;->C:I

    if-gtz v10, :cond_1d

    iget v10, v5, Lan;->K:I

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1e

    :cond_1d
    iget-object v10, v5, Lan;->m:Lam;

    invoke-virtual {v1, v10}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v11

    iput-object v11, v10, Lam;->f:Lal;

    iget-object v10, v5, Lan;->m:Lam;

    iget-object v10, v10, Lam;->f:Lal;

    iget v11, v5, Lan;->C:I

    add-int/2addr v11, v4

    invoke-virtual {v1, v10, v11}, Lak;->h(Lal;I)V

    :cond_1e
    iput v8, v5, Lan;->b:I

    invoke-virtual {v5, v4, v6}, Lan;->o(II)V

    goto/16 :goto_9

    :cond_1f
    iget-object v10, v5, Lan;->l:Lam;

    iget-object v10, v10, Lam;->b:Lam;

    if-eqz v10, :cond_22

    iget-object v11, v10, Lam;->a:Lan;

    if-ne v11, v0, :cond_22

    invoke-virtual {v1, v4}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v6

    iput-object v6, v4, Lam;->f:Lal;

    iget-object v4, v5, Lan;->l:Lam;

    invoke-virtual {v1, v4}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v6

    iput-object v6, v4, Lam;->f:Lal;

    invoke-virtual/range {p0 .. p0}, Lan;->d()I

    move-result v4

    iget-object v6, v5, Lan;->l:Lam;

    invoke-virtual {v6}, Lam;->a()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual {v5}, Lan;->d()I

    move-result v6

    sub-int v6, v4, v6

    iget-object v10, v5, Lan;->j:Lam;

    iget-object v10, v10, Lam;->f:Lal;

    invoke-virtual {v1, v10, v6}, Lak;->h(Lal;I)V

    iget-object v10, v5, Lan;->l:Lam;

    iget-object v10, v10, Lam;->f:Lal;

    invoke-virtual {v1, v10, v4}, Lak;->h(Lal;I)V

    iget v10, v5, Lan;->C:I

    if-gtz v10, :cond_20

    iget v10, v5, Lan;->K:I

    const/16 v11, 0x8

    if-ne v10, v11, :cond_21

    :cond_20
    iget-object v10, v5, Lan;->m:Lam;

    invoke-virtual {v1, v10}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v11

    iput-object v11, v10, Lam;->f:Lal;

    iget-object v10, v5, Lan;->m:Lam;

    iget-object v10, v10, Lam;->f:Lal;

    iget v11, v5, Lan;->C:I

    add-int/2addr v11, v6

    invoke-virtual {v1, v10, v11}, Lak;->h(Lal;I)V

    :cond_21
    iput v8, v5, Lan;->b:I

    invoke-virtual {v5, v6, v4}, Lan;->o(II)V

    goto/16 :goto_9

    :cond_22
    if-eqz v6, :cond_25

    iget-object v11, v6, Lam;->a:Lan;

    iget v11, v11, Lan;->b:I

    if-ne v11, v8, :cond_25

    iget-object v6, v6, Lam;->f:Lal;

    invoke-virtual {v1, v4}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v10

    iput-object v10, v4, Lam;->f:Lal;

    iget-object v4, v5, Lan;->l:Lam;

    invoke-virtual {v1, v4}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v10

    iput-object v10, v4, Lam;->f:Lal;

    iget v4, v6, Lal;->d:F

    iget-object v6, v5, Lan;->j:Lam;

    invoke-virtual {v6}, Lam;->a()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    add-float v4, v4, v17

    invoke-virtual {v5}, Lan;->d()I

    move-result v6

    float-to-int v4, v4

    add-int/2addr v6, v4

    iget-object v10, v5, Lan;->j:Lam;

    iget-object v10, v10, Lam;->f:Lal;

    invoke-virtual {v1, v10, v4}, Lak;->h(Lal;I)V

    iget-object v10, v5, Lan;->l:Lam;

    iget-object v10, v10, Lam;->f:Lal;

    invoke-virtual {v1, v10, v6}, Lak;->h(Lal;I)V

    iget v10, v5, Lan;->C:I

    if-gtz v10, :cond_23

    iget v10, v5, Lan;->K:I

    const/16 v11, 0x8

    if-ne v10, v11, :cond_24

    :cond_23
    iget-object v10, v5, Lan;->m:Lam;

    invoke-virtual {v1, v10}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v11

    iput-object v11, v10, Lam;->f:Lal;

    iget-object v10, v5, Lan;->m:Lam;

    iget-object v10, v10, Lam;->f:Lal;

    iget v11, v5, Lan;->C:I

    add-int/2addr v11, v4

    invoke-virtual {v1, v10, v11}, Lak;->h(Lal;I)V

    :cond_24
    iput v8, v5, Lan;->b:I

    invoke-virtual {v5, v4, v6}, Lan;->o(II)V

    goto/16 :goto_9

    :cond_25
    if-eqz v10, :cond_28

    iget-object v11, v10, Lam;->a:Lan;

    iget v11, v11, Lan;->b:I

    if-ne v11, v8, :cond_28

    iget-object v6, v10, Lam;->f:Lal;

    invoke-virtual {v1, v4}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v10

    iput-object v10, v4, Lam;->f:Lal;

    iget-object v4, v5, Lan;->l:Lam;

    invoke-virtual {v1, v4}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v10

    iput-object v10, v4, Lam;->f:Lal;

    iget v4, v6, Lal;->d:F

    iget-object v6, v5, Lan;->l:Lam;

    invoke-virtual {v6}, Lam;->a()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    add-float v4, v4, v17

    invoke-virtual {v5}, Lan;->d()I

    move-result v6

    float-to-int v4, v4

    sub-int v6, v4, v6

    iget-object v10, v5, Lan;->j:Lam;

    iget-object v10, v10, Lam;->f:Lal;

    invoke-virtual {v1, v10, v6}, Lak;->h(Lal;I)V

    iget-object v10, v5, Lan;->l:Lam;

    iget-object v10, v10, Lam;->f:Lal;

    invoke-virtual {v1, v10, v4}, Lak;->h(Lal;I)V

    iget v10, v5, Lan;->C:I

    if-gtz v10, :cond_26

    iget v10, v5, Lan;->K:I

    const/16 v11, 0x8

    if-ne v10, v11, :cond_27

    :cond_26
    iget-object v10, v5, Lan;->m:Lam;

    invoke-virtual {v1, v10}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v11

    iput-object v11, v10, Lam;->f:Lal;

    iget-object v10, v5, Lan;->m:Lam;

    iget-object v10, v10, Lam;->f:Lal;

    iget v11, v5, Lan;->C:I

    add-int/2addr v11, v6

    invoke-virtual {v1, v10, v11}, Lak;->h(Lal;I)V

    :cond_27
    iput v8, v5, Lan;->b:I

    invoke-virtual {v5, v6, v4}, Lan;->o(II)V

    goto/16 :goto_9

    :cond_28
    iget-object v11, v5, Lan;->m:Lam;

    iget-object v11, v11, Lam;->b:Lam;

    if-eqz v11, :cond_29

    iget-object v7, v11, Lam;->a:Lan;

    iget v7, v7, Lan;->b:I

    if-ne v7, v8, :cond_29

    iget-object v6, v11, Lam;->f:Lal;

    invoke-virtual {v1, v4}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v7

    iput-object v7, v4, Lam;->f:Lal;

    iget-object v4, v5, Lan;->l:Lam;

    invoke-virtual {v1, v4}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v7

    iput-object v7, v4, Lam;->f:Lal;

    iget v4, v6, Lal;->d:F

    iget v6, v5, Lan;->C:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    add-float v4, v4, v17

    invoke-virtual {v5}, Lan;->d()I

    move-result v6

    float-to-int v4, v4

    add-int/2addr v6, v4

    iget-object v7, v5, Lan;->j:Lam;

    iget-object v7, v7, Lam;->f:Lal;

    invoke-virtual {v1, v7, v4}, Lak;->h(Lal;I)V

    iget-object v7, v5, Lan;->l:Lam;

    iget-object v7, v7, Lam;->f:Lal;

    invoke-virtual {v1, v7, v6}, Lak;->h(Lal;I)V

    iget-object v7, v5, Lan;->m:Lam;

    invoke-virtual {v1, v7}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v10

    iput-object v10, v7, Lam;->f:Lal;

    iget-object v7, v5, Lan;->m:Lam;

    iget-object v7, v7, Lam;->f:Lal;

    iget v10, v5, Lan;->C:I

    add-int/2addr v10, v4

    invoke-virtual {v1, v7, v10}, Lak;->h(Lal;I)V

    iput v8, v5, Lan;->b:I

    invoke-virtual {v5, v4, v6}, Lan;->o(II)V

    goto/16 :goto_9

    :cond_29
    if-nez v11, :cond_2f

    if-nez v6, :cond_2f

    if-nez v10, :cond_2f

    instance-of v6, v5, Lap;

    if-eqz v6, :cond_2c

    move-object v6, v5

    check-cast v6, Lap;

    iget v7, v6, Lap;->ai:I

    if-nez v7, :cond_2f

    invoke-virtual {v1, v4}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v7

    iput-object v7, v4, Lam;->f:Lal;

    iget-object v4, v5, Lan;->l:Lam;

    invoke-virtual {v1, v4}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v7

    iput-object v7, v4, Lam;->f:Lal;

    iget v4, v6, Lap;->ag:I

    const/4 v7, -0x1

    if-eq v4, v7, :cond_2a

    int-to-float v4, v4

    goto :goto_8

    :cond_2a
    iget v4, v6, Lap;->ah:I

    if-eq v4, v7, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lan;->d()I

    move-result v6

    sub-int/2addr v6, v4

    int-to-float v4, v6

    goto :goto_8

    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lan;->d()I

    move-result v4

    int-to-float v4, v4

    iget v6, v6, Lap;->af:F

    mul-float v4, v4, v6

    :goto_8
    add-float v4, v4, v17

    iget-object v6, v5, Lan;->j:Lam;

    iget-object v6, v6, Lam;->f:Lal;

    float-to-int v4, v4

    invoke-virtual {v1, v6, v4}, Lak;->h(Lal;I)V

    iget-object v6, v5, Lan;->l:Lam;

    iget-object v6, v6, Lam;->f:Lal;

    invoke-virtual {v1, v6, v4}, Lak;->h(Lal;I)V

    iput v8, v5, Lan;->b:I

    iput v8, v5, Lan;->a:I

    invoke-virtual {v5, v4, v4}, Lan;->o(II)V

    invoke-virtual/range {p0 .. p0}, Lan;->h()I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Lan;->k(II)V

    goto :goto_9

    :cond_2c
    invoke-virtual {v1, v4}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v6

    iput-object v6, v4, Lam;->f:Lal;

    iget-object v4, v5, Lan;->l:Lam;

    invoke-virtual {v1, v4}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v6

    iput-object v6, v4, Lam;->f:Lal;

    iget v4, v5, Lan;->x:I

    invoke-virtual {v5}, Lan;->d()I

    move-result v6

    add-int/2addr v6, v4

    iget-object v7, v5, Lan;->j:Lam;

    iget-object v7, v7, Lam;->f:Lal;

    invoke-virtual {v1, v7, v4}, Lak;->h(Lal;I)V

    iget-object v7, v5, Lan;->l:Lam;

    iget-object v7, v7, Lam;->f:Lal;

    invoke-virtual {v1, v7, v6}, Lak;->h(Lal;I)V

    iget v6, v5, Lan;->C:I

    if-gtz v6, :cond_2d

    iget v6, v5, Lan;->K:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2e

    :cond_2d
    iget-object v6, v5, Lan;->m:Lam;

    invoke-virtual {v1, v6}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v7

    iput-object v7, v6, Lam;->f:Lal;

    iget-object v6, v5, Lan;->m:Lam;

    iget-object v6, v6, Lam;->f:Lal;

    iget v7, v5, Lan;->C:I

    add-int/2addr v4, v7

    invoke-virtual {v1, v6, v4}, Lak;->h(Lal;I)V

    :cond_2e
    iput v8, v5, Lan;->b:I

    :cond_2f
    :goto_9
    iget v4, v5, Lan;->b:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_30

    add-int/lit8 v14, v14, 0x1

    :cond_30
    iget v4, v5, Lan;->a:I

    if-ne v4, v6, :cond_31

    add-int/lit8 v15, v15, 0x1

    :cond_31
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x4

    const/4 v7, 0x1

    const/4 v10, 0x3

    const/4 v11, -0x1

    goto/16 :goto_3

    :cond_32
    if-nez v14, :cond_34

    if-nez v15, :cond_33

    :goto_a
    const/4 v9, 0x1

    goto :goto_c

    :cond_33
    const/4 v6, 0x0

    goto :goto_b

    :cond_34
    move v6, v14

    :goto_b
    if-ne v12, v6, :cond_35

    if-ne v13, v15, :cond_35

    goto :goto_a

    :cond_35
    const/4 v9, 0x0

    :goto_c
    move v12, v14

    move v13, v15

    const/4 v4, 0x4

    const/4 v7, 0x1

    const/4 v10, 0x3

    const/4 v11, -0x1

    goto/16 :goto_2

    :cond_36
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v3, :cond_3b

    iget-object v7, v0, Lao;->al:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lan;

    iget v9, v7, Lan;->a:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_37

    const/4 v10, -0x1

    if-ne v9, v10, :cond_38

    :cond_37
    add-int/lit8 v4, v4, 0x1

    :cond_38
    iget v7, v7, Lan;->b:I

    const/4 v9, 0x1

    if-eq v7, v9, :cond_39

    const/4 v9, -0x1

    if-ne v7, v9, :cond_3a

    goto :goto_e

    :cond_39
    const/4 v9, -0x1

    :goto_e
    add-int/lit8 v5, v5, 0x1

    :cond_3a
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_3b
    if-nez v4, :cond_3d

    if-eqz v5, :cond_3c

    const/4 v6, 0x0

    const/16 v16, 0x0

    goto :goto_f

    :cond_3c
    const/4 v6, 0x0

    return v6

    :cond_3d
    const/4 v6, 0x0

    const/16 v16, 0x0

    :goto_f
    if-ge v6, v2, :cond_49

    iget-object v3, v0, Lao;->al:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lan;

    instance-of v4, v3, Lao;

    if-eqz v4, :cond_42

    iget v4, v3, Lan;->ad:I

    iget v5, v3, Lan;->ae:I

    if-ne v4, v8, :cond_3e

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lan;->v(I)V

    const/4 v4, 0x2

    goto :goto_10

    :cond_3e
    const/4 v7, 0x1

    :goto_10
    if-ne v5, v8, :cond_3f

    invoke-virtual {v3, v7}, Lan;->w(I)V

    const/4 v5, 0x2

    :cond_3f
    invoke-virtual {v3, v1}, Lan;->x(Lak;)V

    if-ne v4, v8, :cond_40

    invoke-virtual {v3, v8}, Lan;->v(I)V

    :cond_40
    if-ne v5, v8, :cond_41

    invoke-virtual {v3, v8}, Lan;->w(I)V

    const/4 v5, 0x4

    const/16 v10, 0x8

    goto/16 :goto_13

    :cond_41
    const/4 v5, 0x4

    const/16 v10, 0x8

    goto/16 :goto_13

    :cond_42
    if-eqz v16, :cond_48

    iget v4, v0, Lao;->ad:I

    if-eq v4, v8, :cond_43

    iget v4, v3, Lan;->ad:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_43

    iget-object v4, v3, Lan;->i:Lam;

    invoke-virtual {v1, v4}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v5

    iput-object v5, v4, Lam;->f:Lal;

    iget-object v4, v3, Lan;->k:Lam;

    invoke-virtual {v1, v4}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v5

    iput-object v5, v4, Lam;->f:Lal;

    iget-object v4, v3, Lan;->i:Lam;

    iget v5, v4, Lam;->c:I

    invoke-virtual/range {p0 .. p0}, Lan;->h()I

    move-result v7

    iget-object v9, v3, Lan;->k:Lam;

    iget v9, v9, Lam;->c:I

    sub-int/2addr v7, v9

    iget-object v4, v4, Lam;->f:Lal;

    invoke-virtual {v1, v4, v5}, Lak;->h(Lal;I)V

    iget-object v4, v3, Lan;->k:Lam;

    iget-object v4, v4, Lam;->f:Lal;

    invoke-virtual {v1, v4, v7}, Lak;->h(Lal;I)V

    invoke-virtual {v3, v5, v7}, Lan;->k(II)V

    iput v8, v3, Lan;->a:I

    :cond_43
    iget v4, v0, Lao;->ae:I

    if-eq v4, v8, :cond_47

    iget v4, v3, Lan;->ae:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_46

    iget-object v4, v3, Lan;->j:Lam;

    invoke-virtual {v1, v4}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v7

    iput-object v7, v4, Lam;->f:Lal;

    iget-object v4, v3, Lan;->l:Lam;

    invoke-virtual {v1, v4}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v7

    iput-object v7, v4, Lam;->f:Lal;

    iget-object v4, v3, Lan;->j:Lam;

    iget v7, v4, Lam;->c:I

    invoke-virtual/range {p0 .. p0}, Lan;->d()I

    move-result v9

    iget-object v10, v3, Lan;->l:Lam;

    iget v10, v10, Lam;->c:I

    sub-int/2addr v9, v10

    iget-object v4, v4, Lam;->f:Lal;

    invoke-virtual {v1, v4, v7}, Lak;->h(Lal;I)V

    iget-object v4, v3, Lan;->l:Lam;

    iget-object v4, v4, Lam;->f:Lal;

    invoke-virtual {v1, v4, v9}, Lak;->h(Lal;I)V

    iget v4, v3, Lan;->C:I

    if-gtz v4, :cond_44

    iget v4, v3, Lan;->K:I

    const/16 v10, 0x8

    if-ne v4, v10, :cond_45

    goto :goto_11

    :cond_44
    const/16 v10, 0x8

    :goto_11
    iget-object v4, v3, Lan;->m:Lam;

    invoke-virtual {v1, v4}, Lak;->e(Ljava/lang/Object;)Lal;

    move-result-object v11

    iput-object v11, v4, Lam;->f:Lal;

    iget-object v4, v3, Lan;->m:Lam;

    iget-object v4, v4, Lam;->f:Lal;

    iget v11, v3, Lan;->C:I

    add-int/2addr v11, v7

    invoke-virtual {v1, v4, v11}, Lak;->h(Lal;I)V

    :cond_45
    invoke-virtual {v3, v7, v9}, Lan;->o(II)V

    iput v8, v3, Lan;->b:I

    goto :goto_12

    :cond_46
    const/16 v10, 0x8

    goto :goto_12

    :cond_47
    const/4 v5, 0x4

    const/16 v10, 0x8

    goto :goto_12

    :cond_48
    const/4 v5, 0x4

    const/16 v10, 0x8

    :goto_12
    invoke-virtual {v3, v1}, Lan;->x(Lak;)V

    :goto_13
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_f

    :cond_49
    iget v2, v0, Lao;->an:I

    if-lez v2, :cond_4a

    invoke-direct/range {p0 .. p1}, Lao;->H(Lak;)V

    :cond_4a
    iget v2, v0, Lao;->ao:I

    if-lez v2, :cond_4b

    invoke-direct/range {p0 .. p1}, Lao;->I(Lak;)V

    :cond_4b
    const/4 v1, 0x1

    return v1
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lao;->af:Lak;

    invoke-virtual {v0}, Lak;->l()V

    invoke-super {p0}, Las;->i()V

    return-void
.end method
