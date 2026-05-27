.class public final Lsf;
.super Lse;

# interfaces
.implements Ltl;


# instance fields
.field public final b:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;


# direct methods
.method public constructor <init>(Ltm;Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Lse;-><init>(Ltm;Landroid/hardware/camera2/CameraCaptureSession;)V

    iput-object p2, p0, Lsf;->b:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    return-void
.end method


# virtual methods
.method public final e(Lonx;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
