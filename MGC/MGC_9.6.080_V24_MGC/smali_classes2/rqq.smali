.class public final Lrqq;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "PG"


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field public final synthetic b:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field final synthetic c:Lcom/google/ar/core/SharedCamera;


# direct methods
.method public constructor <init>(Lcom/google/ar/core/SharedCamera;Landroid/os/Handler;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput-object p3, p0, Lrqq;->b:Landroid/hardware/camera2/CameraDevice$StateCallback;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lrqq;->c:Lcom/google/ar/core/SharedCamera;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lrqq;->a:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    goto/32 :goto_e

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

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lcom/google/ar/core/SharedCamera$1$$ExternalSyntheticLambda0;

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

    :goto_3
    iget-object p0, p0, Lrqq;->c:Lcom/google/ar/core/SharedCamera;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    :goto_6
    iget-object v1, p0, Lrqq;->a:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

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

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_b
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_3

    nop

    nop

    :goto_c
    invoke-direct {v0, p0, p1}, Lcom/google/ar/core/SharedCamera$1$$ExternalSyntheticLambda0;-><init>(Lrqq;Landroid/hardware/camera2/CameraDevice;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p0, p1}, Lcom/google/ar/core/SharedCamera;->-$$Nest$monDeviceClosed(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraDevice;)V

    goto/32 :goto_0

    nop

    nop

    :goto_e
    const v0, 0x20

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop
.end method

.method public final onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

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

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    new-instance v0, Lcom/google/ar/core/SharedCamera$1$$ExternalSyntheticLambda3;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_6
    invoke-direct {v0, p0, p1}, Lcom/google/ar/core/SharedCamera$1$$ExternalSyntheticLambda3;-><init>(Lrqq;Landroid/hardware/camera2/CameraDevice;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    :goto_9
    invoke-static {p0, p1}, Lcom/google/ar/core/SharedCamera;->-$$Nest$monDeviceDisconnected(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraDevice;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Lrqq;->a:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    iget-object p0, p0, Lrqq;->c:Lcom/google/ar/core/SharedCamera;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    const v1, 0x8

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
.end method

.method public final onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Lrqq;->a:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lrqq;->c:Lcom/google/ar/core/SharedCamera;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lcom/google/ar/core/SharedCamera$1$$ExternalSyntheticLambda1;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p0, p1, p2}, Lcom/google/ar/core/SharedCamera$1$$ExternalSyntheticLambda1;-><init>(Lrqq;Landroid/hardware/camera2/CameraDevice;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Lcom/google/ar/core/SharedCamera;->-$$Nest$mclose(Lcom/google/ar/core/SharedCamera;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    return-void

    nop
.end method

.method public final onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    :goto_0
    goto/32 :goto_14

    nop

    :goto_1
    const v0, 0x1f

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
    iget-object v0, p0, Lrqq;->c:Lcom/google/ar/core/SharedCamera;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    iput-object p0, p1, Lrqs;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lrqq;->c:Lcom/google/ar/core/SharedCamera;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p0, p1}, Lcom/google/ar/core/SharedCamera$1$$ExternalSyntheticLambda2;-><init>(Lrqq;Landroid/hardware/camera2/CameraDevice;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_8
    iget-object v1, p0, Lrqq;->a:Landroid/os/Handler;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lcom/google/ar/core/SharedCamera$1$$ExternalSyntheticLambda2;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    invoke-static {v0, p1}, Lcom/google/ar/core/SharedCamera;->-$$Nest$monDeviceOpened(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraDevice;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p1}, Lcom/google/ar/core/SharedCamera;->-$$Nest$mgetGpuSurfaceTexture(Lcom/google/ar/core/SharedCamera;)Landroid/graphics/SurfaceTexture;

    move-result-object p1

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
    invoke-static {p1}, Lcom/google/ar/core/SharedCamera;->-$$Nest$fgetsharedCameraInfo(Lcom/google/ar/core/SharedCamera;)Lrqs;

    move-result-object v0

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

    :goto_e
    invoke-static {v0}, Lcom/google/ar/core/SharedCamera;->-$$Nest$fgetsharedCameraInfo(Lcom/google/ar/core/SharedCamera;)Lrqs;

    move-result-object v0

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

    :goto_f
    iget-object p1, p0, Lrqq;->c:Lcom/google/ar/core/SharedCamera;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_10
    invoke-static {p0}, Lcom/google/ar/core/SharedCamera;->-$$Nest$fgetsharedCameraInfo(Lcom/google/ar/core/SharedCamera;)Lrqs;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    invoke-static {p0}, Lcom/google/ar/core/SharedCamera;->-$$Nest$mgetGpuSurface(Lcom/google/ar/core/SharedCamera;)Landroid/view/Surface;

    move-result-object p0

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

    nop

    :goto_12
    iput-object p1, v0, Lrqs;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_16
    iget-object p0, p0, Lrqq;->c:Lcom/google/ar/core/SharedCamera;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_17
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_18
    iput-object p1, v0, Lrqs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_0

    nop

    nop

    nop
.end method
