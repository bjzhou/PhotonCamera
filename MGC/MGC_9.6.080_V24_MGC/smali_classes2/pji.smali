.class public final Lpji;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Lpjj;

.field private c:Lsui;

.field private final d:Lsui;

.field private e:Lsui;

.field private final f:Z

.field private final g:Lpcu;

.field private final h:Lqdp;

.field private final i:Landroidx/wear/ambient/AmbientDelegate;

.field private final j:Lhwy;


# direct methods
.method public constructor <init>(Lhwy;Lpnu;Lpcu;Lpgn;Lpjj;Landroidx/wear/ambient/AmbientDelegate;)V
    .locals 1

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_0
    const-string p1, "SessCtrl3A"

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p2}, Lpnu;->H()Z

    move-result p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lpji;->j:Lhwy;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean p1, p0, Lpji;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    :goto_5
    iget-wide p2, p4, Lpgn;->k:J

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p1, Lqdp;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_8
    new-instance v0, Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    new-instance v0, Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Lpji;->g:Lpcu;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p6, p0, Lpji;->i:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    iget p4, p4, Lpgn;->l:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Lpji;->e:Lsui;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p1, p0, Lpji;->h:Lqdp;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Lpji;->a:Ljava/util/concurrent/ExecutorService;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    iput-object p5, p0, Lpji;->b:Lpjj;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    invoke-interface {p3, p1}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    invoke-direct {p1, p2, p3, p4}, Lqdp;-><init>(JI)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v0, p0, Lpji;->d:Lsui;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    :goto_16
    const-string v0, "Sess3AEx"

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v0}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v0, p0, Lpji;->c:Lsui;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method private static final i(Ljava/lang/Integer;)Z
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_2

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    :goto_6
    if-eq p0, v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_d
    const/4 v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    goto/32 :goto_10

    nop

    nop
.end method

