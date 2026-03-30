.class public final synthetic Lpeb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lpee;


# direct methods
.method public synthetic constructor <init>(Lpee;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lpeb;->a:Lpee;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 19

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, v8, Lpee;->e:Lpdf;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    monitor-exit v4

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    nop

    const-wide/16 v3, 0xc8

    nop

    add-long/2addr v6, v3

    nop

    nop

    nop

    const-wide/16 v16, 0x1388

    nop

    nop

    nop

    nop

    nop

    add-long v16, v9, v16

    nop

    nop

    nop

    nop

    nop

    cmp-long v0, v6, v16

    nop

    nop

    nop

    nop

    if-lez v0, :cond_c

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/String;

    nop

    move-object v0, v15

    nop

    nop

    check-cast v0, Lpdr;

    nop

    invoke-virtual {v8, v14, v0, v1}, Lpee;->a(ZLpdr;Ljava/lang/String;)V

    new-instance v2, Lpep;

    nop

    nop

    nop

    invoke-direct {v2}, Lpep;-><init>()V

    sget-object v0, Lpdr;->i:Lpdr;

    nop

    nop

    nop

    nop

    move-object v1, v15

    nop

    nop

    check-cast v1, Lpdr;

    nop

    nop

    invoke-virtual {v1, v0}, Lpdr;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    sget-object v0, Lpdr;->h:Lpdr;

    nop

    nop

    nop

    move-object v1, v15

    nop

    nop

    nop

    check-cast v1, Lpdr;

    nop

    nop

    invoke-virtual {v1, v0}, Lpdr;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    sget-object v0, Lpdr;->n:Lpdr;

    nop

    move-object v1, v15

    nop

    nop

    nop

    nop

    check-cast v1, Lpdr;

    nop

    invoke-virtual {v1, v0}, Lpdr;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    sget-object v0, Lpdr;->o:Lpdr;

    nop

    move-object v1, v15

    nop

    nop

    nop

    nop

    check-cast v1, Lpdr;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Lpdr;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    check-cast v15, Lpdr;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v15}, Lpep;->c(Lpdr;)V

    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :goto_2
    invoke-virtual {v2}, Lpep;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    :goto_3
    :try_start_2
    iget-object v0, v8, Lpee;->b:Landroid/hardware/camera2/CameraManager;

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v3, 0x2

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_5
    if-nez v4, :cond_3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_3
    iget-object v1, v8, Lpee;->b:Landroid/hardware/camera2/CameraManager;

    nop

    nop

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    :goto_6
    throw v0

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_4
    iget-object v1, v8, Lpee;->h:Lpep;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lpep;->a()V

    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-object/from16 v16, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_9
    iget-object v8, v0, Lpeb;->a:Lpee;

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

    :goto_a
    move-object v7, v11

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    goto/16 :goto_2f

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    :try_start_5
    iget-object v15, v1, Lqxk;->b:Ljava/lang/Object;

    nop

    iget-object v1, v1, Lqxk;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    new-instance v2, Lqxk;

    nop

    nop

    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    invoke-direct {v2, v3}, Lqxk;-><init>(I)V

    iget-object v4, v8, Lpee;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v4

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    :try_start_6
    iget-boolean v0, v8, Lpee;->l:Z

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    invoke-virtual {v11}, Lpep;->a()V

    monitor-exit v4

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :try_start_7
    iget-object v0, v8, Lpee;->b:Landroid/hardware/camera2/CameraManager;

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_f
    move v5, v14

    nop

    :goto_10
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_12

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_8
    monitor-exit v6

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_a
    iget-object v1, v8, Lpee;->e:Lpdf;

    nop

    nop

    nop

    invoke-interface {v1}, Lpdf;->g()V

    throw v0

    nop

    nop

    nop

    nop

    nop

    :catch_0
    iget-object v0, v8, Lpee;->e:Lpdf;

    nop

    nop

    nop

    nop

    goto/16 :goto_31

    nop

    :goto_12
    iget-object v3, v8, Lpee;->f:Ljava/lang/Object;

    nop

    nop

    nop

    monitor-enter v3

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    :try_start_b
    iget-boolean v0, v8, Lpee;->l:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_5

    nop

    invoke-virtual {v11}, Lpep;->a()V

    monitor-exit v3

    nop

    nop

    nop

    nop

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :try_start_c
    iget-object v0, v8, Lpee;->b:Landroid/hardware/camera2/CameraManager;

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eq v0, v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    :cond_5
    :try_start_d
    monitor-exit v3

    nop

    nop
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :try_start_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Lpep;->a()V

    new-instance v7, Lpep;

    nop

    nop

    nop

    invoke-direct {v7}, Lpep;-><init>()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_e

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v1, v8, Lpee;->i:Ljava/util/concurrent/CountDownLatch;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_19
    move-object v15, v0

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_36

    nop

    nop

    :cond_6
    :try_start_f
    monitor-exit v3

    nop

    nop

    nop
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto :goto_1c

    nop

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    :goto_1c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/32 :goto_3b

    nop

    nop

    :goto_1e
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_1f
    const/4 v11, 0x2

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

    nop

    :goto_20
    move-object/from16 v16, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_3e

    nop

    nop

    :goto_23
    iget-object v0, v8, Lpee;->i:Ljava/util/concurrent/CountDownLatch;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v2, v8, Lpee;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v1, 0x6

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-eq v0, v3, :cond_7

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_10

    nop

    :catchall_5
    move-exception v0

    nop

    nop

    :try_start_10
    monitor-exit v3

    nop

    nop

    nop

    nop

    nop
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :try_start_11
    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :catchall_6
    move-exception v0

    nop

    nop

    nop

    :try_start_12
    monitor-exit v4

    nop
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :try_start_13
    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    :cond_8
    goto/32 :goto_34

    nop

    nop

    :goto_29
    const-string v1, "OpenCamera#"

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_2f

    nop

    nop

    :cond_9
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v14, 0x0

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2c
    iget-object v0, v8, Lpee;->e:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    :try_start_14
    iget v0, v1, Lqxk;->a:I

    nop

    nop

    if-ne v0, v11, :cond_8

    nop

    nop

    nop

    nop

    move-object v0, v8

    nop

    move-object v1, v7

    nop

    nop

    move v2, v5

    nop

    nop

    nop

    nop

    move-wide v3, v9

    nop

    nop

    nop

    nop

    move v14, v5

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v5, v17

    nop

    nop

    move-object v11, v7

    nop

    nop

    move v7, v12

    nop

    nop

    invoke-virtual/range {v0 .. v7}, Lpee;->b(Lpep;ZJJZ)Lqxk;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    iget v0, v1, Lqxk;->a:I

    nop

    nop

    nop

    const/4 v2, 0x3

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    if-ne v0, v5, :cond_b

    nop

    nop

    if-eqz v14, :cond_a

    nop

    nop

    nop

    nop

    nop

    const-string v0, "CAM_CameraDeviceOpener"

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Camera device "

    nop

    nop

    const-string v3, " was opened successfully after a retry."

    nop

    invoke-static {v8, v1, v3}, Lpeq;->a(Lpee;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v8, Lpee;->m:Lmjv;

    nop

    move-object/from16 v1, v16

    nop

    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    check-cast v15, Lpdr;

    nop

    invoke-virtual {v0, v5, v15, v1, v2}, Lmjv;->p(ILpdr;Ljava/lang/String;I)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    :cond_a
    :try_start_15
    iget-object v0, v8, Lpee;->b:Landroid/hardware/camera2/CameraManager;

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0, v13}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    goto/16 :goto_35

    nop

    nop

    nop

    nop

    :cond_b
    const/4 v3, 0x4

    nop

    nop

    nop

    if-ne v0, v3, :cond_9

    nop

    iget-object v0, v8, Lpee;->b:Landroid/hardware/camera2/CameraManager;

    nop

    nop

    nop

    nop
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_46

    nop

    nop

    nop

    nop

    nop

    :cond_c
    :try_start_16
    iget-object v0, v8, Lpee;->e:Lpdf;

    nop

    const-string v6, "interruptableTimeout#wait"

    nop

    nop

    invoke-interface {v0, v6}, Lpdf;->f(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    :try_start_17
    iget-object v6, v8, Lpee;->g:Ljava/lang/Object;

    nop

    nop

    monitor-enter v6

    nop

    nop
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    :try_start_18
    const-string v0, "CAM_CameraDeviceOpener"

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v8, Lpee;->a:Ljava/lang/String;

    nop

    new-instance v14, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to open camera device "

    nop

    nop

    nop

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Attempting retry in "

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xc8

    nop

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " milliseconds."

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v8, Lpee;->g:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V

    monitor-exit v6

    nop

    nop
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    :try_start_19
    iget-object v0, v8, Lpee;->e:Lpdf;

    nop

    nop

    :goto_31
    invoke-interface {v0}, Lpdf;->g()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_32
    if-lez v0, :cond_d

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_d
    goto/32 :goto_21

    nop

    :goto_33
    if-eqz v14, :cond_e

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_34
    move-object v11, v7

    nop

    :try_start_1a
    iget-object v0, v8, Lpee;->b:Landroid/hardware/camera2/CameraManager;

    nop

    nop

    goto/16 :goto_2f

    nop

    nop

    nop

    :goto_35
    move-object v2, v11

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v0, v8, Lpee;->h:Lpep;

    nop

    nop

    invoke-virtual {v2, v0}, Lpep;->e(Lpdz;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto/32 :goto_23

    nop

    nop

    :goto_37
    move-object v1, v2

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_38
    move-wide/from16 v17, v9

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_39
    if-eqz v14, :cond_f

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_f
    :try_start_1b
    sget-object v15, Lpdr;->a:Lpdr;

    nop

    :goto_3a
    if-nez v14, :cond_10

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Lpdr;->a:Lpdr;

    nop

    nop

    invoke-virtual {v0}, Lpdr;->c()Ljava/lang/String;

    move-result-object v16

    nop

    nop

    :cond_10
    move-object/from16 v0, v16

    nop

    nop

    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    move-object v1, v15

    nop

    nop

    check-cast v1, Lpdr;

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v14, v1, v0}, Lpee;->a(ZLpdr;Ljava/lang/String;)V

    check-cast v15, Lpdr;

    nop

    nop

    nop

    invoke-virtual {v11, v15}, Lpep;->c(Lpdr;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    :try_start_1c
    iget-object v0, v8, Lpee;->b:Landroid/hardware/camera2/CameraManager;

    nop

    nop

    nop
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    throw v0

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_8

    nop

    nop

    :goto_3d
    return-void

    nop

    :catchall_7
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1d
    monitor-exit v3

    nop

    nop

    nop

    nop
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    :try_start_1e
    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    :catchall_8
    move-exception v0

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_3e
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3f
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_40
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_41
    if-ne v0, v3, :cond_11

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const/4 v5, 0x1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_43
    move-object v7, v2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    move-object v4, v13

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_45
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    :try_start_1f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    nop

    nop

    sget-object v0, Lpdr;->m:Lpdr;

    nop

    nop

    new-instance v1, Lqxk;

    nop

    nop

    nop

    nop

    nop

    const/4 v11, 0x2

    nop

    nop

    nop

    nop

    invoke-direct {v1, v11}, Lqxk;-><init>(I)V

    new-instance v2, Lpep;

    nop

    invoke-direct {v2}, Lpep;-><init>()V

    iget-object v3, v8, Lpee;->j:Landroid/app/admin/DevicePolicyManager;

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v12

    nop

    nop

    nop

    nop
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    :try_start_20
    new-instance v13, Lpec;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v13, v8}, Lpec;-><init>(Lpee;)V

    iget-object v3, v8, Lpee;->b:Landroid/hardware/camera2/CameraManager;

    nop

    nop

    nop

    nop

    iget-object v5, v8, Lpee;->d:Landroid/os/Handler;

    nop

    invoke-virtual {v3, v13, v5}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    :try_start_21
    iget-object v3, v8, Lpee;->f:Ljava/lang/Object;

    nop

    monitor-enter v3

    nop

    nop

    nop

    nop
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    :try_start_22
    iget-boolean v5, v8, Lpee;->l:Z

    nop

    if-eqz v5, :cond_6

    nop

    invoke-virtual {v2}, Lpep;->a()V

    monitor-exit v3

    nop

    nop

    nop
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    :try_start_23
    iget-object v0, v8, Lpee;->b:Landroid/hardware/camera2/CameraManager;

    nop

    nop

    :goto_46
    invoke-virtual {v0, v13}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const/4 v3, 0x5

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop
.end method
