.class public final synthetic Lcom/google/ar/core/SharedCamera$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic f$0:Lrqr;

.field public synthetic f$1:Landroid/hardware/camera2/CameraCaptureSession;


# direct methods
.method public synthetic constructor <init>(Lrqr;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lcom/google/ar/core/SharedCamera$2$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lcom/google/ar/core/SharedCamera$2$$ExternalSyntheticLambda0;->f$0:Lrqr;

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

    :goto_3
    return-void

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/ar/core/SharedCamera$2$$ExternalSyntheticLambda0;->f$0:Lrqr;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, v0, Lrqr;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/ar/core/SharedCamera$2$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop
.end method