.method private static final j(Lpjq;Lpgd;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "cmVzZXRfZm9jdXNfa2V5"

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lpjq;->b()Ljava/lang/Integer;

    move-result-object p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p1}, Lpgd;->b()Ljava/lang/Integer;

    move-result-object p1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    const/4 p0, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method final declared-synchronized a()Lpjp;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lpji;->i:Landroidx/wear/ambient/AmbientDelegate;

    nop

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->G()Lpjp;

    move-result-object v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method final declared-synchronized b(Lphf;Z)Lsui;
    .locals 19

    goto/32 :goto_c

    nop

    nop

    :goto_0
    move-object v3, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2

    nop

    nop
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-static {v0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_2
    if-nez v4, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_2
    iget-boolean v4, v1, Lpji;->f:Z

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    monitor-exit p0

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_1

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-object v2, v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    :try_start_4
    invoke-interface/range {v17 .. v17}, Lpci;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0xd

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_d
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    move v4, v5

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_f
    if-nez v8, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_1
    :try_start_5
    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    nop

    nop

    nop

    invoke-virtual {v13, v14, v15}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_10
    :try_start_6
    iget-object v14, v1, Lpji;->h:Lqdp;

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v12, v4, v2, v11}, Lqdp;->d(Lpgd;ZZZ)Lpjg;

    move-result-object v14

    nop

    iget-object v15, v1, Lpji;->h:Lqdp;

    nop

    nop

    invoke-virtual {v15, v12, v6, v7, v8}, Lqdp;->c(Lpgd;ZZZ)Lpjg;

    move-result-object v7

    nop

    nop

    nop

    invoke-static {v13}, Lqgk;->g(Lqgk;)Lqgk;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    const/4 v9, 0x2

    nop

    if-eqz v4, :cond_4

    nop

    nop

    iget v15, v0, Lphf;->c:I

    nop

    nop

    nop

    nop

    nop

    if-eq v15, v9, :cond_3

    nop

    nop

    nop

    nop

    const-string v9, "aWRsZV9mb2N1c19rZXk"

    nop

    nop

    nop

    nop

    invoke-static {v9}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_2

    nop

    nop

    nop

    nop

    add-int/lit8 v9, v9, -0x1

    nop

    nop

    if-eqz v9, :cond_3

    nop

    nop

    nop

    nop

    goto :goto_11

    nop

    nop

    :cond_2
    invoke-virtual {v12}, Lpjq;->b()Ljava/lang/Integer;

    move-result-object v15

    nop

    nop

    nop

    nop

    invoke-static {v15}, Lpji;->i(Ljava/lang/Integer;)Z

    move-result v15

    nop

    nop

    nop

    if-eqz v15, :cond_3

    nop

    :goto_11
    iget-object v15, v1, Lpji;->g:Lpcu;

    nop

    nop

    const-string v9, "For continuous AF mode, unlocking AF and waiting to converge."

    nop

    nop

    nop

    invoke-interface {v15, v9}, Lpcu;->b(Ljava/lang/String;)V

    iget-object v9, v1, Lpji;->b:Lpjj;

    nop

    nop

    nop

    iget-object v15, v1, Lpji;->h:Lqdp;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v15, v12, v5, v6, v6}, Lqdp;->c(Lpgd;ZZZ)Lpjg;

    move-result-object v15

    nop

    nop

    nop

    nop

    nop

    invoke-static {v13}, Lqgk;->g(Lqgk;)Lqgk;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/16 v16, 0x2

    nop

    :try_start_7
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    invoke-virtual {v5, v6, v3}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    new-instance v3, Lpgk;

    nop

    nop

    nop

    nop

    invoke-direct {v3, v15, v15}, Lpgk;-><init>(Lpcm;Lpcm;)V

    invoke-virtual {v5, v3}, Lqgk;->h(Lpuq;)V

    invoke-virtual {v5}, Lqgk;->b()Lphz;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v3}, Lpjj;->g(Lphz;)V

    invoke-static {v13}, Lqgk;->g(Lqgk;)Lqgk;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    move-object/from16 v18, v12

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v5, v12}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    new-instance v5, Lpgk;

    nop

    nop

    nop

    invoke-direct {v5, v15, v15}, Lpgk;-><init>(Lpcm;Lpcm;)V

    invoke-virtual {v3, v5}, Lqgk;->h(Lpuq;)V

    invoke-virtual {v3}, Lqgk;->b()Lphz;

    move-result-object v3

    nop

    invoke-virtual {v9, v3}, Lpjj;->e(Lphz;)V

    iget-object v3, v15, Lpjg;->a:Lsui;

    nop

    nop

    nop

    nop

    iget-object v5, v1, Lpji;->a:Ljava/util/concurrent/ExecutorService;

    nop

    nop

    new-instance v6, Lmaq;

    nop

    nop

    nop

    const/16 v9, 0xc

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v6, v3, v9}, Lmaq;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    nop

    nop

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    iget-object v3, v1, Lpji;->g:Lpcu;

    nop

    nop

    nop

    nop

    nop

    const-string v5, "AF converged"

    nop

    nop

    invoke-interface {v3, v5}, Lpcu;->b(Ljava/lang/String;)V

    goto :goto_13

    nop

    :cond_3
    move-object/from16 v17, v3

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v18, v12

    nop

    nop

    :goto_13
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v3, v6}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 v3, 0x1

    nop

    nop

    nop

    goto :goto_14

    nop

    nop

    nop

    :cond_4
    move-object/from16 v17, v3

    nop

    nop

    nop

    nop

    move-object/from16 v18, v12

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz v10, :cond_5

    nop

    nop

    nop

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v3, v6}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_15

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_32

    nop

    nop

    nop

    :cond_5
    if-eqz v3, :cond_6

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v3, Lpgk;

    nop

    nop

    nop

    invoke-direct {v3, v7, v7}, Lpgk;-><init>(Lpcm;Lpcm;)V

    invoke-virtual {v8, v3}, Lqgk;->h(Lpuq;)V

    new-instance v3, Lpgk;

    nop

    nop

    invoke-direct {v3, v14, v14}, Lpgk;-><init>(Lpcm;Lpcm;)V

    invoke-virtual {v8, v3}, Lqgk;->h(Lpuq;)V

    iget-object v3, v1, Lpji;->b:Lpjj;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Lqgk;->b()Lphz;

    move-result-object v5

    nop

    nop

    nop

    invoke-virtual {v3, v5}, Lpjj;->g(Lphz;)V

    iget-object v3, v1, Lpji;->g:Lpcu;

    nop

    nop

    nop

    const-string v5, "Trigger request sent."

    nop

    nop

    invoke-interface {v3, v5}, Lpcu;->b(Ljava/lang/String;)V

    :cond_6
    new-instance v3, Lpgk;

    nop

    nop

    nop

    nop

    invoke-direct {v3, v7, v7}, Lpgk;-><init>(Lpcm;Lpcm;)V

    invoke-virtual {v13, v3}, Lqgk;->h(Lpuq;)V

    new-instance v3, Lpgk;

    nop

    invoke-direct {v3, v14, v14}, Lpgk;-><init>(Lpcm;Lpcm;)V

    invoke-virtual {v13, v3}, Lqgk;->h(Lpuq;)V

    iget-object v3, v1, Lpji;->b:Lpjj;

    nop

    nop

    nop

    invoke-virtual {v13}, Lqgk;->b()Lphz;

    move-result-object v5

    nop

    invoke-virtual {v3, v5}, Lpjj;->e(Lphz;)V

    iget v3, v0, Lphf;->b:I

    nop

    nop

    const/4 v5, 0x4

    nop

    nop

    nop

    nop

    if-eq v3, v5, :cond_7

    nop

    nop

    nop

    nop

    nop

    iget v0, v0, Lphf;->d:I

    nop

    nop

    nop

    nop

    nop

    if-eq v0, v5, :cond_7

    nop

    nop

    nop

    nop

    if-eqz v10, :cond_8

    nop

    nop

    :cond_7
    iget-object v0, v1, Lpji;->g:Lpcu;

    nop

    nop

    nop

    nop

    const-string v3, "Wait for for AE/AWB to converge."

    nop

    nop

    nop

    invoke-interface {v0, v3}, Lpcu;->b(Ljava/lang/String;)V

    iget-object v0, v1, Lpji;->a:Ljava/util/concurrent/ExecutorService;

    nop

    nop

    new-instance v3, Lmaq;

    nop

    nop

    const/16 v5, 0xd

    nop

    nop

    invoke-direct {v3, v7, v5}, Lmaq;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    iget-object v0, v1, Lpji;->g:Lpcu;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "AE/AWB converged."

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v3}, Lpcu;->b(Ljava/lang/String;)V

    :cond_8
    if-nez v2, :cond_9

    nop

    nop

    nop

    if-eqz v11, :cond_c

    nop

    nop

    nop

    :cond_9
    invoke-static {v13}, Lqgk;->g(Lqgk;)Lqgk;

    move-result-object v0

    nop

    if-eqz v2, :cond_a

    nop

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    nop

    invoke-virtual {v0, v3, v6}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_a
    if-eqz v11, :cond_b

    nop

    nop

    nop

    nop

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v3, v6}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_b
    new-instance v3, Lpgk;

    nop

    invoke-direct {v3, v14, v14}, Lpgk;-><init>(Lpcm;Lpcm;)V

    invoke-virtual {v0, v3}, Lqgk;->h(Lpuq;)V

    iget-object v3, v1, Lpji;->g:Lpcu;

    nop

    const-string v5, "Sending the request to lock AE/AWB."

    nop

    nop

    invoke-interface {v3, v5}, Lpcu;->b(Ljava/lang/String;)V

    iget-object v3, v1, Lpji;->b:Lpjj;

    nop

    nop

    nop

    invoke-virtual {v0}, Lqgk;->b()Lphz;

    move-result-object v0

    nop

    nop

    invoke-virtual {v3, v0}, Lpjj;->e(Lphz;)V

    :cond_c
    iget-object v0, v1, Lpji;->i:Landroidx/wear/ambient/AmbientDelegate;

    nop

    if-nez v4, :cond_e

    nop

    nop

    move-object/from16 v3, v18

    nop

    nop

    nop

    iget-object v4, v3, Lpjq;->a:Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto :goto_16

    nop

    nop

    :cond_d
    const/4 v6, 0x0

    nop

    nop

    nop

    goto :goto_17

    nop

    :cond_e
    move-object/from16 v3, v18

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v6, 0x1

    nop

    :goto_17
    if-nez v2, :cond_10

    nop

    nop

    nop

    iget-object v2, v3, Lpjq;->b:Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto :goto_18

    nop

    nop

    nop

    nop

    :cond_f
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto :goto_19

    nop

    nop

    :cond_10
    :goto_18
    const/4 v2, 0x1

    nop

    :goto_19
    if-nez v11, :cond_12

    nop

    nop

    nop

    iget-object v3, v3, Lpjq;->c:Ljava/lang/Boolean;

    nop

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_11

    nop

    nop

    goto :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_11
    move/from16 v4, p2

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    goto :goto_1b

    nop

    nop

    nop

    :cond_12
    :goto_1a
    move/from16 v4, p2

    nop

    const/4 v3, 0x1

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v6, v2, v3, v4}, Landroidx/wear/ambient/AmbientDelegate;->J(ZZZZ)V

    const/4 v0, 0x2

    nop

    new-array v0, v0, [Lsui;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v7, Lpjg;->a:Lsui;

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    aput-object v2, v0, v3

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v14, Lpjg;->a:Lsui;

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    aput-object v2, v0, v3

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lsgj;->L([Lsui;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    new-instance v2, Ljjo;

    nop

    nop

    nop

    nop

    const/16 v3, 0xc

    nop

    nop

    nop

    nop

    invoke-direct {v2, v3}, Ljjo;-><init>(I)V

    sget-object v3, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v2, v3}, Lsso;->j(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-interface/range {v17 .. v17}, Lpci;->close()V
    :try_end_8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move v4, v6

    nop

    nop

    :goto_1d
    :try_start_9
    iget v7, v0, Lphf;->b:I

    nop

    nop

    nop

    nop

    nop

    const/4 v8, 0x3

    nop

    nop

    nop

    nop

    const/4 v9, 0x4

    nop

    nop

    nop

    nop

    nop

    if-eq v7, v9, :cond_14

    nop

    nop

    nop

    if-ne v7, v8, :cond_13

    nop

    nop

    goto :goto_1e

    nop

    :cond_13
    move v7, v6

    nop

    nop

    nop

    nop

    nop

    goto :goto_1f

    nop

    :cond_14
    :goto_1e
    move v7, v5

    nop

    nop

    nop

    :goto_1f
    iget v10, v0, Lphf;->d:I

    nop

    nop

    nop

    nop

    nop

    if-eq v10, v9, :cond_16

    nop

    if-ne v10, v8, :cond_15

    nop

    nop

    nop

    nop

    nop

    goto :goto_20

    nop

    nop

    nop

    nop

    :cond_15
    move v8, v6

    nop

    nop

    nop

    nop

    nop

    goto :goto_21

    nop

    nop

    nop

    nop

    :cond_16
    :goto_20
    move v8, v5

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-boolean v10, v0, Lphf;->a:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v7, :cond_17

    nop

    nop

    nop

    nop

    nop

    if-nez v8, :cond_17

    nop

    nop

    nop

    nop

    if-eqz v10, :cond_1a

    nop

    nop

    nop

    :cond_17
    iget-object v11, v1, Lpji;->g:Lpcu;

    nop

    new-instance v12, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", awbRescan = "

    nop

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", usePreCaptureMeteringSequence = "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-interface {v11, v2}, Lpcu;->b(Ljava/lang/String;)V

    if-nez v7, :cond_19

    nop

    nop

    nop

    if-eqz v10, :cond_18

    nop

    nop

    goto :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_18
    move v2, v6

    nop

    nop

    goto :goto_23

    nop

    nop

    nop

    :cond_19
    :goto_22
    move v2, v5

    nop

    nop

    :goto_23
    invoke-virtual {v1, v6, v2, v8, v6}, Lpji;->c(ZZZZ)Lsui;

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lphf;->b()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {p1 .. p1}, Lphf;->c()Z

    move-result v11

    nop

    nop

    nop

    nop

    nop

    iget-object v12, v1, Lpji;->i:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    invoke-virtual {v12}, Landroidx/wear/ambient/AmbientDelegate;->H()Lpjq;

    move-result-object v12

    nop

    nop

    nop

    nop

    iget-object v13, v1, Lpji;->b:Lpjj;

    nop

    nop

    nop

    nop

    invoke-virtual {v13}, Lpjj;->i()Lqgk;

    move-result-object v13

    nop

    nop

    nop

    invoke-static {v13}, Lqgk;->g(Lqgk;)Lqgk;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    if-nez v7, :cond_1b

    nop

    if-eqz v10, :cond_1c

    nop

    nop

    nop

    :cond_1b
    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    nop

    nop

    invoke-virtual {v13, v14, v15}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :cond_1c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_24
    move-object/from16 v17, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_1d

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_26
    monitor-enter p0

    nop

    nop

    :try_start_a
    const/4 v3, 0x0

    nop

    nop

    sget-object v3, Lcom/google/android/apps/camera/debugui/aq/mYisgsXg;->ULWYzaKmEfxZ:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    iget-object v4, v1, Lpji;->g:Lpcu;

    nop

    invoke-interface {v4, v3}, Lpcu;->b(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    iget-object v3, v1, Lpji;->i:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    invoke-virtual {v3}, Landroidx/wear/ambient/AmbientDelegate;->F()Lpci;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop
    :try_end_b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    iget-object v4, v1, Lpji;->d:Lsui;

    nop

    const/4 v5, 0x1

    nop

    invoke-interface {v4, v5}, Lsui;->cancel(Z)Z

    invoke-virtual/range {p1 .. p1}, Lphf;->d()Z

    move-result v4

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_27
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_28
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_29
    if-lez v0, :cond_1d

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_8

    nop

    :goto_2a
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez v4, :cond_1e

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2c
    const-string v2, "Unlocking 3a, deciding params aeRescan = "

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    return-object v0

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    move-object/from16 v0, p1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_30
    move-object/from16 v17, v3

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_31
    move-object/from16 v17, v3

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_a

    nop

    nop

    :goto_33
    goto/16 :goto_b

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_35
    throw v0

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_9

    nop

    nop
.end method

.method final declared-synchronized c(ZZZZ)Lsui;
    .locals 4

    goto/32 :goto_2

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x15

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw p1

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    :goto_7
    return-object p1

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_0
    invoke-interface {v0}, Lpci;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_c

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lpji;->i:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->F()Lpci;

    move-result-object v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, p0, Lpji;->e:Lsui;

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lsui;->cancel(Z)Z

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    iget-boolean p1, p0, Lpji;->f:Z

    nop

    if-eqz p1, :cond_0

    nop

    nop

    goto :goto_9

    nop

    nop

    nop

    :cond_0
    move v2, v1

    nop

    nop

    :goto_9
    iget-object p1, p0, Lpji;->i:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientDelegate;->G()Lpjp;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lpjp;->c()Lpjq;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-static {p1}, Lpjp;->b(Lpjq;)Lpjp;

    move-result-object p1

    nop

    if-eqz p2, :cond_1

    nop

    nop

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    iput-object v3, p1, Lpjp;->g:Ljava/lang/Boolean;

    nop

    nop

    :cond_1
    if-eqz p3, :cond_2

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    nop

    nop

    iput-object v3, p1, Lpjp;->h:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    :cond_2
    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    iput-object v1, p1, Lpjp;->f:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    :cond_3
    invoke-virtual {p1}, Lpjp;->c()Lpjq;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpji;->b:Lpjj;

    nop

    nop

    invoke-virtual {v1}, Lpjj;->i()Lqgk;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Lqgk;->g(Lqgk;)Lqgk;

    move-result-object v1

    nop

    nop

    nop

    invoke-static {v1, p1}, Landroidx/wear/ambient/AmbientDelegate;->P(Lqgk;Lpjq;)V

    iget-object v3, p0, Lpji;->h:Lqdp;

    nop

    invoke-virtual {v3, p1, v2, p2, p3}, Lqdp;->b(Lpgd;ZZZ)Lpjg;

    move-result-object p2

    nop

    nop

    nop

    new-instance p3, Lpgk;

    nop

    invoke-direct {p3, p2, p2}, Lpgk;-><init>(Lpcm;Lpcm;)V

    invoke-virtual {v1, p3}, Lqgk;->h(Lpuq;)V

    if-eqz v2, :cond_4

    nop

    nop

    nop

    nop

    invoke-static {v1}, Lqgk;->g(Lqgk;)Lqgk;

    move-result-object p3

    nop

    nop

    nop

    nop

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    invoke-virtual {p3, v2, v3}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v2, p0, Lpji;->b:Lpjj;

    nop

    nop

    nop

    invoke-virtual {p3}, Lqgk;->b()Lphz;

    move-result-object p3

    nop

    invoke-virtual {v2, p3}, Lpjj;->g(Lphz;)V

    :cond_4
    iget-object p3, p0, Lpji;->b:Lpjj;

    nop

    invoke-virtual {v1}, Lqgk;->b()Lphz;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {p3, v1}, Lpjj;->e(Lphz;)V

    iget-object p3, p0, Lpji;->i:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    iget-object v1, p1, Lpjq;->a:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    iget-object v2, p1, Lpjq;->b:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    nop

    nop

    nop

    iget-object p1, p1, Lpjq;->c:Ljava/lang/Boolean;

    nop

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p3, v1, v2, p1, p4}, Landroidx/wear/ambient/AmbientDelegate;->J(ZZZZ)V

    iget-object p1, p2, Lpjg;->a:Lsui;

    nop

    nop

    nop

    nop

    iput-object p1, p0, Lpji;->e:Lsui;

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v0}, Lpci;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_0

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_d

    nop

    nop

    :catchall_1
    move-exception p2

    nop

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d
    throw p1

    nop

    nop

    nop

    :catchall_2
    move-exception p1

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    :goto_0
    iget-object v0, p0, Lpji;->d:Lsui;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lpji;->e:Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0, v1}, Lsui;->cancel(Z)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0, v1}, Lsui;->cancel(Z)Z

    goto/32 :goto_1

    nop

    nop

    :goto_6
    invoke-interface {p0, v1}, Lsui;->cancel(Z)Z

    goto/32 :goto_8

    nop

    nop

    :goto_7
    iget-object v0, p0, Lpji;->c:Lsui;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_b
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0xa

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method final declared-synchronized d(Lpgd;Z)Lsui;
    .locals 7

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lpji;->i:Landroidx/wear/ambient/AmbientDelegate;

    nop

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->F()Lpci;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Lpji;->c:Lsui;

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    invoke-interface {v1, v2}, Lsui;->cancel(Z)Z

    iget-object v1, p0, Lpji;->j:Lhwy;

    nop

    iget-object v3, p0, Lpji;->i:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Landroidx/wear/ambient/AmbientDelegate;->H()Lpjq;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1, v3}, Lhwy;->E(Lpgd;Lpgd;)Lpgd;

    move-result-object p1

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpji;->i:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    invoke-virtual {v1}, Landroidx/wear/ambient/AmbientDelegate;->G()Lpjp;

    move-result-object v1

    nop

    invoke-virtual {v1}, Lpjp;->c()Lpjq;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-static {v1, p1}, Lhwy;->F(Lpjq;Lpgd;)Z

    move-result v3

    nop

    invoke-static {v1, p1}, Lhwy;->G(Lpjq;Lpgd;)Z

    move-result v4

    nop

    nop

    nop

    invoke-static {v1, p1}, Lpji;->j(Lpjq;Lpgd;)Z

    move-result v5

    nop

    nop

    nop

    invoke-static {p1}, Lpjp;->a(Lpgd;)Lpjp;

    move-result-object p1

    nop

    nop

    iget-object v1, v1, Lpjq;->a:Ljava/lang/Boolean;

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    if-nez v5, :cond_0

    nop

    nop

    move v6, v2

    nop

    nop

    nop

    :cond_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    iput-object v1, p1, Lpjp;->f:Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    nop

    iput-object v1, p1, Lpjp;->g:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    iput-object v1, p1, Lpjp;->h:Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {p1}, Lpjp;->c()Lpjq;

    move-result-object p1

    nop

    nop

    iget-object v1, p0, Lpji;->b:Lpjj;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lpjj;->i()Lqgk;

    move-result-object v1

    nop

    nop

    nop

    invoke-static {v1}, Lqgk;->g(Lqgk;)Lqgk;

    move-result-object v1

    nop

    nop

    invoke-static {v1, p1}, Landroidx/wear/ambient/AmbientDelegate;->P(Lqgk;Lpjq;)V

    iget-object v6, p0, Lpji;->h:Lqdp;

    nop

    nop

    nop

    nop

    nop

    xor-int/2addr v3, v2

    nop

    nop

    nop

    xor-int/2addr v2, v4

    nop

    nop

    nop

    nop

    invoke-virtual {v6, p1, v5, v3, v2}, Lqdp;->b(Lpgd;ZZZ)Lpjg;

    move-result-object v2

    nop

    new-instance v3, Lpgk;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v2, v2}, Lpgk;-><init>(Lpcm;Lpcm;)V

    invoke-virtual {v1, v3}, Lqgk;->h(Lpuq;)V

    iget-object v3, p0, Lpji;->b:Lpjj;

    nop

    nop

    invoke-virtual {v1}, Lqgk;->b()Lphz;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Lpjj;->e(Lphz;)V

    if-eqz v5, :cond_1

    nop

    nop

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    const/4 v4, 0x2

    nop

    nop

    nop

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    invoke-virtual {v1, v3, v4}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {v1, p1}, Landroidx/wear/ambient/AmbientDelegate;->P(Lqgk;Lpjq;)V

    iget-object v3, p0, Lpji;->b:Lpjj;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lqgk;->b()Lphz;

    move-result-object v1

    nop

    nop

    invoke-virtual {v3, v1}, Lpjj;->g(Lphz;)V

    :cond_1
    iget-object v1, p0, Lpji;->i:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1, p2}, Landroidx/wear/ambient/AmbientDelegate;->I(Lpjq;Z)V

    iget-object p1, v2, Lpjg;->a:Lsui;

    nop

    nop

    nop

    nop

    nop

    iput-object p1, p0, Lpji;->c:Lsui;

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v0}, Lpci;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_2

    nop

    nop

    :goto_6
    return-object p1

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_3
    invoke-interface {v0}, Lpci;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw p1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_a

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p2

    nop

    nop

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw p1

    nop

    :catchall_2
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_2
    goto/32 :goto_d

    nop

    :goto_c
    const v0, 0xa

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method final declared-synchronized e(Lpgd;)Lsui;
    .locals 8

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    goto :goto_b

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw p1

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_1

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lpji;->i:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->F()Lpci;

    move-result-object v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-boolean v1, p0, Lpji;->f:Z

    nop

    nop

    iget-object v2, p0, Lpji;->j:Lhwy;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lpji;->i:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Landroidx/wear/ambient/AmbientDelegate;->H()Lpjq;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v2, p1, v3}, Lhwy;->E(Lpgd;Lpgd;)Lpgd;

    move-result-object p1

    nop

    nop

    nop

    iget-object v2, p0, Lpji;->i:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Landroidx/wear/ambient/AmbientDelegate;->G()Lpjp;

    move-result-object v2

    nop

    invoke-virtual {v2}, Lpjp;->c()Lpjq;

    move-result-object v2

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    if-nez v1, :cond_2

    nop

    iget-object v5, v2, Lpjq;->a:Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    nop

    nop

    nop

    if-eqz v5, :cond_1

    nop

    nop

    nop

    nop

    invoke-static {v2, p1}, Lpji;->j(Lpjq;Lpgd;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-nez v5, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto :goto_d

    nop

    nop

    :cond_1
    move v5, v4

    nop

    nop

    nop

    nop

    nop

    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :goto_d
    move v5, v3

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v2, p1}, Lhwy;->F(Lpjq;Lpgd;)Z

    move-result v6

    nop

    nop

    invoke-static {v2, p1}, Lhwy;->G(Lpjq;Lpgd;)Z

    move-result v2

    nop

    nop

    nop

    invoke-static {p1}, Lpjp;->a(Lpgd;)Lpjp;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    iput-object v5, v7, Lpjp;->f:Ljava/lang/Boolean;

    nop

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    iput-object v5, v7, Lpjp;->g:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    iput-object v2, v7, Lpjp;->h:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Lpjp;->c()Lpjq;

    move-result-object v2

    nop

    nop

    nop

    nop

    iget-object v5, p0, Lpji;->b:Lpjj;

    nop

    invoke-virtual {v5}, Lpjj;->i()Lqgk;

    move-result-object v5

    nop

    invoke-static {v5}, Lqgk;->g(Lqgk;)Lqgk;

    move-result-object v5

    nop

    iget-object v6, p0, Lpji;->h:Lqdp;

    nop

    nop

    invoke-virtual {v6, p1, v1, v4, v4}, Lqdp;->d(Lpgd;ZZZ)Lpjg;

    move-result-object p1

    nop

    nop

    nop

    new-instance v6, Lpgk;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v6, p1, p1}, Lpgk;-><init>(Lpcm;Lpcm;)V

    invoke-virtual {v5, v6}, Lqgk;->h(Lpuq;)V

    invoke-static {v5, v2}, Landroidx/wear/ambient/AmbientDelegate;->P(Lqgk;Lpjq;)V

    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5}, Lqgk;->g(Lqgk;)Lqgk;

    move-result-object v1

    nop

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    invoke-virtual {v1, v6, v3}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v3, p0, Lpji;->b:Lpjj;

    nop

    invoke-virtual {v1}, Lqgk;->b()Lphz;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v3, v1}, Lpjj;->g(Lphz;)V

    :cond_3
    iget-object v1, p0, Lpji;->b:Lpjj;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lqgk;->b()Lphz;

    move-result-object v3

    nop

    invoke-virtual {v1, v3}, Lpjj;->e(Lphz;)V

    iget-object v1, p0, Lpji;->i:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2, v4}, Landroidx/wear/ambient/AmbientDelegate;->I(Lpjq;Z)V

    iget-object p1, p1, Lpjg;->a:Lsui;

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-interface {v0}, Lpci;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    return-object p1

    nop

    nop

    nop

    :catchall_2
    move-exception p1

    nop

    nop

    nop

    :try_start_4
    invoke-interface {v0}, Lpci;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_a

    nop

    nop

    :goto_10
    const v0, 0x16

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method final declared-synchronized f(Lpgd;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    :try_start_0
    invoke-virtual {p0, p1}, Lpji;->h(Lpgd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method final declared-synchronized g(Lpgd;)V
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    goto :goto_7

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p1

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_8

    nop

    nop

    :goto_8
    throw p1

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lpji;->i:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->F()Lpci;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lpji;->j:Lhwy;

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lpji;->i:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    invoke-virtual {v2}, Landroidx/wear/ambient/AmbientDelegate;->H()Lpjq;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1, v2}, Lhwy;->E(Lpgd;Lpgd;)Lpgd;

    move-result-object p1

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpji;->i:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroidx/wear/ambient/AmbientDelegate;->H()Lpjq;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-static {p1}, Lpjp;->a(Lpgd;)Lpjp;

    move-result-object p1

    nop

    nop

    iget-object v2, v1, Lpjq;->a:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    iput-object v2, p1, Lpjp;->f:Ljava/lang/Boolean;

    nop

    iget-object v2, v1, Lpjq;->b:Ljava/lang/Boolean;

    nop

    iput-object v2, p1, Lpjp;->g:Ljava/lang/Boolean;

    nop

    nop

    nop

    iget-object v1, v1, Lpjq;->c:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    iput-object v1, p1, Lpjp;->h:Ljava/lang/Boolean;

    nop

    nop

    invoke-virtual {p1}, Lpjp;->c()Lpjq;

    move-result-object p1

    nop

    iget-object v1, p0, Lpji;->b:Lpjj;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lpjj;->i()Lqgk;

    move-result-object v1

    nop

    invoke-static {v1}, Lqgk;->g(Lqgk;)Lqgk;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, p1}, Landroidx/wear/ambient/AmbientDelegate;->P(Lqgk;Lpjq;)V

    iget-object v2, p0, Lpji;->h:Lqdp;

    nop

    const/4 v3, 0x0

    nop

    nop

    invoke-virtual {v2, p1, v3, v3, v3}, Lqdp;->b(Lpgd;ZZZ)Lpjg;

    move-result-object p1

    nop

    nop

    nop

    new-instance v2, Lpgk;

    nop

    nop

    invoke-direct {v2, p1, p1}, Lpgk;-><init>(Lpcm;Lpcm;)V

    invoke-virtual {v1, v2}, Lqgk;->h(Lpuq;)V

    iget-object p1, p0, Lpji;->b:Lpjj;

    nop

    nop

    invoke-virtual {v1}, Lqgk;->b()Lphz;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {p1, v1}, Lpjj;->g(Lphz;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-interface {v0}, Lpci;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_d

    nop

    nop

    :goto_b
    const v0, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_d
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :catchall_2
    move-exception p1

    nop

    nop

    :try_start_4
    invoke-interface {v0}, Lpci;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_6

    nop

    nop
.end method

.method final declared-synchronized h(Lpgd;)V
    .locals 14

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v7, :cond_1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_1
    :try_start_0
    iget-object v1, p0, Lpji;->a:Ljava/util/concurrent/ExecutorService;

    nop

    nop

    nop

    new-instance v7, Lmaq;

    nop

    nop

    const/16 v9, 0xb

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v7, v8, v9}, Lmaq;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lpji;->i:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->F()Lpci;

    move-result-object v0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lpji;->c:Lsui;

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lsui;->cancel(Z)Z

    iget-object v1, p0, Lpji;->j:Lhwy;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lpji;->i:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Landroidx/wear/ambient/AmbientDelegate;->H()Lpjq;

    move-result-object v3

    nop

    nop

    invoke-virtual {v1, p1, v3}, Lhwy;->E(Lpgd;Lpgd;)Lpgd;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpji;->i:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    invoke-virtual {v1}, Landroidx/wear/ambient/AmbientDelegate;->G()Lpjp;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lpjp;->c()Lpjq;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-static {p1}, Lpjp;->a(Lpgd;)Lpjp;

    move-result-object v3

    nop

    nop

    iget-object v4, v1, Lpjq;->a:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    iput-object v4, v3, Lpjp;->f:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v1, Lpjq;->b:Ljava/lang/Boolean;

    nop

    nop

    nop

    iput-object v4, v3, Lpjp;->g:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v1, Lpjq;->c:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    iput-object v4, v3, Lpjp;->h:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lpjp;->c()Lpjq;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lpji;->b:Lpjj;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lpjj;->i()Lqgk;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lqgk;->g(Lqgk;)Lqgk;

    move-result-object v4

    nop

    invoke-static {v4, v3}, Landroidx/wear/ambient/AmbientDelegate;->P(Lqgk;Lpjq;)V

    iget-object v5, v3, Lpjq;->a:Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    nop

    nop

    iget-object v6, v1, Lpjq;->a:Ljava/lang/Boolean;

    nop

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_2

    nop

    nop

    invoke-interface {p1}, Lpgd;->b()Ljava/lang/Integer;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lpjq;->b()Ljava/lang/Integer;

    move-result-object v8

    nop

    nop

    invoke-virtual {v6, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_2

    nop

    move v5, v7

    nop

    nop

    :cond_2
    if-eqz v5, :cond_3

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lpjq;->b()Ljava/lang/Integer;

    move-result-object v6

    nop

    nop

    invoke-static {v6}, Lpji;->i(Ljava/lang/Integer;)Z

    move-result v6

    nop

    if-eqz v6, :cond_3

    nop

    nop

    nop

    move v7, v2

    nop

    :cond_3
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v6, v8}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v6, p0, Lpji;->h:Lqdp;

    nop

    nop

    nop

    iget-object v8, v1, Lpjq;->a:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v1, Lpjq;->b:Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    nop

    nop

    iget-object v1, v1, Lpjq;->c:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    new-instance v10, Ljava/util/HashSet;

    nop

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-interface {v3}, Lpgd;->b()Ljava/lang/Integer;

    move-result-object v12

    nop

    nop

    nop

    nop

    new-instance v13, Lsbt;

    nop

    nop

    invoke-direct {v13, v12}, Lsbt;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v11, v13}, Lqdp;->a(Landroid/hardware/camera2/CaptureResult$Key;Lryy;)Lphd;

    move-result-object v11

    nop

    nop

    nop

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-interface {v3}, Lpgd;->a()Ljava/lang/Integer;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    new-instance v13, Lsbt;

    nop

    nop

    nop

    invoke-direct {v13, v12}, Lsbt;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v11, v13}, Lqdp;->a(Landroid/hardware/camera2/CaptureResult$Key;Lryy;)Lphd;

    move-result-object v11

    nop

    nop

    nop

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    invoke-interface {v3}, Lpgd;->c()Ljava/lang/Integer;

    move-result-object v12

    nop

    new-instance v13, Lsbt;

    nop

    nop

    nop

    invoke-direct {v13, v12}, Lsbt;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v11, v13}, Lqdp;->a(Landroid/hardware/camera2/CaptureResult$Key;Lryy;)Lphd;

    move-result-object v11

    nop

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v3, v8, v9, v1}, Lqdp;->e(Lpgd;ZZZ)Ljava/util/Set;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-interface {v10, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lpjg;

    nop

    nop

    nop

    nop

    invoke-static {v10}, Lryy;->E(Ljava/util/Collection;)Lryy;

    move-result-object v6

    nop

    nop

    invoke-direct {v1, v6}, Lpjg;-><init>(Lryy;)V

    new-instance v6, Lpgk;

    nop

    nop

    nop

    nop

    invoke-direct {v6, v1, v1}, Lpgk;-><init>(Lpcm;Lpcm;)V

    invoke-virtual {v4, v6}, Lqgk;->h(Lpuq;)V

    iget-object v1, p0, Lpji;->h:Lqdp;

    nop

    new-instance v8, Lpjg;

    nop

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    invoke-interface {v3}, Lpgd;->b()Ljava/lang/Integer;

    move-result-object v10

    nop

    nop

    new-instance v11, Lsbt;

    nop

    nop

    nop

    invoke-direct {v11, v10}, Lsbt;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v9, v11}, Lqdp;->a(Landroid/hardware/camera2/CaptureResult$Key;Lryy;)Lphd;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    sget-object v10, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    nop

    nop

    nop

    new-instance v12, Lsbt;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v12, v11}, Lsbt;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v10, v12}, Lqdp;->a(Landroid/hardware/camera2/CaptureResult$Key;Lryy;)Lphd;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-static {v9, v1}, Lryy;->G(Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object v1

    nop

    nop

    invoke-direct {v8, v1}, Lpjg;-><init>(Lryy;)V

    if-eqz v7, :cond_4

    nop

    new-instance v1, Lpgk;

    nop

    nop

    nop

    nop

    invoke-direct {v1, v8, v8}, Lpgk;-><init>(Lpcm;Lpcm;)V

    invoke-virtual {v4, v1}, Lqgk;->h(Lpuq;)V

    :cond_4
    iget-object v1, p0, Lpji;->b:Lpjj;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lqgk;->b()Lphz;

    move-result-object v9

    nop

    nop

    nop

    invoke-virtual {v1, v9}, Lpjj;->e(Lphz;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1d

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_3
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw p1

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :catchall_2
    move-exception p1

    nop

    nop

    nop

    :try_start_4
    invoke-interface {v0}, Lpci;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_11

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_5
    invoke-static {p1}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    goto :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v5, :cond_5

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lpgd;->b()Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1}, Lpji;->i(Ljava/lang/Integer;)Z

    move-result p1

    nop

    if-nez p1, :cond_5

    nop

    nop

    invoke-static {v4}, Lqgk;->g(Lqgk;)Lqgk;

    move-result-object p1

    nop

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v1, v11}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {p1, v6}, Lqgk;->h(Lpuq;)V

    iget-object v1, p0, Lpji;->b:Lpjj;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lqgk;->b()Lphz;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Lpjj;->g(Lphz;)V

    :cond_5
    iget-object p1, p0, Lpji;->i:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v3, v2}, Landroidx/wear/ambient/AmbientDelegate;->I(Lpjq;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_12
    :try_start_6
    invoke-interface {v0}, Lpci;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method
