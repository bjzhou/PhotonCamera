.class public Lpmw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lprh;


# instance fields
.field public final a:Landroid/hardware/camera2/CameraCaptureSession;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    goto/32 :goto_0

    nop

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

    nop

    nop

    :goto_1
    iput-object p1, p0, Lpmw;->a:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    nop

    goto/32 :goto_2

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
.method public final a()Landroid/view/Surface;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->getInputSurface()Landroid/view/Surface;

    move-result-object p0

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

    nop

    :goto_2
    iget-object p0, p0, Lpmw;->a:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final b()Lpri;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    :goto_2
    iget-object p0, p0, Lpmw;->a:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0}, Lpmz;-><init>(Landroid/hardware/camera2/CameraDevice;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lpmz;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lpmw;->a:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    nop

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lprg;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {v0, p0}, Lprg;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    goto/32 :goto_1

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
    iget-object p0, p0, Lpmw;->a:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final d(Ljava/util/List;)V
    .locals 1

    goto/32 :goto_2

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
    sget-object v0, Lnys;->a:[I

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-static {p1}, Lpuq;->bq(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCaptureSession;->finalizeOutputConfigurations(Ljava/util/List;)V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iget-object p0, p0, Lpmw;->a:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lpmw;->a:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lprg;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    :goto_2
    invoke-direct {v0, p0}, Lprg;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

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

    goto/32 :goto_0

    nop

    nop
.end method

.method public final f(Lprj;Lpll;Landroid/os/Handler;)I
    .locals 1

    :try_start_0
    iget-object p0, p0, Lpmw;->a:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    invoke-static {p1}, Lpuq;->bp(Lprd;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Landroid/hardware/camera2/CaptureRequest;

    nop

    nop

    nop

    new-instance v0, Lpmv;

    nop

    nop

    nop

    invoke-direct {v0, p2}, Lpmv;-><init>(Lpll;)V

    invoke-virtual {p0, p1, v0, p3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p0

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1, p0}, Lprg;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p1, Lprg;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g(Ljava/util/List;Lpll;Landroid/os/Handler;)I
    .locals 1

    :try_start_0
    iget-object p0, p0, Lpmw;->a:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    invoke-static {p1}, Lpuq;->bq(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    nop

    nop

    nop

    nop

    new-instance v0, Lpmv;

    nop

    nop

    invoke-direct {v0, p2}, Lpmv;-><init>(Lpll;)V

    invoke-virtual {p0, p1, v0, p3}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p0

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_0

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
    new-instance p1, Lprg;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p1, p0}, Lprg;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw p1

    nop

    nop
.end method

.method public final h(Lprj;Lpll;Landroid/os/Handler;)I
    .locals 1

    :try_start_0
    iget-object p0, p0, Lpmw;->a:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    nop

    nop

    invoke-static {p1}, Lpuq;->bp(Lprd;)Ljava/lang/Object;

    move-result-object p1

    nop

    check-cast p1, Landroid/hardware/camera2/CaptureRequest;

    nop

    new-instance v0, Lpmv;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, p2}, Lpmv;-><init>(Lpll;)V

    invoke-virtual {p0, p1, v0, p3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p0

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_0

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

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    new-instance p1, Lprg;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    :goto_3
    invoke-direct {p1, p0}, Lprg;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method
