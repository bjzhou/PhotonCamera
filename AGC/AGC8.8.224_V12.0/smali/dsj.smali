.class public final Ldsj;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lgrw;FF)Lobf;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Ldsj;->c(Lgrw;Ljyp;FF)Lobf;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 6

    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "addSuppressed"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    return-void
.end method

.method public static final c(Lgrw;Ljyp;FF)Lobf;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lgrw;->D:Ljava/util/Map;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_0

    iget-object v1, v1, Ljyp;->b:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldxy;

    iget-wide v7, v6, Ldxy;->a:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget v6, v6, Ldxy;->b:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lgrw;->q:[Lgrz;

    array-length v6, v0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_15

    aget-object v8, v0, v7

    iget v9, v8, Lgrz;->i:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldyh;

    iget v10, v8, Lgrz;->i:I

    int-to-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    if-nez v10, :cond_1

    const/4 v10, 0x0

    goto :goto_2

    :cond_1
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    :goto_2
    iget-object v11, v8, Lgrz;->a:Landroid/graphics/Rect;

    sget-object v12, Lobc;->f:Lobc;

    invoke-virtual {v12}, Lnws;->O()Lnwn;

    move-result-object v12

    iget v13, v11, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    mul-float v13, v13, v2

    iget-object v14, v12, Lnwn;->b:Lnws;

    invoke-virtual {v14}, Lnws;->ac()Z

    move-result v14

    if-nez v14, :cond_2

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_2
    iget-object v14, v12, Lnwn;->b:Lnws;

    check-cast v14, Lobc;

    iget v15, v14, Lobc;->a:I

    move-object/from16 p0, v0

    const/4 v0, 0x1

    or-int/2addr v15, v0

    iput v15, v14, Lobc;->a:I

    iput v13, v14, Lobc;->b:F

    iget v13, v11, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    mul-float v13, v13, v2

    iget-object v14, v12, Lnwn;->b:Lnws;

    invoke-virtual {v14}, Lnws;->ac()Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_3
    iget-object v14, v12, Lnwn;->b:Lnws;

    check-cast v14, Lobc;

    iget v15, v14, Lobc;->a:I

    or-int/lit8 v15, v15, 0x4

    iput v15, v14, Lobc;->a:I

    iput v13, v14, Lobc;->d:F

    iget v13, v11, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    mul-float v13, v13, v3

    iget-object v14, v12, Lnwn;->b:Lnws;

    invoke-virtual {v14}, Lnws;->ac()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_4
    iget-object v14, v12, Lnwn;->b:Lnws;

    check-cast v14, Lobc;

    iget v15, v14, Lobc;->a:I

    const/4 v0, 0x2

    or-int/2addr v15, v0

    iput v15, v14, Lobc;->a:I

    iput v13, v14, Lobc;->c:F

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    mul-float v11, v11, v3

    iget-object v13, v12, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_5
    iget-object v13, v12, Lnwn;->b:Lnws;

    check-cast v13, Lobc;

    iget v14, v13, Lobc;->a:I

    or-int/lit8 v14, v14, 0x8

    iput v14, v13, Lobc;->a:I

    iput v11, v13, Lobc;->e:F

    invoke-virtual {v12}, Lnwn;->i()Lnws;

    move-result-object v11

    check-cast v11, Lobc;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v13, v8, Lgrz;->c:Landroid/graphics/PointF;

    const/4 v14, 0x1

    invoke-static {v14, v13, v12, v2, v3}, Ldsj;->d(ILandroid/graphics/PointF;Ljava/util/ArrayList;FF)V

    iget-object v13, v8, Lgrz;->d:Landroid/graphics/PointF;

    invoke-static {v0, v13, v12, v2, v3}, Ldsj;->d(ILandroid/graphics/PointF;Ljava/util/ArrayList;FF)V

    iget-object v13, v8, Lgrz;->e:Landroid/graphics/PointF;

    const/16 v14, 0x2e

    invoke-static {v14, v13, v12, v2, v3}, Ldsj;->d(ILandroid/graphics/PointF;Ljava/util/ArrayList;FF)V

    iget-object v13, v8, Lgrz;->f:Landroid/graphics/PointF;

    const/16 v14, 0xa

    invoke-static {v14, v13, v12, v2, v3}, Ldsj;->d(ILandroid/graphics/PointF;Ljava/util/ArrayList;FF)V

    iget-object v13, v8, Lgrz;->g:Landroid/graphics/PointF;

    const/16 v14, 0xf1

    invoke-static {v14, v13, v12, v2, v3}, Ldsj;->d(ILandroid/graphics/PointF;Ljava/util/ArrayList;FF)V

    iget-object v13, v8, Lgrz;->h:Landroid/graphics/PointF;

    const/16 v14, 0xf2

    invoke-static {v14, v13, v12, v2, v3}, Ldsj;->d(ILandroid/graphics/PointF;Ljava/util/ArrayList;FF)V

    sget-object v13, Lobe;->k:Lobe;

    invoke-virtual {v13}, Lnws;->O()Lnwn;

    move-result-object v13

    check-cast v13, Lnwp;

    iget-object v14, v13, Lnwn;->b:Lnws;

    invoke-virtual {v14}, Lnws;->ac()Z

    move-result v14

    if-nez v14, :cond_6

    invoke-virtual {v13}, Lnwn;->p()V

    :cond_6
    iget-object v14, v13, Lnwp;->b:Lnws;

    check-cast v14, Lobe;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v11, v14, Lobe;->b:Lobc;

    iget v11, v14, Lobe;->a:I

    const/4 v15, 0x1

    or-int/2addr v11, v15

    iput v11, v14, Lobe;->a:I

    iget v11, v8, Lgrz;->b:I

    int-to-float v11, v11

    iget-object v14, v13, Lnwn;->b:Lnws;

    invoke-virtual {v14}, Lnws;->ac()Z

    move-result v14

    if-nez v14, :cond_7

    invoke-virtual {v13}, Lnwn;->p()V

    :cond_7
    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v11, v14

    iget-object v14, v13, Lnwp;->b:Lnws;

    check-cast v14, Lobe;

    iget v15, v14, Lobe;->a:I

    or-int/2addr v0, v15

    iput v0, v14, Lobe;->a:I

    iput v11, v14, Lobe;->d:F

    iget v0, v8, Lgrz;->j:F

    iget-object v11, v13, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v13}, Lnwn;->p()V

    :cond_8
    iget-object v11, v13, Lnwp;->b:Lnws;

    check-cast v11, Lobe;

    iget v14, v11, Lobe;->a:I

    or-int/lit8 v14, v14, 0x10

    iput v14, v11, Lobe;->a:I

    iput v0, v11, Lobe;->g:F

    iget v0, v8, Lgrz;->k:F

    iget-object v11, v13, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_9

    invoke-virtual {v13}, Lnwn;->p()V

    :cond_9
    iget-object v11, v13, Lnwp;->b:Lnws;

    check-cast v11, Lobe;

    iget v14, v11, Lobe;->a:I

    or-int/lit8 v14, v14, 0x8

    iput v14, v11, Lobe;->a:I

    iput v0, v11, Lobe;->f:F

    iget v0, v8, Lgrz;->l:F

    iget-object v11, v13, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {v13}, Lnwn;->p()V

    :cond_a
    iget-object v11, v13, Lnwp;->b:Lnws;

    check-cast v11, Lobe;

    iget v14, v11, Lobe;->a:I

    or-int/lit8 v14, v14, 0x4

    iput v14, v11, Lobe;->a:I

    iput v0, v11, Lobe;->e:F

    iget-object v0, v13, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v13}, Lnwn;->p()V

    :cond_b
    iget-object v0, v13, Lnwp;->b:Lnws;

    check-cast v0, Lobe;

    iget-object v11, v0, Lobe;->c:Lnxa;

    invoke-interface {v11}, Lnxa;->c()Z

    move-result v14

    if-nez v14, :cond_c

    invoke-static {v11}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v11

    iput-object v11, v0, Lobe;->c:Lnxa;

    :cond_c
    iget-object v0, v0, Lobe;->c:Lnxa;

    invoke-static {v12, v0}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    sget-object v0, Locp;->i:Locp;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v11, v0, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_d

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_d
    iget-object v11, v0, Lnwn;->b:Lnws;

    check-cast v11, Locp;

    iget v12, v11, Locp;->a:I

    or-int/lit8 v12, v12, 0x4

    iput v12, v11, Locp;->a:I

    iput v10, v11, Locp;->d:F

    iget v10, v8, Lgrz;->i:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_14

    iget-object v11, v13, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_e

    invoke-virtual {v13}, Lnwn;->p()V

    :cond_e
    int-to-long v10, v10

    iget-object v12, v13, Lnwp;->b:Lnws;

    check-cast v12, Lobe;

    iget v14, v12, Lobe;->a:I

    or-int/lit8 v14, v14, 0x40

    iput v14, v12, Lobe;->a:I

    iput-wide v10, v12, Lobe;->i:J

    iget v8, v8, Lgrz;->i:I

    int-to-long v10, v8

    iget-object v8, v13, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_f

    invoke-virtual {v13}, Lnwn;->p()V

    :cond_f
    iget-object v8, v13, Lnwp;->b:Lnws;

    check-cast v8, Lobe;

    iget v12, v8, Lobe;->a:I

    or-int/lit16 v12, v12, 0x80

    iput v12, v8, Lobe;->a:I

    iput-wide v10, v8, Lobe;->j:J

    if-eqz v9, :cond_14

    sget-object v8, Locq;->d:Locq;

    invoke-virtual {v8}, Lnws;->O()Lnwn;

    move-result-object v8

    iget-object v10, v9, Ldyh;->b:Lmvv;

    iget-object v11, v8, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_10

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_10
    iget-object v11, v8, Lnwn;->b:Lnws;

    check-cast v11, Locq;

    iget-object v12, v11, Locq;->b:Lnwx;

    invoke-interface {v12}, Lnwx;->c()Z

    move-result v14

    if-nez v14, :cond_11

    invoke-static {v12}, Lnws;->R(Lnwx;)Lnwx;

    move-result-object v12

    iput-object v12, v11, Locq;->b:Lnwx;

    :cond_11
    iget-object v11, v11, Locq;->b:Lnwx;

    invoke-static {v10, v11}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    iget v9, v9, Ldyh;->c:F

    iget-object v10, v8, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_12

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_12
    iget-object v10, v8, Lnwn;->b:Lnws;

    check-cast v10, Locq;

    iget v11, v10, Locq;->a:I

    const/4 v12, 0x1

    or-int/2addr v11, v12

    iput v11, v10, Locq;->a:I

    iput v9, v10, Locq;->c:F

    invoke-virtual {v8}, Lnwn;->i()Lnws;

    move-result-object v8

    check-cast v8, Locq;

    iget-object v9, v0, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_13

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_13
    iget-object v9, v0, Lnwn;->b:Lnws;

    check-cast v9, Locp;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v8, v9, Locp;->g:Locq;

    iget v8, v9, Locp;->a:I

    or-int/lit8 v8, v8, 0x20

    iput v8, v9, Locp;->a:I

    :cond_14
    sget-object v8, Locp;->j:Llhj;

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Locp;

    invoke-virtual {v13, v8, v0}, Lnwp;->aJ(Llhj;Ljava/lang/Object;)V

    invoke-virtual {v13}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lobe;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_15
    sget-object v0, Lobf;->b:Lobf;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_16
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lobf;

    iget-object v3, v2, Lobf;->a:Lnxa;

    invoke-interface {v3}, Lnxa;->c()Z

    move-result v4

    if-nez v4, :cond_17

    invoke-static {v3}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v3

    iput-object v3, v2, Lobf;->a:Lnxa;

    :cond_17
    iget-object v2, v2, Lobf;->a:Lnxa;

    invoke-static {v1, v2}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lobf;

    return-object v0
