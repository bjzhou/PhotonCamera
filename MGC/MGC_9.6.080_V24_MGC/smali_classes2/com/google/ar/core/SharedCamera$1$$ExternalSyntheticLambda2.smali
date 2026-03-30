.class public final synthetic Lcom/google/ar/core/SharedCamera$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic f$0:Lrqq;

.field public synthetic f$1:Landroid/hardware/camera2/CameraDevice;


# direct methods
.method public synthetic constructor <init>(Lrqq;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lcom/google/ar/core/SharedCamera$1$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/camera2/CameraDevice;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lcom/google/ar/core/SharedCamera$1$$ExternalSyntheticLambda2;->f$0:Lrqq;

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


# virtual methods
.method public final run()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iget-object v0, v0, Lrqq;->b:Landroid/hardware/camera2/CameraDevice$StateCallback;

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
    iget-object p0, p0, Lcom/google/ar/core/SharedCamera$1$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/camera2/CameraDevice;

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

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/ar/core/SharedCamera$1$$ExternalSyntheticLambda2;->f$0:Lrqq;

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

    :goto_4
    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onOpened(Landroid/hardware/camera2/CameraDevice;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method
