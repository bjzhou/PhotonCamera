.class public final synthetic Lkbz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkcc;


# direct methods
.method public synthetic constructor <init>(Lkcc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkbz;->a:Lkcc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v1, p0

    iget-object v10, v1, Lkbz;->a:Lkcc;

    iget-object v0, v10, Lkcc;->f:Lkbc;

    iget-object v2, v10, Lkcc;->a:Ljava/lang/String;

    const-string v3, "OpenCamera#"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lkbc;->e(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sget-object v0, Lkbo;->m:Lkbo;

    new-instance v2, Llpu;

    const/4 v13, 0x2

    invoke-direct {v2, v13}, Llpu;-><init>(I)V

    new-instance v3, Lkco;

    invoke-direct {v3}, Lkco;-><init>()V

    iget-object v4, v10, Lkcc;->k:Landroid/app/admin/DevicePolicyManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    :try_start_1
    new-instance v15, Lkca;

    invoke-direct {v15, v10}, Lkca;-><init>(Lkcc;)V

    iget-object v4, v10, Lkcc;->b:Landroid/hardware/camera2/CameraManager;

    iget-object v6, v10, Lkcc;->e:Landroid/os/Handler;

    invoke-virtual {v4, v15, v6}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    iget-object v4, v10, Lkcc;->g:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    iget-boolean v6, v10, Lkcc;->m:Z

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lkco;->a()V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    iget-object v0, v10, Lkcc;->b:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, v15}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    goto/16 :goto_7

    :cond_0
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const/16 v16, 0x0

    move-object v9, v3

    move-object/from16 v17, v5

    move-wide/from16 v18, v11

    const/4 v7, 0x0

    :goto_0
    :try_start_6
    iget v2, v2, Llpu;->a:I

    if-ne v2, v13, :cond_e

    move-object v2, v10

    move-object v3, v9

    move v4, v7

    move-wide v5, v11

    move v13, v7

    move-wide/from16 v7, v18

    move-object v1, v9

    move v9, v14

    invoke-virtual/range {v2 .. v9}, Lkcc;->b(Lkco;ZJJZ)Llpu;

    move-result-object v2

    iget v3, v2, Llpu;->a:I

    const/4 v4, 0x3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_2

    if-eqz v13, :cond_1

    const-string v2, "CAM_CameraDeviceOpener"

    iget-object v3, v10, Lkcc;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Camera device "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was opened successfully after a retry."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v10, Lkcc;->c:Lkcf;

    move-object/from16 v3, v17

    check-cast v3, Ljava/lang/String;

    check-cast v0, Lkbo;

    invoke-interface {v2, v7, v0, v3, v4}, Lkcf;->aE(ILkbo;Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :cond_1
    :try_start_7
    iget-object v0, v10, Lkcc;->b:Landroid/hardware/camera2/CameraManager;

    goto :goto_1

    :cond_2
    const/4 v5, 0x4

    if-ne v3, v5, :cond_3

    iget-object v0, v10, Lkcc;->b:Landroid/hardware/camera2/CameraManager;

    :goto_1
    invoke-virtual {v0, v15}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto/16 :goto_6

    :cond_3
    const/4 v5, 0x5

    if-ne v3, v5, :cond_6

    if-nez v13, :cond_4

    :try_start_8
    sget-object v0, Lkbo;->a:Lkbo;

    :cond_4
    if-nez v13, :cond_5

    sget-object v2, Lkbo;->a:Lkbo;

    invoke-virtual {v2}, Lkbo;->c()Ljava/lang/String;

    move-result-object v17

    :cond_5
    move-object/from16 v2, v17

    check-cast v2, Ljava/lang/String;

    move-object v3, v0

    check-cast v3, Lkbo;

    invoke-virtual {v10, v13, v3, v2}, Lkcc;->a(ZLkbo;Ljava/lang/String;)V

    check-cast v0, Lkbo;

    invoke-virtual {v1, v0}, Lkco;->c(Lkbo;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    iget-object v0, v10, Lkcc;->b:Landroid/hardware/camera2/CameraManager;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    goto :goto_1

    :cond_6
    const/4 v5, 0x2

    if-eq v3, v5, :cond_8

    if-ne v3, v4, :cond_7

    if-nez v13, :cond_7

    const/4 v13, 0x0

    goto :goto_2

    :cond_7
    move-object v9, v1

    move v7, v13

    const/4 v13, 0x2

    move-object/from16 v1, p0

    goto :goto_0

    :cond_8
    :goto_2
    :try_start_a
    iget-object v3, v2, Llpu;->b:Ljava/lang/Object;

    iget-object v2, v2, Llpu;->c:Ljava/lang/Object;

    new-instance v4, Llpu;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Llpu;-><init>(I)V

    iget-object v6, v10, Lkcc;->g:Ljava/lang/Object;

    monitor-enter v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    iget-boolean v0, v10, Lkcc;->m:Z

    if-eqz v0, :cond_9

    invoke-virtual {v1}, Lkco;->a()V

    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    iget-object v0, v10, Lkcc;->b:Landroid/hardware/camera2/CameraManager;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_1

    :cond_9
    :try_start_d
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v5, 0xc8

    add-long/2addr v8, v5

    const-wide/16 v17, 0x1388

    add-long v17, v11, v17

    cmp-long v0, v8, v17

    if-lez v0, :cond_c

    check-cast v2, Ljava/lang/String;

    move-object v0, v3

    check-cast v0, Lkbo;

    invoke-virtual {v10, v13, v0, v2}, Lkcc;->a(ZLkbo;Ljava/lang/String;)V

    new-instance v0, Lkco;

    invoke-direct {v0}, Lkco;-><init>()V

    sget-object v1, Lkbo;->i:Lkbo;

    move-object v2, v3

    check-cast v2, Lkbo;

    invoke-virtual {v2, v1}, Lkbo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Lkbo;->h:Lkbo;

    move-object v2, v3

    check-cast v2, Lkbo;

    invoke-virtual {v2, v1}, Lkbo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Lkbo;->n:Lkbo;

    move-object v2, v3

    check-cast v2, Lkbo;

    invoke-virtual {v2, v1}, Lkbo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Lkbo;->o:Lkbo;

    move-object v2, v3

    check-cast v2, Lkbo;

    invoke-virtual {v2, v1}, Lkbo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3

    :cond_a
    check-cast v3, Lkbo;

    invoke-virtual {v0, v3}, Lkco;->c(Lkbo;)V

    goto :goto_4

    :cond_b
    :goto_3
    invoke-virtual {v0}, Lkco;->b()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :goto_4
    :try_start_f
    iget-object v1, v10, Lkcc;->b:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1, v15}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    move-object v3, v0

    goto/16 :goto_7

    :cond_c
    :try_start_10
    iget-object v0, v10, Lkcc;->f:Lkbc;

    const-string v8, "interruptableTimeout#wait"

    invoke-interface {v0, v8}, Lkbc;->e(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :try_start_11
    iget-object v8, v10, Lkcc;->h:Ljava/lang/Object;

    monitor-enter v8
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    const-string v0, "CAM_CameraDeviceOpener"

    iget-object v9, v10, Lkcc;->a:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to open camera device "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ". Attempting retry in "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0xc8

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " milliseconds."

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v10, Lkcc;->h:Ljava/lang/Object;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V

    monitor-exit v8
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    iget-object v0, v10, Lkcc;->f:Lkbc;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_14
    monitor-exit v8
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :try_start_15
    throw v0
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_16
    iget-object v1, v10, Lkcc;->f:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    throw v0

    :catch_0
    move-exception v0

    iget-object v0, v10, Lkcc;->f:Lkbc;

    :goto_5
    invoke-interface {v0}, Lkbc;->f()V

    iget-object v5, v10, Lkcc;->g:Ljava/lang/Object;

    monitor-enter v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    :try_start_17
    iget-boolean v0, v10, Lkcc;->m:Z

    if-eqz v0, :cond_d

    invoke-virtual {v1}, Lkco;->a()V

    monitor-exit v5
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    :try_start_18
    iget-object v0, v10, Lkcc;->b:Landroid/hardware/camera2/CameraManager;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    goto/16 :goto_1

    :cond_d
    :try_start_19
    monitor-exit v5
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    :try_start_1a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    invoke-virtual {v1}, Lkco;->a()V

    new-instance v9, Lkco;

    invoke-direct {v9}, Lkco;-><init>()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    move-object/from16 v1, p0

    move-object/from16 v17, v2

    move-object v0, v3

    move-object v2, v4

    const/4 v7, 0x1

    const/4 v13, 0x2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    :try_start_1b
    monitor-exit v5
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    :try_start_1c
    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    :catchall_3
    move-exception v0

    :try_start_1d
    monitor-exit v6
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    :try_start_1e
    throw v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    :cond_e
    move-object v1, v9

    :try_start_1f
    iget-object v0, v10, Lkcc;->b:Landroid/hardware/camera2/CameraManager;

    goto/16 :goto_1

    :goto_6
    move-object v3, v1

    :goto_7
    iget-object v0, v10, Lkcc;->i:Lkco;

    invoke-virtual {v3, v0}, Lkco;->e(Lkbw;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    iget-object v0, v10, Lkcc;->j:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, v10, Lkcc;->f:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :catchall_4
    move-exception v0

    :try_start_20
    monitor-exit v4
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    :try_start_21
    throw v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    :catchall_5
    move-exception v0

    move-object v5, v15

    goto :goto_8

    :catchall_6
    move-exception v0

    :goto_8
    if-eqz v5, :cond_f

    :try_start_22
    iget-object v1, v10, Lkcc;->b:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1, v5}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    :cond_f
    throw v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    :catchall_7
    move-exception v0

    :try_start_23
    iget-object v1, v10, Lkcc;->i:Lkco;

    invoke-virtual {v1}, Lkco;->a()V

    throw v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_8

    :catchall_8
    move-exception v0

    iget-object v1, v10, Lkcc;->j:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method