.end method

.method private static final d(ILandroid/graphics/PointF;Ljava/util/ArrayList;FF)V
    .locals 2

    if-eqz p1, :cond_4

    iget v0, p1, Landroid/graphics/PointF;->x:F

    const/high16 v1, -0x3b860000    # -1000.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lobd;->e:Lobd;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lobd;

    add-int/lit8 p0, p0, -0x1

    iput p0, v1, Lobd;->d:I

    iget p0, v1, Lobd;->a:I

    or-int/lit8 p0, p0, 0x8

    iput p0, v1, Lobd;->a:I

    iget p0, p1, Landroid/graphics/PointF;->x:F

    mul-float p3, p3, p0

    iget-object p0, v0, Lnwn;->b:Lnws;

    invoke-virtual {p0}, Lnws;->ac()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object p0, v0, Lnwn;->b:Lnws;

    check-cast p0, Lobd;

    iget v1, p0, Lobd;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lobd;->a:I

    iput p3, p0, Lobd;->b:F

    iget p0, p1, Landroid/graphics/PointF;->y:F

    mul-float p4, p4, p0

    iget-object p0, v0, Lnwn;->b:Lnws;

    invoke-virtual {p0}, Lnws;->ac()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3
    iget-object p0, v0, Lnwn;->b:Lnws;

    check-cast p0, Lobd;

    iget p1, p0, Lobd;->a:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lobd;->a:I

    iput p4, p0, Lobd;->c:F

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p0

    check-cast p0, Lobd;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    :goto_0
    return-void
.end method
