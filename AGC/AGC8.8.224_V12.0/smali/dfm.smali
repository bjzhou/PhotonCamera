.class public final synthetic Ldfm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ldfo;


# direct methods
.method public synthetic constructor <init>(Ldfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfm;->a:Ldfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 29

    move-object/from16 v0, p0

    iget-object v1, v0, Ldfm;->a:Ldfo;

    iget-object v2, v1, Ldfo;->b:Lmqp;

    check-cast v2, Lmqt;

    iget-object v2, v2, Lmqt;->a:Ljava/lang/Object;

    check-cast v2, Ldsy;

    invoke-interface {v2}, Ldsy;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v2, v1, Ldfo;->b:Lmqp;

    check-cast v2, Lmqt;

    iget-object v2, v2, Lmqt;->a:Ljava/lang/Object;

    check-cast v2, Ldsy;

    invoke-interface {v2}, Ldsy;->d()Ldsv;

    move-result-object v2

    new-instance v3, Lfjq;

    iget-object v2, v2, Ldsv;->a:[F

    invoke-direct {v3, v2}, Lfjq;-><init>([F)V

    invoke-static {v3}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    iput-object v2, v1, Ldfo;->p:Lmqp;

    iget-object v2, v1, Ldfo;->o:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfjq;

    iget-object v2, v2, Lfjq;->a:[F

    iget-object v4, v1, Ldfo;->e:Limk;

    invoke-static {v2, v4}, Linb;->u([FLimk;)V

    iget-object v2, v1, Ldfo;->e:Limk;

    iget-object v4, v1, Ldfo;->d:[F

    invoke-virtual {v2, v4}, Limk;->b([F)V

    iget-object v5, v1, Ldfo;->s:Ljew;

    iget-object v2, v1, Ldfo;->d:[F

    const/4 v4, 0x0

    aget v6, v2, v4

    float-to-double v6, v6

    const/16 v24, 0x4

    aget v8, v2, v24

    float-to-double v8, v8

    const/16 v25, 0x8

    aget v10, v2, v25

    float-to-double v10, v10

    const/4 v14, 0x1

    aget v12, v2, v14

    float-to-double v12, v12

    const/16 v26, 0x5

    aget v15, v2, v26

    float-to-double v14, v15

    const/16 v27, 0x9

    aget v4, v2, v27

    move-object/from16 v28, v1

    float-to-double v0, v4

    move-wide/from16 v16, v0

    const/4 v0, 0x2

    aget v1, v2, v0

    float-to-double v0, v1

    move-wide/from16 v18, v0

    const/4 v0, 0x6

    aget v1, v2, v0

    float-to-double v0, v1

    move-wide/from16 v20, v0

    const/16 v0, 0xa

    aget v1, v2, v0

    float-to-double v1, v1

    move-wide/from16 v22, v1

    invoke-virtual/range {v5 .. v23}, Ljew;->i(DDDDDDDDD)V

    iget-object v1, v3, Lfjq;->a:[F

    move-object/from16 v2, v28

    iget-object v3, v2, Ldfo;->g:Limk;

    invoke-static {v1, v3}, Linb;->u([FLimk;)V

    iget-object v1, v2, Ldfo;->g:Limk;

    iget-object v3, v2, Ldfo;->f:[F

    invoke-virtual {v1, v3}, Limk;->b([F)V

    iget-object v5, v2, Ldfo;->t:Ljew;

    iget-object v1, v2, Ldfo;->f:[F

    const/4 v3, 0x0

    aget v6, v1, v3

    float-to-double v6, v6

    aget v3, v1, v24

    float-to-double v8, v3

    aget v3, v1, v25

    float-to-double v10, v3

    const/4 v3, 0x1

    aget v12, v1, v3

    float-to-double v12, v12

    aget v14, v1, v26

    float-to-double v14, v14

    aget v4, v1, v27

    float-to-double v3, v4

    move-wide/from16 v16, v3

    const/4 v3, 0x2

    aget v4, v1, v3

    move v3, v4

    move-object/from16 v24, v5

    float-to-double v4, v3

    move-wide/from16 v18, v4

    const/4 v3, 0x6

    aget v3, v1, v3

    float-to-double v3, v3

    move-wide/from16 v20, v3

    aget v0, v1, v0

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v5, v24

    invoke-virtual/range {v5 .. v23}, Ljew;->i(DDDDDDDDD)V

    new-instance v0, Ljew;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljew;-><init>([B)V

    iget-object v3, v2, Ldfo;->s:Ljew;

    invoke-virtual {v3, v0}, Ljew;->u(Ljew;)V

    new-instance v3, Ljew;

    invoke-direct {v3, v1}, Ljew;-><init>([B)V

    iget-object v1, v2, Ldfo;->t:Ljew;

    invoke-static {v0, v1, v3}, Ljew;->q(Ljew;Ljew;Ljew;)V

    iget-object v0, v2, Ldfo;->c:Lgft;

    invoke-interface {v0}, Lgft;->c()Lkab;

    move-result-object v0

    iget v0, v0, Lkab;->e:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid device orientation value!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Ljew;->g(II)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    double-to-float v1, v6

    neg-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v5}, Ljew;->g(II)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    move-result-wide v7

    double-to-float v3, v7

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    const/4 v6, 0x1

    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x2

    invoke-virtual {v3, v6, v1}, Ljew;->g(II)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v1}, Ljew;->g(II)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    double-to-float v3, v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_2
    const/4 v1, 0x2

    const/4 v5, 0x0

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {v3, v1, v5}, Ljew;->g(II)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    double-to-float v1, v6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v5}, Ljew;->g(II)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    move-result-wide v7

    double-to-float v3, v7

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_3
    const/4 v6, 0x1

    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x2

    invoke-virtual {v3, v6, v1}, Ljew;->g(II)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljew;->g(II)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    double-to-float v1, v6

    neg-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v5, v2, Ldfo;->j:Lmqp;

    invoke-virtual {v5}, Lmqp;->g()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v2, Ldfo;->k:Lmqp;

    invoke-virtual {v5}, Lmqp;->g()Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v5, v2, Ldfo;->h:Ldgm;

    invoke-interface {v5}, Ldgm;->f()V

    iget-object v5, v2, Ldfo;->r:Lejf;

    iget-boolean v5, v5, Lejf;->a:Z

    if-eqz v5, :cond_3

    iget-object v5, v2, Ldfo;->k:Lmqp;

    invoke-virtual {v5}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldfb;

    iget-boolean v6, v5, Ldfb;->c:Z

    if-eqz v6, :cond_2

    iget-object v6, v5, Ldfb;->e:Lmqp;

    invoke-virtual {v6}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v5, v5, Ldfb;->e:Lmqp;

    invoke-virtual {v5}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    new-instance v6, Ldfc;

    const/4 v4, 0x2

    invoke-direct {v6, v5, v1, v3, v4}, Ldfc;-><init>(Lcom/google/android/apps/camera/coach/CameraCoachHudView;FFI)V

    invoke-virtual {v5, v6}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-boolean v4, v2, Ldfo;->l:Z

    if-nez v4, :cond_4

    iget-object v4, v2, Ldfo;->k:Lmqp;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldfb;

    invoke-virtual {v4}, Ldfb;->d()V

    iget-object v4, v2, Ldfo;->j:Lmqp;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lell;

    sget-object v5, Lelm;->e:Lelm;

    invoke-interface {v4, v5}, Lell;->i(Lelm;)V

    const/4 v4, 0x1

    iput-boolean v4, v2, Ldfo;->l:Z

    iget-object v4, v2, Ldfo;->h:Ldgm;

    sget-object v5, Lmpx;->a:Lmpx;

    invoke-interface {v4, v5}, Ldgm;->e(Lmqp;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ldfo;->c()V

    :cond_4
    :goto_1
    iget-boolean v4, v2, Ldfo;->l:Z

    if-eqz v4, :cond_6

    invoke-static {v1, v3}, Ldfo;->j(FF)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, v2, Ldfo;->n:Z

    if-nez v1, :cond_6

    iget-object v1, v2, Ldfo;->h:Ldgm;

    invoke-interface {v1}, Ldgm;->d()V

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, v2, Ldfo;->n:Z

    :cond_6
    :goto_3
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v1, v3}, Ldfo;->j(FF)Z

    move-result v1

    iput-boolean v1, v2, Ldfo;->m:Z

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v3, v1

    sget-wide v5, Ldfo;->a:D

    cmpg-double v1, v3, v5

    if-gez v1, :cond_7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    sget-wide v3, Ldfo;->a:D

    cmpg-double v5, v0, v3

    if-ltz v5, :cond_8

    :cond_7
    iget-object v0, v2, Ldfo;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v2, Ldfo;->q:Ldfn;

    invoke-interface {v0}, Ldfn;->a()V

    return-void

    :cond_8
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch
.end method
