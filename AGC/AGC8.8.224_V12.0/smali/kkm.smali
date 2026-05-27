.class public Lkkm;
.super Ljava/lang/Object;

# interfaces
.implements Lkon;


# instance fields
.field public final a:Landroid/hardware/camera2/CameraCaptureSession;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkkm;->a:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method


# virtual methods
.method public final a(Lkop;Lkol;Landroid/os/Handler;)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lkkm;->a:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-static {p1}, Lklg;->d(Lkoi;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CaptureRequest;

    new-instance v1, Lkkl;

    invoke-direct {v1, p2}, Lkkl;-><init>(Lkol;)V

    invoke-virtual {v0, p1, v1, p3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance p2, Lkok;

    invoke-direct {p2, p1}, Lkok;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final b(Ljava/util/List;Lkol;Landroid/os/Handler;)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lkkm;->a:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-static {p1}, Lklg;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Lkkl;

    invoke-direct {v1, p2}, Lkkl;-><init>(Lkol;)V

    invoke-virtual {v0, p1, v1, p3}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance p2, Lkok;

    invoke-direct {p2, p1}, Lkok;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final c(Lkop;Lkol;Landroid/os/Handler;)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lkkm;->a:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-static {p1}, Lklg;->d(Lkoi;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CaptureRequest;

    new-instance v1, Lkkl;

    invoke-direct {v1, p2}, Lkkl;-><init>(Lkol;)V

    invoke-virtual {v0, p1, v1, p3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance p2, Lkok;

    invoke-direct {p2, p1}, Lkok;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lkkm;->a:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    return-void
.end method

.method public final d()Lkoo;
    .locals 2

    new-instance v0, Lkko;

    iget-object v1, p0, Lkkm;->a:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    invoke-direct {v0, v1}, Lkko;-><init>(Landroid/hardware/camera2/CameraDevice;)V

    return-object v0
.end method

.method public final e()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lkkm;->a:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Lkok;

    invoke-direct {v1, v0}, Lkok;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final f(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lkkm;->a:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-static {p1}, Lklg;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    sget-object v1, Livc;->a:[I

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCaptureSession;->finalizeOutputConfigurations(Ljava/util/List;)V

    return-void
.end method

.method public final g(Landroid/view/Surface;I)V
    .locals 3

    iget-object v0, p0, Lkkm;->a:Landroid/hardware/camera2/CameraCaptureSession;

    sget-object v1, Livc;->a:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Livc;->a([II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p2, p1}, Lcom/google/android/camera/experimental2015/ExperimentalSessionExtensions;->prepare(Landroid/hardware/camera2/CameraCaptureSession;ILandroid/view/Surface;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCaptureSession;->prepare(Landroid/view/Surface;)V

    return-void
.end method

.method public final h()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lkkm;->a:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Lkok;

    invoke-direct {v1, v0}, Lkok;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
