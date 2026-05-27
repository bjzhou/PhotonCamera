.class public final synthetic Lcku;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lckv;

.field public final synthetic b:Lkeb;


# direct methods
.method public synthetic constructor <init>(Lckv;Lkeb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcku;->a:Lckv;

    iput-object p2, p0, Lcku;->b:Lkeb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 30

    move-object/from16 v1, p0

    iget-object v2, v1, Lcku;->a:Lckv;

    iget-object v3, v1, Lcku;->b:Lkeb;

    iget-object v0, v2, Lckv;->l:Lkbc;

    const-string v4, "AutoTimerAnalysis#processFrame"

    invoke-interface {v0, v4}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, v2, Lckv;->b:Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    sget-object v4, Lclj;->c:Lclj;

    if-ne v0, v4, :cond_2c

    iget-object v0, v2, Lckv;->m:Lcom/google/android/apps/camera/autotimer/analysis/jni/BaseCurator;

    if-nez v0, :cond_0

    goto/16 :goto_e

    :cond_0
    iget-object v4, v2, Lckv;->k:Lkfj;

    invoke-interface {v3, v4}, Lkeb;->d(Lkfj;)Lkpb;

    move-result-object v4

    :try_start_0
    invoke-interface {v3}, Lkeb;->c()Lkou;

    move-result-object v7

    invoke-interface {v3}, Lkeb;->b()Lkeg;

    move-result-object v8

    if-eqz v4, :cond_2a

    if-eqz v7, :cond_2a

    if-nez v8, :cond_1

    goto/16 :goto_b

    :cond_1
    iget-object v9, v2, Lckv;->q:Lmrd;

    iget-object v10, v2, Lckv;->k:Lkfj;

    invoke-interface {v10}, Lkfj;->b()Lkaf;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, v2, Lckv;->j:Logd;

    invoke-interface {v12}, Logd;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmqp;

    invoke-virtual {v12}, Lmqp;->g()Z

    move-result v13

    if-nez v13, :cond_2

    sget v11, Lmvv;->d:I

    sget-object v11, Lmyu;->a:Lmvv;

    goto :goto_0

    :cond_2
    invoke-virtual {v12}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lkmm;

    sget-object v12, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v7, v12}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sget-object v12, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v7, v12}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    iget-object v12, v2, Lckv;->i:Lnsc;

    invoke-virtual {v12, v7}, Lnsc;->d(Lkou;)J

    move-result-wide v18

    add-long v16, v14, v16

    add-long v16, v16, v18

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    invoke-virtual {v12, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    const-wide/16 v20, 0xc8

    div-long v5, v5, v20

    sub-long/2addr v14, v5

    add-long v16, v16, v5

    new-instance v5, Leai;

    const/4 v6, 0x1

    invoke-direct {v5, v11, v6}, Leai;-><init>(Ljava/util/List;I)V

    move-object/from16 v18, v5

    invoke-interface/range {v13 .. v18}, Lkmm;->b(JJLkml;)V

    invoke-static {v11}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object v11

    :goto_0
    iget-object v5, v9, Lmrd;->c:Ljava/lang/Object;

    check-cast v5, Lcea;

    invoke-virtual {v5}, Lcea;->d()Lkab;

    move-result-object v5

    iget-object v6, v9, Lmrd;->b:Ljava/lang/Object;

    iget v5, v5, Lkab;->e:I

    check-cast v6, Lily;

    invoke-static {v7, v6, v5}, Lgrw;->a(Lkou;Lily;I)Lgrw;

    move-result-object v5

    sget-object v6, Lock;->b:Lock;

    invoke-virtual {v6}, Lnws;->O()Lnwn;

    move-result-object v6

    sget-object v7, Lcfv;->l:Lcfv;

    invoke-static {v11, v7}, Llyh;->H(Ljava/util/List;Lmqi;)Ljava/util/List;

    move-result-object v7

    iget-object v11, v6, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_3
    iget-object v11, v6, Lnwn;->b:Lnws;

    check-cast v11, Lock;

    iget-object v12, v11, Lock;->a:Lnxa;

    invoke-interface {v12}, Lnxa;->c()Z

    move-result v13

    if-nez v13, :cond_4

    invoke-static {v12}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v12

    iput-object v12, v11, Lock;->a:Lnxa;

    :cond_4
    iget-object v11, v11, Lock;->a:Lnxa;

    invoke-static {v7, v11}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {v6}, Lnwn;->i()Lnws;

    move-result-object v6

    check-cast v6, Lock;

    iget v7, v10, Lkaf;->a:I

    int-to-float v7, v7

    iget-object v11, v5, Lgrw;->t:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v7, v11

    iget v10, v10, Lkaf;->b:I

    int-to-float v10, v10

    iget-object v11, v5, Lgrw;->t:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v5, v7, v10}, Ldsj;->a(Lgrw;FF)Lobf;

    move-result-object v7

    sget-object v10, Locd;->k:Locd;

    invoke-virtual {v10}, Lnws;->O()Lnwn;

    move-result-object v10

    iget-boolean v9, v9, Lmrd;->a:Z

    const/4 v12, 0x1

    if-eq v12, v9, :cond_5

    const/4 v9, 0x3

    goto :goto_1

    :cond_5
    const/4 v9, 0x2

    :goto_1
    iget-object v12, v10, Lnwn;->b:Lnws;

    invoke-virtual {v12}, Lnws;->ac()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_6
    iget-object v12, v10, Lnwn;->b:Lnws;

    move-object v13, v12

    check-cast v13, Locd;

    add-int/lit8 v9, v9, -0x1

    iput v9, v13, Locd;->b:I

    iget v9, v13, Locd;->a:I

    const/4 v14, 0x1

    or-int/2addr v9, v14

    iput v9, v13, Locd;->a:I

    iget v9, v5, Lgrw;->s:I

    const/16 v13, 0x10e

    const/16 v14, 0x5a

    if-ne v9, v14, :cond_7

    const/16 v9, 0x10e

    goto :goto_2

    :cond_7
    if-ne v9, v13, :cond_8

    const/16 v9, 0x5a

    :cond_8
    :goto_2
    invoke-virtual {v12}, Lnws;->ac()Z

    move-result v12

    if-nez v12, :cond_9

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_9
    iget-object v12, v10, Lnwn;->b:Lnws;

    move-object v13, v12

    check-cast v13, Locd;

    iget v14, v13, Locd;->a:I

    or-int/lit8 v14, v14, 0x4

    iput v14, v13, Locd;->a:I

    iput v9, v13, Locd;->c:I

    iget-wide v13, v5, Lgrw;->d:J

    invoke-virtual {v12}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_a
    iget-object v9, v10, Lnwn;->b:Lnws;

    move-object v12, v9

    check-cast v12, Locd;

    iget v15, v12, Locd;->a:I

    or-int/lit8 v15, v15, 0x10

    iput v15, v12, Locd;->a:I

    iput-wide v13, v12, Locd;->d:J

    iget-wide v12, v5, Lgrw;->e:J

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_b
    iget-object v9, v10, Lnwn;->b:Lnws;

    move-object v14, v9

    check-cast v14, Locd;

    iget v15, v14, Locd;->a:I

    or-int/lit8 v15, v15, 0x20

    iput v15, v14, Locd;->a:I

    iput-wide v12, v14, Locd;->e:J

    iget v12, v5, Lgrw;->k:I

    int-to-long v12, v12

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_c

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_c
    iget-object v9, v10, Lnwn;->b:Lnws;

    move-object v14, v9

    check-cast v14, Locd;

    iget v15, v14, Locd;->a:I

    or-int/lit8 v15, v15, 0x40

    iput v15, v14, Locd;->a:I

    iput-wide v12, v14, Locd;->f:J

    iget v12, v5, Lgrw;->l:I

    int-to-long v12, v12

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_d

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_d
    iget-object v9, v10, Lnwn;->b:Lnws;

    move-object v14, v9

    check-cast v14, Locd;

    iget v15, v14, Locd;->a:I

    or-int/lit16 v15, v15, 0x80

    iput v15, v14, Locd;->a:I

    iput-wide v12, v14, Locd;->g:J

    iget v12, v5, Lgrw;->j:I

    int-to-long v12, v12

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_e

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_e
    iget-object v9, v10, Lnwn;->b:Lnws;

    move-object v14, v9

    check-cast v14, Locd;

    iget v15, v14, Locd;->a:I

    or-int/lit16 v15, v15, 0x100

    iput v15, v14, Locd;->a:I

    iput-wide v12, v14, Locd;->h:J

    iget v12, v5, Lgrw;->m:I

    int-to-long v12, v12

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_f

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_f
    iget-object v9, v10, Lnwn;->b:Lnws;

    move-object v14, v9

    check-cast v14, Locd;

    iget v15, v14, Locd;->a:I

    or-int/lit16 v15, v15, 0x200

    iput v15, v14, Locd;->a:I

    iput-wide v12, v14, Locd;->i:J

    iget v12, v5, Lgrw;->f:I

    int-to-long v12, v12

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_10

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_10
    iget-object v9, v10, Lnwn;->b:Lnws;

    check-cast v9, Locd;

    iget v14, v9, Locd;->a:I

    or-int/lit16 v14, v14, 0x400

    iput v14, v9, Locd;->a:I

    iput-wide v12, v9, Locd;->j:J

    invoke-virtual {v10}, Lnwn;->i()Lnws;

    move-result-object v9

    check-cast v9, Locd;

    sget-object v10, Loci;->i:Loci;

    invoke-virtual {v10}, Lnws;->O()Lnwn;

    move-result-object v10

    iget v12, v5, Lgrw;->p:F

    iget-object v13, v10, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_11

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_11
    iget-object v13, v10, Lnwn;->b:Lnws;

    check-cast v13, Loci;

    iget v14, v13, Loci;->a:I

    or-int/lit8 v14, v14, 0x4

    iput v14, v13, Loci;->a:I

    iput v12, v13, Loci;->b:F

    invoke-virtual {v10}, Lnwn;->i()Lnws;

    move-result-object v10

    check-cast v10, Loci;

    sget-object v12, Locj;->m:Locj;

    invoke-virtual {v12}, Lnws;->O()Lnwn;

    move-result-object v12

    iget-wide v13, v8, Lkeg;->c:J

    iget-object v15, v12, Lnwn;->b:Lnws;

    invoke-virtual {v15}, Lnws;->ac()Z

    move-result v15

    if-nez v15, :cond_12

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_12
    iget-object v15, v12, Lnwn;->b:Lnws;

    move-object v11, v15

    check-cast v11, Locj;

    iget v1, v11, Locj;->a:I

    const/16 v17, 0x1

    or-int/lit8 v1, v1, 0x1

    iput v1, v11, Locj;->a:I

    iput-wide v13, v11, Locj;->b:J

    iget-wide v13, v8, Lkeg;->b:J

    invoke-virtual {v15}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_13
    iget-object v1, v12, Lnwn;->b:Lnws;

    move-object v11, v1

    check-cast v11, Locj;

    iget v15, v11, Locj;->a:I

    const/16 v16, 0x2

    or-int/lit8 v15, v15, 0x2

    iput v15, v11, Locj;->a:I

    iput-wide v13, v11, Locj;->c:J

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_14
    iget-object v1, v12, Lnwn;->b:Lnws;

    move-object v11, v1

    check-cast v11, Locj;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v9, v11, Locj;->d:Locd;

    iget v9, v11, Locj;->a:I

    or-int/lit8 v9, v9, 0x20

    iput v9, v11, Locj;->a:I

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_15
    iget-object v1, v12, Lnwn;->b:Lnws;

    move-object v9, v1

    check-cast v9, Locj;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v7, v9, Locj;->e:Lobf;

    iget v7, v9, Locj;->a:I

    or-int/lit8 v7, v7, 0x40

    iput v7, v9, Locj;->a:I

    iget-boolean v5, v5, Lgrw;->r:Z

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_16
    iget-object v1, v12, Lnwn;->b:Lnws;

    move-object v7, v1

    check-cast v7, Locj;

    iget v9, v7, Locj;->a:I

    or-int/lit16 v9, v9, 0x200

    iput v9, v7, Locj;->a:I

    iput-boolean v5, v7, Locj;->f:Z

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_17
    iget-object v1, v12, Lnwn;->b:Lnws;

    move-object v5, v1

    check-cast v5, Locj;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v5, Locj;->h:Lock;

    iget v6, v5, Locj;->a:I

    or-int/lit16 v6, v6, 0x4000

    iput v6, v5, Locj;->a:I

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_18
    iget-object v1, v12, Lnwn;->b:Lnws;

    check-cast v1, Locj;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v10, v1, Locj;->i:Loci;

    iget v5, v1, Locj;->a:I

    const v6, 0x8000

    or-int/2addr v5, v6

    iput v5, v1, Locj;->a:I

    invoke-virtual {v12}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Locj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface {v0, v4, v1}, Lcom/google/android/apps/camera/autotimer/analysis/jni/BaseCurator;->a(Lkpb;Locj;)Lodh;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v2, Lckv;->d:Lcln;

    iget-wide v5, v8, Lkeg;->c:J

    new-instance v7, Ljava/util/HashSet;

    iget-object v8, v1, Lcln;->c:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-wide v5, v1, Lcln;->d:J

    iget-wide v8, v1, Lcln;->e:J

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-nez v12, :cond_19

    iput-wide v5, v1, Lcln;->e:J

    :cond_19
    iget-object v5, v0, Lodh;->a:Lobz;

    if-nez v5, :cond_1a

    sget-object v5, Lobz;->d:Lobz;

    :cond_1a
    iget v6, v5, Lobz;->a:I

    const/4 v8, 0x1

    and-int/2addr v6, v8

    if-eqz v6, :cond_1c

    iget-object v6, v5, Lobz;->b:Locb;

    if-nez v6, :cond_1b

    sget-object v6, Locb;->b:Locb;

    :cond_1b
    iget-object v6, v6, Locb;->a:Lnwz;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget v9, v0, Lodh;->b:F

    new-instance v12, Lclm;

    invoke-direct {v12}, Lclm;-><init>()V

    iget-object v13, v1, Lcln;->b:Lmrq;

    new-instance v14, Lmrg;

    invoke-direct {v14, v13}, Lmrg;-><init>(Lmrq;)V

    invoke-virtual {v14}, Lmrg;->e()V

    iput-object v14, v12, Lclm;->a:Lmrg;

    iput v9, v12, Lclm;->b:F

    iget-object v9, v1, Lcln;->c:Ljava/util/Map;

    invoke-interface {v9, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_1c
    iget v6, v5, Lobz;->a:I

    const/4 v8, 0x2

    and-int/2addr v6, v8

    if-eqz v6, :cond_1e

    iget-object v5, v5, Lobz;->c:Loca;

    if-nez v5, :cond_1d

    sget-object v5, Loca;->b:Loca;

    :cond_1d
    iget-wide v5, v5, Loca;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_1e
    move-wide v5, v10

    :goto_4
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1f
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v12, v1, Lcln;->c:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1f

    iget v8, v1, Lcln;->f:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v1, Lcln;->f:I

    goto :goto_5

    :cond_20
    cmp-long v7, v5, v10

    if-eqz v7, :cond_25

    iget-object v7, v0, Lodh;->d:Locj;

    if-nez v7, :cond_21

    sget-object v7, Locj;->m:Locj;

    :cond_21
    move-object/from16 v29, v7

    iget-object v7, v1, Lcln;->c:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lclm;

    if-eqz v7, :cond_22

    iget-object v8, v7, Lclm;->a:Lmrg;

    invoke-virtual {v8}, Lmrg;->f()V

    iget-object v8, v7, Lclm;->a:Lmrg;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v9}, Lmrg;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v10

    iget v7, v7, Lclm;->b:F

    move/from16 v28, v7

    move-wide/from16 v23, v10

    goto :goto_6

    :cond_22
    const/4 v7, 0x0

    move-wide/from16 v23, v10

    const/16 v28, 0x0

    :goto_6
    iget-object v7, v1, Lcln;->a:Lmrg;

    iget-boolean v8, v7, Lmrg;->a:Z

    if-eqz v8, :cond_23

    invoke-virtual {v7}, Lmrg;->f()V

    :cond_23
    iget-object v7, v1, Lcln;->a:Lmrg;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8}, Lmrg;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v21

    iget-wide v7, v1, Lcln;->d:J

    sub-long v9, v7, v5

    iget-wide v11, v1, Lcln;->e:J

    sub-long v11, v5, v11

    iput-wide v7, v1, Lcln;->e:J

    iget-object v7, v1, Lcln;->a:Lmrg;

    invoke-virtual {v7}, Lmrg;->d()V

    iget-object v7, v1, Lcln;->a:Lmrg;

    invoke-virtual {v7}, Lmrg;->e()V

    iget v7, v1, Lcln;->f:I

    const/4 v8, 0x0

    iput v8, v1, Lcln;->f:I

    new-instance v8, Lcll;

    long-to-int v12, v11

    long-to-int v10, v9

    move-object/from16 v20, v8

    move/from16 v25, v7

    move/from16 v26, v12

    move/from16 v27, v10

    invoke-direct/range {v20 .. v29}, Lcll;-><init>(JJIIIFLocj;)V

    iget-object v1, v1, Lcln;->g:Lcvr;

    iget-object v7, v1, Lcvr;->a:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v1, v1, Lcvr;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcky;

    invoke-interface {v9, v5, v6, v8}, Lcky;->a(JLcll;)V

    goto :goto_7

    :cond_24
    monitor-exit v7

    goto :goto_8

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_25
    :goto_8
    iget-object v0, v0, Lodh;->c:Lodi;

    if-nez v0, :cond_26

    sget-object v0, Lodi;->d:Lodi;

    :cond_26
    iget v1, v0, Lodi;->a:I

    const/4 v5, 0x1

    and-int/2addr v1, v5

    if-eqz v1, :cond_28

    iget-object v1, v2, Lckv;->c:Ljwb;

    iget v5, v0, Lodi;->b:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v1, v5}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-boolean v0, v0, Lodi;->c:Z

    if-eqz v0, :cond_27

    const/4 v5, 0x1

    goto :goto_9

    :cond_27
    const/4 v5, 0x0

    goto :goto_9

    :cond_28
    sget-object v0, Lckv;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0xef

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "No feedback score"

    invoke-interface {v0, v1}, Lnah;->o(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v5, 0x0

    :goto_9
    invoke-interface {v4}, Lkpb;->close()V

    if-eqz v5, :cond_2c

    iget-object v0, v2, Lckv;->r:Lcvr;

    iget-object v1, v0, Lcvr;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, v0, Lcvr;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/wear/ambient/AmbientMode$AmbientController;

    iget-object v4, v4, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Letp;

    iget-object v5, v5, Letp;->d:Ljuh;

    new-instance v6, Lerm;

    check-cast v4, Letp;

    const/16 v7, 0xd

    invoke-direct {v6, v4, v7}, Lerm;-><init>(Letp;I)V

    invoke-virtual {v5, v6}, Ljuh;->execute(Ljava/lang/Runnable;)V

    goto :goto_a

    :cond_29
    monitor-exit v1

    goto :goto_e

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_6
    sget-object v0, Lckv;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    invoke-interface {v0, v1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0xf1

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "Could not parse curation result, ignoring frame."

    invoke-interface {v0, v1}, Lnah;->o(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_c

    :cond_2a
    :goto_b
    if-eqz v4, :cond_2c

    :goto_c
    invoke-interface {v4}, Lkpb;->close()V

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object v1, v0

    if-eqz v4, :cond_2b

    :try_start_7
    invoke-interface {v4}, Lkpb;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_8
    const-class v0, Ljava/lang/Throwable;

    const-string v3, "addSuppressed"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_d

    :catch_1
    move-exception v0

    :cond_2b
    :goto_d
    throw v1

    :cond_2c
    :goto_e
    iget-object v0, v2, Lckv;->l:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    invoke-interface {v3}, Lkeb;->close()V

    return-void
.end method
