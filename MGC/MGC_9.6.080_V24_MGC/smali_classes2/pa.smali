.class public final Lpa;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private final c:Lub;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lpa;->a:Landroid/hardware/camera2/CameraDevice$StateCallback;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lpa;->c:Lub;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    const/4 v0, 0x0

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

    :goto_4
    iput-object v0, p0, Lpa;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    goto/32 :goto_7

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    iget-object p0, p1, Lpa;->a:Landroid/hardware/camera2/CameraDevice$StateCallback;

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

    :goto_2
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return v1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x19

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

    :goto_8
    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    :goto_9
    return v1

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c
    instance-of p0, p1, Lpa;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_e
    iget-object p1, p1, Lpa;->c:Lub;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1b

    nop

    nop

    :goto_10
    return v1

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    :goto_12
    if-eqz p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    :goto_13
    iget-object v2, p1, Lpa;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_14
    return v1

    nop

    :goto_15
    goto/32 :goto_18

    nop

    nop

    :goto_16
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    invoke-static {p0, p0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_18
    return v0

    nop

    :goto_19
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_19

    nop

    nop

    :goto_1b
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1c
    if-eq p0, p1, :cond_3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p0, p0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1e
    invoke-static {p0, p0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1f
    if-eqz p0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_20
    check-cast p1, Lpa;

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

    :goto_21
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz v2, :cond_5

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p0, "CameraInteropConfig(cameraDeviceStateCallback=null, cameraSessionStateCallback=null, cameraOpenRetryMaxTimeoutNs=null)"

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
    return-object p0

    nop
.end method
