.class public final Lpmz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpri;


# instance fields
.field private final a:Landroid/hardware/camera2/CameraDevice;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    goto/32 :goto_3

    nop

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

    :goto_1
    iput-object p1, p0, Lpmz;->a:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sput-object p1, Lcom/CameraLensesScan;->sActiveCamIDValue:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 1

    :try_start_0
    iget-object p0, p0, Lpmz;->a:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraDevice;->getCameraAudioRestriction()I

    move-result p0

    nop
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_4

    nop

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_4

    nop

    nop

    :catch_2
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_4

    nop

    nop

    nop

    :catch_3
    move-exception p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    return v0

    nop

    nop

    :goto_c
    goto :goto_4

    nop

    :catch_4
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpmz;->a:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpmz;->a:Landroid/hardware/camera2/CameraDevice;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraDevice;->close()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public final d(Lprr;)V
    .locals 6

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xd

    nop

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

    :goto_6
    goto :goto_4

    nop

    nop

    nop

    :catch_1
    move-exception p0

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

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_8
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/32 :goto_f

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/32 :goto_11

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_4

    nop

    nop

    nop

    :catch_2
    move-exception p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_4

    nop

    :catch_3
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_11
    goto/16 :goto_4

    nop

    nop

    nop

    :catch_4
    move-exception p0

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

    :goto_12
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_13
    :try_start_0
    new-instance v0, Landroid/hardware/camera2/params/SessionConfiguration;

    nop

    nop

    nop

    iget v1, p1, Lprr;->a:I

    nop

    nop

    iget-object v2, p1, Lprr;->b:Ljava/util/List;

    nop

    nop

    nop

    new-instance v3, Lpmy;

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    invoke-direct {v3, v4}, Lpmy;-><init>(I)V

    invoke-static {v2, v3}, Lrgw;->M(Ljava/util/List;Lrsk;)Ljava/util/List;

    move-result-object v2

    nop

    iget-object v3, p1, Lprr;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    new-instance v4, Lpne;

    nop

    nop

    nop

    nop

    iget-object v5, p1, Lprr;->f:Lpko;

    nop

    invoke-direct {v4, v5}, Lpne;-><init>(Lpko;)V

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    iget-object v1, p1, Lprr;->d:Lprj;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    invoke-static {v1}, Lpuq;->bp(Lprd;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Landroid/hardware/camera2/CaptureRequest;

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    :cond_1
    iget-object v1, p1, Lprr;->e:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_2

    nop

    iget-object p1, p1, Lprr;->e:Lrss;

    nop

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Landroid/hardware/camera2/params/InputConfiguration;

    nop

    nop

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/SessionConfiguration;->setInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V

    :cond_2
    iget-object p0, p0, Lpmz;->a:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public final dy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lpmz;->a:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraDevice;->setCameraAudioRestriction(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    goto :goto_5

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_5

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_5

    nop

    nop

    :catch_2
    move-exception p0

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

    :goto_4
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :catch_3
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_5

    nop

    nop

    nop

    :catch_4
    move-exception p0

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

    :goto_b
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(Ljava/util/List;Lpko;Landroid/os/Handler;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lpmz;->a:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Lpne;

    nop

    nop

    invoke-direct {v0, p2}, Lpne;-><init>(Lpko;)V

    invoke-virtual {p0, p1, v0, p3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p1, Lpfi;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_6

    nop

    :catch_1
    move-exception p0

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

    :goto_3
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_6

    nop

    nop

    :catch_2
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_6

    nop

    nop

    :catch_3
    move-exception p0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    invoke-direct {p1, p0}, Lpfi;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_6

    nop

    nop

    nop

    :catch_4
    move-exception p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    throw p1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g(Ljava/util/List;Lpko;Landroid/os/Handler;)V
    .locals 6

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :try_start_0
    iget-object v0, p0, Lpmz;->a:Landroid/hardware/camera2/CameraDevice;

    nop

    new-instance v1, Lpne;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p2}, Lpne;-><init>(Lpko;)V

    invoke-virtual {v0, p1, v1, p3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :try_start_1
    iget-object v0, p0, Lpmz;->a:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    nop

    nop

    invoke-static {p1}, Lpuq;->bq(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lpne;

    nop

    nop

    nop

    nop

    invoke-direct {v1, p2}, Lpne;-><init>(Lpko;)V

    invoke-virtual {v0, v2, v1, p3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSessionByOutputConfigurations(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_7
    return-void

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

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

    goto/32 :goto_0

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x8

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

    :goto_b
    return-void

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    :try_start_2
    iget-object v0, p0, Lpmz;->a:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    invoke-static {p1}, Lpuq;->bq(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    nop

    nop

    sget-object v3, Lcom/a;->c:Ljava/lang/Object;

    nop

    nop

    nop

    sget-object v4, Lnne;->b:Lnne;

    nop

    if-eq v3, v4, :cond_3

    nop

    nop

    nop

    sget-object v4, Lnne;->k:Lnne;

    nop

    if-eq v3, v4, :cond_4

    nop

    nop

    nop

    sget-object v4, Lnne;->g:Lnne;

    nop

    nop

    nop

    nop

    nop

    if-eq v3, v4, :cond_5

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Lnne;->l:Lnne;

    nop

    nop

    if-eq v3, v4, :cond_6

    nop

    sget-object v4, Lnne;->c:Lnne;

    nop

    nop

    nop

    if-eq v3, v4, :cond_1

    nop

    nop

    nop

    sget-object v4, Lnne;->f:Lnne;

    nop

    nop

    nop

    nop

    if-eq v3, v4, :cond_2

    nop

    goto/16 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_1
    sget-object v3, Lcom/a;->cb:Ljava/lang/Object;

    nop

    nop

    nop

    sget-object v4, Loze;->a:Loze;

    nop

    nop

    nop

    if-eq v3, v4, :cond_7

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Loze;->b:Loze;

    nop

    nop

    nop

    if-eq v3, v4, :cond_8

    nop

    nop

    sget-object v4, Loze;->c:Loze;

    nop

    nop

    nop

    if-eq v3, v4, :cond_9

    nop

    sget-object v4, Loze;->d:Loze;

    nop

    nop

    nop

    if-eq v3, v4, :cond_b

    nop

    sget-object v4, Loze;->e:Loze;

    nop

    nop

    nop

    nop

    nop

    if-eq v3, v4, :cond_b

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Loze;->f:Loze;

    nop

    nop

    nop

    nop

    if-eq v3, v4, :cond_b

    nop

    nop

    nop

    nop

    goto/16 :goto_10

    nop

    nop

    nop

    :cond_2
    sget-object v3, Lcom/a;->cb:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Loze;->g:Loze;

    nop

    nop

    nop

    nop

    nop

    if-eq v3, v4, :cond_c

    nop

    nop

    sget-object v4, Loze;->h:Loze;

    nop

    nop

    nop

    if-eq v3, v4, :cond_d

    nop

    nop

    nop

    nop

    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :cond_3
    const-string v3, "c2VzX3BfaWRfcGhfa2V5"

    nop

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    :cond_4
    const-string v3, "c2VzX3BfaWRfbnNfa2V5"

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    nop

    :cond_5
    const-string v3, "c2VzX3BfaWRfcHRfa2V5"

    nop

    goto :goto_f

    nop

    nop

    :cond_6
    const-string v3, "c2VzX3RsX2lkX2tleQ"

    nop

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_7
    const-string v3, "c2VzX2F1dG9mcHNfaWRfa2V5"

    nop

    goto :goto_f

    nop

    :cond_8
    const-string v3, "c2VzXzI0ZnBzX2lkX2tleQ"

    nop

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_9
    const-string v3, "cHJlZl92aWRlb19hbWV0aHlzdF9rZXk"

    nop

    invoke-static {v3}, Lcom/a;->aa_mb(Ljava/lang/Object;)I

    move-result v3

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_a

    nop

    nop

    nop

    const-string v3, "c2VzX2hkcjEwX2lkX2tleQ"

    nop

    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_a
    const-string v3, "c2VzXzMwZnBzX2lkX2tleQ"

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    nop

    :cond_b
    const-string v3, "c2VzXzYwZnBzX2lkX2tleQ"

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    :cond_c
    const-string v3, "c2VzXzEyMGZwc19pZF9rZXk"

    nop

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_d
    const-string v3, "c2VzXzI0MGZwc19pZF9rZXk"

    nop

    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v3}, Lcom/a;->ac_ma(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    const-string v4, ""

    nop

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    nop

    nop

    nop

    if-nez v4, :cond_e

    nop

    nop

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto :goto_11

    nop

    :cond_e
    :goto_10
    const v3, 0x0

    nop

    nop

    nop

    :goto_11
    new-instance v4, Lpne;

    nop

    nop

    nop

    invoke-direct {v4, p2}, Lpne;-><init>(Lpko;)V

    move-object/from16 v5, p3

    nop

    nop

    nop

    nop

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/CameraDevice;->createCustomCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILandroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public final h(Ljava/util/List;Lpko;Landroid/os/Handler;)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_15

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    const v1, 0x5

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    const-string v1, "1"

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, v1}, Lcom/a;->aa(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_18

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

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x5

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v0, "c2xvd19tb19maXg"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    :try_start_0
    iget-object p0, p0, Lpmz;->a:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    nop

    nop

    new-instance v0, Lpne;

    nop

    nop

    nop

    nop

    invoke-direct {v0, p2}, Lpne;-><init>(Lpko;)V

    invoke-virtual {p0, p1, v0, p3}, Landroid/hardware/camera2/CameraDevice;->createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v0}, Lcom/a;->aa(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    :catch_2
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_14
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_15
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v0}, Lcom/a;->VariableKeyActiveLens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_17
    goto :goto_15

    nop

    :catch_3
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->a()V

    :goto_19
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_f

    nop

    nop

    :goto_1c
    goto :goto_15

    nop

    nop

    nop

    :catch_4
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i(I)Lpic;
    .locals 1

    :try_start_0
    new-instance v0, Lpic;

    nop

    nop

    iget-object p0, p0, Lpmz;->a:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    nop

    nop

    invoke-direct {v0, p0}, Lpic;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3

    goto/32 :goto_9

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    goto :goto_c

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/32 :goto_6

    nop

    nop

    :goto_3
    throw p1

    nop

    :goto_4
    invoke-direct {p1, p0}, Lpfi;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_c

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    goto :goto_c

    nop

    nop

    nop

    :catch_2
    move-exception p0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    new-instance p1, Lpfi;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object v0

    nop

    nop

    nop

    :catch_3
    move-exception p0

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

    :goto_a
    goto :goto_c

    nop

    nop

    :catch_4
    move-exception p0

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

    :goto_b
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public final j(Lpro;)Lpic;
    .locals 1

    :try_start_0
    new-instance v0, Lpic;

    nop

    iget-object p0, p0, Lpmz;->a:Landroid/hardware/camera2/CameraDevice;

    nop

    invoke-static {p1}, Lpuq;->bp(Lprd;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Landroid/hardware/camera2/TotalCaptureResult;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraDevice;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, p0}, Lpic;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-direct {p1, p0}, Lpfi;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_b

    nop

    nop

    :goto_2
    goto :goto_7

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

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

    :goto_3
    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    goto :goto_7

    nop

    nop

    :catch_2
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    goto :goto_7

    nop

    nop

    nop

    nop

    :catch_3
    move-exception p0

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

    :goto_6
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_7
    goto/32 :goto_8

    nop

    nop

    :goto_8
    new-instance p1, Lpfi;

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

    :goto_9
    return-object v0

    nop

    nop

    nop

    :catch_4
    move-exception p0

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

    :goto_a
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto/32 :goto_2

    nop

    nop

    :goto_b
    throw p1

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/32 :goto_3

    nop

    nop

    nop
.end method
