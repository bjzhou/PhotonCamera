.class public final synthetic Lgkj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lgkk;

.field public final synthetic b:Lpge;


# direct methods
.method public synthetic constructor <init>(Lgkk;Lpge;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lgkj;->a:Lgkk;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lgkj;->b:Lpge;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 25

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, v1, Lgkk;->k:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v3}, Lprw;->close()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v2, v0, Lgkj;->b:Lpge;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iget-object v0, v1, Lgkk;->r:Lfdo;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw v1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    iget-object v0, v1, Lgkk;->k:Lpdf;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v3, "AutoTimerAnalysis#processFrame"

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_b
    iget-object v3, v0, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v3, Lgkt;->c:Lgkt;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v3, v1, Lgkk;->j:Lphh;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, v0, Lgkj;->a:Lgkk;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_10
    invoke-interface {v2}, Lpge;->close()V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eq v0, v3, :cond_1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_14
    invoke-interface {v2, v3}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_35

    nop

    :goto_16
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :goto_17
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_18
    if-nez v11, :cond_4

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_7

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_7

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move-object v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_1d
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1e
    throw v0

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move-object/from16 v0, p0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_20
    iget-object v0, v1, Lgkk;->b:Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {v2, v3}, Lpge;->e(Lphh;)Lprw;

    move-result-object v3

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-interface {v2}, Lpge;->d()Lpro;

    move-result-object v4

    nop

    nop

    invoke-interface {v2}, Lpge;->b()Lpgi;

    move-result-object v5

    nop

    nop

    nop

    if-eqz v3, :cond_3

    nop

    nop

    nop

    if-eqz v4, :cond_3

    nop

    nop

    nop

    nop

    nop

    if-nez v5, :cond_5

    nop

    nop

    nop

    goto/16 :goto_17

    nop

    nop

    nop

    :cond_5
    iget-object v6, v1, Lgkk;->q:Lrth;

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v1, Lgkk;->j:Lphh;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Lphh;->b()Lpck;

    move-result-object v7

    nop

    new-instance v8, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v1, Lgkk;->i:Ltud;

    nop

    nop

    nop

    invoke-interface {v9}, Ltud;->a()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    check-cast v9, Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Lrss;->h()Z

    move-result v10

    nop

    nop

    if-nez v10, :cond_6

    nop

    nop

    nop

    nop

    nop

    sget v8, Lryb;->d:I

    nop

    nop

    nop

    nop

    sget-object v8, Lsbh;->a:Lryb;

    nop

    nop

    nop

    goto/16 :goto_22

    nop

    nop

    nop

    :cond_6
    invoke-virtual {v9}, Lrss;->c()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    move-object v12, v9

    nop

    nop

    nop

    nop

    check-cast v12, Lppd;

    nop

    nop

    nop

    nop

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    invoke-interface {v4, v9}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    check-cast v9, Ljava/lang/Long;

    nop

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    nop

    sget-object v13, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-interface {v4, v13}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v13

    nop

    check-cast v13, Ljava/lang/Long;

    nop

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    nop

    nop

    nop

    iget-object v15, v1, Lgkk;->h:Ltbt;

    nop

    invoke-virtual {v15, v4}, Ltbt;->g(Lpro;)Lpnu;

    move-result-object v15

    nop

    nop

    invoke-static {v15}, Ltbt;->d(Lpnu;)J

    move-result-wide v15

    nop

    add-long/2addr v13, v9

    nop

    nop

    nop

    add-long/2addr v13, v15

    nop

    nop

    nop

    nop

    nop

    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    move-object/from16 v16, v12

    nop

    nop

    nop

    nop

    const-wide/16 v11, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v15, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v11

    nop

    nop

    nop

    const-wide/16 v17, 0xc8

    nop

    nop

    nop

    nop

    nop

    div-long v11, v11, v17

    nop

    nop

    nop

    nop

    sub-long/2addr v9, v11

    nop

    nop

    nop

    nop

    add-long v17, v13, v11

    nop

    nop

    nop

    new-instance v11, Liif;

    nop

    nop

    const/4 v12, 0x1

    nop

    invoke-direct {v11, v8, v12}, Liif;-><init>(Ljava/lang/Object;I)V

    move-object/from16 v12, v16

    nop

    nop

    nop

    nop

    move-wide v13, v9

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v15, v17

    nop

    nop

    nop

    nop

    move-object/from16 v17, v11

    nop

    nop

    nop

    invoke-interface/range {v12 .. v17}, Lppd;->b(JJLppc;)V

    invoke-static {v8}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object v8

    nop

    :goto_22
    iget-object v9, v6, Lrth;->c:Ljava/lang/Object;

    nop

    check-cast v9, Lfxj;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Lfxj;->b()Lpcg;

    move-result-object v9

    nop

    iget-object v10, v6, Lrth;->b:Ljava/lang/Object;

    nop

    nop

    nop

    iget v9, v9, Lpcg;->e:I

    nop

    nop

    nop

    check-cast v10, Lnoy;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v10, v9}, Llsc;->a(Lpro;Lnoy;I)Llsc;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    sget-object v9, Ltpp;->a:Ltpp;

    nop

    nop

    invoke-virtual {v9}, Ltkg;->m()Ltkb;

    move-result-object v9

    nop

    nop

    nop

    new-instance v10, Lfzd;

    nop

    nop

    const/16 v11, 0x13

    nop

    nop

    nop

    nop

    invoke-direct {v10, v11}, Lfzd;-><init>(I)V

    invoke-static {v8, v10}, Lrgw;->M(Ljava/util/List;Lrsk;)Ljava/util/List;

    move-result-object v8

    nop

    nop

    nop

    iget-object v10, v9, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v10}, Ltkg;->C()Z

    move-result v10

    nop

    nop

    if-nez v10, :cond_7

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkb;->o()V

    :cond_7
    iget-object v10, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v10, Ltpp;

    nop

    nop

    nop

    nop

    nop

    iget-object v11, v10, Ltpp;->b:Ltkv;

    nop

    nop

    invoke-interface {v11}, Ltkv;->c()Z

    move-result v12

    nop

    nop

    if-nez v12, :cond_8

    nop

    invoke-static {v11}, Ltkg;->v(Ltkv;)Ltkv;

    move-result-object v11

    nop

    nop

    iput-object v11, v10, Ltpp;->b:Ltkv;

    nop

    nop

    :cond_8
    iget-object v10, v10, Ltpp;->b:Ltkv;

    nop

    nop

    nop

    nop

    invoke-static {v8, v10}, Ltir;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {v9}, Ltkb;->i()Ltkg;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Ltpp;

    nop

    nop

    iget v9, v7, Lpck;->a:I

    nop

    nop

    int-to-float v9, v9

    nop

    nop

    nop

    nop

    iget-object v10, v4, Llsc;->t:Landroid/graphics/Rect;

    nop

    nop

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    nop

    nop

    nop

    int-to-float v10, v10

    nop

    nop

    nop

    div-float/2addr v9, v10

    nop

    nop

    nop

    nop

    nop

    iget v7, v7, Lpck;->b:I

    nop

    int-to-float v7, v7

    nop

    nop

    nop

    iget-object v10, v4, Llsc;->t:Landroid/graphics/Rect;

    nop

    nop

    nop

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    nop

    nop

    int-to-float v10, v10

    nop

    nop

    nop

    nop

    div-float/2addr v7, v10

    nop

    nop

    nop

    invoke-static {v4, v9, v7}, Lhst;->e(Llsc;FF)Lton;

    move-result-object v7

    nop

    nop

    nop

    nop

    sget-object v9, Ltpi;->a:Ltpi;

    nop

    invoke-virtual {v9}, Ltkg;->m()Ltkb;

    move-result-object v9

    nop

    nop

    iget-boolean v6, v6, Lrth;->a:Z

    nop

    nop

    nop

    nop

    nop

    const/4 v11, 0x1

    nop

    nop

    nop

    nop

    if-eq v11, v6, :cond_9

    nop

    nop

    nop

    const/4 v6, 0x3

    nop

    nop

    nop

    nop

    nop

    goto :goto_23

    nop

    nop

    nop

    nop

    :cond_9
    const/4 v6, 0x2

    nop

    :goto_23
    iget-object v11, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Ltkg;->C()Z

    move-result v11

    nop

    if-nez v11, :cond_a

    nop

    invoke-virtual {v9}, Ltkb;->o()V

    :cond_a
    iget-object v11, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    move-object v12, v11

    nop

    nop

    check-cast v12, Ltpi;

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v6, v6, -0x1

    nop

    nop

    iput v6, v12, Ltpi;->c:I

    nop

    nop

    nop

    nop

    iget v6, v12, Ltpi;->b:I

    nop

    const/4 v13, 0x1

    nop

    or-int/2addr v6, v13

    nop

    nop

    iput v6, v12, Ltpi;->b:I

    nop

    nop

    nop

    nop

    nop

    iget v6, v4, Llsc;->s:I

    nop

    const/16 v12, 0x10e

    nop

    nop

    const/16 v13, 0x5a

    nop

    nop

    nop

    nop

    nop

    if-ne v6, v13, :cond_b

    nop

    nop

    nop

    move v6, v12

    nop

    nop

    nop

    nop

    nop

    goto :goto_24

    nop

    nop

    nop

    :cond_b
    if-ne v6, v12, :cond_c

    nop

    nop

    nop

    nop

    move v6, v13

    nop

    nop

    nop

    nop

    :cond_c
    :goto_24
    invoke-virtual {v11}, Ltkg;->C()Z

    move-result v11

    nop

    nop

    nop

    nop

    if-nez v11, :cond_d

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkb;->o()V

    :cond_d
    iget-object v11, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    move-object v12, v11

    nop

    check-cast v12, Ltpi;

    nop

    nop

    nop

    iget v13, v12, Ltpi;->b:I

    nop

    or-int/lit8 v13, v13, 0x4

    nop

    nop

    nop

    iput v13, v12, Ltpi;->b:I

    nop

    nop

    nop

    nop

    nop

    iput v6, v12, Ltpi;->d:I

    nop

    nop

    nop

    iget-wide v12, v4, Llsc;->d:J

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-nez v6, :cond_e

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkb;->o()V

    :cond_e
    iget-object v6, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    move-object v11, v6

    nop

    nop

    nop

    nop

    nop

    check-cast v11, Ltpi;

    nop

    nop

    iget v14, v11, Ltpi;->b:I

    nop

    or-int/lit8 v14, v14, 0x10

    nop

    iput v14, v11, Ltpi;->b:I

    nop

    nop

    nop

    iput-wide v12, v11, Ltpi;->e:J

    nop

    nop

    iget-wide v11, v4, Llsc;->e:J

    nop

    nop

    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    if-nez v6, :cond_f

    nop

    invoke-virtual {v9}, Ltkb;->o()V

    :cond_f
    iget-object v6, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    move-object v13, v6

    nop

    nop

    nop

    nop

    check-cast v13, Ltpi;

    nop

    nop

    nop

    nop

    iget v14, v13, Ltpi;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v14, v14, 0x20

    nop

    iput v14, v13, Ltpi;->b:I

    nop

    nop

    nop

    nop

    iput-wide v11, v13, Ltpi;->f:J

    nop

    nop

    nop

    nop

    iget v11, v4, Llsc;->k:I

    nop

    nop

    nop

    nop

    nop

    int-to-long v11, v11

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-nez v6, :cond_10

    nop

    nop

    invoke-virtual {v9}, Ltkb;->o()V

    :cond_10
    iget-object v6, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    move-object v13, v6

    nop

    nop

    check-cast v13, Ltpi;

    nop

    nop

    nop

    nop

    nop

    iget v14, v13, Ltpi;->b:I

    nop

    or-int/lit8 v14, v14, 0x40

    nop

    iput v14, v13, Ltpi;->b:I

    nop

    nop

    nop

    nop

    nop

    iput-wide v11, v13, Ltpi;->g:J

    nop

    iget v11, v4, Llsc;->l:I

    nop

    int-to-long v11, v11

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    if-nez v6, :cond_11

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkb;->o()V

    :cond_11
    iget-object v6, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    move-object v13, v6

    nop

    nop

    check-cast v13, Ltpi;

    nop

    nop

    iget v14, v13, Ltpi;->b:I

    nop

    nop

    nop

    or-int/lit16 v14, v14, 0x80

    nop

    nop

    nop

    iput v14, v13, Ltpi;->b:I

    nop

    nop

    nop

    nop

    iput-wide v11, v13, Ltpi;->h:J

    nop

    nop

    nop

    nop

    iget v11, v4, Llsc;->j:I

    nop

    nop

    nop

    nop

    nop

    int-to-long v11, v11

    nop

    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    nop

    if-nez v6, :cond_12

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkb;->o()V

    :cond_12
    iget-object v6, v9, Ltkb;->b:Ltkg;

    nop

    move-object v13, v6

    nop

    nop

    nop

    nop

    check-cast v13, Ltpi;

    nop

    nop

    nop

    nop

    iget v14, v13, Ltpi;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit16 v14, v14, 0x100

    nop

    nop

    nop

    nop

    iput v14, v13, Ltpi;->b:I

    nop

    nop

    nop

    nop

    nop

    iput-wide v11, v13, Ltpi;->i:J

    nop

    nop

    iget v11, v4, Llsc;->m:I

    nop

    int-to-long v11, v11

    nop

    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    if-nez v6, :cond_13

    nop

    invoke-virtual {v9}, Ltkb;->o()V

    :cond_13
    iget-object v6, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    move-object v13, v6

    nop

    check-cast v13, Ltpi;

    nop

    nop

    nop

    nop

    nop

    iget v14, v13, Ltpi;->b:I

    nop

    nop

    nop

    nop

    or-int/lit16 v14, v14, 0x200

    nop

    nop

    nop

    nop

    iput v14, v13, Ltpi;->b:I

    nop

    nop

    nop

    nop

    nop

    iput-wide v11, v13, Ltpi;->j:J

    nop

    nop

    nop

    nop

    iget v11, v4, Llsc;->f:I

    nop

    nop

    int-to-long v11, v11

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-nez v6, :cond_14

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkb;->o()V

    :cond_14
    iget-object v6, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Ltpi;

    nop

    nop

    nop

    nop

    nop

    iget v13, v6, Ltpi;->b:I

    nop

    nop

    nop

    or-int/lit16 v13, v13, 0x400

    nop

    nop

    nop

    iput v13, v6, Ltpi;->b:I

    nop

    nop

    nop

    nop

    nop

    iput-wide v11, v6, Ltpi;->k:J

    nop

    nop

    invoke-virtual {v9}, Ltkb;->i()Ltkg;

    move-result-object v6

    nop

    nop

    nop

    check-cast v6, Ltpi;

    nop

    nop

    sget-object v9, Ltpn;->a:Ltpn;

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkg;->m()Ltkb;

    move-result-object v9

    nop

    nop

    nop

    nop

    iget v11, v4, Llsc;->p:F

    nop

    nop

    nop

    nop

    nop

    iget-object v12, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v12}, Ltkg;->C()Z

    move-result v12

    nop

    nop

    if-nez v12, :cond_15

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkb;->o()V

    :cond_15
    iget-object v12, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v12, Ltpn;

    nop

    nop

    nop

    nop

    nop

    iget v13, v12, Ltpn;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit8 v13, v13, 0x4

    nop

    nop

    iput v13, v12, Ltpn;->b:I

    nop

    iput v11, v12, Ltpn;->c:F

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkb;->i()Ltkg;

    move-result-object v9

    nop

    check-cast v9, Ltpn;

    nop

    nop

    sget-object v11, Ltpo;->a:Ltpo;

    nop

    nop

    invoke-virtual {v11}, Ltkg;->m()Ltkb;

    move-result-object v11

    nop

    nop

    iget-wide v12, v5, Lpgi;->c:J

    nop

    nop

    nop

    iget-object v14, v11, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v14}, Ltkg;->C()Z

    move-result v14

    nop

    nop

    nop

    nop

    if-nez v14, :cond_16

    nop

    invoke-virtual {v11}, Ltkb;->o()V

    :cond_16
    iget-object v14, v11, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    move-object v15, v14

    nop

    check-cast v15, Ltpo;

    nop

    nop

    nop

    iget v10, v15, Ltpo;->b:I

    nop

    nop

    nop

    nop

    const/16 v17, 0x1

    nop

    nop

    or-int/lit8 v10, v10, 0x1

    nop

    nop

    nop

    nop

    iput v10, v15, Ltpo;->b:I

    nop

    nop

    nop

    iput-wide v12, v15, Ltpo;->c:J

    nop

    nop

    nop

    nop

    iget-wide v12, v5, Lpgi;->b:J

    nop

    nop

    nop

    nop

    invoke-virtual {v14}, Ltkg;->C()Z

    move-result v10

    nop

    if-nez v10, :cond_17

    nop

    nop

    nop

    invoke-virtual {v11}, Ltkb;->o()V

    :cond_17
    iget-object v10, v11, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    move-object v14, v10

    nop

    check-cast v14, Ltpo;

    nop

    nop

    iget v15, v14, Ltpo;->b:I

    nop

    nop

    nop

    const/16 v16, 0x2

    nop

    nop

    nop

    or-int/lit8 v15, v15, 0x2

    nop

    nop

    nop

    iput v15, v14, Ltpo;->b:I

    nop

    nop

    nop

    nop

    iput-wide v12, v14, Ltpo;->d:J

    nop

    invoke-virtual {v10}, Ltkg;->C()Z

    move-result v10

    nop

    nop

    nop

    nop

    if-nez v10, :cond_18

    nop

    nop

    invoke-virtual {v11}, Ltkb;->o()V

    :cond_18
    iget-object v10, v11, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    move-object v12, v10

    nop

    nop

    nop

    nop

    check-cast v12, Ltpo;

    nop

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v12, Ltpo;->f:Ltpi;

    nop

    iget v6, v12, Ltpo;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v6, v6, 0x20

    nop

    nop

    iput v6, v12, Ltpo;->b:I

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    nop

    nop

    if-nez v6, :cond_19

    nop

    nop

    nop

    invoke-virtual {v11}, Ltkb;->o()V

    :cond_19
    iget-object v6, v11, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    move-object v10, v6

    nop

    check-cast v10, Ltpo;

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v7, v10, Ltpo;->g:Lton;

    nop

    nop

    nop

    nop

    nop

    iget v7, v10, Ltpo;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v7, v7, 0x40

    nop

    iput v7, v10, Ltpo;->b:I

    nop

    nop

    iget-boolean v4, v4, Llsc;->r:Z

    nop

    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    nop

    if-nez v6, :cond_1a

    nop

    nop

    invoke-virtual {v11}, Ltkb;->o()V

    :cond_1a
    iget-object v6, v11, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    move-object v7, v6

    nop

    nop

    nop

    check-cast v7, Ltpo;

    nop

    nop

    iget v10, v7, Ltpo;->b:I

    nop

    nop

    or-int/lit16 v10, v10, 0x200

    nop

    iput v10, v7, Ltpo;->b:I

    nop

    nop

    nop

    nop

    iput-boolean v4, v7, Ltpo;->h:Z

    nop

    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    if-nez v4, :cond_1b

    nop

    nop

    invoke-virtual {v11}, Ltkb;->o()V

    :cond_1b
    iget-object v4, v11, Ltkb;->b:Ltkg;

    nop

    move-object v6, v4

    nop

    check-cast v6, Ltpo;

    nop

    nop

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v8, v6, Ltpo;->j:Ltpp;

    nop

    nop

    nop

    nop

    iget v7, v6, Ltpo;->b:I

    nop

    nop

    nop

    nop

    or-int/lit16 v7, v7, 0x4000

    nop

    nop

    nop

    nop

    iput v7, v6, Ltpo;->b:I

    nop

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    if-nez v4, :cond_1c

    nop

    nop

    nop

    invoke-virtual {v11}, Ltkb;->o()V

    :cond_1c
    iget-object v4, v11, Ltkb;->b:Ltkg;

    nop

    check-cast v4, Ltpo;

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v9, v4, Ltpo;->k:Ltpn;

    nop

    nop

    iget v6, v4, Ltpo;->b:I

    nop

    nop

    nop

    const v7, 0x8000

    nop

    nop

    nop

    or-int/2addr v6, v7

    nop

    nop

    iput v6, v4, Ltpo;->b:I

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Ltkb;->i()Ltkg;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Ltpo;

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0, v3, v4}, Lcom/google/android/apps/camera/autotimer/analysis/jni/BaseCurator;->a(Lprw;Ltpo;)Ltqo;

    move-result-object v0

    nop
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, v1, Lgkk;->d:Lgkx;

    nop

    nop

    nop

    nop

    nop

    iget-wide v5, v5, Lpgi;->c:J

    nop

    nop

    nop

    new-instance v7, Ljava/util/HashSet;

    nop

    iget-object v8, v4, Lgkx;->c:Ljava/util/Map;

    nop

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    nop

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-wide v5, v4, Lgkx;->d:J

    nop

    nop

    nop

    iget-wide v8, v4, Lgkx;->e:J

    nop

    const-wide/16 v10, 0x0

    nop

    nop

    nop

    cmp-long v8, v8, v10

    nop

    nop

    nop

    nop

    nop

    if-nez v8, :cond_1d

    nop

    nop

    nop

    iput-wide v5, v4, Lgkx;->e:J

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    iget-object v5, v0, Ltqo;->b:Ltpd;

    nop

    nop

    nop

    nop

    nop

    if-nez v5, :cond_1e

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Ltpd;->a:Ltpd;

    nop

    nop

    nop

    nop

    nop

    :cond_1e
    iget v6, v5, Ltpd;->b:I

    nop

    nop

    nop

    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    and-int/2addr v6, v8

    nop

    nop

    if-eqz v6, :cond_20

    nop

    nop

    iget-object v6, v5, Ltpd;->c:Ltpf;

    nop

    nop

    nop

    nop

    if-nez v6, :cond_1f

    nop

    nop

    nop

    nop

    nop

    sget-object v6, Ltpf;->a:Ltpf;

    nop

    nop

    nop

    nop

    :cond_1f
    iget-object v6, v6, Ltpf;->b:Ltkp;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    nop

    nop

    nop

    :goto_25
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    if-eqz v8, :cond_20

    nop

    nop

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Ljava/lang/Long;

    nop

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget v9, v0, Ltqo;->c:F

    nop

    new-instance v12, Lgkw;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v12}, Lgkw;-><init>()V

    iget-object v13, v4, Lgkx;->b:Lrts;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v13}, Lrtk;->b(Lrts;)Lrtk;

    move-result-object v13

    nop

    nop

    iput-object v13, v12, Lgkw;->b:Ljava/lang/Object;

    nop

    nop

    iput v9, v12, Lgkw;->a:F

    nop

    iget-object v9, v4, Lgkx;->c:Ljava/util/Map;

    nop

    invoke-interface {v9, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    nop

    nop

    nop

    nop

    :cond_20
    iget v6, v5, Ltpd;->b:I

    nop

    nop

    nop

    nop

    const/4 v8, 0x2

    nop

    nop

    and-int/2addr v6, v8

    nop

    nop

    nop

    if-eqz v6, :cond_22

    nop

    nop

    nop

    iget-object v5, v5, Ltpd;->d:Ltpe;

    nop

    if-nez v5, :cond_21

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Ltpe;->a:Ltpe;

    nop

    nop

    :cond_21
    iget-wide v5, v5, Ltpe;->b:J

    nop

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    nop

    nop

    nop

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_22
    move-wide v5, v10

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    :cond_23
    :goto_27
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_24

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    check-cast v8, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    iget-object v9, v4, Lgkx;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v9, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_23

    nop

    nop

    nop

    nop

    iget v8, v4, Lgkx;->f:I

    nop

    nop

    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v8, v9

    nop

    nop

    iput v8, v4, Lgkx;->f:I

    nop

    nop

    nop

    nop

    nop

    goto :goto_27

    nop

    nop

    nop

    :cond_24
    cmp-long v7, v5, v10

    nop

    nop

    if-eqz v7, :cond_29

    nop

    nop

    nop

    nop

    iget-object v7, v0, Ltqo;->e:Ltpo;

    nop

    nop

    if-nez v7, :cond_25

    nop

    nop

    nop

    nop

    nop

    sget-object v7, Ltpo;->a:Ltpo;

    nop

    :cond_25
    move-object/from16 v21, v7

    nop

    iget-object v7, v4, Lgkx;->c:Ljava/util/Map;

    nop

    nop

    nop

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    nop

    nop

    nop

    nop

    invoke-interface {v7, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    check-cast v7, Lgkw;

    nop

    if-eqz v7, :cond_26

    nop

    nop

    iget-object v9, v7, Lgkw;->b:Ljava/lang/Object;

    nop

    nop

    check-cast v9, Lrtk;

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Lrtk;->f()V

    iget-object v9, v7, Lgkw;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    check-cast v9, Lrtk;

    nop

    nop

    invoke-virtual {v9, v10}, Lrtk;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v10

    nop

    nop

    iget v7, v7, Lgkw;->a:F

    nop

    nop

    nop

    nop

    goto :goto_28

    nop

    :cond_26
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move/from16 v20, v7

    nop

    move-wide v15, v10

    nop

    nop

    nop

    nop

    iget-object v7, v4, Lgkx;->a:Lrtk;

    nop

    nop

    nop

    iget-boolean v9, v7, Lrtk;->a:Z

    nop

    nop

    if-eqz v9, :cond_27

    nop

    invoke-virtual {v7}, Lrtk;->f()V

    :cond_27
    iget-object v7, v4, Lgkx;->a:Lrtk;

    nop

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    invoke-virtual {v7, v9}, Lrtk;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v13

    nop

    iget-wide v9, v4, Lgkx;->d:J

    nop

    nop

    nop

    nop

    sub-long v11, v9, v5

    nop

    nop

    nop

    nop

    move-wide/from16 v17, v9

    nop

    nop

    nop

    iget-wide v8, v4, Lgkx;->e:J

    nop

    nop

    nop

    nop

    sub-long v8, v5, v8

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v22, v8

    nop

    move-wide/from16 v7, v17

    nop

    iput-wide v7, v4, Lgkx;->e:J

    nop

    iget-object v7, v4, Lgkx;->a:Lrtk;

    nop

    nop

    nop

    invoke-virtual {v7}, Lrtk;->d()V

    iget-object v7, v4, Lgkx;->a:Lrtk;

    nop

    nop

    invoke-virtual {v7}, Lrtk;->e()V

    iget v7, v4, Lgkx;->f:I

    nop

    nop

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    iput v8, v4, Lgkx;->f:I

    nop

    nop

    nop

    nop

    nop

    new-instance v9, Lgkv;

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v24, v9

    nop

    move-wide/from16 v8, v22

    nop

    nop

    nop

    nop

    long-to-int v8, v8

    nop

    nop

    nop

    nop

    nop

    long-to-int v9, v11

    nop

    nop

    move-object/from16 v12, v24

    nop

    move/from16 v17, v7

    nop

    nop

    move/from16 v18, v8

    nop

    nop

    nop

    nop

    move/from16 v19, v9

    nop

    nop

    nop

    nop

    invoke-direct/range {v12 .. v21}, Lgkv;-><init>(JJIIIFLtpo;)V

    iget-object v4, v4, Lgkx;->g:Lfdo;

    nop

    iget-object v7, v4, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v7

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v4, v4, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    if-eqz v8, :cond_28

    nop

    nop

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    check-cast v8, Limz;

    nop

    nop

    nop

    move-object/from16 v9, v24

    nop

    nop

    invoke-virtual {v8, v5, v6, v9}, Limz;->a(JLgkv;)V

    move-object/from16 v24, v9

    nop

    nop

    nop

    nop

    nop

    goto :goto_29

    nop

    nop

    nop

    :cond_28
    monitor-exit v7

    nop

    nop

    nop

    nop

    nop

    goto :goto_2a

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    monitor-exit v7

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    nop

    nop

    nop

    nop

    nop

    :cond_29
    :goto_2a
    iget-object v0, v0, Ltqo;->d:Ltqp;

    nop

    nop

    nop

    nop

    if-nez v0, :cond_2a

    nop

    sget-object v0, Ltqp;->a:Ltqp;

    nop

    :cond_2a
    iget v4, v0, Ltqp;->b:I

    nop

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    and-int/2addr v4, v5

    nop

    nop

    nop

    if-eqz v4, :cond_2b

    nop

    iget-object v4, v1, Lgkk;->c:Loyn;

    nop

    nop

    nop

    iget v6, v0, Ltqp;->c:F

    nop

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v6}, Loyn;->a(Ljava/lang/Object;)V

    iget-boolean v0, v0, Ltqp;->d:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2c

    nop

    nop

    nop

    move v11, v5

    nop

    nop

    nop

    goto/16 :goto_32

    nop

    nop

    nop

    :cond_2b
    sget-object v0, Lgkk;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    const/16 v4, 0x191

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v4}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    const-string v4, "No feedback score"

    nop

    nop

    nop

    nop

    invoke-interface {v0, v4}, Lscz;->s(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2c
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2b
    monitor-enter v3

    nop

    nop

    nop

    nop

    :try_start_5
    iget-object v0, v0, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_2d

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    nop

    iget-object v4, v4, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    move-object v5, v4

    nop

    nop

    nop

    nop

    check-cast v5, Ljjx;

    nop

    nop

    iget-object v5, v5, Ljjx;->c:Lowu;

    nop

    new-instance v6, Ljhr;

    nop

    const/16 v7, 0xe

    nop

    invoke-direct {v6, v4, v7}, Ljhr;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v5, v6}, Lowu;->execute(Ljava/lang/Runnable;)V

    goto :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_2d
    monitor-exit v3

    nop

    nop

    nop

    nop

    goto/16 :goto_7

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v3

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_3b

    nop

    :catchall_3
    move-exception v0

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    return-void

    nop

    nop

    :goto_2f
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {v3}, Lprw;->close()V

    goto/32 :goto_18

    nop

    nop

    :goto_31
    const/4 v11, 0x0

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_33
    move-object v4, v0

    nop

    nop

    nop

    :try_start_6
    sget-object v0, Lgkk;->a:Lsdb;

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v4}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const/16 v4, 0x193

    nop

    nop

    nop

    nop

    invoke-interface {v0, v4}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v4, "Could not parse curation result, ignoring frame."

    nop

    invoke-interface {v0, v4}, Lscz;->s(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_16

    nop

    nop

    :goto_34
    iget-object v0, v1, Lgkk;->l:Lcom/google/android/apps/camera/autotimer/analysis/jni/BaseCurator;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_2f

    nop

    :goto_36
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz v0, :cond_2e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_2e
    goto/32 :goto_19

    nop

    nop

    :goto_38
    if-nez v3, :cond_2f

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_2f
    :try_start_7
    invoke-interface {v3}, Lprw;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_39
    move-object v2, v0

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3b
    goto/32 :goto_6

    nop

    nop

    :goto_3c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const v0, 0x5

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method
