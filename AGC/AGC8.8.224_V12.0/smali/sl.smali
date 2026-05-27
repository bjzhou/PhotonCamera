.class public final Lsl;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;


# instance fields
.field private final a:Ltm;

.field private final b:Ltk;

.field private final c:Loop;

.field private final d:Loop;


# direct methods
.method public constructor <init>(Ltm;Ltk;Ltk;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    iput-object p1, p0, Lsl;->a:Ltm;

    iput-object p2, p0, Lsl;->b:Ltk;

    invoke-static {p3}, Lolp;->k(Ljava/lang/Object;)Loop;

    move-result-object p1

    iput-object p1, p0, Lsl;->c:Loop;

    const/4 p1, 0x0

    invoke-static {p1}, Lolp;->k(Ljava/lang/Object;)Loop;

    move-result-object p1

    iput-object p1, p0, Lsl;->d:Loop;

    return-void
.end method

.method private final a(Landroid/hardware/camera2/CameraCaptureSession;)Ltl;
    .locals 2

    iget-object v0, p0, Lsl;->d:Loop;

    iget-object v0, v0, Loop;->a:Ljava/lang/Object;

    check-cast v0, Ltl;

    if-nez v0, :cond_2

    instance-of v0, p1, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    if-eqz v0, :cond_0

    new-instance v0, Lsf;

    iget-object v1, p0, Lsl;->a:Ltm;

    check-cast p1, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    invoke-direct {v0, v1, p1}, Lsf;-><init>(Ltm;Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lse;

    iget-object v1, p0, Lsl;->a:Ltm;

    invoke-direct {v0, v1, p1}, Lse;-><init>(Ltm;Landroid/hardware/camera2/CameraCaptureSession;)V

    :goto_0
    iget-object p1, p0, Lsl;->d:Loop;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    iget-object p1, p0, Lsl;->d:Loop;

    iget-object p1, p1, Loop;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ltl;

    return-object p1

    :cond_2
    return-object v0
.end method

.method private final b()V
    .locals 2

    iget-object v0, p0, Lsl;->c:Loop;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Loop;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltk;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ltk;->a()V

    :cond_0
    return-void
.end method

.method private final c()V
    .locals 1

    invoke-direct {p0}, Lsl;->b()V

    iget-object v0, p0, Lsl;->b:Ltk;

    invoke-interface {v0}, Ltk;->a()V

    return-void
.end method


# virtual methods
.method public final onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lsl;->b:Ltk;

    invoke-direct {p0, p1}, Lsl;->a(Landroid/hardware/camera2/CameraCaptureSession;)Ltl;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " Active"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final onCaptureQueueEmpty(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lsl;->b:Ltk;

    invoke-direct {p0, p1}, Lsl;->a(Landroid/hardware/camera2/CameraCaptureSession;)Ltl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " CaptureQueueEmpty"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lsk;->a(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    return-void
.end method

.method public final onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lsl;->b:Ltk;

    invoke-direct {p0, p1}, Lsl;->a(Landroid/hardware/camera2/CameraCaptureSession;)Ltl;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Closed"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#onClosed"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    check-cast v0, Lty;

    invoke-virtual {v0}, Lty;->d()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-direct {p0}, Lsl;->c()V

    return-void
.end method

.method public final onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lsl;->b:Ltk;

    invoke-direct {p0, p1}, Lsl;->a(Landroid/hardware/camera2/CameraCaptureSession;)Ltl;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Configuration Failed"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "CXCP"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#onConfigureFailed"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    check-cast v0, Lty;

    invoke-virtual {v0}, Lty;->d()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-direct {p0}, Lsl;->c()V

    return-void
.end method

.method public final onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lsl;->b:Ltk;

    invoke-direct {p0, p1}, Lsl;->a(Landroid/hardware/camera2/CameraCaptureSession;)Ltl;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Configured"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "#configure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    check-cast v0, Lty;

    invoke-virtual {v0, p1}, Lty;->b(Ltl;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-direct {p0}, Lsl;->b()V

    return-void
.end method

.method public final onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lsl;->b:Ltk;

    invoke-direct {p0, p1}, Lsl;->a(Landroid/hardware/camera2/CameraCaptureSession;)Ltl;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " Ready"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
