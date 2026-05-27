.class public final Lkku;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;


# instance fields
.field private final a:Lkom;


# direct methods
.method public constructor <init>(Lkom;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    iput-object p1, p0, Lkku;->a:Lkom;

    return-void
.end method

.method private static final a(Landroid/hardware/camera2/CameraCaptureSession;)Lkon;
    .locals 1

    instance-of v0, p0, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    if-eqz v0, :cond_0

    new-instance v0, Lkkn;

    check-cast p0, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    invoke-direct {v0, p0}, Lkkn;-><init>(Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;)V

    return-object v0

    :cond_0
    new-instance v0, Lkkm;

    invoke-direct {v0, p0}, Lkkm;-><init>(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-object v0
.end method


# virtual methods
.method public final onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    iget-object v0, p0, Lkku;->a:Lkom;

    invoke-static {p1}, Lkku;->a(Landroid/hardware/camera2/CameraCaptureSession;)Lkon;

    invoke-interface {v0}, Lkom;->i()V

    return-void
.end method

.method public final onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    iget-object v0, p0, Lkku;->a:Lkom;

    invoke-static {p1}, Lkku;->a(Landroid/hardware/camera2/CameraCaptureSession;)Lkon;

    move-result-object p1

    invoke-interface {v0, p1}, Lkom;->d(Lkon;)V

    return-void
.end method

.method public final onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    iget-object v0, p0, Lkku;->a:Lkom;

    invoke-static {p1}, Lkku;->a(Landroid/hardware/camera2/CameraCaptureSession;)Lkon;

    move-result-object p1

    invoke-interface {v0, p1}, Lkom;->e(Lkon;)V

    return-void
.end method

.method public final onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    iget-object v0, p0, Lkku;->a:Lkom;

    invoke-static {p1}, Lkku;->a(Landroid/hardware/camera2/CameraCaptureSession;)Lkon;

    move-result-object p1

    invoke-interface {v0, p1}, Lkom;->f(Lkon;)V

    return-void
.end method

.method public final onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    iget-object v0, p0, Lkku;->a:Lkom;

    invoke-static {p1}, Lkku;->a(Landroid/hardware/camera2/CameraCaptureSession;)Lkon;

    invoke-interface {v0}, Lkom;->j()V

    return-void
.end method

.method public final onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lkku;->a:Lkom;

    invoke-static {p1}, Lkku;->a(Landroid/hardware/camera2/CameraCaptureSession;)Lkon;

    invoke-interface {v0, p2}, Lkom;->k(Landroid/view/Surface;)V

    return-void
.end method
