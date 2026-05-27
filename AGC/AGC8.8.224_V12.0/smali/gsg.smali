.class public final Lgsg;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lgta;

.field private final b:Lgsu;

.field private final c:Lgtb;

.field private final d:Lgsb;

.field private final e:Lmqp;

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private k:Ljava/util/List;

.field private final l:Lgxb;

.field private final m:Lbkb;


# direct methods
.method public constructor <init>(Lgta;Lgsu;Lgtb;Lgxb;Lgsb;Lbkb;Lmqp;ZZZZZLjuf;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgsg;->a:Lgta;

    iput-object p2, p0, Lgsg;->b:Lgsu;

    iput-object p3, p0, Lgsg;->c:Lgtb;

    iput-object p4, p0, Lgsg;->l:Lgxb;

    iput-object p5, p0, Lgsg;->d:Lgsb;

    iput-boolean p8, p0, Lgsg;->f:Z

    iput-boolean p9, p0, Lgsg;->g:Z

    iput-boolean p10, p0, Lgsg;->h:Z

    iput-boolean p11, p0, Lgsg;->i:Z

    iput-boolean p12, p0, Lgsg;->j:Z

    iput-object p7, p0, Lgsg;->e:Lmqp;

    iput-object p6, p0, Lgsg;->m:Lbkb;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lgsg;->k:Ljava/util/List;

    invoke-virtual {p13, p5}, Ljuf;->d(Lkad;)V

    return-void
.end method


# virtual methods
.method public final a(Lkpb;Lgrw;)Lgsl;
    .locals 49

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v2, Lgrw;->k:I

    const/4 v4, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    if-eq v3, v7, :cond_1

    if-ne v3, v4, :cond_0

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    :cond_1
    const/high16 v12, 0x3f800000    # 1.0f

    :goto_0
    iget v3, v2, Lgrw;->j:I

    const/4 v8, 0x4

    if-eq v3, v8, :cond_3

    if-ne v3, v7, :cond_2

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    :cond_3
    const/high16 v13, 0x3f800000    # 1.0f

    :goto_1
    iget v3, v2, Lgrw;->l:I

    if-eq v3, v7, :cond_5

    if-ne v3, v4, :cond_4

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    :cond_5
    const/high16 v14, 0x3f800000    # 1.0f

    :goto_2
    iget-object v3, v2, Lgrw;->q:[Lgrz;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v4, v3

    int-to-float v15, v4

    iget-object v9, v2, Lgrw;->t:Landroid/graphics/Rect;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v4, :cond_6

    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_6
    const/4 v11, 0x0

    const/16 v17, 0x0

    :goto_3
    if-ge v11, v4, :cond_7

    aget-object v7, v3, v11

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, v7, Lgrz;->a:Landroid/graphics/Rect;

    int-to-float v8, v8

    iget v10, v7, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    const v22, 0x3e19999a    # 0.15f

    mul-float v23, v8, v22

    sub-float v10, v10, v23

    neg-float v10, v10

    const v23, 0x3d23d70a    # 0.04f

    mul-float v24, v8, v23

    div-float v10, v10, v24

    invoke-static {v10}, Lflb;->i(F)F

    move-result v10

    sub-float v10, v5, v10

    iget v5, v7, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    const v21, 0x3f59999a    # 0.85f

    mul-float v8, v8, v21

    sub-float/2addr v5, v8

    div-float v5, v5, v24

    invoke-static {v5}, Lflb;->i(F)F

    move-result v5

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v5, v8, v5

    int-to-float v6, v6

    iget v8, v7, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    mul-float v22, v22, v6

    sub-float v8, v8, v22

    neg-float v8, v8

    mul-float v23, v23, v6

    div-float v8, v8, v23

    invoke-static {v8}, Lflb;->i(F)F

    move-result v8

    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v8, v22, v8

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    const v21, 0x3f59999a    # 0.85f

    mul-float v6, v6, v21

    sub-float/2addr v7, v6

    div-float v7, v7, v23

    invoke-static {v7}, Lflb;->i(F)F

    move-result v6

    sub-float v6, v22, v6

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    array-length v6, v3

    int-to-float v6, v6

    div-float/2addr v5, v6

    add-float v17, v17, v5

    add-int/lit8 v11, v11, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    const/4 v8, 0x4

    goto :goto_3

    :cond_7
    move/from16 v6, v17

    :goto_4
    iget-object v3, v0, Lgsg;->b:Lgsu;

    invoke-virtual {v3, v2}, Lgsu;->a(Lgrw;)F

    move-result v3

    iget v4, v2, Lgrw;->m:I

    iget-object v5, v0, Lgsg;->c:Lgtb;

    iget v7, v5, Lgtb;->a:F

    const v8, 0x3f59999a    # 0.85f

    mul-float v7, v7, v8

    iget v8, v2, Lgrw;->p:F

    const v9, 0x3e199998    # 0.14999998f

    mul-float v8, v8, v9

    add-float/2addr v7, v8

    iput v7, v5, Lgtb;->a:F

    iget-wide v8, v2, Lgrw;->d:J

    long-to-float v5, v8

    const v8, 0x49742400    # 1000000.0f

    div-float/2addr v5, v8

    float-to-double v8, v5

    const-wide/high16 v10, 0x4018000000000000L    # 6.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double v8, v10, v8

    iget-object v5, v0, Lgsg;->d:Lgsb;

    invoke-virtual {v5, v1, v2}, Lgsb;->a(Lkpb;Lgrw;)F

    move-result v5

    iget-object v10, v0, Lgsg;->m:Lbkb;

    invoke-virtual {v10, v1}, Lbkb;->C(Lkpb;)F

    move-result v10

    iget-object v11, v0, Lgsg;->d:Lgsb;

    invoke-virtual {v11}, Lgsb;->b()Lmqp;

    move-result-object v27

    iget-boolean v11, v0, Lgsg;->i:Z

    move/from16 v17, v10

    const/4 v10, 0x1

    if-eqz v11, :cond_8

    iget-object v11, v0, Lgsg;->a:Lgta;

    invoke-virtual {v11, v1, v2, v10}, Lgta;->b(Lkpb;Lgrw;Z)Lmqp;

    move-result-object v11

    move-object/from16 v26, v11

    goto :goto_5

    :cond_8
    sget-object v11, Lmpx;->a:Lmpx;

    move-object/from16 v26, v11

    :goto_5
    iget-object v11, v0, Lgsg;->e:Lmqp;

    move/from16 v24, v5

    move/from16 v23, v6

    invoke-interface/range {p1 .. p1}, Lkpb;->d()J

    move-result-wide v5

    invoke-static {v11, v5, v6}, Lflb;->h(Lmqp;J)Lmqp;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual/range {v26 .. v26}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgsx;

    iget v6, v6, Lgsx;->b:F

    goto :goto_6

    :cond_9
    const/4 v6, 0x0

    :goto_6
    iget-boolean v2, v2, Lgrw;->r:Z

    iget-object v11, v0, Lgsg;->d:Lgsb;

    invoke-virtual {v11}, Lgsb;->c()Z

    move-result v28

    iget-boolean v11, v0, Lgsg;->j:Z

    if-eqz v11, :cond_b

    iget-boolean v11, v0, Lgsg;->g:Z

    if-eqz v11, :cond_a

    const/4 v11, 0x0

    cmpl-float v29, v15, v11

    if-nez v29, :cond_a

    const v11, 0x3ceac860    # 0.02866f

    const v29, 0x3e93cb3e

    const v30, 0x3d0fa58f    # 0.03507f

    const v31, 0x3da0956c    # 0.07841f

    const v32, 0x3d85729b    # 0.06516f

    const v33, 0x3bbc169c    # 0.00574f

    move/from16 v31, v2

    move-object/from16 v30, v5

    const p2, 0x3ceac860    # 0.02866f

    const v0, 0x3bbc169c    # 0.00574f

    const v1, 0x3e93cb3e

    const/4 v2, 0x0

    const v5, 0x3d85729b    # 0.06516f

    const v10, 0x3da0956c    # 0.07841f

    const/4 v11, 0x0

    const/16 v32, 0x0

    const v34, 0x3d0fa58f    # 0.03507f

    goto/16 :goto_7

    :cond_a
    const v30, 0x3dbf67f5    # 0.09346f

    const v11, 0x3eb46888

    const v32, 0x3f085293

    const v29, 0x3cb19a41    # 0.02168f

    move/from16 v31, v2

    move-object/from16 v30, v5

    const/16 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v5, 0x3f085293

    const v10, 0x3eb46888

    const v11, 0x3cb19a41    # 0.02168f

    const/16 v32, 0x0

    const v34, 0x3dbf67f5    # 0.09346f

    goto/16 :goto_7

    :cond_b
    iget-boolean v11, v0, Lgsg;->h:Z

    if-eqz v11, :cond_d

    iget-boolean v11, v0, Lgsg;->g:Z

    if-eqz v11, :cond_c

    const/4 v11, 0x0

    cmpl-float v29, v15, v11

    if-nez v29, :cond_c

    const v11, 0x3cc447c3    # 0.02396f

    const v29, 0x3e7714ba    # 0.24129f

    const v30, 0x3cef88b9    # 0.02924f

    const v31, 0x3d861523    # 0.06547f

    const v32, 0x3d5df655    # 0.05419f

    const v33, 0x3b9cf56f    # 0.00479f

    move/from16 v31, v2

    move-object/from16 v30, v5

    const p2, 0x3cc447c3    # 0.02396f

    const v0, 0x3b9cf56f    # 0.00479f

    const v1, 0x3e7714ba    # 0.24129f

    const/4 v2, 0x0

    const v5, 0x3d5df655    # 0.05419f

    const v10, 0x3d861523    # 0.06547f

    const/4 v11, 0x0

    const/16 v32, 0x0

    const v34, 0x3cef88b9    # 0.02924f

    goto/16 :goto_7

    :cond_c
    const v30, 0x3daa0664    # 0.08302f

    const v11, 0x3ea50093    # 0.32227f

    const v32, 0x3f129692

    const v29, 0x3c96d091    # 0.01841f

    const v31, 0x3b712c28    # 0.00368f

    move/from16 v31, v2

    move-object/from16 v30, v5

    const/16 p2, 0x0

    const v0, 0x3b712c28    # 0.00368f

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v5, 0x3f129692

    const v10, 0x3ea50093    # 0.32227f

    const v11, 0x3c96d091    # 0.01841f

    const/16 v32, 0x0

    const v34, 0x3daa0664    # 0.08302f

    goto :goto_7

    :cond_d
    iget-boolean v11, v0, Lgsg;->g:Z

    if-eqz v11, :cond_e

    const/4 v11, 0x0

    cmpl-float v29, v15, v11

    if-nez v29, :cond_e

    const v11, 0x3b6b4635    # 0.00359f

    const v29, 0x3daab8a6    # 0.08336f

    const v30, 0x3c8811b2    # 0.01661f

    const v31, 0x3bc9320e    # 0.00614f

    const v32, 0x3cf8ca82    # 0.03037f

    const v33, 0x3927c5ac    # 1.6E-4f

    move/from16 v31, v2

    move-object/from16 v30, v5

    const p2, 0x3b6b4635    # 0.00359f

    const/4 v0, 0x0

    const v1, 0x3daab8a6    # 0.08336f

    const v2, 0x3927c5ac    # 1.6E-4f

    const v5, 0x3cf8ca82    # 0.03037f

    const v10, 0x3bc9320e    # 0.00614f

    const/4 v11, 0x0

    const/16 v32, 0x0

    const v34, 0x3c8811b2    # 0.01661f

    goto :goto_7

    :cond_e
    const v30, 0x3dbc2118    # 0.09186f

    const v11, 0x3b80c73b    # 0.00393f

    const v32, 0x3f5d0529

    const v29, 0x3d275254    # 0.04085f

    move/from16 v31, v2

    move-object/from16 v30, v5

    const/16 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v5, 0x3f5d0529

    const/4 v10, 0x0

    const v11, 0x3d275254    # 0.04085f

    const v32, 0x3b80c73b    # 0.00393f

    const v34, 0x3dbc2118    # 0.09186f

    :goto_7
    const-wide/high16 v35, 0x4000000000000000L    # 2.0

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    add-double v8, v8, v21

    div-double v35, v35, v8

    sub-double v8, v21, v35

    double-to-float v8, v8

    mul-float v7, v7, v8

    if-nez v4, :cond_f

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_f
    const/4 v4, 0x0

    :goto_8
    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v7, v8

    mul-float v8, v12, v2

    const/4 v9, 0x0

    add-float/2addr v8, v9

    mul-float v21, v13, v0

    mul-float v22, v14, v9

    mul-float v25, v15, v9

    mul-float v9, v23, v11

    mul-float v33, v6, v5

    mul-float v35, v3, v10

    mul-float v36, v24, v1

    mul-float v37, v17, p2

    move/from16 v39, v8

    move/from16 v38, v9

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lgsg;->f:Z

    const/high16 v40, 0x40000000    # 2.0f

    div-float v7, v7, v40

    if-eqz v8, :cond_3f

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v26 .. v26}, Lmqp;->g()Z

    move-result v40

    if-eqz v40, :cond_1b

    invoke-virtual/range {v26 .. v26}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v40

    move/from16 v41, v1

    move-object/from16 v1, v40

    check-cast v1, Lgsx;

    iget-object v1, v1, Lgsx;->a:[Lgsw;

    move/from16 v40, v10

    array-length v10, v1

    move/from16 v42, v5

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v10, :cond_1a

    move/from16 v43, v10

    aget-object v10, v1, v5

    sget-object v44, Loaq;->g:Loaq;

    move-object/from16 v45, v1

    invoke-virtual/range {v44 .. v44}, Lnws;->O()Lnwn;

    move-result-object v1

    move/from16 v46, v2

    move/from16 v44, v3

    iget-wide v2, v10, Lgsw;->a:J

    move/from16 v47, v11

    iget-object v11, v1, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_10

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_10
    iget-object v11, v1, Lnwn;->b:Lnws;

    move/from16 v48, v9

    move-object v9, v11

    check-cast v9, Loaq;

    iget v0, v9, Loaq;->a:I

    const/16 v29, 0x1

    or-int/lit8 v0, v0, 0x1

    iput v0, v9, Loaq;->a:I

    iput-wide v2, v9, Loaq;->b:J

    iget v0, v10, Lgsw;->c:F

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_11
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Loaq;

    iget v3, v2, Loaq;->a:I

    const/4 v9, 0x4

    or-int/2addr v3, v9

    iput v3, v2, Loaq;->a:I

    iput v0, v2, Loaq;->d:F

    iget-object v0, v10, Lgsw;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, v1, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_12
    iget-object v0, v1, Lnwn;->b:Lnws;

    check-cast v0, Loaq;

    iget v9, v0, Loaq;->a:I

    const/4 v11, 0x2

    or-int/2addr v9, v11

    iput v9, v0, Loaq;->a:I

    iput-wide v2, v0, Loaq;->c:J

    :cond_13
    iget-object v0, v10, Lgsw;->f:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_14
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Loaq;

    iget-object v3, v2, Loaq;->e:Lnwx;

    invoke-interface {v3}, Lnwx;->c()Z

    move-result v9

    if-nez v9, :cond_15

    invoke-static {v3}, Lnws;->R(Lnwx;)Lnwx;

    move-result-object v3

    iput-object v3, v2, Loaq;->e:Lnwx;

    :cond_15
    iget-object v2, v2, Loaq;->e:Lnwx;

    invoke-static {v0, v2}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    :cond_16
    iget-object v0, v10, Lgsw;->g:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_17
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Loaq;

    iget-object v3, v2, Loaq;->f:Lnwx;

    invoke-interface {v3}, Lnwx;->c()Z

    move-result v9

    if-nez v9, :cond_18

    invoke-static {v3}, Lnws;->R(Lnwx;)Lnwx;

    move-result-object v3

    iput-object v3, v2, Loaq;->f:Lnwx;

    :cond_18
    iget-object v2, v2, Loaq;->f:Lnwx;

    invoke-static {v0, v2}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    :cond_19
    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Loaq;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move/from16 v10, v43

    move/from16 v3, v44

    move-object/from16 v1, v45

    move/from16 v2, v46

    move/from16 v11, v47

    move/from16 v9, v48

    goto/16 :goto_9

    :cond_1a
    move/from16 v46, v2

    move/from16 v44, v3

    move/from16 v48, v9

    move/from16 v47, v11

    goto :goto_a

    :cond_1b
    move/from16 v41, v1

    move/from16 v46, v2

    move/from16 v44, v3

    move/from16 v42, v5

    move/from16 v48, v9

    move/from16 v40, v10

    move/from16 v47, v11

    :goto_a
    sget-object v0, Loaj;->r:Loaj;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1c
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Loaj;

    iget v3, v2, Loaj;->a:I

    const/4 v5, 0x1

    or-int/2addr v3, v5

    iput v3, v2, Loaj;->a:I

    iput v12, v2, Loaj;->b:F

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1d
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Loaj;

    iget v3, v2, Loaj;->a:I

    const/4 v5, 0x2

    or-int/2addr v3, v5

    iput v3, v2, Loaj;->a:I

    iput v13, v2, Loaj;->c:F

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1e
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Loaj;

    iget v3, v2, Loaj;->a:I

    const/4 v5, 0x4

    or-int/2addr v3, v5

    iput v3, v2, Loaj;->a:I

    iput v14, v2, Loaj;->d:F

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1f
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Loaj;

    iget v3, v2, Loaj;->a:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Loaj;->a:I

    iput v15, v2, Loaj;->e:F

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_20
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Loaj;

    iget v3, v2, Loaj;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Loaj;->a:I

    move/from16 v3, v23

    iput v3, v2, Loaj;->f:F

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_21
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Loaj;

    iget v5, v2, Loaj;->a:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v2, Loaj;->a:I

    iput v6, v2, Loaj;->g:F

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_22
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Loaj;

    iget v5, v2, Loaj;->a:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v2, Loaj;->a:I

    move/from16 v5, v44

    iput v5, v2, Loaj;->h:F

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_23

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_23
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Loaj;

    iget v9, v2, Loaj;->a:I

    or-int/lit16 v9, v9, 0x80

    iput v9, v2, Loaj;->a:I

    iput v4, v2, Loaj;->i:F

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_24
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Loaj;

    iget v9, v2, Loaj;->a:I

    or-int/lit16 v9, v9, 0x100

    iput v9, v2, Loaj;->a:I

    iput v7, v2, Loaj;->j:F

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_25
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Loaj;

    iget v9, v2, Loaj;->a:I

    or-int/lit16 v9, v9, 0x200

    iput v9, v2, Loaj;->a:I

    move/from16 v9, v24

    iput v9, v2, Loaj;->k:F

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_26
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loaj;

    iget v2, v1, Loaj;->a:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Loaj;->a:I

    move/from16 v2, v17

    iput v2, v1, Loaj;->l:F

    invoke-virtual/range {v26 .. v26}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual/range {v26 .. v26}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgsx;

    iget v1, v1, Lgsx;->c:F

    goto :goto_b

    :cond_27
    const/4 v1, 0x0

    :goto_b
    iget-object v10, v0, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_28

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_28
    iget-object v10, v0, Lnwn;->b:Lnws;

    check-cast v10, Loaj;

    iget v11, v10, Loaj;->a:I

    or-int/lit16 v11, v11, 0x800

    iput v11, v10, Loaj;->a:I

    iput v1, v10, Loaj;->o:F

    invoke-virtual/range {v26 .. v26}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual/range {v26 .. v26}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgsx;

    iget v1, v1, Lgsx;->d:F

    goto :goto_c

    :cond_29
    const/4 v1, 0x0

    :goto_c
    iget-object v10, v0, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_2a

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2a
    iget-object v10, v0, Lnwn;->b:Lnws;

    check-cast v10, Loaj;

    iget v11, v10, Loaj;->a:I

    or-int/lit16 v11, v11, 0x1000

    iput v11, v10, Loaj;->a:I

    iput v1, v10, Loaj;->p:F

    invoke-virtual/range {v26 .. v26}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual/range {v26 .. v26}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgsx;

    iget v1, v1, Lgsx;->e:F

    goto :goto_d

    :cond_2b
    const/4 v1, 0x0

    :goto_d
    iget-object v10, v0, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_2c

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2c
    iget-object v10, v0, Lnwn;->b:Lnws;

    move-object v11, v10

    check-cast v11, Loaj;

    move/from16 v17, v2

    iget v2, v11, Loaj;->a:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, v11, Loaj;->a:I

    iput v1, v11, Loaj;->q:F

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2d
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loaj;

    iget-object v2, v1, Loaj;->m:Lnxa;

    invoke-interface {v2}, Lnxa;->c()Z

    move-result v10

    if-nez v10, :cond_2e

    invoke-static {v2}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v2

    iput-object v2, v1, Loaj;->m:Lnxa;

    :cond_2e
    iget-object v1, v1, Loaj;->m:Lnxa;

    invoke-static {v8, v1}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual/range {v27 .. v27}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual/range {v27 .. v27}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    move-object/from16 v2, p0

    iget-object v8, v2, Lgsg;->k:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2f

    array-length v8, v1

    new-instance v10, Ljava/util/ArrayList;

    move/from16 v24, v9

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v10, v2, Lgsg;->k:Ljava/util/List;

    const/4 v11, 0x0

    goto :goto_e

    :cond_2f
    move/from16 v24, v9

    const/4 v11, 0x0

    :goto_e
    array-length v8, v1

    if-ge v11, v8, :cond_30

    iget-object v8, v2, Lgsg;->k:Ljava/util/List;

    aget v9, v1, v11

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v8, v11, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_30
    iget-object v1, v2, Lgsg;->k:Ljava/util/List;

    iget-object v8, v0, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_31

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_31
    iget-object v8, v0, Lnwn;->b:Lnws;

    check-cast v8, Loaj;

    iget-object v9, v8, Loaj;->n:Lnwx;

    invoke-interface {v9}, Lnwx;->c()Z

    move-result v10

    if-nez v10, :cond_32

    invoke-static {v9}, Lnws;->R(Lnwx;)Lnwx;

    move-result-object v9

    iput-object v9, v8, Loaj;->n:Lnwx;

    :cond_32
    iget-object v8, v8, Loaj;->n:Lnwx;

    invoke-static {v1, v8}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    goto :goto_f

    :cond_33
    move-object/from16 v2, p0

    move/from16 v24, v9

    :goto_f
    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Loaj;

    sget-object v1, Loak;->m:Loak;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v8, v1, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_34

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_34
    iget-object v8, v1, Lnwn;->b:Lnws;

    move-object v9, v8

    check-cast v9, Loak;

    iget v10, v9, Loak;->a:I

    const/4 v11, 0x1

    or-int/2addr v10, v11

    iput v10, v9, Loak;->a:I

    move/from16 v10, v46

    iput v10, v9, Loak;->b:F

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_35

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_35
    iget-object v8, v1, Lnwn;->b:Lnws;

    move-object v9, v8

    check-cast v9, Loak;

    iget v10, v9, Loak;->a:I

    const/4 v11, 0x2

    or-int/2addr v10, v11

    iput v10, v9, Loak;->a:I

    move/from16 v10, v48

    iput v10, v9, Loak;->c:F

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_36

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_36
    iget-object v8, v1, Lnwn;->b:Lnws;

    move-object v9, v8

    check-cast v9, Loak;

    iget v10, v9, Loak;->a:I

    const/4 v11, 0x4

    or-int/2addr v10, v11

    iput v10, v9, Loak;->a:I

    const/4 v10, 0x0

    iput v10, v9, Loak;->d:F

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_37

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_37
    iget-object v8, v1, Lnwn;->b:Lnws;

    move-object v9, v8

    check-cast v9, Loak;

    iget v10, v9, Loak;->a:I

    or-int/lit8 v10, v10, 0x8

    iput v10, v9, Loak;->a:I

    const/4 v10, 0x0

    iput v10, v9, Loak;->e:F

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_38

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_38
    iget-object v8, v1, Lnwn;->b:Lnws;

    move-object v9, v8

    check-cast v9, Loak;

    iget v10, v9, Loak;->a:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v9, Loak;->a:I

    move/from16 v10, v47

    iput v10, v9, Loak;->f:F

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_39

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_39
    iget-object v8, v1, Lnwn;->b:Lnws;

    move-object v9, v8

    check-cast v9, Loak;

    iget v10, v9, Loak;->a:I

    or-int/lit8 v10, v10, 0x20

    iput v10, v9, Loak;->a:I

    move/from16 v10, v42

    iput v10, v9, Loak;->g:F

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_3a

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_3a
    iget-object v8, v1, Lnwn;->b:Lnws;

    move-object v9, v8

    check-cast v9, Loak;

    iget v10, v9, Loak;->a:I

    or-int/lit8 v10, v10, 0x40

    iput v10, v9, Loak;->a:I

    move/from16 v11, v40

    iput v11, v9, Loak;->h:F

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_3b

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_3b
    iget-object v8, v1, Lnwn;->b:Lnws;

    move-object v9, v8

    check-cast v9, Loak;

    iget v10, v9, Loak;->a:I

    or-int/lit16 v10, v10, 0x80

    iput v10, v9, Loak;->a:I

    move/from16 v11, v32

    iput v11, v9, Loak;->i:F

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_3c

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_3c
    iget-object v8, v1, Lnwn;->b:Lnws;

    move-object v9, v8

    check-cast v9, Loak;

    iget v10, v9, Loak;->a:I

    or-int/lit16 v10, v10, 0x100

    iput v10, v9, Loak;->a:I

    move/from16 v10, v34

    iput v10, v9, Loak;->j:F

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_3d

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_3d
    iget-object v8, v1, Lnwn;->b:Lnws;

    move-object v9, v8

    check-cast v9, Loak;

    move/from16 v44, v5

    iget v5, v9, Loak;->a:I

    or-int/lit16 v5, v5, 0x200

    iput v5, v9, Loak;->a:I

    move/from16 v5, v41

    iput v5, v9, Loak;->k:F

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_3e

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_3e
    iget-object v5, v1, Lnwn;->b:Lnws;

    check-cast v5, Loak;

    iget v8, v5, Loak;->a:I

    or-int/lit16 v8, v8, 0x400

    iput v8, v5, Loak;->a:I

    move/from16 v8, p2

    iput v8, v5, Loak;->l:F

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Loak;

    iget-object v5, v2, Lgsg;->l:Lgxb;

    invoke-interface/range {p1 .. p1}, Lkpb;->d()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9, v0, v1}, Lgxb;->a(JLoaj;Loak;)V

    goto :goto_10

    :cond_3f
    move-object v2, v0

    move/from16 v44, v3

    move/from16 v3, v23

    move/from16 v11, v32

    move/from16 v10, v34

    :goto_10
    mul-float v34, v7, v10

    mul-float v32, v4, v11

    add-float v8, v39, v21

    add-float v8, v8, v22

    add-float v8, v8, v25

    add-float v8, v8, v38

    add-float v8, v8, v33

    add-float v8, v8, v35

    add-float v8, v8, v32

    add-float v8, v8, v34

    add-float v8, v8, v36

    add-float v11, v8, v37

    new-instance v0, Lgsl;

    move-object v8, v0

    invoke-interface/range {p1 .. p1}, Lkpb;->d()J

    move-result-wide v9

    move/from16 v5, v17

    move/from16 v1, v24

    move/from16 v16, v3

    move/from16 v17, v6

    move/from16 v18, v44

    move/from16 v19, v4

    move/from16 v20, v7

    move/from16 v21, v5

    move/from16 v22, v1

    move/from16 v23, v31

    move/from16 v24, v28

    move-object/from16 v25, v26

    move-object/from16 v26, v30

    invoke-direct/range {v8 .. v27}, Lgsl;-><init>(JFFFFFFFFFFFFZZLmqp;Lmqp;Lmqp;)V

    return-object v0
.end method
