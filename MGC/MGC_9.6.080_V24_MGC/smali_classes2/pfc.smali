.class public final Lpfc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpea;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lpez;

.field public final c:Ljava/util/List;

.field private final d:Lpet;

.field private final e:Lpfg;

.field private final f:Ljava/util/concurrent/Executor;

.field private final g:Lpdo;

.field private final h:Lpdf;

.field private final i:Lpcu;

.field private final j:Lhdk;

.field private final k:Landroidx/wear/ambient/AmbientDelegate;

.field private final l:Lrnb;


# direct methods
.method private final 7ecc92917e9c4556cc19f457ddc41af8m(Lpnx;Lpdz;)V
    .locals 17

    goto/32 :goto_18

    nop

    nop

    :goto_0
    goto/32 :goto_10

    nop

    nop

    :goto_1
    if-nez v13, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit v15

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :catchall_1
    move-exception v0

    nop

    :try_start_2
    monitor-exit v2

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v14

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object/from16 v12, p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    if-nez v13, :cond_1

    nop

    goto/32 :goto_5

    nop

    :cond_1
    :try_start_4
    iget-object v1, v0, Lpfc;->f:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    new-instance v2, Lpam;

    nop

    nop

    nop

    const/16 v3, 0xe

    nop

    invoke-direct {v2, v13, v3}, Lpam;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_5
    iget-object v0, v0, Lpfc;->i:Lpcu;

    nop

    nop

    nop

    nop

    const-string v1, "WakeLock is yet to be acquired. Cannot open."

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lpcu;->b(Ljava/lang/String;)V

    monitor-exit v14

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, v0, Lpfc;->l:Lrnb;

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v12, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    iget-object v2, v1, Lrnb;->e:Ljava/lang/Object;

    nop

    new-instance v10, Lpee;

    nop

    nop

    invoke-interface {v2}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    move-object v3, v2

    nop

    nop

    nop

    check-cast v3, Landroid/os/Handler;

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lrnb;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    move-object v4, v2

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lrnb;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v2, Lixw;

    nop

    nop

    invoke-virtual {v2}, Lixw;->b()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    nop

    nop

    nop

    nop

    iget-object v2, v1, Lrnb;->d:Ljava/lang/Object;

    nop

    check-cast v2, Lixv;

    nop

    invoke-virtual {v2}, Lixv;->b()Landroid/hardware/camera2/CameraManager;

    move-result-object v6

    nop

    nop

    iget-object v2, v1, Lrnb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {v2}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    move-object v7, v2

    nop

    check-cast v7, Lmjv;

    nop

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lrnb;->f:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    move-object v8, v1

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Lpdf;

    nop

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v10

    nop

    nop

    nop

    invoke-direct/range {v2 .. v9}, Lpee;-><init>(Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager;Landroid/hardware/camera2/CameraManager;Lmjv;Lpdf;Ljava/lang/String;)V

    new-instance v15, Lpez;

    nop

    nop

    iget-object v5, v0, Lpfc;->e:Lpfg;

    nop

    nop

    nop

    iget-object v6, v0, Lpfc;->f:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    iget-object v7, v0, Lpfc;->g:Lpdo;

    nop

    nop

    nop

    nop

    iget-object v8, v0, Lpfc;->i:Lpcu;

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v0, Lpfc;->h:Lpdf;

    nop

    nop

    nop

    iget-object v11, v0, Lpfc;->j:Lhdk;

    nop

    nop

    iget-object v1, v0, Lpfc;->d:Lpet;

    nop

    invoke-virtual {v1}, Lpet;->a()Lows;

    move-result-object v16

    nop

    nop

    nop

    nop

    nop

    move-object v1, v15

    nop

    nop

    move-object/from16 v2, p1

    nop

    nop

    move-object/from16 v3, p0

    nop

    move-object v4, v10

    nop

    nop

    nop

    nop

    move-object v10, v11

    nop

    move-object/from16 v11, v16

    nop

    nop

    nop

    invoke-direct/range {v1 .. v11}, Lpez;-><init>(Lpnx;Lpfc;Lpee;Lpfg;Ljava/util/concurrent/Executor;Lpdo;Lpcu;Lpdf;Lhdk;Lows;)V

    monitor-enter v15

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-boolean v1, v15, Lpez;->f:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_a

    nop

    nop

    iget-boolean v1, v15, Lpez;->d:Z

    nop

    nop

    nop

    if-nez v1, :cond_a

    nop

    nop

    nop

    nop

    iget-boolean v1, v15, Lpez;->e:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/16 :goto_13

    nop

    :cond_2
    const/4 v1, 0x1

    nop

    iput-boolean v1, v15, Lpez;->f:Z

    nop

    monitor-exit v15

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v2, v15, Lpez;->c:Lpcu;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    const-string v4, " Opening"

    nop

    nop

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lpcu;->b(Ljava/lang/String;)V

    iget-object v2, v15, Lpez;->b:Lpep;

    nop

    nop

    nop

    invoke-virtual {v2, v15}, Lpep;->e(Lpdz;)V

    iget-object v2, v15, Lpez;->g:Lpee;

    nop

    nop

    iget-object v3, v2, Lpee;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v3

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iget-boolean v4, v2, Lpee;->k:Z

    nop

    if-nez v4, :cond_9

    nop

    iget-boolean v4, v2, Lpee;->l:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_3

    nop

    goto/16 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_3
    iput-boolean v1, v2, Lpee;->k:Z

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

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    iget-object v1, v2, Lpee;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Lpeb;

    nop

    invoke-direct {v3, v2}, Lpeb;-><init>(Lpee;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    move-object/from16 v13, p2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    :goto_b
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_5
    goto/32 :goto_f

    nop

    :goto_c
    monitor-enter v14

    nop

    nop

    nop

    :try_start_9
    iget-object v1, v0, Lpfc;->b:Lpez;

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_8

    nop

    iget-object v2, v1, Lpez;->a:Lpnx;

    nop

    invoke-virtual {v2, v12}, Lpnx;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    if-eqz v2, :cond_7

    nop

    nop

    if-eqz v13, :cond_6

    nop

    nop

    nop

    nop

    nop

    const-string v2, "camera.lenstoggles_enable"

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lcom/a;->ad_mc(Ljava/lang/Object;)Z

    move-result v2

    nop

    if-nez v2, :cond_7

    nop

    sget v2, Lcom/a;->aa:I

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_7

    nop

    nop

    iget-object v0, v0, Lpfc;->i:Lpcu;

    nop

    const-string v2, "Attaching listener to existing CameraSession: "

    nop

    nop

    invoke-static {v1, v2}, Lmf;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lpcu;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Lpez;->e(Lpdz;)V

    goto :goto_d

    nop

    :cond_6
    iget-object v0, v0, Lpfc;->i:Lpcu;

    nop

    nop

    nop

    const-string v2, "Has existing CameraSession. Noop Open: "

    nop

    nop

    nop

    nop

    invoke-static {v1, v2}, Lmf;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    invoke-interface {v0, v1}, Lpcu;->b(Ljava/lang/String;)V

    :goto_d
    monitor-exit v14

    nop

    return-void

    nop

    nop

    :cond_7
    iget-object v2, v0, Lpfc;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lpez;->f()V

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    iput-object v1, v0, Lpfc;->b:Lpez;

    nop

    nop

    nop

    :cond_8
    iget-object v1, v0, Lpfc;->d:Lpet;

    nop

    iget-object v2, v1, Lpet;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    monitor-enter v2

    nop

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    iget-object v1, v1, Lpet;->d:Lows;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lows;->b()Z

    move-result v1

    nop

    monitor-exit v2

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v14, v0, Lpfc;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_17

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_14

    nop

    :cond_9
    :goto_12
    :try_start_b
    monitor-exit v3

    nop

    goto :goto_14

    nop

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    monitor-exit v3

    nop

    nop

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v0

    nop

    nop

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :cond_a
    :goto_13
    :try_start_d
    monitor-exit v15

    nop

    nop

    nop
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_14
    :try_start_e
    iput-object v15, v0, Lpfc;->b:Lpez;

    nop

    nop

    nop

    nop

    nop

    monitor-exit v14

    nop

    nop

    nop

    nop

    nop
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v12}, Landroidx/wear/ambient/AmbientDelegate;->R(Lpnx;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    throw v0

    nop

    nop

    :goto_17
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_18
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_19
    invoke-virtual {v15, v13}, Lpez;->e(Lpdz;)V

    :goto_1a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

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

    :goto_1c
    iget-object v0, v0, Lpfc;->k:Landroidx/wear/ambient/AmbientDelegate;

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

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lrnb;Landroidx/wear/ambient/AmbientDelegate;Lpet;Ljava/util/concurrent/Executor;Lpfg;Lpdo;Lpdf;Lpcu;Lhdk;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p6, p0, Lpfc;->g:Lpdo;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lpfc;->c:Ljava/util/List;

    nop

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

    :goto_3
    iput-object p7, p0, Lpfc;->h:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p9, p0, Lpfc;->j:Lhdk;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Lpfc;->k:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p8, p1}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    :goto_9
    new-instance v0, Ljava/lang/Object;

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

    :goto_a
    iput-object p1, p0, Lpfc;->i:Lpcu;

    nop

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

    nop

    :goto_b
    iput-object p1, p0, Lpfc;->l:Lrnb;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p4, p0, Lpfc;->f:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    iput-object p3, p0, Lpfc;->d:Lpet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    iput-object p5, p0, Lpfc;->e:Lpfg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    const-string p1, "VirtualCameraMgr"

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    iput-object v0, p0, Lpfc;->a:Ljava/lang/Object;

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

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lpfc;->b:Lpez;

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lpfc;->c:Ljava/util/List;

    nop

    nop

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    nop

    iput-object v1, p0, Lpfc;->b:Lpez;

    nop

    nop

    nop

    nop

    :cond_0
    iget-object p0, p0, Lpfc;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Lpez;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lpez;->f()V

    goto :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    const v0, 0x16

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    iget-object v0, p0, Lpfc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop
.end method

