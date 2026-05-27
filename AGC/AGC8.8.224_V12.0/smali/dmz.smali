.class public final Ldmz;
.super Ljava/lang/Object;


# static fields
.field private static final c:Lnak;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lnph;

.field private final d:Landroid/hardware/camera2/CameraManager;

.field private final e:Logd;

.field private final f:Ljava/util/concurrent/Executor;

.field private final g:Lkct;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/device/CameraDeviceVerifier"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldmz;->c:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraManager;Logd;Ljava/util/concurrent/Executor;Lkct;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldmz;->d:Landroid/hardware/camera2/CameraManager;

    iput-object p2, p0, Ldmz;->e:Logd;

    iput-object p3, p0, Ldmz;->f:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Ldmz;->g:Lkct;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldmz;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(I)Ldmy;
    .locals 12

    const-string v0, "Camera Manager reconnect failed, or there are no cameras on this device."

    sget-object v1, Ldmz;->c:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x3ff

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Attempting to reconnect to the camera service with a %dms timeout in %dms increments."

    const/16 v3, 0xc8

    invoke-interface {v1, v2, p1, v3}, Lnah;->s(Ljava/lang/String;II)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    :try_start_0
    new-instance v6, Ljuf;

    invoke-direct {v6}, Ljuf;-><init>()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v7, 0x1

    :try_start_1
    new-instance v8, Ldmx;

    invoke-direct {v8, v1}, Ldmx;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v4, p0, Ldmz;->d:Landroid/hardware/camera2/CameraManager;

    const-string v9, "PollUntilReconnect"

    invoke-static {v6, v9}, Ljvd;->p(Ljuf;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    div-int/lit16 v4, p1, 0xc8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v4, :cond_1

    iget-object v10, p0, Ldmz;->d:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v10}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    array-length v10, v10

    if-lez v10, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    if-eqz v10, :cond_0

    sget-object p1, Ldmz;->c:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v1, 0x402

    invoke-interface {p1, v1}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v1, "Camera Manager reconnect attempted and succeeded after ~%dms"

    add-int/2addr v9, v7

    mul-int/lit16 v9, v9, 0xc8

    invoke-interface {p1, v1, v9}, Lnah;->p(Ljava/lang/String;I)V

    iget-object p1, p0, Ldmz;->e:Logd;

    invoke-interface {p1}, Logd;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkcf;

    sget-object v1, Lkbo;->b:Lkbo;

    sget-object v3, Lkbo;->b:Lkbo;

    invoke-virtual {v3}, Lkbo;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v7, v1, v3, v5}, Lkcf;->aE(ILkbo;Ljava/lang/String;I)V

    iget-object p1, p0, Ldmz;->g:Lkct;

    invoke-interface {p1}, Lkct;->i()V

    new-instance p1, Ldmy;

    invoke-direct {p1, v7}, Ldmy;-><init>(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v6}, Ljuf;->close()V
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Ldmz;->d:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, v8}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_0
    const-wide/16 v10, 0xc8

    :try_start_4
    invoke-static {v10, v11, v2}, Ljava/lang/Thread;->sleep(JI)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lkbo;->b:Lkbo;

    new-instance v3, Ljava/util/concurrent/TimeoutException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Camera Manager reconnect timed out after "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    sget-object p1, Ldmz;->c:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    invoke-interface {p1, v3}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v4, 0x400

    invoke-interface {p1, v4}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    invoke-interface {p1, v0}, Lnah;->o(Ljava/lang/String;)V

    iget-object p1, p0, Ldmz;->g:Lkct;

    sget-object v4, Lkbo;->b:Lkbo;

    invoke-interface {p1, v4}, Lkct;->e(Lkbo;)V

    iget-object p1, p0, Ldmz;->e:Logd;

    invoke-interface {p1}, Logd;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkcf;

    sget-object v4, Lkbo;->b:Lkbo;

    invoke-virtual {v4}, Lkbo;->c()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v5, v4, v9, v5}, Lkcf;->aE(ILkbo;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v6}, Ljuf;->close()V
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object p1, p0, Ldmz;->d:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p1, v8}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    goto/16 :goto_9

    :goto_1
    move-object v4, v8

    goto/16 :goto_a

    :goto_2
    move-object v3, p1

    move-object v4, v8

    goto :goto_7

    :catchall_1
    move-exception p1

    move-object v4, v8

    goto :goto_3

    :catchall_2
    move-exception p1

    :goto_3
    :try_start_6
    invoke-virtual {v6}, Ljuf;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v1

    :try_start_7
    const-class v3, Ljava/lang/Throwable;

    const-string v6, "addSuppressed"

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Throwable;

    aput-object v9, v8, v2

    invoke-virtual {v3, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v1, v6, v2

    invoke-virtual {v3, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catch_2
    move-exception v1

    :goto_4
    :try_start_8
    throw p1
    :try_end_8
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    goto/16 :goto_a

    :catch_3
    move-exception p1

    goto :goto_5

    :catch_4
    move-exception p1

    :goto_5
    move-object v3, p1

    goto :goto_7

    :catchall_5
    move-exception p1

    goto :goto_a

    :catch_5
    move-exception p1

    goto :goto_6

    :catch_6
    move-exception p1

    :goto_6
    move-object v3, p1

    :goto_7
    :try_start_9
    sget-object p1, Ldmz;->c:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    invoke-interface {p1, v3}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v1, 0x401

    invoke-interface {p1, v1}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    invoke-interface {p1, v0}, Lnah;->o(Ljava/lang/String;)V

    sget-object p1, Lkbo;->m:Lkbo;

    instance-of v0, v3, Landroid/hardware/camera2/CameraAccessException;

    if-eqz v0, :cond_2

    move-object p1, v3

    check-cast p1, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p1

    invoke-static {p1}, Lkbo;->a(I)Lkbo;

    move-result-object p1

    move-object v1, p1

    goto :goto_8

    :cond_2
    instance-of v0, v3, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_3

    sget-object p1, Lkbo;->b:Lkbo;

    :cond_3
    move-object v1, p1

    :goto_8
    iget-object p1, p0, Ldmz;->g:Lkct;

    invoke-interface {p1, v1}, Lkct;->e(Lkbo;)V

    iget-object p1, p0, Ldmz;->e:Logd;

    invoke-interface {p1}, Logd;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkcf;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x3

    invoke-interface {p1, v6, v1, v0, v5}, Lkcf;->aE(ILkbo;Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-eqz v4, :cond_4

    iget-object p1, p0, Ldmz;->d:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    goto :goto_9

    :cond_4
    :goto_9
    new-instance p1, Ldmy;

    invoke-direct {p1, v2}, Ldmy;-><init>(Z)V

    iput-object v1, p1, Ldmy;->b:Lkbo;

    iput-object v3, p1, Ldmy;->c:Ljava/lang/Exception;

    return-object p1

    :catchall_6
    move-exception p1

    :goto_a
    if-eqz v4, :cond_5

    iget-object v0, p0, Ldmz;->d:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    :cond_5
    goto :goto_c

    :goto_b
    throw p1

    :goto_c
    goto :goto_b
.end method

.method public final b()Lnou;
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldmz;->d:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Ldmz;->g:Lkct;

    invoke-interface {v0}, Lkct;->i()V

    new-instance v0, Ldmy;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ldmy;-><init>(Z)V

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/16 v0, 0x1b58

    invoke-virtual {p0, v0}, Ldmz;->c(I)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)Lnou;
    .locals 4

    iget-object v0, p0, Ldmz;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ldmz;->b:Lnph;

    if-nez v1, :cond_0

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v1

    iput-object v1, p0, Ldmz;->b:Lnph;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ldmz;->b:Lnph;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    iget-object v0, p0, Ldmz;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lbbh;

    const/16 v3, 0xb

    invoke-direct {v1, p0, p1, v3}, Lbbh;-><init>(Ldmz;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-object v2

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
