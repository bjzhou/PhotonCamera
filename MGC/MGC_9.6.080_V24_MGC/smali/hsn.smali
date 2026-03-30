.class public Lhsn;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final c:Lsdb;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lsuu;

.field private final d:Landroid/hardware/camera2/CameraManager;

.field private final e:Ltud;

.field private final f:Ljava/util/concurrent/Executor;

.field private final g:Lhdk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "hsn"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lhsn;->c:Lsdb;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraManager;Ltud;Ljava/util/concurrent/Executor;Lhdk;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lhsn;->f:Ljava/util/concurrent/Executor;

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iput-object p2, p0, Lhsn;->e:Ltud;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lhsn;->d:Landroid/hardware/camera2/CameraManager;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    iput-object p4, p0, Lhsn;->g:Lhdk;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p1, Ljava/lang/Object;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    iput-object p1, p0, Lhsn;->a:Ljava/lang/Object;

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

    :goto_8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop
.end method


# virtual methods
.method public final a(I)Lhsm;
    .locals 11

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v3, 0xc8

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_27

    nop

    :catch_0
    move-exception p1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2
    invoke-interface {v1, v2, p1, v3}, Lscz;->w(Ljava/lang/String;II)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lhsn;->d:Landroid/hardware/camera2/CameraManager;

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

    :goto_4
    goto/16 :goto_27

    nop

    nop

    nop

    :catch_1
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_6
    const/4 v5, 0x2

    nop

    :try_start_0
    new-instance v6, Lows;

    nop

    invoke-direct {v6}, Lows;-><init>()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v7, Lhsl;

    nop

    nop

    invoke-direct {v7, v1}, Lhsl;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    iget-object v4, p0, Lhsn;->d:Landroid/hardware/camera2/CameraManager;

    nop

    nop

    nop

    const-string v8, "PollUntilReconnect"

    nop

    invoke-static {v6, v8}, Lolx;->bj(Lows;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v8

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v7, v8}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    div-int/lit16 v4, p1, 0xc8

    nop

    nop

    move v8, v2

    nop

    nop

    nop

    :goto_7
    if-ge v8, v4, :cond_6

    nop

    nop

    nop

    nop

    invoke-static {}, Lcom/a;->ac()[Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_2

    nop

    array-length v9, v9

    nop

    nop

    nop

    if-lez v9, :cond_2

    nop

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_2

    nop

    nop

    nop

    sget-object p1, Lhsn;->c:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    const/16 v1, 0x498

    nop

    nop

    nop

    nop

    invoke-interface {p1, v1}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    const-string v1, "Camera Manager reconnect attempted and succeeded after ~%dms"

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    add-int/2addr v8, v4

    nop

    nop

    nop

    nop

    mul-int/2addr v8, v3

    nop

    invoke-interface {p1, v1, v8}, Lscz;->t(Ljava/lang/String;I)V

    iget-object p1, p0, Lhsn;->e:Ltud;

    nop

    nop

    nop

    invoke-interface {p1}, Ltud;->a()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Lmjv;

    nop

    nop

    nop

    sget-object v1, Lpdr;->b:Lpdr;

    nop

    nop

    sget-object v3, Lpdr;->b:Lpdr;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lpdr;->c()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v4, v1, v3, v5}, Lmjv;->p(ILpdr;Ljava/lang/String;I)V

    iget-object p1, p0, Lhsn;->g:Lhdk;

    nop

    nop

    invoke-virtual {p1}, Lhdk;->i()V

    new-instance p1, Lhsm;

    nop

    nop

    nop

    invoke-direct {p1, v4}, Lhsm;-><init>(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v6}, Lows;->close()V
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v7}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    goto/32 :goto_33

    nop

    nop

    :goto_9
    const v0, 0xc

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v3, p0, Lhsm;->c:Ljava/lang/Exception;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object v4, v7

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v1, p0, Lhsm;->b:Lpdr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    invoke-virtual {p0, v7}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lhsn;->d:Landroid/hardware/camera2/CameraManager;

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

    :goto_10
    if-nez v4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_11
    const v1, 0x6

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move-object v3, p1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    :goto_15
    iget-object p0, p0, Lhsn;->d:Landroid/hardware/camera2/CameraManager;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_16
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance p0, Lhsm;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_19
    if-nez v4, :cond_3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1a
    move-object v4, v7

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v4, 0x0

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

    nop

    nop

    :goto_1c
    move-object v3, p1

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    :try_start_4
    sget-object p1, Lhsn;->c:Lsdb;

    nop

    nop

    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    invoke-interface {p1, v3}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    const/16 v1, 0x497

    nop

    nop

    nop

    invoke-interface {p1, v1}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    invoke-interface {p1, v0}, Lscz;->s(Ljava/lang/String;)V

    sget-object p1, Lpdr;->m:Lpdr;

    nop

    nop

    nop

    nop

    nop

    instance-of v0, v3, Landroid/hardware/camera2/CameraAccessException;

    nop

    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    move-object p1, v3

    nop

    nop

    nop

    nop

    check-cast p1, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1}, Lpdr;->a(I)Lpdr;

    move-result-object p1

    nop

    goto :goto_1e

    nop

    nop

    nop

    :cond_4
    instance-of v0, v3, Ljava/lang/InterruptedException;

    nop

    nop

    if-eqz v0, :cond_5

    nop

    sget-object p1, Lpdr;->b:Lpdr;

    nop

    :cond_5
    :goto_1e
    move-object v1, p1

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lhsn;->g:Lhdk;

    nop

    nop

    invoke-virtual {p1, v1}, Lhdk;->e(Lpdr;)V

    iget-object p1, p0, Lhsn;->e:Ltud;

    nop

    nop

    invoke-interface {p1}, Ltud;->a()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Lmjv;

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    nop

    const/4 v6, 0x3

    nop

    invoke-virtual {p1, v6, v1, v0, v5}, Lmjv;->p(ILpdr;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, v4}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    :goto_21
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_23
    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Lhsn;->d:Landroid/hardware/camera2/CameraManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_25
    const-wide/16 v9, 0xc8

    nop

    nop

    :try_start_5
    invoke-static {v9, v10, v2}, Ljava/lang/Thread;->sleep(JI)V

    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    goto/16 :goto_7

    nop

    :cond_6
    sget-object v1, Lpdr;->b:Lpdr;

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Ljava/util/concurrent/TimeoutException;

    nop

    nop

    nop

    nop

    nop

    const-string v4, "Camera Manager reconnect timed out after "

    nop

    nop

    nop

    nop

    nop

    const-string v8, "ms"

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, v4, v8}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-direct {v3, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    sget-object p1, Lhsn;->c:Lsdb;

    nop

    nop

    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-interface {p1, v3}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object p1

    nop

    check-cast p1, Lscz;

    nop

    const/16 v4, 0x496

    nop

    invoke-interface {p1, v4}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    check-cast p1, Lscz;

    nop

    invoke-interface {p1, v0}, Lscz;->s(Ljava/lang/String;)V

    iget-object p1, p0, Lhsn;->g:Lhdk;

    nop

    sget-object v4, Lpdr;->b:Lpdr;

    nop

    nop

    nop

    invoke-virtual {p1, v4}, Lhdk;->e(Lpdr;)V

    iget-object p1, p0, Lhsn;->e:Ltud;

    nop

    nop

    invoke-interface {p1}, Ltud;->a()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Lmjv;

    nop

    sget-object v4, Lpdr;->b:Lpdr;

    nop

    nop

    invoke-virtual {v4}, Lpdr;->c()Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v5, v4, v8, v5}, Lmjv;->p(ILpdr;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v6}, Lows;->close()V
    :try_end_6
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/32 :goto_15

    nop

    nop

    :goto_26
    return-object p0

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/16 v2, 0x495

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const-string v0, "Camera Manager reconnect failed, or there are no cameras on this device."

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_39

    nop

    :goto_2c
    goto/32 :goto_2a

    nop

    nop

    :goto_2d
    const-string v2, "Attempting to reconnect to the camera service with a %dms timeout in %dms increments."

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

    nop

    :goto_2e
    invoke-direct {p0, v2}, Lhsm;-><init>(Z)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    move-object v4, v7

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_30
    sget-object v1, Lhsn;->c:Lsdb;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_32
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

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

    :goto_33
    goto/16 :goto_21

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

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p0, v4}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    :goto_35
    goto/32 :goto_38

    nop

    nop

    :goto_36
    goto :goto_37

    nop

    :catchall_2
    move-exception v1

    nop

    nop

    nop

    :try_start_7
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_37
    throw p1

    nop

    nop
    :try_end_7
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_38
    throw p1

    nop

    nop

    :goto_39
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_3a
    goto :goto_3b

    nop

    nop

    nop

    :catchall_4
    move-exception p1

    nop

    nop

    nop

    :goto_3b
    :try_start_8
    invoke-virtual {v6}, Lows;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/32 :goto_36

    nop

    nop

    nop
