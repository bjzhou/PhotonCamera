.class public Lse;
.super Ljava/lang/Object;

# interfaces
.implements Ltl;


# instance fields
.field public final a:Ltm;

.field private final b:Landroid/hardware/camera2/CameraCaptureSession;


# direct methods
.method public constructor <init>(Ltm;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lse;->a:Ltm;

    iput-object p2, p0, Lse;->b:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method


# virtual methods
.method public final a(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lse;->b:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    instance-of p2, p1, Ljava/lang/IllegalArgumentException;

    if-nez p2, :cond_1

    instance-of p2, p1, Ljava/lang/IllegalStateException;

    if-nez p2, :cond_1

    instance-of p2, p1, Landroid/hardware/camera2/CameraAccessException;

    if-nez p2, :cond_1

    instance-of p2, p1, Ljava/lang/SecurityException;

    if-nez p2, :cond_1

    instance-of p2, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    new-instance p2, Lub;

    invoke-direct {p2, p1}, Lub;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final b(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lse;->b:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    instance-of p2, p1, Ljava/lang/IllegalArgumentException;

    if-nez p2, :cond_1

    instance-of p2, p1, Ljava/lang/IllegalStateException;

    if-nez p2, :cond_1

    instance-of p2, p1, Landroid/hardware/camera2/CameraAccessException;

    if-nez p2, :cond_1

    instance-of p2, p1, Ljava/lang/SecurityException;

    if-nez p2, :cond_1

    instance-of p2, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    new-instance p2, Lub;

    invoke-direct {p2, p1}, Lub;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final c(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lse;->b:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    instance-of p2, p1, Ljava/lang/IllegalArgumentException;

    if-nez p2, :cond_1

    instance-of p2, p1, Ljava/lang/IllegalStateException;

    if-nez p2, :cond_1

    instance-of p2, p1, Landroid/hardware/camera2/CameraAccessException;

    if-nez p2, :cond_1

    instance-of p2, p1, Ljava/lang/SecurityException;

    if-nez p2, :cond_1

    instance-of p2, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    new-instance p2, Lub;

    invoke-direct {p2, p1}, Lub;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lse;->b:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    return-void
.end method

.method public final d(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lse;->b:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    instance-of p2, p1, Ljava/lang/IllegalArgumentException;

    if-nez p2, :cond_1

    instance-of p2, p1, Ljava/lang/IllegalStateException;

    if-nez p2, :cond_1

    instance-of p2, p1, Landroid/hardware/camera2/CameraAccessException;

    if-nez p2, :cond_1

    instance-of p2, p1, Ljava/lang/SecurityException;

    if-nez p2, :cond_1

    instance-of p2, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    new-instance p2, Lub;

    invoke-direct {p2, p1}, Lub;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public e(Lonx;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final f()Ltm;
    .locals 1

    iget-object v0, p0, Lse;->a:Ltm;

    return-object v0
.end method

.method public final g()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lse;->b:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/hardware/camera2/CameraAccessException;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/lang/UnsupportedOperationException;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    throw v0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    new-instance v1, Lub;

    invoke-direct {v1, v0}, Lub;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final h(Ljava/util/List;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lse;->b:Landroid/hardware/camera2/CameraCaptureSession;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Lljr;->ao(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lso;

    const-class v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-static {v3}, Lonl;->a(Ljava/lang/Class;)Lonx;

    move-result-object v3

    invoke-virtual {v2, v3}, Lso;->e(Lonx;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lss;->e(Landroid/hardware/camera2/CameraCaptureSession;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/IllegalStateException;

    if-nez v0, :cond_2

    instance-of v0, p1, Landroid/hardware/camera2/CameraAccessException;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/SecurityException;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    throw p1

    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    new-instance v0, Lub;

    invoke-direct {v0, p1}, Lub;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
