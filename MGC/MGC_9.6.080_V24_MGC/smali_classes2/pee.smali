.class public final Lpee;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/hardware/camera2/CameraManager;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Landroid/os/Handler;

.field public final e:Lpdf;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Lpep;

.field public final i:Ljava/util/concurrent/CountDownLatch;

.field public final j:Landroid/app/admin/DevicePolicyManager;

.field public k:Z

.field public l:Z

.field public final m:Lmjv;

.field private n:Ljava/lang/Throwable;


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m(Ljava/lang/String;Ljava/lang/Exception;ZLpdr;Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    monitor-enter p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p3, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    :try_start_0
    iget-object p0, p0, Lpee;->m:Lmjv;

    nop

    nop

    nop

    nop

    nop

    const/4 p2, 0x3

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p2, p4, p5, p2}, Lmjv;->p(ILpdr;Ljava/lang/String;I)V

    :goto_2
    monitor-exit p1

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit p1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "CAM_CameraDeviceOpener"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lpee;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager;Landroid/hardware/camera2/CameraManager;Lmjv;Lpdf;Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_14

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p1, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lpee;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    const/4 p2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    iput-boolean v0, p0, Lpee;->k:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p3, p0, Lpee;->j:Landroid/app/admin/DevicePolicyManager;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-boolean v0, p0, Lpee;->l:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Lpee;->d:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    new-instance p1, Lpep;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_c
    new-instance p1, Ljava/lang/Object;

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

    :goto_d
    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Lpee;->i:Ljava/util/concurrent/CountDownLatch;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    iput-object p7, p0, Lpee;->a:Ljava/lang/String;

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

    :goto_10
    iput-object p2, p0, Lpee;->c:Ljava/util/concurrent/Executor;

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

    :goto_11
    iput-object p6, p0, Lpee;->e:Lpdf;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Lpee;->n:Ljava/lang/Throwable;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object p1, p0, Lpee;->g:Ljava/lang/Object;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object p4, p0, Lpee;->b:Landroid/hardware/camera2/CameraManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_17
    invoke-direct {p1}, Lpep;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object p5, p0, Lpee;->m:Lmjv;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_19
    iput-object p1, p0, Lpee;->h:Lpep;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1a
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

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
.end method