.end method

.method public final b()Lsui;
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v0, 0x1b58

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    :goto_5
    :try_start_0
    invoke-static {}, Lcom/a;->ac()[Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    array-length v0, v0

    nop

    nop

    nop

    nop

    nop

    if-lez v0, :cond_1

    nop

    nop

    iget-object v0, p0, Lhsn;->g:Lhdk;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lhdk;->i()V

    new-instance v0, Lhsm;

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Lhsm;-><init>(Z)V

    invoke-static {v0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0}, Lhsn;->c(I)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    :catch_0
    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_c
    const v0, 0x16

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final c(I)Lsui;
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_2
    const v1, 0x19

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

    :goto_3
    iget-object v0, p0, Lhsn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    new-instance v1, Lhsk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter v0

    nop

    :try_start_0
    iget-object v1, p0, Lhsn;->b:Lsuu;

    nop

    nop

    if-nez v1, :cond_1

    nop

    new-instance v1, Lsuu;

    nop

    invoke-direct {v1}, Lsuu;-><init>()V

    iput-object v1, p0, Lhsn;->b:Lsuu;

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_1
    const/4 v1, 0x0

    nop

    :goto_7
    iget-object v2, p0, Lhsn;->b:Lsuu;

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lhsn;->f:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    return-object v2

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v1, p0, p1}, Lhsk;-><init>(Lhsn;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    const v0, 0x17

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    throw p0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
