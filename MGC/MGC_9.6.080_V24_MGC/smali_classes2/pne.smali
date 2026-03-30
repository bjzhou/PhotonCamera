.class public final Lpne;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "PG"


# instance fields
.field private final a:Lpko;


# direct methods
.method public constructor <init>(Lpko;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lpne;->a:Lpko;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method private static final a(Landroid/hardware/camera2/CameraCaptureSession;)Lprh;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    :goto_2
    new-instance v0, Lpmw;

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

    nop

    :goto_3
    instance-of v0, p0, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p0}, Lpmw;-><init>(Landroid/hardware/camera2/CameraCaptureSession;)V

    goto/32 :goto_1

    nop

    nop

    :goto_5
    check-cast p0, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, p0}, Lpmx;-><init>(Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lpmx;

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
.end method


# virtual methods
.method public final onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lpko;->i()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-static {p1}, Lpne;->a(Landroid/hardware/camera2/CameraCaptureSession;)Lprh;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iget-object p0, p0, Lpne;->a:Lpko;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-static {p1}, Lpne;->a(Landroid/hardware/camera2/CameraCaptureSession;)Lprh;

    move-result-object p1

    nop

    nop

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

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lpko;->d(Lprh;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lpne;->a:Lpko;

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpne;->a:Lpko;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lpko;->e(Lprh;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Lpne;->a(Landroid/hardware/camera2/CameraCaptureSession;)Lprh;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lpko;->f(Lprh;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Lpne;->a(Landroid/hardware/camera2/CameraCaptureSession;)Lprh;

    move-result-object p1

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lpne;->a:Lpko;

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpne;->a:Lpko;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Lpne;->a(Landroid/hardware/camera2/CameraCaptureSession;)Lprh;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lpko;->j()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method