# virtual methods
.method public final a(ZLpdr;Ljava/lang/String;)V
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lpee;->n:Ljava/lang/Throwable;

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    const-string v1, "CAM_CameraDeviceOpener"

    nop

    nop

    nop

    nop

    const-string v2, "Failed to open Camera device "

    nop

    nop

    nop

    nop

    const-string v3, " after timeout."

    nop

    invoke-static {p0, v2, v3}, Lpeq;->a(Lpee;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lpee;->n:Ljava/lang/Throwable;

    nop

    nop

    nop

    nop

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    const-string v1, "CAM_CameraDeviceOpener"

    nop

    nop

    const-string v2, "Failed to open Camera device "

    nop

    const-string v3, " after timeout."

    nop

    nop

    nop

    nop

    invoke-static {p0, v2, v3}, Lpeq;->a(Lpee;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lpee;->m:Lmjv;

    nop

    nop

    nop

    const/4 p1, 0x2

    nop

    nop

    const/4 v1, 0x3

    nop

    invoke-virtual {p0, p1, p2, p3, v1}, Lmjv;->p(ILpdr;Ljava/lang/String;I)V

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    :goto_3
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

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
    rem-int v0, v0, v1

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

    :goto_7
    iget-object v0, p0, Lpee;->f:Ljava/lang/Object;

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

    :goto_8
    throw p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x7

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final b(Lpep;ZJJZ)Lqxk;
    .locals 13

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v9, 0x4

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_14

    nop

    nop

    :goto_2
    const/4 v3, 0x5

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v3, v7, Lpee;->e:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    :goto_6
    goto/16 :goto_20

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_0
    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw v0

    nop

    :catch_0
    move-exception v0

    nop

    nop

    iget-object v1, v7, Lpee;->f:Ljava/lang/Object;

    nop

    monitor-enter v1

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iput-object v0, v7, Lpee;->n:Ljava/lang/Throwable;

    nop

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v1, Lqxk;

    nop

    nop

    sget-object v2, Lpdr;->d:Lpdr;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    nop

    invoke-direct {v1, v5, v2, v0}, Lqxk;-><init>(ILpdr;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_7
    const-string v2, "Failed to open camera device "

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_8
    move/from16 v1, p7

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x13

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

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    :goto_b
    invoke-interface {v3, v4}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, v7, Lpee;->e:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    :try_start_4
    new-instance v1, Lqxk;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lpdr;->c:Lpdr;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-direct {v1, v4, v2, v0}, Lqxk;-><init>(ILpdr;Ljava/lang/String;)V

    goto/16 :goto_20

    nop

    nop

    nop

    :goto_e
    const-string v1, "Failed to open camera device "

    nop

    nop

    nop

    const-string v2, ". A SecurityException was thrown while attempting to open the camera."

    nop

    nop

    nop

    invoke-static {p0, v1, v2}, Lpeq;->a(Lpee;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    sget-object v2, Lpdr;->c:Lpdr;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    move-object p2, p0

    nop

    nop

    nop

    nop

    move-object/from16 p3, v1

    nop

    nop

    nop

    nop

    nop

    move-object/from16 p4, v0

    nop

    nop

    nop

    move/from16 p5, v4

    nop

    nop

    nop

    move-object/from16 p6, v2

    nop

    nop

    nop

    move-object/from16 p7, v3

    nop

    invoke-direct/range {p2 .. p7}, Lpee;->33f5b80483094659737b73d90f80a8a4m(Ljava/lang/String;Ljava/lang/Exception;ZLpdr;Ljava/lang/String;)V

    sget-object v1, Lpdr;->c:Lpdr;

    nop

    invoke-virtual {p1, v1}, Lpep;->c(Lpdr;)V

    new-instance v1, Lqxk;

    nop

    nop

    nop

    sget-object v2, Lpdr;->c:Lpdr;

    nop

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-direct {v1, v9, v2, v0}, Lqxk;-><init>(ILpdr;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_11
    move-object v7, p0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_15

    nop

    nop

    :catch_1
    :try_start_5
    new-instance v0, Lqxk;

    nop

    invoke-direct {v0, v3}, Lqxk;-><init>(I)V

    goto/16 :goto_5

    nop

    nop

    nop

    nop

    nop

    :catch_2
    move-exception v0

    nop

    iget-object v1, v7, Lpee;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v1

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iput-object v0, v7, Lpee;->n:Ljava/lang/Throwable;

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v4, "CameraDeviceOpenerImpl#open"

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_14
    return-object v0

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move-object v8, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_17
    throw v0

    nop

    nop

    :goto_18
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v0, v3, v1}, Lped;-><init>(Lpdf;Z)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v4, 0x3

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

    :goto_1c
    iget-object v3, v7, Lpee;->e:Lpdf;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x5

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v5, 0x2

    nop

    nop

    :try_start_7
    iget-object v6, v7, Lpee;->b:Landroid/hardware/camera2/CameraManager;

    nop

    iget-object v10, v7, Lpee;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    new-instance v11, Lpdn;

    nop

    nop

    iget-object v12, v7, Lpee;->a:Ljava/lang/String;

    nop

    invoke-direct {v11, p1, v12}, Lpdn;-><init>(Lpdz;Ljava/lang/String;)V

    iget-object v12, v7, Lpee;->d:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v10, v11, v12}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    const-wide/16 v10, 0x1388

    nop

    nop

    nop

    nop

    nop

    add-long v10, p3, v10

    nop

    nop

    nop

    nop

    nop

    sub-long v10, v10, p5

    nop

    nop

    nop

    invoke-virtual {v0, v10, v11}, Lped;->e(J)Lqxk;

    move-result-object v0

    nop

    nop

    nop
    :try_end_7
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_20

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    :try_start_8
    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0

    nop

    nop

    nop

    :catch_3
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v6

    nop

    nop

    nop

    invoke-static {v6}, Lpdr;->a(I)Lpdr;

    move-result-object v10

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v6

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

    if-eq v6, v11, :cond_6

    nop

    nop

    if-eq v6, v5, :cond_5

    nop

    nop

    nop

    nop

    if-eq v6, v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    if-eq v6, v9, :cond_3

    nop

    nop

    nop

    if-eq v6, v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v7, Lpee;->a:Ljava/lang/String;

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v3

    nop

    new-instance v4, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". An unknown exception was thrown with error code "

    nop

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    nop

    nop

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    nop

    move-object v1, p0

    nop

    nop

    nop

    nop

    move-object v3, v0

    nop

    nop

    nop

    nop

    nop

    move v4, p2

    nop

    nop

    nop

    move-object v5, v10

    nop

    nop

    invoke-direct/range {v1 .. v6}, Lpee;->33f5b80483094659737b73d90f80a8a4m(Ljava/lang/String;Ljava/lang/Exception;ZLpdr;Ljava/lang/String;)V

    invoke-virtual {p1, v10}, Lpep;->c(Lpdr;)V

    new-instance v1, Lqxk;

    nop

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v9, v10, v0}, Lqxk;-><init>(ILpdr;Ljava/lang/String;)V

    goto/16 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_2
    const-string v1, "Failed to open camera device "

    nop

    nop

    nop

    const-string v2, ". The maximum number of cameras are already open."

    nop

    nop

    nop

    invoke-static {p0, v1, v2}, Lpeq;->a(Lpee;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    move-object v1, p0

    nop

    move-object v3, v0

    nop

    move v4, p2

    nop

    nop

    nop

    nop

    nop

    move-object v5, v10

    nop

    nop

    nop

    nop

    invoke-direct/range {v1 .. v6}, Lpee;->33f5b80483094659737b73d90f80a8a4m(Ljava/lang/String;Ljava/lang/Exception;ZLpdr;Ljava/lang/String;)V

    invoke-virtual {p1, v10}, Lpep;->c(Lpdr;)V

    new-instance v1, Lqxk;

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-direct {v1, v9, v10, v0}, Lqxk;-><init>(ILpdr;Ljava/lang/String;)V

    goto :goto_20

    nop

    nop

    :cond_3
    const-string v1, "Failed to open camera device "

    nop

    nop

    nop

    nop

    nop

    const-string v2, " The camera device in use due to a higher priority process. Retrying ..."

    nop

    invoke-static {p0, v1, v2}, Lpeq;->a(Lpee;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    move-object p1, p0

    nop

    nop

    move-object p2, v1

    nop

    move-object/from16 p3, v0

    nop

    nop

    nop

    nop

    move/from16 p4, v3

    nop

    nop

    move-object/from16 p5, v10

    nop

    nop

    move-object/from16 p6, v2

    nop

    nop

    nop

    invoke-direct/range {p1 .. p6}, Lpee;->33f5b80483094659737b73d90f80a8a4m(Ljava/lang/String;Ljava/lang/Exception;ZLpdr;Ljava/lang/String;)V

    new-instance v1, Lqxk;

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v5, v10, v0}, Lqxk;-><init>(ILpdr;Ljava/lang/String;)V

    goto :goto_20

    nop

    nop

    nop

    nop

    :cond_4
    new-instance v1, Lqxk;

    nop

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-direct {v1, v5, v10, v0}, Lqxk;-><init>(ILpdr;Ljava/lang/String;)V

    goto :goto_20

    nop

    nop

    :cond_5
    new-instance v1, Lqxk;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-direct {v1, v5, v10, v0}, Lqxk;-><init>(ILpdr;Ljava/lang/String;)V

    :goto_20
    move-object v0, v1

    nop

    goto/16 :goto_5

    nop

    :cond_6
    if-eqz v1, :cond_8

    nop

    if-nez p2, :cond_7

    nop

    new-instance v1, Lqxk;

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-direct {v1, v4, v10, v0}, Lqxk;-><init>(ILpdr;Ljava/lang/String;)V

    goto :goto_20

    nop

    nop

    :cond_7
    const-string v1, "Failed to open camera device "

    nop

    const-string v2, " after retry. The camera device is disabled."

    nop

    nop

    nop

    nop

    invoke-static {p0, v1, v2}, Lpeq;->a(Lpee;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    const/4 v3, 0x1

    nop

    move-object p2, p0

    nop

    nop

    nop

    nop

    move-object/from16 p3, v1

    nop

    nop

    nop

    nop

    move-object/from16 p4, v0

    nop

    move/from16 p5, v3

    nop

    move-object/from16 p6, v10

    nop

    nop

    nop

    move-object/from16 p7, v2

    nop

    nop

    nop

    invoke-direct/range {p2 .. p7}, Lpee;->33f5b80483094659737b73d90f80a8a4m(Ljava/lang/String;Ljava/lang/Exception;ZLpdr;Ljava/lang/String;)V

    invoke-virtual {p1, v10}, Lpep;->c(Lpdr;)V

    new-instance v1, Lqxk;

    nop

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v9, v10, v0}, Lqxk;-><init>(ILpdr;Ljava/lang/String;)V

    goto :goto_20

    nop

    :cond_8
    const-string v1, "Failed to open camera device "

    nop

    nop

    nop

    const-string v2, " The camera device in use due to a higher priority process. Retrying ..."

    nop

    invoke-static {p0, v1, v2}, Lpeq;->a(Lpee;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    move-object p1, p0

    nop

    nop

    nop

    nop

    nop

    move-object p2, v1

    nop

    move-object/from16 p3, v0

    nop

    nop

    nop

    move/from16 p4, v3

    nop

    nop

    nop

    nop

    nop

    move-object/from16 p5, v10

    nop

    nop

    move-object/from16 p6, v2

    nop

    nop

    nop

    invoke-direct/range {p1 .. p6}, Lpee;->33f5b80483094659737b73d90f80a8a4m(Ljava/lang/String;Ljava/lang/Exception;ZLpdr;Ljava/lang/String;)V

    new-instance v1, Lqxk;

    nop

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    nop

    invoke-direct {v1, v5, v10, v0}, Lqxk;-><init>(ILpdr;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/32 :goto_4

    nop

    nop

    :goto_21
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1, v0}, Lpep;->e(Lpdz;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v0, Lped;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_24
    iget-object v1, v7, Lpee;->e:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object p0, p0, Lpee;->g:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    nop

    nop

    return-void

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    :goto_9
    const v0, 0x11

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lpee;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x1

    nop

    nop

    nop

    :try_start_2
    iput-boolean v1, p0, Lpee;->l:Z

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lpee;->g:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
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

    nop

    :goto_e
    const v1, 0xb

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop
.end method
