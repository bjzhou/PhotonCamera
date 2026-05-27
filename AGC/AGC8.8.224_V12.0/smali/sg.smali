.class public final Lsg;
.super Ljava/lang/Object;

# interfaces
.implements Ltm;


# instance fields
.field public final a:Lrd;

.field public final b:Landroid/hardware/camera2/CameraDevice;

.field public final c:Ljava/lang/String;

.field public final d:Loop;


# direct methods
.method public constructor <init>(Lrd;Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsg;->a:Lrd;

    iput-object p2, p0, Lsg;->b:Landroid/hardware/camera2/CameraDevice;

    iput-object p3, p0, Lsg;->c:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-static {p1}, Lolp;->k(Ljava/lang/Object;)Loop;

    move-result-object p1

    iput-object p1, p0, Lsg;->d:Loop;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ltk;Landroid/os/Handler;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lsg;->d:Loop;

    iget-object v0, v0, Loop;->a:Ljava/lang/Object;

    check-cast v0, Ltk;

    iget-object v1, p0, Lsg;->d:Loop;

    invoke-virtual {v1, v0, p2}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsg;->b:Landroid/hardware/camera2/CameraDevice;

    new-instance v2, Lsl;

    invoke-direct {v2, p0, p2, v0}, Lsl;-><init>(Ltm;Ltk;Ltk;)V

    invoke-virtual {v1, p1, v2, p3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    return-void

    :cond_0
    const-string p1, "Check failed."

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    instance-of p2, p1, Ljava/lang/IllegalArgumentException;

    if-nez p2, :cond_2

    instance-of p2, p1, Ljava/lang/IllegalStateException;

    if-nez p2, :cond_2

    instance-of p2, p1, Landroid/hardware/camera2/CameraAccessException;

    if-nez p2, :cond_2

    instance-of p2, p1, Ljava/lang/SecurityException;

    if-nez p2, :cond_2

    instance-of p2, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    new-instance p2, Lub;

    invoke-direct {p2, p1}, Lub;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final e(Lonx;)Ljava/lang/Object;
    .locals 1

    const-class v0, Landroid/hardware/camera2/CameraDevice;

    invoke-static {v0}, Lonl;->a(Ljava/lang/Class;)Lonx;

    move-result-object v0

    invoke-static {p1, v0}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lsg;->b:Landroid/hardware/camera2/CameraDevice;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
