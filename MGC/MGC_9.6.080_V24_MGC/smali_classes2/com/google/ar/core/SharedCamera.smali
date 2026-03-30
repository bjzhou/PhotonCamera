.class public Lcom/google/ar/core/SharedCamera;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final TAG:Ljava/lang/String; = "ArSdk-SharedCamera"


# instance fields
.field private cameraSharedWithAr:Z

.field private final session:Lcom/google/ar/core/Session;

.field private sharedCameraHandler:Landroid/os/Handler;

.field private final sharedCameraInfo:Lrqs;


# direct methods
.method public static bridge synthetic -$$Nest$fgetsharedCameraInfo(Lcom/google/ar/core/SharedCamera;)Lrqs;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraInfo:Lrqs;

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
.end method

.method public static bridge synthetic -$$Nest$mclose(Lcom/google/ar/core/SharedCamera;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lcom/google/ar/core/SharedCamera;->7201c16e58448d54903ab89503b6f617m()V

    goto/32 :goto_1

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

    nop
.end method

.method public static bridge synthetic -$$Nest$mgetGpuSurface(Lcom/google/ar/core/SharedCamera;)Landroid/view/Surface;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lcom/google/ar/core/SharedCamera;->01864d881ccd609e1a2c68214e2b739em()Landroid/view/Surface;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public static bridge synthetic -$$Nest$mgetGpuSurfaceTexture(Lcom/google/ar/core/SharedCamera;)Landroid/graphics/SurfaceTexture;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lcom/google/ar/core/SharedCamera;->3f3d3152d7daca0e3f89fa8bd25309fcm()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop
.end method

.method public static bridge synthetic -$$Nest$monCaptureSessionActive(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/ar/core/SharedCamera;->072f5bdd2cf47e06a1ae51cef49a5666m(Landroid/hardware/camera2/CameraCaptureSession;)V

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
.end method

.method public static bridge synthetic -$$Nest$monCaptureSessionClosed(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/ar/core/SharedCamera;->8f87ce95d7840b9c26606865aaec651fm(Landroid/hardware/camera2/CameraCaptureSession;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static bridge synthetic -$$Nest$monCaptureSessionConfigureFailed(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    goto/32 :goto_1

    nop

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

    nop

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/ar/core/SharedCamera;->890aa7d5f3b17f44c24831c7ddfc7909m(Landroid/hardware/camera2/CameraCaptureSession;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static bridge synthetic -$$Nest$monCaptureSessionConfigured(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/ar/core/SharedCamera;->ee39c32d7eacbeefbd34f1d6b036b2fam(Landroid/hardware/camera2/CameraCaptureSession;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static bridge synthetic -$$Nest$monCaptureSessionReady(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/ar/core/SharedCamera;->f159565988466eed40bfd2532f2f0e3cm(Landroid/hardware/camera2/CameraCaptureSession;)V

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

    nop
.end method

.method public static bridge synthetic -$$Nest$monDeviceClosed(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/ar/core/SharedCamera;->0a7f87e23eabdf76549251dab96d8c88m(Landroid/hardware/camera2/CameraDevice;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static bridge synthetic -$$Nest$monDeviceDisconnected(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/ar/core/SharedCamera;->048dc591f64336824dba70e99cbee389m(Landroid/hardware/camera2/CameraDevice;)V

    goto/32 :goto_1

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

    nop
.end method

.method public static bridge synthetic -$$Nest$monDeviceOpened(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/ar/core/SharedCamera;->8138dd1234b07038bafdb30e92fc2d1dm(Landroid/hardware/camera2/CameraDevice;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static bridge synthetic -$$Nest$msetDummyListenerToAvoidImageBufferStarvation(Lcom/google/ar/core/SharedCamera;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lcom/google/ar/core/SharedCamera;->b6dd63a115feb36a96a08a6a7afb85a4m()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method private 01864d881ccd609e1a2c68214e2b739em()Landroid/view/Surface;
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x5

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, v0, v1, v2}, Lcom/google/ar/core/SharedCamera;->nativeSharedCameraGetSurface(JLandroid/hardware/camera2/CameraDevice;)Landroid/view/Surface;

    move-result-object p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x5

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    check-cast v2, Landroid/hardware/camera2/CameraDevice;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v2, v2, Lrqs;->a:Ljava/lang/Object;

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

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v2, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraInfo:Lrqs;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop
.end method

.method private 048dc591f64336824dba70e99cbee389m(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lrqs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, v0, v1, p1}, Lcom/google/ar/core/SharedCamera;->nativeSharedCameraOnDisconnected(JLandroid/hardware/camera2/CameraDevice;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    iput-boolean p1, p0, Lcom/google/ar/core/SharedCamera;->cameraSharedWithAr:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    :goto_d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    :goto_11
    iget-object p0, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraInfo:Lrqs;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method private 072f5bdd2cf47e06a1ae51cef49a5666m(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0, v1, p1}, Lcom/google/ar/core/SharedCamera;->nativeSharedCameraCaptureSessionActive(JLandroid/hardware/camera2/CameraCaptureSession;)V

    goto/32 :goto_4

    nop

    nop

    :goto_3
    const v1, 0x14

    nop

    nop

    goto/32 :goto_1

    nop

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
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0xa

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method private 0a7f87e23eabdf76549251dab96d8c88m(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_1
    const v0, 0x14

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p1, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, v0, v1, p1}, Lcom/google/ar/core/SharedCamera;->nativeSharedCameraOnClosed(JLandroid/hardware/camera2/CameraDevice;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    iput-boolean p1, p0, Lcom/google/ar/core/SharedCamera;->cameraSharedWithAr:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method private 2339bd8e2c3449bb66e92aafd4d8b6a4m(Landroid/media/ImageReader;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraHandler:Landroid/os/Handler;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, v0, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lcom/google/ar/core/SharedCamera$$ExternalSyntheticLambda0;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Lcom/google/ar/core/SharedCamera$$ExternalSyntheticLambda0;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method

.method private 321b9a41e8a25ba26102f0bf6fa48565m()Landroid/media/ImageReader;
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lcom/google/ar/core/SharedCamera;->nativeSharedCameraGetImageReaderMotionTracking(JLandroid/hardware/camera2/CameraDevice;)Landroid/media/ImageReader;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    :goto_4
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_7
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

    :goto_8
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v2, Landroid/hardware/camera2/CameraDevice;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v2, v2, Lrqs;->a:Ljava/lang/Object;

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

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    :goto_e
    iget-object v2, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraInfo:Lrqs;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x4

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
.end method

.method private 3f3d3152d7daca0e3f89fa8bd25309fcm()Landroid/graphics/SurfaceTexture;
    .locals 3

    goto/32 :goto_2

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0, v1, v2}, Lcom/google/ar/core/SharedCamera;->nativeSharedCameraGetSurfaceTexture(JLandroid/hardware/camera2/CameraDevice;)Landroid/graphics/SurfaceTexture;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const v0, 0x1e

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    return-object p0

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v2, Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    iget-object v2, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraInfo:Lrqs;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    iget-object v2, v2, Lrqs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private 4d6fb4d2df2ab47563c3badb1982a32cm()Landroid/media/ImageReader;
    .locals 3

    goto/32 :goto_7

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

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
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    invoke-direct {p0, v0, v1, v2}, Lcom/google/ar/core/SharedCamera;->nativeSharedCameraGetImageReader(JLandroid/hardware/camera2/CameraDevice;)Landroid/media/ImageReader;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    iget-object v2, v2, Lrqs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    iget-object v2, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraInfo:Lrqs;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v2, Landroid/hardware/camera2/CameraDevice;

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

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop
.end method

.method private 7201c16e58448d54903ab89503b6f617m()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_12

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraHandler:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x18

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    nop

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

    :goto_5
    goto/32 :goto_1

    nop

    nop

    :goto_6
    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraHandler:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x0

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

    nop

    :goto_e
    iput-object v1, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraHandler:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private 8138dd1234b07038bafdb30e92fc2d1dm(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, v0, v1, p1}, Lcom/google/ar/core/SharedCamera;->nativeSharedCameraOnOpened(JLandroid/hardware/camera2/CameraDevice;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, v0, Lrqs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-boolean v0, p0, Lcom/google/ar/core/SharedCamera;->cameraSharedWithAr:Z

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraInfo:Lrqs;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x9

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x11

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method private 890aa7d5f3b17f44c24831c7ddfc7909m(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, v0, v1, p1}, Lcom/google/ar/core/SharedCamera;->nativeSharedCameraCaptureSessionConfigureFailed(JLandroid/hardware/camera2/CameraCaptureSession;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x15

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

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    :goto_b
    const v0, 0xb

    nop

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

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method private 8f87ce95d7840b9c26606865aaec651fm(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1
    const v0, 0x18

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    invoke-direct {p0, v0, v1, p1}, Lcom/google/ar/core/SharedCamera;->nativeSharedCameraCaptureSessionClosed(JLandroid/hardware/camera2/CameraCaptureSession;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    goto/32 :goto_b

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x14

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public constructor <init>(Lcom/google/ar/core/Session;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    new-instance v0, Landroid/os/HandlerThread;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xb

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

    :goto_7
    iput-boolean v0, p0, Lcom/google/ar/core/SharedCamera;->cameraSharedWithAr:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraInfo:Lrqs;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    new-instance v1, Landroid/os/Handler;

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

    :goto_b
    new-instance v0, Lrqs;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, "SharedCameraHandlerThread"

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

    :goto_d
    iput-object v1, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraHandler:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_15

    nop

    nop

    :goto_12
    invoke-direct {v0}, Lrqs;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_14
    goto/32 :goto_17

    nop

    nop

    :goto_15
    goto/32 :goto_10

    nop

    nop

    :goto_16
    return-void

    nop

    :goto_17
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object p1, p0, Lcom/google/ar/core/SharedCamera;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method

.method private b6dd63a115feb36a96a08a6a7afb85a4m()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lcom/google/ar/core/SharedCamera;->321b9a41e8a25ba26102f0bf6fa48565m()Landroid/media/ImageReader;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Lcom/google/ar/core/SharedCamera;->2339bd8e2c3449bb66e92aafd4d8b6a4m(Landroid/media/ImageReader;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Lcom/google/ar/core/SharedCamera;->4d6fb4d2df2ab47563c3badb1982a32cm()Landroid/media/ImageReader;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, v0}, Lcom/google/ar/core/SharedCamera;->2339bd8e2c3449bb66e92aafd4d8b6a4m(Landroid/media/ImageReader;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method private ee39c32d7eacbeefbd34f1d6b036b2fam(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-direct {p0, v0, v1, p1}, Lcom/google/ar/core/SharedCamera;->nativeSharedCameraCaptureSessionConfigured(JLandroid/hardware/camera2/CameraCaptureSession;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xa

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop
.end method

.method private f159565988466eed40bfd2532f2f0e3cm(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, v0, v1, p1}, Lcom/google/ar/core/SharedCamera;->nativeSharedCameraCaptureSessionReady(JLandroid/hardware/camera2/CameraCaptureSession;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_c
    const v0, 0xe

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
.end method

.method static synthetic lambda$setDummyOnImageAvailableListener$0(Landroid/media/ImageReader;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p0

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

    :goto_2
    invoke-virtual {p0}, Landroid/media/Image;->close()V

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private native nativeSharedCameraCaptureSessionActive(JLandroid/hardware/camera2/CameraCaptureSession;)V
.end method

.method private native nativeSharedCameraCaptureSessionClosed(JLandroid/hardware/camera2/CameraCaptureSession;)V
.end method

.method private native nativeSharedCameraCaptureSessionConfigureFailed(JLandroid/hardware/camera2/CameraCaptureSession;)V
.end method

.method private native nativeSharedCameraCaptureSessionConfigured(JLandroid/hardware/camera2/CameraCaptureSession;)V
.end method

.method private native nativeSharedCameraCaptureSessionReady(JLandroid/hardware/camera2/CameraCaptureSession;)V
.end method

.method private native nativeSharedCameraGetImageReader(JLandroid/hardware/camera2/CameraDevice;)Landroid/media/ImageReader;
.end method

.method private native nativeSharedCameraGetImageReaderMotionTracking(JLandroid/hardware/camera2/CameraDevice;)Landroid/media/ImageReader;
.end method

.method private native nativeSharedCameraGetSurface(JLandroid/hardware/camera2/CameraDevice;)Landroid/view/Surface;
.end method

.method private native nativeSharedCameraGetSurfaceTexture(JLandroid/hardware/camera2/CameraDevice;)Landroid/graphics/SurfaceTexture;
.end method

.method private native nativeSharedCameraOnClosed(JLandroid/hardware/camera2/CameraDevice;)V
.end method

.method private native nativeSharedCameraOnDisconnected(JLandroid/hardware/camera2/CameraDevice;)V
.end method

.method private native nativeSharedCameraOnOpened(JLandroid/hardware/camera2/CameraDevice;)V
.end method

.method private native nativeSharedCameraSetAppSurfaces(JLjava/lang/String;Ljava/util/List;)V
.end method

.method private native nativeSharedCameraSetCaptureCallback(JLandroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)V
.end method


# virtual methods
.method public createARDeviceStateCallback(Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)Landroid/hardware/camera2/CameraDevice$StateCallback;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lrqq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

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

    nop

    :goto_2
    invoke-direct {v0, p0, p2, p1}, Lrqq;-><init>(Lcom/google/ar/core/SharedCamera;Landroid/os/Handler;Landroid/hardware/camera2/CameraDevice$StateCallback;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public createARSessionStateCallback(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-direct {v0, p0, p2, p1}, Lrqr;-><init>(Lcom/google/ar/core/SharedCamera;Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lrqr;

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public getArCoreSurfaces()Ljava/util/List;
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    goto/32 :goto_a

    nop

    nop

    :goto_4
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_7
    invoke-direct {p0}, Lcom/google/ar/core/SharedCamera;->321b9a41e8a25ba26102f0bf6fa48565m()Landroid/media/ImageReader;

    move-result-object v1

    nop

    nop

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

    :goto_8
    const v0, 0x10

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    invoke-direct {p0}, Lcom/google/ar/core/SharedCamera;->4d6fb4d2df2ab47563c3badb1982a32cm()Landroid/media/ImageReader;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v1, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraInfo:Lrqs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_10

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    return-object v0

    nop

    nop

    :goto_15
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    iget-object v1, v1, Lrqs;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Landroid/graphics/SurfaceTexture;

    nop

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
    iget-object p0, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraInfo:Lrqs;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lrqs;->c:Ljava/lang/Object;

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
.end method

.method public pause()V
    .locals 1

    goto/32 :goto_2

    nop

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

    :goto_1
    iget-object v0, v0, Lrqs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraInfo:Lrqs;

    nop

    nop

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

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Lcom/google/ar/core/SharedCamera;->b6dd63a115feb36a96a08a6a7afb85a4m()V

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public setAppSurfaces(Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x5

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/ar/core/SharedCamera;->nativeSharedCameraSetAppSurfaces(JLjava/lang/String;Ljava/util/List;)V

    goto/32 :goto_2

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
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, v0, Lrqs;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x19

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_7
    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->sharedCameraInfo:Lrqs;

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

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->session:Lcom/google/ar/core/Session;

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

    nop

    nop

    :goto_e
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

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

    :goto_f
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public setCaptureCallback(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lcom/google/ar/core/SharedCamera;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/ar/core/SharedCamera;->nativeSharedCameraSetCaptureCallback(JLandroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)V

    goto/32 :goto_2

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x15

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x18

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
