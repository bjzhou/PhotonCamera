.class public final Lqt;
.super Lqs;
.source "PG"

# interfaces
.implements Lsc;


# instance fields
.field private final b:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;


# direct methods
.method public constructor <init>(Lsd;Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;Lezz;Landroid/os/Handler;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-direct {p0, p1, p2, p3, p4}, Lqs;-><init>(Lsd;Landroid/hardware/camera2/CameraCaptureSession;Lezz;Landroid/os/Handler;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lqt;->b:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final c(Ludp;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1b

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
    const v1, 0x1f

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const-class v1, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    goto :goto_12

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, v1}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lqt;->b:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lucb;

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
    return-object p0

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    sget v0, Luct;->a:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    invoke-super {p0, p1}, Lqs;->c(Ludp;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_13
    invoke-static {p1, v0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    return-object v2

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    :goto_8
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p1, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_0

    nop

    nop

    :goto_b
    const v0, 0xc

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_c
    return-object v2

    nop

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p1, Ljava/lang/StringBuilder;

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

    :goto_e
    iget-object p0, p0, Lqs;->a:Lsd;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_10
    const-string p0, " because the output surface was not available."

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    const-string p0, " because the output surface was destroyed before calling createHighSpeedRequestList."

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lqs;->a:Lsd;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lqs;->a:Lsd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_17
    const/4 v2, 0x0

    nop

    nop

    :try_start_0
    const-string v3, "CXCP#createHighSpeedRequestList"

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v3, p0, Lqt;->b:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    nop

    nop

    nop

    invoke-virtual {v3, p1}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object p1

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p1

    nop

    nop
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1a
    const-string p0, " may be closed."

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v1, "CXCP"

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1d
    const-string v0, "Failed to createHighSpeedRequestList from "

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

    :goto_1e
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    :goto_20
    return-object v2

    nop

    nop

    :catch_2
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_24
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_25
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    new-instance p1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_27
    const-string v0, "Failed to createHighSpeedRequestList. "

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop
.end method
