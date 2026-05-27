.class public final Lhsa;
.super Ljava/lang/Object;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/accessibility/AccessibilityManager;Ldpl;Lfuz;Lgft;Lflg;Ldyk;Ldhi;Lhxx;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lhsa;->f:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lhsa;->e:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lhsa;->c:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lhsa;->b:Ljava/lang/Object;

    iput-object p5, p0, Lhsa;->g:Ljava/lang/Object;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Ldho;->a:Ldhk;

    invoke-interface {p7}, Ldhi;->d()V

    iput-object p8, p0, Lhsa;->d:Ljava/lang/Object;

    sget-object p1, Ldho;->ci:Ldhj;

    invoke-interface {p7, p1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    iput-boolean p1, p0, Lhsa;->a:Z

    if-eqz p1, :cond_2

    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3, p1}, Lklw;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    if-gtz p1, :cond_1

    sget-object p2, Lhxx;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const/16 p3, 0xfb2

    invoke-interface {p2, p3}, Lnah;->G(I)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const-string p3, "Wrong max faces %d"

    invoke-interface {p2, p3, p1}, Lnah;->p(Ljava/lang/String;I)V

    return-void

    :cond_1
    iput p1, p8, Lhxx;->l:I

    return-void

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lhsa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhsa;->b:Ljava/lang/Object;

    iput-object p2, p0, Lhsa;->c:Ljava/lang/Object;

    iput-object p3, p0, Lhsa;->d:Ljava/lang/Object;

    iput-object p4, p0, Lhsa;->e:Ljava/lang/Object;

    iput-object p5, p0, Lhsa;->f:Ljava/lang/Object;

    iput-object p6, p0, Lhsa;->g:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lhsa;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Ljvs;Ljuh;)Lkad;
    .locals 2

    new-instance v0, Lflt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lflt;-><init>(Lhsa;[B)V

    invoke-interface {p1, v0, p2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lkaf;)V
    .locals 1

    iget-boolean v0, p0, Lhsa;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhsa;->d:Ljava/lang/Object;

    check-cast v0, Lhxx;

    invoke-virtual {v0, p1}, Lhxx;->d(Lkaf;)V

    iget-object v0, p0, Lhsa;->e:Ljava/lang/Object;

    check-cast v0, Ldpl;

    iput-object p1, v0, Ldpl;->r:Lkaf;

    :cond_0
    return-void
.end method

.method public final c(Lift;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lhsa;->c:Ljava/lang/Object;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    check-cast v2, Lklw;

    invoke-virtual {v2, v3}, Lklw;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget-object v3, v1, Lift;->b:Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-eqz v5, :cond_5

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-lt v5, v6, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    :goto_0
    iget-object v1, v1, Lift;->c:Ljava/lang/Object;

    check-cast v1, [Landroid/hardware/camera2/params/Face;

    array-length v3, v1

    new-array v3, v3, [Lkoj;

    const/4 v5, 0x0

    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_4

    new-instance v6, Lkoj;

    aget-object v7, v1, v5

    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    const/4 v8, 0x0

    cmpg-float v8, v2, v8

    if-gtz v8, :cond_2

    move-object v9, v7

    goto :goto_3

    :cond_2
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v2, v9

    if-eqz v9, :cond_3

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    mul-float v9, v9, v2

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v10

    mul-float v11, v11, v2

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v9

    float-to-int v10, v10

    iput v10, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v9

    float-to-int v9, v10

    iput v9, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v11

    float-to-int v7, v7

    iput v7, v8, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_3
    :goto_2
    move-object v9, v8

    :goto_3
    const/4 v8, -0x1

    aget-object v7, v1, v5

    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v6

    invoke-direct/range {v7 .. v13}, Lkoj;-><init>(ILandroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    goto :goto_5

    :cond_5
    :goto_4
    new-array v3, v4, [Lkoj;

    :goto_5
    iget-object v1, v0, Lhsa;->c:Ljava/lang/Object;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    check-cast v1, Lklw;

    invoke-virtual {v1, v2}, Lklw;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget-object v2, v0, Lhsa;->c:Ljava/lang/Object;

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    check-cast v2, Lklw;

    invoke-virtual {v2, v5}, Lklw;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v1, :cond_2e

    if-nez v2, :cond_6

    goto/16 :goto_19

    :cond_6
    iget-object v5, v0, Lhsa;->e:Ljava/lang/Object;

    iget-object v6, v0, Lhsa;->b:Ljava/lang/Object;

    invoke-interface {v6}, Lgft;->c()Lkab;

    move-result-object v6

    iget v6, v6, Lkab;->e:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v7, v0, Lhsa;->g:Ljava/lang/Object;

    check-cast v7, Lflg;

    iget-object v7, v7, Lflg;->b:Lklv;

    sget-object v8, Lklv;->a:Lklv;

    if-ne v7, v8, :cond_7

    const/4 v7, 0x1

    goto :goto_6

    :cond_7
    const/4 v7, 0x0

    :goto_6
    array-length v8, v3

    if-lez v8, :cond_8

    aget-object v10, v3, v4

    goto :goto_7

    :cond_8
    const/4 v10, 0x0

    :goto_7
    check-cast v5, Ldpl;

    iput-object v10, v5, Ldpl;->n:Lkoj;

    iput-object v1, v5, Ldpl;->o:Landroid/graphics/Rect;

    iget-object v10, v5, Ldpl;->e:Ljvs;

    invoke-interface {v10}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0x5a

    const/16 v12, 0x10e

    const/16 v13, 0xb4

    if-eqz v10, :cond_a

    if-eq v10, v11, :cond_a

    if-eq v10, v13, :cond_a

    if-ne v10, v12, :cond_9

    const/16 v10, 0x10e

    const/4 v14, 0x1

    goto :goto_8

    :cond_9
    const/4 v14, 0x0

    goto :goto_8

    :cond_a
    const/4 v14, 0x1

    :goto_8
    const-string v15, "Invalid sensor orientation: %s"

    invoke-static {v14, v15, v10}, Lmoz;->h(ZLjava/lang/String;I)V

    if-eqz v6, :cond_c

    if-eq v6, v11, :cond_c

    if-eq v6, v13, :cond_c

    if-ne v6, v12, :cond_b

    const/4 v11, 0x1

    goto :goto_9

    :cond_b
    const/4 v11, 0x0

    goto :goto_9

    :cond_c
    const/4 v11, 0x1

    :goto_9
    const-string v12, "Invalid device orientation: %s"

    invoke-static {v11, v12, v6}, Lmoz;->h(ZLjava/lang/String;I)V

    iget-object v11, v5, Ldpl;->f:Ljvs;

    invoke-interface {v11}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    or-int/2addr v7, v11

    iget-boolean v11, v5, Ldpl;->l:Z

    const-string v12, ", Sensor orientation: "

    const-string v13, "Invalid sensor rotation. Display orientation: "

    const-wide/16 v15, 0xbb8

    const-wide/16 v17, -0x1

    const v14, 0x7f14036a

    if-eqz v11, :cond_24

    iget-object v3, v5, Ldpl;->q:Ljvs;

    invoke-interface {v3}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lhyb;

    array-length v3, v3

    iget-object v8, v5, Ldpl;->q:Ljvs;

    invoke-interface {v8}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lhyb;

    invoke-static {v8}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v8

    sget-object v11, Lcdm;->m:Lcdm;

    invoke-interface {v8, v11}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v8

    move/from16 v19, v10

    invoke-interface {v8}, Lj$/util/stream/Stream;->count()J

    move-result-wide v9

    long-to-int v8, v9

    iget-boolean v9, v5, Ldpl;->m:Z

    if-eqz v9, :cond_d

    if-nez v8, :cond_d

    const/4 v8, 0x0

    :cond_d
    iget-boolean v9, v5, Ldpl;->k:Z

    if-nez v9, :cond_e

    goto/16 :goto_18

    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object/from16 v20, v12

    iget-wide v11, v5, Ldpl;->h:J

    cmp-long v21, v11, v17

    if-eqz v21, :cond_10

    sub-long v11, v9, v11

    cmp-long v17, v11, v15

    if-lez v17, :cond_f

    const/4 v11, 0x1

    goto :goto_a

    :cond_f
    const/4 v11, 0x0

    goto :goto_a

    :cond_10
    const/4 v11, 0x1

    :goto_a
    if-gtz v3, :cond_13

    iget v3, v5, Ldpl;->i:I

    if-nez v3, :cond_12

    iget v3, v5, Ldpl;->j:I

    if-eq v8, v3, :cond_11

    const/4 v3, 0x0

    const/4 v12, 0x1

    goto :goto_c

    :cond_11
    const/4 v3, 0x0

    const/4 v12, 0x0

    goto :goto_c

    :cond_12
    const/4 v3, 0x0

    goto :goto_b

    :cond_13
    :goto_b
    const/4 v12, 0x1

    :goto_c
    if-eqz v11, :cond_2d

    if-eqz v12, :cond_2d

    iput v3, v5, Ldpl;->i:I

    iput v8, v5, Ldpl;->j:I

    iput-wide v9, v5, Ldpl;->h:J

    iget-object v3, v5, Ldpl;->q:Ljvs;

    invoke-interface {v3}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lhyb;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v8

    sget-object v9, Lcdm;->m:Lcdm;

    invoke-interface {v8, v9}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v8

    invoke-interface {v8}, Lj$/util/stream/Stream;->count()J

    move-result-wide v8

    long-to-int v9, v8

    array-length v8, v3

    if-nez v8, :cond_14

    iget-object v1, v5, Ldpl;->c:Landroid/view/View;

    iget-object v2, v5, Ldpl;->b:Landroid/content/Context;

    const v3, 0x7f14021d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    :cond_14
    const-string v10, ""

    const/4 v11, 0x1

    if-ne v8, v11, :cond_1e

    iget-object v2, v5, Ldpl;->c:Landroid/view/View;

    iget-object v8, v5, Ldpl;->b:Landroid/content/Context;

    if-ne v9, v11, :cond_15

    const v9, 0x7f140219

    goto :goto_d

    :cond_15
    const v9, 0x7f14021a

    :goto_d
    new-array v12, v11, [Ljava/lang/Object;

    aget-object v3, v3, v4

    iget-object v3, v3, Lhyb;->a:Lkoj;

    invoke-virtual {v5}, Ldpl;->d()Z

    move-result v14

    if-eqz v14, :cond_16

    const/4 v3, 0x0

    goto/16 :goto_11

    :cond_16
    iget-object v14, v3, Lkoj;->c:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v14

    iget-object v3, v3, Lkoj;->c:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v16

    add-int v11, v6, v19

    rem-int/lit16 v11, v11, 0x168

    if-eqz v7, :cond_18

    move/from16 v4, v19

    rem-int/lit16 v0, v4, 0xb4

    if-nez v0, :cond_17

    sub-int v14, v15, v14

    goto :goto_e

    :cond_17
    if-eqz v0, :cond_19

    sub-int v3, v16, v3

    goto :goto_e

    :cond_18
    move/from16 v4, v19

    :cond_19
    :goto_e
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    sub-int/2addr v14, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    sub-int/2addr v3, v0

    sparse-switch v11, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v9, v20

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/4 v0, 0x1

    invoke-static {v14, v0}, Ldpl;->f(IZ)I

    move-result v1

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ldpl;->f(IZ)I

    move-result v3

    goto :goto_f

    :sswitch_1
    const/4 v0, 0x1

    const/4 v4, 0x0

    invoke-static {v3, v0}, Ldpl;->f(IZ)I

    move-result v1

    invoke-static {v14, v0}, Ldpl;->f(IZ)I

    move-result v3

    goto :goto_f

    :sswitch_2
    const/4 v0, 0x1

    const/4 v4, 0x0

    invoke-static {v14, v4}, Ldpl;->f(IZ)I

    move-result v1

    invoke-static {v3, v0}, Ldpl;->f(IZ)I

    move-result v3

    goto :goto_f

    :sswitch_3
    const/4 v4, 0x0

    invoke-static {v3, v4}, Ldpl;->f(IZ)I

    move-result v0

    invoke-static {v14, v4}, Ldpl;->f(IZ)I

    move-result v3

    move v1, v0

    :goto_f
    iget-object v0, v5, Ldpl;->g:[[I

    aget-object v0, v0, v1

    array-length v0, v0

    if-lt v3, v0, :cond_1a

    sget-object v0, Ldpl;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v4, 0x439

    invoke-interface {v0, v4}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v4, "Wrong index in movePhoneDirectionStrings. %d,%d"

    invoke-interface {v0, v4, v1, v3}, Lnah;->s(Ljava/lang/String;II)V

    :goto_10
    const/4 v3, 0x0

    goto :goto_11

    :cond_1a
    const/4 v0, 0x1

    if-ne v1, v0, :cond_1c

    if-ne v3, v0, :cond_1b

    goto :goto_10

    :cond_1b
    const/4 v1, 0x1

    :cond_1c
    iget-object v0, v5, Ldpl;->p:Lhxz;

    sget-object v4, Lhxz;->b:Lhxz;

    invoke-virtual {v0, v4}, Lhxz;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, v5, Ldpl;->b:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, v5, Ldpl;->g:[[I

    aget-object v1, v6, v1

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v4, v3

    const v1, 0x7f14031a

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v3, 0x0

    goto :goto_11

    :cond_1d
    iget-object v0, v5, Ldpl;->b:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, v5, Ldpl;->g:[[I

    aget-object v1, v6, v1

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v4, v3

    const v1, 0x7f14031e

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :goto_11
    aput-object v10, v12, v3

    invoke-virtual {v8, v9, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7}, Ldpl;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    :cond_1e
    const-string v0, "%s %s"

    const v1, 0x7f120004

    if-ne v8, v2, :cond_20

    iget-object v2, v5, Ldpl;->b:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v4, v6

    const v3, 0x7f1402a7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-lez v9, :cond_1f

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    iget-object v2, v5, Ldpl;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v6

    invoke-virtual {v2, v1, v9, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :cond_1f
    :goto_12
    iget-object v0, v5, Ldpl;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    :cond_20
    if-nez v9, :cond_23

    iget-boolean v0, v5, Ldpl;->m:Z

    const v1, 0x7f140190

    if-eqz v0, :cond_22

    iget-object v0, v5, Ldpl;->c:Landroid/view/View;

    iget-object v2, v5, Ldpl;->b:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-virtual {v2, v14, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v5, Ldpl;->p:Lhxz;

    sget-object v4, Lhxz;->a:Lhxz;

    invoke-virtual {v3, v4}, Lhxz;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, v5, Ldpl;->b:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_13

    :cond_21
    :goto_13
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    :cond_22
    iget-object v0, v5, Ldpl;->c:Landroid/view/View;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v5, Ldpl;->b:Landroid/content/Context;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v4, v14, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    iget-object v4, v5, Ldpl;->b:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    const-string v1, "%s %s."

    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    :cond_23
    iget-object v2, v5, Ldpl;->c:Landroid/view/View;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, v5, Ldpl;->b:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v11, 0x0

    aput-object v8, v10, v11

    invoke-virtual {v6, v14, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    iget-object v5, v5, Ldpl;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v11

    invoke-virtual {v5, v1, v9, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    :cond_24
    move v4, v10

    move-object v9, v12

    iget-boolean v0, v5, Ldpl;->k:Z

    if-eqz v0, :cond_2d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object v10, v1

    iget-wide v0, v5, Ldpl;->h:J

    cmp-long v19, v0, v17

    if-eqz v19, :cond_26

    sub-long v0, v11, v0

    cmp-long v17, v0, v15

    if-lez v17, :cond_25

    const/4 v0, 0x1

    goto :goto_14

    :cond_25
    const/4 v0, 0x0

    goto :goto_14

    :cond_26
    const/4 v0, 0x1

    :goto_14
    if-gtz v8, :cond_28

    iget v1, v5, Ldpl;->i:I

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    goto :goto_15

    :cond_27
    const/4 v1, 0x0

    goto :goto_15

    :cond_28
    const/4 v1, 0x1

    :goto_15
    if-eqz v0, :cond_2d

    if-eqz v1, :cond_2d

    iput v8, v5, Ldpl;->i:I

    iput-wide v11, v5, Ldpl;->h:J

    const/4 v0, 0x1

    if-ne v8, v0, :cond_2b

    iget-object v1, v5, Ldpl;->c:Landroid/view/View;

    iget-object v2, v5, Ldpl;->b:Landroid/content/Context;

    const/4 v8, 0x3

    new-array v12, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v0, 0x0

    aput-object v14, v12, v0

    aget-object v0, v3, v0

    iget-object v3, v0, Lkoj;->c:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget-object v0, v0, Lkoj;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    add-int v15, v6, v4

    if-eqz v7, :cond_2a

    rem-int/lit16 v11, v4, 0xb4

    if-nez v11, :cond_29

    sub-int v3, v14, v3

    goto :goto_16

    :cond_29
    if-eqz v11, :cond_2a

    sub-int v0, v10, v0

    :cond_2a
    :goto_16
    rem-int/lit16 v15, v15, 0x168

    sparse-switch v15, :sswitch_data_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_4
    invoke-static {v0, v10, v8}, Ldpl;->g(III)I

    move-result v0

    sub-int v3, v14, v3

    invoke-static {v3, v14, v8}, Ldpl;->g(III)I

    move-result v3

    goto :goto_17

    :sswitch_5
    sub-int v3, v14, v3

    invoke-static {v3, v14, v8}, Ldpl;->g(III)I

    move-result v3

    sub-int v0, v10, v0

    invoke-static {v0, v10, v8}, Ldpl;->g(III)I

    move-result v0

    move/from16 v22, v3

    move v3, v0

    move/from16 v0, v22

    goto :goto_17

    :sswitch_6
    sub-int v0, v10, v0

    invoke-static {v0, v10, v8}, Ldpl;->g(III)I

    move-result v0

    invoke-static {v3, v14, v8}, Ldpl;->g(III)I

    move-result v3

    goto :goto_17

    :sswitch_7
    invoke-static {v3, v14, v8}, Ldpl;->g(III)I

    move-result v3

    invoke-static {v0, v10, v8}, Ldpl;->g(III)I

    move-result v0

    move/from16 v22, v3

    move v3, v0

    move/from16 v0, v22

    :goto_17
    iget-object v4, v5, Ldpl;->b:Landroid/content/Context;

    iget-object v6, v5, Ldpl;->d:[[I

    aget-object v3, v6, v3

    aget v0, v3, v0

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v12, v3

    invoke-virtual {v5, v7}, Ldpl;->a(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v12, v3

    const v0, 0x7f140142

    invoke-virtual {v2, v0, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    :cond_2b
    if-ne v8, v2, :cond_2c

    iget-object v0, v5, Ldpl;->c:Landroid/view/View;

    iget-object v1, v5, Ldpl;->b:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f1402a7

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    :cond_2c
    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, v5, Ldpl;->c:Landroid/view/View;

    iget-object v1, v5, Ldpl;->b:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v14, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    :cond_2d
    :goto_18
    return-void

    :cond_2e
    :goto_19
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_7
        0x5a -> :sswitch_6
        0xb4 -> :sswitch_5
        0x10e -> :sswitch_4
    .end sparse-switch
.end method
