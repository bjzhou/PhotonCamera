.class public final synthetic Lflt;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field public final synthetic a:Lhsa;


# direct methods
.method public synthetic constructor <init>(Lhsa;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lflt;->a:Lhsa;

    return-void
.end method


# virtual methods
.method public final bn(Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lflt;->a:Lhsa;

    move-object/from16 v2, p1

    check-cast v2, Lift;

    iget-boolean v3, v1, Lhsa;->a:Z

    if-eqz v3, :cond_27

    iget-object v3, v1, Lhsa;->d:Ljava/lang/Object;

    check-cast v3, Lhxx;

    invoke-virtual {v3}, Lhxx;->h()Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, v1, Lhsa;->d:Ljava/lang/Object;

    check-cast v3, Lhxx;

    iget-boolean v4, v3, Lhxx;->m:Z

    if-nez v4, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-object v4, v3, Lhxx;->i:Lgeh;

    invoke-interface {v4}, Lgeh;->G()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_25

    iget-object v4, v3, Lhxx;->v:Lhxv;

    iget-object v4, v4, Lhxv;->a:Lhrz;

    if-eqz v4, :cond_1

    iget-object v4, v4, Lhrz;->d:Lmgf;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lmgf;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_b

    :cond_1
    iget-boolean v4, v3, Lhxx;->o:Z

    if-eqz v4, :cond_2

    iput-boolean v6, v3, Lhxx;->o:Z

    iget-object v4, v3, Lhxx;->f:Lhyd;

    invoke-virtual {v4, v5}, Lhyd;->a(Z)V

    iget-object v4, v3, Lhxx;->e:Ldpl;

    invoke-virtual {v4}, Ldpl;->c()V

    :cond_2
    iget-object v4, v3, Lhxx;->f:Lhyd;

    iget-object v7, v3, Lhxx;->k:Ljvs;

    invoke-interface {v7}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v4, v4, Lhyd;->b:Lmqp;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v8

    if-nez v8, :cond_3

    sget-object v4, Lhyd;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->b()Lnaz;

    move-result-object v4

    const-string v7, "setSensorOrientation, view is not present."

    const/16 v8, 0xfbd

    invoke-static {v4, v7, v8}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

    iget-object v4, v4, Ldmt;->b:Lkbj;

    iget v8, v4, Lkbj;->b:I

    if-ne v8, v7, :cond_4

    iget-object v8, v4, Lkbj;->c:Landroid/graphics/Matrix;

    if-nez v8, :cond_5

    :cond_4
    iput v7, v4, Lkbj;->b:I

    invoke-virtual {v4}, Lkbj;->d()V

    :cond_5
    :goto_0
    iget-object v4, v3, Lhxx;->f:Lhyd;

    iget-object v7, v4, Lhyd;->b:Lmqp;

    invoke-virtual {v7}, Lmqp;->g()Z

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x2

    const/high16 v11, -0x40800000    # -1.0f

    if-eqz v8, :cond_f

    iget-boolean v8, v4, Lhyd;->c:Z

    if-eqz v8, :cond_f

    if-nez v2, :cond_6

    const/high16 v7, -0x40800000    # -1.0f

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v7}, Lmqp;->g()Z

    move-result v8

    iget-object v12, v2, Lift;->b:Ljava/lang/Object;

    const/4 v13, 0x0

    if-eqz v8, :cond_b

    invoke-virtual {v7}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

    move-object v8, v12

    check-cast v8, Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v14

    if-eqz v14, :cond_b

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v14

    if-nez v14, :cond_7

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    const v15, -0x401c71c7

    add-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const v15, 0x3ccccccd    # 0.025f

    cmpg-float v14, v14, v15

    if-gez v14, :cond_8

    const/4 v14, 0x1

    goto :goto_1

    :cond_8
    const/4 v14, 0x0

    :goto_1
    iput-boolean v14, v7, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->i:Z

    iget-object v14, v7, Ldmt;->b:Lkbj;

    iget-object v15, v14, Lkbj;->d:Landroid/graphics/Rect;

    if-eqz v15, :cond_9

    invoke-virtual {v8, v15}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    iget-object v15, v14, Lkbj;->c:Landroid/graphics/Matrix;

    if-nez v15, :cond_a

    :cond_9
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iput-object v8, v14, Lkbj;->d:Landroid/graphics/Rect;

    invoke-virtual {v14}, Lkbj;->d()V

    :cond_a
    iget-object v12, v7, Ldmt;->b:Lkbj;

    invoke-virtual {v12}, Lkbj;->e()Z

    move-result v12

    if-eqz v12, :cond_b

    iget-object v12, v7, Ldmt;->b:Lkbj;

    invoke-virtual {v12}, Lkbj;->a()Landroid/graphics/Matrix;

    move-result-object v12

    iget-object v14, v7, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->c:Landroid/graphics/RectF;

    new-instance v15, Landroid/graphics/RectF;

    invoke-direct {v15, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v12, v14, v15}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-boolean v8, v7, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->e:Z

    if-eqz v8, :cond_b

    iget-object v8, v7, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->c:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v12, v7, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->c:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    invoke-static {v8, v12}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, v7, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->f:F

    cmpl-float v8, v8, v13

    if-nez v8, :cond_b

    sget-object v8, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->a:Lnak;

    invoke-virtual {v8}, Lnaf;->c()Lnaz;

    move-result-object v8

    const-string v12, "lengthOfScreenShortSide should not be zero."

    const/16 v14, 0xfb7

    invoke-static {v8, v12, v14}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iput v9, v7, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->f:F

    :cond_b
    :goto_2
    iget-object v7, v2, Lift;->c:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iget-object v8, v4, Lhyd;->b:Lmqp;

    invoke-virtual {v8}, Lmqp;->g()Z

    move-result v12

    if-eqz v12, :cond_e

    iget-boolean v4, v4, Lhyd;->c:Z

    if-eqz v4, :cond_e

    if-nez v7, :cond_c

    const/high16 v7, -0x40800000    # -1.0f

    goto/16 :goto_3

    :cond_c
    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

    iput-object v7, v4, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->h:Ljava/util/List;

    iget-object v7, v4, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->h:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, v4, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->h:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v5, :cond_e

    iget-object v7, v4, Ldmt;->b:Lkbj;

    invoke-virtual {v7}, Lkbj;->e()Z

    move-result v7

    if-nez v7, :cond_d

    const/high16 v7, -0x40800000    # -1.0f

    goto :goto_3

    :cond_d
    new-array v7, v10, [F

    iget-object v8, v4, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->h:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/params/Face;

    invoke-virtual {v8}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v6

    iget-object v8, v4, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->h:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/params/Face;

    invoke-virtual {v8}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v5

    invoke-virtual {v4}, Ldmt;->a()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v8, v7, v6

    iget-object v12, v4, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->c:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    sub-float/2addr v8, v12

    aget v7, v7, v5

    iget-object v12, v4, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->c:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    sub-float/2addr v7, v12

    float-to-double v14, v8

    float-to-double v7, v7

    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v7, v7

    iget-boolean v8, v4, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->e:Z

    if-eqz v8, :cond_10

    iget v4, v4, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->f:F

    cmpl-float v8, v4, v13

    if-eqz v8, :cond_10

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float v7, v7, v8

    div-float/2addr v7, v4

    goto :goto_3

    :cond_e
    const/high16 v7, -0x40800000    # -1.0f

    goto :goto_3

    :cond_f
    const/high16 v7, -0x40800000    # -1.0f

    :cond_10
    :goto_3
    iget-object v4, v3, Lhxx;->j:Ljwb;

    invoke-interface {v4}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v4

    const-wide/16 v12, 0x0

    if-eqz v4, :cond_17

    iget-object v4, v3, Lhxx;->j:Ljwb;

    invoke-interface {v4}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lhyb;

    array-length v4, v4

    iget-object v8, v3, Lhxx;->j:Ljwb;

    invoke-interface {v8}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lhyb;

    invoke-static {v8}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v8

    sget-object v14, Lfjd;->t:Lfjd;

    invoke-interface {v8, v14}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v8

    invoke-interface {v8}, Lj$/util/stream/Stream;->count()J

    move-result-wide v14

    long-to-int v8, v14

    iget v14, v3, Lhxx;->s:I

    if-eqz v14, :cond_13

    if-ne v4, v14, :cond_12

    if-eqz v8, :cond_11

    goto :goto_4

    :cond_11
    const/4 v8, 0x0

    goto :goto_5

    :cond_12
    :goto_4
    iput v6, v3, Lhxx;->s:I

    iput-wide v12, v3, Lhxx;->t:J

    sget-object v4, Lhxz;->f:Lhxz;

    goto/16 :goto_6

    :cond_13
    :goto_5
    if-lt v4, v10, :cond_17

    iget v10, v3, Lhxx;->l:I

    if-ge v4, v10, :cond_16

    if-nez v8, :cond_16

    iget-object v8, v3, Lhxx;->p:Lhxz;

    sget-object v10, Lhxz;->a:Lhxz;

    invoke-virtual {v8, v10}, Lhxz;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14

    iget-object v8, v3, Lhxx;->p:Lhxz;

    sget-object v10, Lhxz;->i:Lhxz;

    invoke-virtual {v8, v10}, Lhxz;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14

    iput v4, v3, Lhxx;->s:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iput-wide v14, v3, Lhxx;->t:J

    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iget-wide v9, v3, Lhxx;->t:J

    sub-long/2addr v14, v9

    const-wide/16 v8, 0xbb8

    cmp-long v4, v14, v8

    if-lez v4, :cond_15

    sget-object v4, Lhxz;->a:Lhxz;

    goto :goto_6

    :cond_15
    sget-object v4, Lhxz;->i:Lhxz;

    goto :goto_6

    :cond_16
    iput v6, v3, Lhxx;->s:I

    iput-wide v12, v3, Lhxx;->t:J

    sget-object v4, Lhxz;->f:Lhxz;

    goto :goto_6

    :cond_17
    cmpl-float v4, v7, v11

    if-nez v4, :cond_18

    sget-object v4, Lhxz;->f:Lhxz;

    goto :goto_6

    :cond_18
    iget-object v4, v3, Lhxx;->e:Ldpl;

    invoke-virtual {v4}, Ldpl;->e()I

    move-result v4

    const/4 v8, 0x0

    if-eqz v4, :cond_24

    if-ne v4, v10, :cond_19

    sget-object v4, Lhxz;->h:Lhxz;

    goto :goto_6

    :cond_19
    sget-object v4, Lhxz;->a:Lhxz;

    iget v4, v4, Lhxz;->k:F

    cmpg-float v4, v7, v4

    if-gez v4, :cond_1c

    iget-object v4, v3, Lhxx;->e:Ldpl;

    invoke-virtual {v4}, Ldpl;->e()I

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v8, 0x4

    if-ne v4, v8, :cond_1a

    sget-object v4, Lhxz;->g:Lhxz;

    goto :goto_6

    :cond_1a
    sget-object v4, Lhxz;->a:Lhxz;

    goto :goto_6

    :cond_1b
    throw v8

    :cond_1c
    sget-object v4, Lhxz;->b:Lhxz;

    iget v8, v4, Lhxz;->k:F

    cmpg-float v8, v7, v8

    if-ltz v8, :cond_1d

    sget-object v4, Lhxz;->c:Lhxz;

    iget v8, v4, Lhxz;->k:F

    cmpg-float v8, v7, v8

    if-ltz v8, :cond_1d

    sget-object v4, Lhxz;->e:Lhxz;

    :cond_1d
    :goto_6
    iget v8, v4, Lhxz;->k:F

    const/high16 v9, 0x4f000000

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_20

    iget-object v8, v3, Lhxx;->p:Lhxz;

    iget v10, v8, Lhxz;->k:F

    cmpl-float v9, v10, v9

    if-nez v9, :cond_1e

    goto :goto_8

    :cond_1e
    invoke-virtual {v4, v8}, Lhxz;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_20

    iget v8, v4, Lhxz;->k:F

    iget-object v9, v3, Lhxx;->p:Lhxz;

    iget v10, v9, Lhxz;->k:F

    cmpl-float v14, v8, v10

    if-eqz v14, :cond_20

    cmpg-float v14, v8, v10

    if-gez v14, :cond_1f

    add-float/2addr v8, v11

    cmpg-float v7, v7, v8

    if-lez v7, :cond_20

    goto :goto_7

    :cond_1f
    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v10, v8

    cmpl-float v7, v7, v10

    if-gez v7, :cond_20

    :goto_7
    move-object v4, v9

    :cond_20
    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, v3, Lhxx;->u:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x5dc

    cmp-long v11, v7, v9

    if-ltz v11, :cond_26

    iget-object v7, v3, Lhxx;->p:Lhxz;

    invoke-virtual {v4, v7}, Lhxz;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_22

    iget-object v5, v3, Lhxx;->p:Lhxz;

    iput-object v5, v3, Lhxx;->q:Lhxz;

    iput-object v4, v3, Lhxx;->p:Lhxz;

    iget-object v5, v3, Lhxx;->e:Ldpl;

    iget-object v7, v3, Lhxx;->p:Lhxz;

    iput-object v7, v5, Ldpl;->p:Lhxz;

    iput-wide v12, v3, Lhxx;->r:J

    iget-object v5, v3, Lhxx;->p:Lhxz;

    sget-object v7, Lhxz;->a:Lhxz;

    invoke-virtual {v5, v7}, Lhxz;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v3, Lhxx;->r:J

    iget-object v4, v3, Lhxx;->e:Ldpl;

    invoke-virtual {v4}, Ldpl;->b()V

    iget-object v4, v3, Lhxx;->b:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v4

    if-eqz v4, :cond_26

    iget-object v3, v3, Lhxx;->b:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    goto :goto_c

    :cond_21
    iget-object v5, v3, Lhxx;->e:Ldpl;

    invoke-virtual {v5}, Ldpl;->c()V

    iget-object v5, v3, Lhxx;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lhya;

    invoke-interface {v7, v4}, Lhya;->A(Lhxz;)V

    iput-boolean v6, v3, Lhxx;->n:Z

    goto :goto_9

    :cond_22
    iget-wide v6, v3, Lhxx;->r:J

    cmp-long v4, v6, v12

    if-eqz v4, :cond_26

    iget-object v4, v3, Lhxx;->p:Lhxz;

    sget-object v6, Lhxz;->a:Lhxz;

    invoke-virtual {v4, v6}, Lhxz;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v14, v3, Lhxx;->r:J

    sub-long/2addr v6, v14

    cmp-long v4, v6, v9

    if-lez v4, :cond_26

    iget-object v4, v3, Lhxx;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhya;

    sget-object v7, Lhxz;->a:Lhxz;

    invoke-interface {v6, v7}, Lhya;->A(Lhxz;)V

    goto :goto_a

    :cond_23
    iput-boolean v5, v3, Lhxx;->n:Z

    iput-wide v12, v3, Lhxx;->r:J

    goto :goto_c

    :cond_24
    throw v8

    :cond_25
    :goto_b
    iget-boolean v4, v3, Lhxx;->o:Z

    if-nez v4, :cond_26

    iput-boolean v5, v3, Lhxx;->o:Z

    iget-object v4, v3, Lhxx;->f:Lhyd;

    invoke-virtual {v4, v6}, Lhyd;->a(Z)V

    iget-object v4, v3, Lhxx;->e:Ldpl;

    invoke-virtual {v4}, Ldpl;->b()V

    sget-object v4, Lhxz;->f:Lhxz;

    iput-object v4, v3, Lhxx;->p:Lhxz;

    :cond_26
    :goto_c
    invoke-virtual {v1, v2}, Lhsa;->c(Lift;)V

    return-void

    :cond_27
    iget-object v3, v1, Lhsa;->f:Ljava/lang/Object;

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {v1, v2}, Lhsa;->c(Lift;)V

    return-void

    :cond_28
    return-void
.end method