.method public final b()V
    .locals 10

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    :try_start_0
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lpfc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    if-lt v2, v1, :cond_0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    goto :goto_8

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v4

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    monitor-exit v6

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    throw v4

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v5, v3, v4}, Lpcu;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v3, v6, v7}, Lfey;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_4
    iget-object v0, p0, Lpfc;->c:Ljava/util/List;

    nop

    nop

    invoke-static {v0}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object v0

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lpfc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    const/4 v2, 0x0

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    const-string v6, "Warning: Failed to synchronously close "

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_12
    const v0, 0x18

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    :goto_14
    iget-object v5, p0, Lpfc;->i:Lpcu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_19

    nop

    :goto_17
    const v1, 0x18

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_18
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_2

    nop

    nop

    :goto_1a
    check-cast v3, Lpez;

    nop

    nop

    nop

    nop

    nop

    :try_start_5
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lpez;->f()V

    iget-object v5, v3, Lpez;->g:Lpee;

    nop

    nop

    nop

    nop

    iget-object v6, v5, Lpee;->f:Ljava/lang/Object;

    nop

    nop

    monitor-enter v6

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    iget-boolean v7, v5, Lpee;->k:Z

    nop

    nop

    nop

    nop

    const-wide/16 v8, 0x5dc

    nop

    nop

    nop

    if-nez v7, :cond_3

    nop

    nop

    nop

    nop

    monitor-exit v6

    nop

    goto :goto_1b

    nop

    nop

    :cond_3
    monitor-exit v6

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iget-object v5, v5, Lpee;->i:Ljava/util/concurrent/CountDownLatch;

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v8, v9, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    :goto_1b
    iget-object v5, v3, Lpez;->b:Lpep;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v5, Lpep;->b:Ljava/util/concurrent/CountDownLatch;

    nop

    nop

    invoke-virtual {v5, v8, v9, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1d
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_8
    iget-object v1, p0, Lpfc;->b:Lpez;

    nop

    nop

    if-eqz v1, :cond_4

    nop

    iget-object v2, p0, Lpfc;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    nop

    nop

    iput-object v1, p0, Lpfc;->b:Lpez;

    nop

    nop

    :cond_4
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_1e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_21
    throw p0

    nop

    :goto_22
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_23
    const-string v7, "."

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public final c(Lpnx;Lpdz;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Lpfc;->7ecc92917e9c4556cc19f457ddc41af8m(Lpnx;Lpdz;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public final d(Lpnx;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, v0}, Lpfc;->7ecc92917e9c4556cc19f457ddc41af8m(Lpnx;Lpdz;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Lpez;)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lpfc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    const v0, 0x2

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

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter v0

    nop

    :try_start_0
    iget-object v1, p0, Lpfc;->b:Lpez;

    nop

    nop

    nop

    nop

    if-ne v1, p1, :cond_0

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    iput-object v1, p0, Lpfc;->b:Lpez;

    nop

    nop

    nop

    nop

    nop

    :cond_0
    iget-object v1, p0, Lpfc;->c:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    iget-object p0, p0, Lpfc;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v0

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    throw p0

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    :goto_9
    goto/32 :goto_7

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method
