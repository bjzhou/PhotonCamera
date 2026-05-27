.class public final Lhyo;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lnak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/ui/layout/helper/CameraBoxesHelper"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhyo;->a:Lnak;

    return-void
.end method

.method public static a(Landroid/view/WindowManager;)Landroid/util/Size;
    .locals 4

    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Insets;->right:I

    iget v2, v0, Landroid/graphics/Insets;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Insets;->top:I

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-direct {v0, v3, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public static b(Lika;)Z
    .locals 1

    sget-object v0, Lika;->b:Lika;

    invoke-virtual {p0, v0}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lika;->h:Lika;

    invoke-virtual {p0, v0}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lika;->g:Lika;

    invoke-virtual {p0, v0}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lika;->m:Lika;

    invoke-virtual {p0, v0}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lika;->l:Lika;

    invoke-virtual {p0, v0}, Lika;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static c(Lika;Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lika;->c:Lika;

    invoke-virtual {p0, v0}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lika;->f:Lika;

    invoke-virtual {p0, v0}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lika;->n:Lika;

    invoke-virtual {p0, v0}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lika;->l:Lika;

    invoke-virtual {v0, p0}, Lika;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    instance-of p0, p1, Lcdd;

    if-eqz p0, :cond_1

    check-cast p1, Lcdd;

    invoke-interface {p1}, Lcdd;->a()Ldhi;

    move-result-object p0

    sget-object p1, Ldhx;->f:Ldhj;

    invoke-interface {p0, p1}, Ldhi;->l(Ldhj;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static d(Lhys;ZLandroid/content/Context;Lhmd;Lmrl;)Lhyq;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Lhys;->a()Z

    move-result v3

    const-string v4, "Invalid Constraints!"

    invoke-static {v3, v4}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object v3, v0, Lhys;->b:Landroid/util/Size;

    invoke-static {v3}, Llkj;->C(Ljava/lang/Object;)V

    iget-object v4, v0, Lhys;->d:Landroid/util/Size;

    invoke-static {v4}, Llkj;->C(Ljava/lang/Object;)V

    iget-object v5, v0, Lhys;->g:Liko;

    iget-object v6, v0, Lhys;->h:Lika;

    iget-object v7, v0, Lhys;->i:Lhyn;

    iget-boolean v0, v0, Lhys;->f:Z

    const/high16 v8, 0x42c80000    # 100.0f

    const/high16 v9, 0x42600000    # 56.0f

    const/4 v10, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/high16 v5, 0x42a80000    # 84.0f

    invoke-static {v5}, Likp;->b(F)I

    move-result v5

    invoke-static {v9}, Likp;->b(F)I

    move-result v7

    invoke-static {v8}, Likp;->b(F)I

    move-result v8

    invoke-static {v6, v1}, Lhyo;->c(Lika;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v9}, Likp;->b(F)I

    move-result v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-static {v9}, Likp;->b(F)I

    move-result v9

    sub-int v9, v2, v9

    sub-int v5, v9, v5

    sub-int v6, v5, v6

    sub-int v8, v6, v8

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-static {v1}, Lkab;->c(Landroid/view/Display;)Lkab;

    move-result-object v1

    invoke-static {v4}, Ljzr;->i(Landroid/util/Size;)Ljzr;

    move-result-object v4

    sget-object v11, Lkab;->b:Lkab;

    invoke-virtual {v1, v11}, Lkab;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    sget-object v11, Lkab;->d:Lkab;

    invoke-virtual {v1, v11}, Lkab;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v4}, Ljzr;->l()Ljzr;

    move-result-object v4

    :goto_2
    invoke-static {v3, v4}, Lhyo;->f(Landroid/util/Size;Ljzr;)Landroid/util/Size;

    move-result-object v1

    invoke-static {}, Lhyq;->b()Lhyp;

    move-result-object v4

    invoke-virtual {v4, v3}, Lhyp;->q(Landroid/util/Size;)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-direct {v3, v10, v10, v11, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v3}, Lhyp;->k(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v10, v8, v0, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v1}, Lhyp;->s(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v10, v5, v0, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v1}, Lhyp;->b(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v10, v7, v0, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v1}, Lhyp;->o(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v10, v7, v0, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v1}, Lhyp;->p(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v10, v9, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v1}, Lhyp;->g(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v10, v10, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v1}, Lhyp;->d(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v10, v5, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v1}, Lhyp;->e(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v1}, Lhyp;->l(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v1}, Lhyp;->j(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v1}, Lhyp;->c(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v10, v6, v0, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v1}, Lhyp;->f(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v1}, Lhyp;->n(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v10, v7, v0, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v1}, Lhyp;->m(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v10, v7, v0, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v1}, Lhyp;->h(Landroid/graphics/Rect;)V

    invoke-virtual {v4}, Lhyp;->a()Lhyq;

    move-result-object v0

    goto/16 :goto_16

    :cond_3
    invoke-static {v3, v5}, Lhyo;->g(Landroid/util/Size;Liko;)Landroid/util/Size;

    move-result-object v3

    invoke-static {v4, v5}, Lhyo;->g(Landroid/util/Size;Liko;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v12

    invoke-interface/range {p4 .. p4}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowInsets;

    invoke-static {v4}, Ljzr;->i(Landroid/util/Size;)Ljzr;

    move-result-object v14

    invoke-virtual {v14}, Ljzr;->h()Ljzr;

    move-result-object v14

    invoke-static {v3, v14}, Lhyo;->f(Landroid/util/Size;Ljzr;)Landroid/util/Size;

    move-result-object v14

    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v15

    sub-int/2addr v11, v15

    new-instance v15, Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v14

    const/4 v8, 0x2

    div-int/2addr v11, v8

    add-int/2addr v14, v11

    invoke-direct {v15, v11, v10, v14, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/util/Size;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-direct {v11, v14, v10}, Landroid/util/Size;-><init>(II)V

    sget-object v10, Ljzr;->b:Ljzr;

    invoke-virtual {v10}, Ljzr;->h()Ljzr;

    move-result-object v10

    invoke-static {v11, v10}, Lhyo;->f(Landroid/util/Size;Ljzr;)Landroid/util/Size;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v11

    invoke-static {v9}, Likp;->b(F)I

    move-result v14

    const/high16 v16, 0x42c80000    # 100.0f

    invoke-static/range {v16 .. v16}, Likp;->b(F)I

    move-result v16

    const/high16 v17, 0x42280000    # 42.0f

    invoke-static/range {v17 .. v17}, Likp;->b(F)I

    move-result v17

    invoke-static {v9}, Likp;->b(F)I

    move-result v18

    const/high16 v19, 0x42480000    # 50.0f

    invoke-static/range {v19 .. v19}, Likp;->b(F)I

    move-result v19

    invoke-static {v6, v1}, Lhyo;->c(Lika;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v9}, Likp;->b(F)I

    move-result v6

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    const/high16 v20, 0x42400000    # 48.0f

    if-eqz v0, :cond_5

    invoke-static/range {v20 .. v20}, Likp;->b(F)I

    move-result v9

    const/16 v21, 0xa5

    goto :goto_4

    :cond_5
    if-gt v12, v11, :cond_6

    invoke-static/range {v20 .. v20}, Likp;->b(F)I

    move-result v9

    const/16 v21, 0x0

    goto :goto_4

    :cond_6
    invoke-static {v9}, Likp;->b(F)I

    move-result v9

    const/16 v21, 0x0

    :goto_4
    new-instance v8, Landroid/util/Size;

    move/from16 p1, v14

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v14

    move-object/from16 v22, v5

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-direct {v8, v14, v5}, Landroid/util/Size;-><init>(II)V

    invoke-static {v4}, Ljzr;->i(Landroid/util/Size;)Ljzr;

    move-result-object v5

    invoke-static {v8, v5}, Lhyo;->f(Landroid/util/Size;Ljzr;)Landroid/util/Size;

    move-result-object v5

    sget-object v8, Ljzr;->a:Ljzr;

    invoke-virtual {v8}, Ljzr;->h()Ljzr;

    move-result-object v8

    invoke-static {v10, v8}, Lhyo;->f(Landroid/util/Size;Ljzr;)Landroid/util/Size;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    move-object v10, v1

    check-cast v10, Landroid/app/Activity;

    invoke-static {v10, v13}, Likp;->c(Landroid/app/Activity;Landroid/view/WindowInsets;)I

    move-result v14

    move-object/from16 p4, v15

    const/16 v15, 0x1004

    invoke-virtual {v2, v15}, Lhmd;->d(I)V

    invoke-static {v7}, Ljji;->m(Lhyn;)Z

    move-result v7

    if-nez v7, :cond_8

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_7

    invoke-virtual {v10}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v24, v3

    goto/16 :goto_9

    :cond_7
    move-object/from16 v24, v3

    goto :goto_5

    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v15, "integer"

    const-string v1, "android"

    move-object/from16 v24, v3

    const-string v3, "config_navBarInteractionMode"

    invoke-virtual {v7, v3, v15, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_11

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_9

    goto/16 :goto_9

    :cond_9
    :goto_5
    invoke-static {v10, v13}, Likp;->c(Landroid/app/Activity;Landroid/view/WindowInsets;)I

    move-result v1

    sub-int v1, v12, v1

    sub-int/2addr v1, v9

    const/high16 v3, 0x42ac0000    # 86.0f

    invoke-static {v3}, Likp;->b(F)I

    move-result v7

    sub-int/2addr v1, v7

    sub-int/2addr v1, v8

    if-gez v1, :cond_b

    if-eqz v0, :cond_a

    sget-object v1, Lhyo;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v7, 0xfc6

    invoke-interface {v1, v7}, Lnah;->G(I)Lnaz;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Lnah;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-static {v10, v13}, Likp;->c(Landroid/app/Activity;Landroid/view/WindowInsets;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-static {v3}, Likp;->b(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const-string v26, "We shall not hide nav bar for Sunfish device: %d, %d, %d, %d, %d"

    invoke-interface/range {v25 .. v31}, Lnah;->D(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    const/16 v1, 0x1006

    invoke-virtual {v2, v1}, Lhmd;->d(I)V

    move/from16 v3, v21

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_b
    if-eqz v0, :cond_10

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-virtual {v13, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->left:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Insets;->right:I

    if-nez v1, :cond_d

    if-nez v2, :cond_c

    if-nez v3, :cond_c

    const/4 v1, 0x0

    const/4 v2, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    goto :goto_6

    :cond_d
    :goto_6
    const/4 v2, 0x0

    :goto_7
    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Likp;->b(F)I

    move-result v3

    if-gt v1, v3, :cond_f

    if-nez v1, :cond_e

    goto :goto_8

    :cond_e
    sub-int v1, v12, v11

    sub-int/2addr v1, v9

    sub-int v3, v1, v21

    const/16 v7, 0x5d

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v7, 0x42200000    # 40.0f

    invoke-static {v7}, Likp;->b(F)I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v21, v1, v3

    move v1, v3

    move/from16 v3, v21

    goto :goto_a

    :cond_f
    :goto_8
    invoke-static/range {v20 .. v20}, Likp;->b(F)I

    move-result v1

    move/from16 v3, v21

    goto :goto_a

    :cond_10
    invoke-static {v10, v13}, Likp;->c(Landroid/app/Activity;Landroid/view/WindowInsets;)I

    move-result v1

    move/from16 v3, v21

    const/4 v2, 0x0

    goto :goto_a

    :cond_11
    :goto_9
    const/16 v1, 0x1006

    invoke-virtual {v2, v1}, Lhmd;->d(I)V

    move/from16 v3, v21

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    sub-int v7, v12, v1

    sub-int v10, v7, v9

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    add-int v13, v9, v1

    if-eqz v0, :cond_1a

    add-int v0, v11, v1

    add-int/2addr v0, v9

    if-ge v12, v0, :cond_12

    sget-object v15, Lhyo;->a:Lnak;

    invoke-virtual {v15}, Lnaf;->b()Lnaz;

    move-result-object v15

    check-cast v15, Lnah;

    move/from16 v20, v2

    const/16 v2, 0xfc5

    invoke-interface {v15, v2}, Lnah;->G(I)Lnaz;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Lnah;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const-string v26, "Window height is shorter than expected: %d, %d, %d, %d"

    invoke-interface/range {v25 .. v30}, Lnah;->C(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    :cond_12
    move/from16 v20, v2

    :goto_b
    add-int/2addr v0, v3

    if-lt v12, v0, :cond_16

    sub-int v0, v10, v11

    sub-int v1, v10, v8

    sub-int/2addr v1, v0

    sub-int v1, v1, v18

    const/high16 v2, 0x42e00000    # 112.0f

    invoke-static {v2}, Likp;->b(F)I

    move-result v7

    if-lt v1, v7, :cond_13

    move v7, v1

    goto :goto_c

    :cond_13
    add-int v7, v1, v18

    sub-int/2addr v7, v9

    :goto_c
    sub-int v8, v10, v7

    sub-int v11, v8, v6

    sub-int v14, v11, v16

    invoke-static {v2}, Likp;->b(F)I

    move-result v15

    if-lt v1, v15, :cond_14

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v15

    mul-int/lit8 v15, v15, 0x3

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v21

    mul-int/lit8 v2, v21, 0x4

    if-ne v15, v2, :cond_14

    sub-int v2, v11, v18

    const/4 v15, 0x0

    goto :goto_d

    :cond_14
    move v2, v8

    const/4 v15, 0x1

    :goto_d
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v21

    move/from16 p2, v2

    mul-int/lit8 v2, v21, 0x3

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v21

    move/from16 p3, v7

    mul-int/lit8 v7, v21, 0x4

    if-ne v2, v7, :cond_15

    const/high16 v2, 0x42e00000    # 112.0f

    invoke-static {v2}, Likp;->b(F)I

    move-result v2

    if-ge v1, v2, :cond_15

    add-int/2addr v0, v9

    :cond_15
    move/from16 v2, p2

    move/from16 v7, p3

    move v1, v14

    move/from16 v14, p1

    goto :goto_f

    :cond_16
    sub-int/2addr v7, v11

    sub-int v0, v10, v8

    sub-int/2addr v0, v7

    const/high16 v1, 0x42300000    # 44.0f

    invoke-static {v1}, Likp;->b(F)I

    move-result v1

    if-ge v7, v3, :cond_17

    add-int/lit8 v2, v12, 0x7e

    add-int/2addr v11, v1

    add-int/2addr v11, v14

    if-lt v2, v11, :cond_17

    sub-int v2, v1, v7

    const/high16 v7, 0x41980000    # 19.0f

    invoke-static {v7}, Likp;->b(F)I

    move-result v7

    sub-int/2addr v2, v7

    add-int/2addr v10, v2

    sub-int v2, v10, v0

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Likp;->b(F)I

    move-result v7

    add-int/2addr v2, v7

    move v7, v1

    move v14, v7

    move v8, v2

    goto :goto_e

    :cond_17
    sub-int v1, v10, v0

    move/from16 v14, p1

    move v8, v1

    :goto_e
    sub-int v11, v8, v6

    sub-int v1, v11, v16

    move v2, v8

    const/4 v15, 0x1

    move/from16 v32, v7

    move v7, v0

    move/from16 v0, v32

    :goto_f
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v21

    move/from16 p0, v1

    mul-int/lit8 v1, v21, 0x3

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v21

    move/from16 p1, v2

    mul-int/lit8 v2, v21, 0x4

    if-ne v1, v2, :cond_18

    add-int/2addr v13, v7

    goto :goto_10

    :cond_18
    :goto_10
    if-gt v14, v0, :cond_19

    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {v1}, Likp;->b(F)I

    move-result v1

    sub-int v1, v0, v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v2, p1

    move/from16 v21, v15

    move v15, v1

    move/from16 v1, p0

    goto/16 :goto_13

    :cond_19
    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v21, v15

    move v15, v0

    goto/16 :goto_13

    :cond_1a
    move/from16 v20, v2

    if-gt v12, v11, :cond_1c

    sub-int v7, v10, v8

    sub-int v2, v10, v7

    sub-int v11, v2, v6

    sub-int v1, v11, v16

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v8

    mul-int/lit8 v8, v8, 0x4

    if-ne v0, v8, :cond_1b

    add-int/2addr v13, v7

    :cond_1b
    move/from16 v14, p1

    move v8, v2

    const/4 v0, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x1

    goto :goto_13

    :cond_1c
    add-int/2addr v1, v11

    add-int/2addr v1, v9

    if-ge v12, v1, :cond_1e

    sub-int v0, v7, v11

    sub-int v1, v10, v8

    sub-int v7, v1, v0

    sub-int v2, v10, v7

    sub-int v11, v2, v6

    sub-int v1, v11, v16

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v14

    mul-int/lit8 v14, v14, 0x4

    if-ne v8, v14, :cond_1d

    add-int/2addr v13, v7

    :cond_1d
    move/from16 v14, p1

    move v15, v0

    move v8, v2

    const/16 v21, 0x1

    goto :goto_13

    :cond_1e
    if-lt v12, v1, :cond_1f

    const/4 v0, 0x1

    goto :goto_11

    :cond_1f
    const/4 v0, 0x0

    :goto_11
    invoke-static {v0}, Lmoz;->e(Z)V

    sub-int v0, v10, v11

    add-int v1, v9, v9

    sub-int/2addr v7, v1

    sub-int/2addr v7, v8

    sub-int/2addr v7, v0

    sub-int v2, v10, v7

    sub-int v11, v2, v6

    sub-int v1, v11, v16

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v14

    mul-int/lit8 v14, v14, 0x4

    if-ne v8, v14, :cond_20

    add-int v8, v0, v9

    add-int/2addr v13, v7

    goto :goto_12

    :cond_20
    move v8, v0

    :goto_12
    move/from16 v14, p1

    move v15, v0

    move v0, v8

    const/16 v21, 0x1

    move v8, v2

    :goto_13
    add-int/2addr v14, v15

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    move/from16 p0, v6

    sub-int v6, v2, v14

    move/from16 v23, v11

    sub-int v11, v10, v14

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v25

    move/from16 p1, v11

    mul-int/lit8 v11, v25, 0x3

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    if-ne v11, v4, :cond_21

    const/4 v4, 0x1

    goto :goto_14

    :cond_21
    const/4 v4, 0x0

    :goto_14
    if-eqz v4, :cond_22

    sub-int v11, v8, v2

    add-int/2addr v13, v11

    :cond_22
    sub-int v11, v2, v0

    sub-int v25, v1, v15

    move/from16 p2, v2

    add-int v2, v25, v17

    move/from16 p3, v3

    invoke-static {}, Lhyq;->b()Lhyp;

    move-result-object v3

    move/from16 v17, v12

    move-object/from16 v12, v24

    invoke-virtual {v3, v12}, Lhyp;->q(Landroid/util/Size;)V

    move-object/from16 v12, p4

    move/from16 p4, v2

    iget v2, v12, Landroid/graphics/Rect;->left:I

    move/from16 v24, v15

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v15

    move/from16 v25, v11

    add-int v11, v16, v18

    invoke-static {v2, v1, v15, v11}, Lhyo;->e(IIII)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v3, v1}, Lhyp;->s(Landroid/graphics/Rect;)V

    iget v1, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v1, v10, v2, v9}, Lhyo;->e(IIII)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v3, v1}, Lhyp;->g(Landroid/graphics/Rect;)V

    iget v1, v12, Landroid/graphics/Rect;->left:I

    sub-int v8, v8, v19

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int v19, v19, v19

    add-int v7, v7, v19

    invoke-static {v1, v8, v2, v7}, Lhyo;->e(IIII)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v3, v1}, Lhyp;->b(Landroid/graphics/Rect;)V

    iget v1, v12, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x1

    if-ne v2, v4, :cond_23

    move/from16 v2, p2

    goto :goto_15

    :cond_23
    move v2, v10

    :goto_15
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v1, v2, v4, v13}, Lhyo;->e(IIII)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v3, v1}, Lhyp;->e(Landroid/graphics/Rect;)V

    iget v1, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v1, v14, v2, v6}, Lhyo;->e(IIII)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v3, v1}, Lhyp;->p(Landroid/graphics/Rect;)V

    iget v1, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v1, v0, v2, v5}, Lhyo;->e(IIII)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v3, v1}, Lhyp;->k(Landroid/graphics/Rect;)V

    iget v1, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v2

    move/from16 v4, v25

    invoke-static {v1, v0, v2, v4}, Lhyo;->e(IIII)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v3, v0}, Lhyp;->l(Landroid/graphics/Rect;)V

    iget v0, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v1

    move/from16 v4, p4

    move/from16 v2, v24

    invoke-static {v0, v2, v1, v4}, Lhyo;->e(IIII)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v3, v0}, Lhyp;->j(Landroid/graphics/Rect;)V

    iget v0, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v0, v14, v1, v6}, Lhyo;->e(IIII)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v3, v0}, Lhyp;->o(Landroid/graphics/Rect;)V

    iget v0, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v1

    move/from16 v2, v17

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2}, Lhyo;->e(IIII)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v3, v0}, Lhyp;->d(Landroid/graphics/Rect;)V

    iget v0, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v1

    move/from16 v2, p3

    invoke-static {v0, v4, v1, v2}, Lhyo;->e(IIII)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v3, v0}, Lhyp;->c(Landroid/graphics/Rect;)V

    iget v0, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v1

    move/from16 v2, p0

    move/from16 v11, v23

    invoke-static {v0, v11, v1, v2}, Lhyo;->e(IIII)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v3, v0}, Lhyp;->f(Landroid/graphics/Rect;)V

    move/from16 v2, v20

    invoke-virtual {v3, v2}, Lhyp;->i(Z)V

    move/from16 v15, v21

    invoke-virtual {v3, v15}, Lhyp;->r(Z)V

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v0}, Lhyp;->n(Landroid/graphics/Rect;)V

    iget v0, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v0, v14, v1, v6}, Lhyo;->e(IIII)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v3, v0}, Lhyp;->m(Landroid/graphics/Rect;)V

    iget v0, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v1

    move/from16 v10, p1

    invoke-static {v0, v14, v1, v10}, Lhyo;->e(IIII)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v3, v0}, Lhyp;->h(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Lhyp;->a()Lhyq;

    move-result-object v0

    iget-object v1, v0, Lhyq;->b:Landroid/util/Size;

    sget-object v2, Liko;->a:Liko;

    invoke-virtual/range {v22 .. v22}, Liko;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move-object/from16 v4, v22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unexpected UI Orientation: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v2, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-direct {v2, v3, v1}, Landroid/util/Size;-><init>(II)V

    move-object v1, v2

    :pswitch_1
    invoke-static {}, Lhyq;->b()Lhyp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lhyp;->q(Landroid/util/Size;)V

    iget-object v3, v0, Lhyq;->e:Landroid/graphics/Rect;

    move-object/from16 v4, v22

    invoke-static {v3, v1, v4}, Lhyq;->a(Landroid/graphics/Rect;Landroid/util/Size;Liko;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhyp;->k(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lhyq;->c:Landroid/graphics/Rect;

    invoke-static {v3, v1, v4}, Lhyq;->a(Landroid/graphics/Rect;Landroid/util/Size;Liko;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhyp;->l(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lhyq;->d:Landroid/graphics/Rect;

    invoke-static {v3, v1, v4}, Lhyq;->a(Landroid/graphics/Rect;Landroid/util/Size;Liko;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhyp;->j(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lhyq;->f:Landroid/graphics/Rect;

    invoke-static {v3, v1, v4}, Lhyq;->a(Landroid/graphics/Rect;Landroid/util/Size;Liko;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhyp;->o(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lhyq;->g:Landroid/graphics/Rect;

    invoke-static {v3, v1, v4}, Lhyq;->a(Landroid/graphics/Rect;Landroid/util/Size;Liko;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhyp;->p(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lhyq;->h:Landroid/graphics/Rect;

    invoke-static {v3, v1, v4}, Lhyq;->a(Landroid/graphics/Rect;Landroid/util/Size;Liko;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhyp;->s(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lhyq;->i:Landroid/graphics/Rect;

    invoke-static {v3, v1, v4}, Lhyq;->a(Landroid/graphics/Rect;Landroid/util/Size;Liko;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhyp;->b(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lhyq;->o:Landroid/graphics/Rect;

    invoke-static {v3, v1, v4}, Lhyq;->a(Landroid/graphics/Rect;Landroid/util/Size;Liko;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhyp;->f(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lhyq;->k:Landroid/graphics/Rect;

    invoke-static {v3, v1, v4}, Lhyq;->a(Landroid/graphics/Rect;Landroid/util/Size;Liko;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhyp;->d(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lhyq;->j:Landroid/graphics/Rect;

    invoke-static {v3, v1, v4}, Lhyq;->a(Landroid/graphics/Rect;Landroid/util/Size;Liko;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhyp;->e(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lhyq;->n:Landroid/graphics/Rect;

    invoke-static {v3, v1, v4}, Lhyq;->a(Landroid/graphics/Rect;Landroid/util/Size;Liko;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhyp;->c(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lhyq;->l:Landroid/graphics/Rect;

    invoke-static {v3, v1, v4}, Lhyq;->a(Landroid/graphics/Rect;Landroid/util/Size;Liko;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhyp;->g(Landroid/graphics/Rect;)V

    iget-boolean v3, v0, Lhyq;->r:Z

    invoke-virtual {v2, v3}, Lhyp;->i(Z)V

    iget-boolean v3, v0, Lhyq;->s:Z

    invoke-virtual {v2, v3}, Lhyp;->r(Z)V

    iget-object v3, v0, Lhyq;->m:Landroid/graphics/Rect;

    invoke-static {v3, v1, v4}, Lhyq;->a(Landroid/graphics/Rect;Landroid/util/Size;Liko;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhyp;->n(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lhyq;->p:Landroid/graphics/Rect;

    invoke-static {v3, v1, v4}, Lhyq;->a(Landroid/graphics/Rect;Landroid/util/Size;Liko;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhyp;->m(Landroid/graphics/Rect;)V

    iget-object v0, v0, Lhyq;->q:Landroid/graphics/Rect;

    invoke-static {v0, v1, v4}, Lhyq;->a(Landroid/graphics/Rect;Landroid/util/Size;Liko;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v2, v0}, Lhyp;->h(Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Lhyp;->a()Lhyq;

    move-result-object v0

    :goto_16
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static e(IIII)Landroid/graphics/Rect;
    .locals 1

    add-int/2addr p2, p0

    add-int/2addr p3, p1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private static f(Landroid/util/Size;Ljzr;)Landroid/util/Size;
    .locals 3

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p1, Ljzr;->d:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-float p0, p0

    iget v2, p1, Ljzr;->e:I

    int-to-float v2, v2

    div-float/2addr v0, v1

    div-float/2addr p0, v2

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    new-instance v0, Landroid/util/Size;

    iget v1, p1, Ljzr;->d:I

    int-to-float v1, v1

    mul-float v1, v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget p1, p1, Ljzr;->e:I

    int-to-float p1, p1

    mul-float p0, p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method private static g(Landroid/util/Size;Liko;)Landroid/util/Size;
    .locals 1

    sget-object v0, Liko;->a:Liko;

    invoke-virtual {p1}, Liko;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unknown UI orientation: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p1, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1

    :pswitch_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
