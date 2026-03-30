.class public Lqs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lsc;


# instance fields
.field public final a:Lsd;

.field private final b:Landroid/hardware/camera2/CameraCaptureSession;

.field private final c:Landroid/os/Handler;

.field private final d:Lezz;


# direct methods
.method public constructor <init>(Lsd;Landroid/hardware/camera2/CameraCaptureSession;Lezz;Landroid/os/Handler;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lqs;->a:Lsd;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lqs;->d:Lezz;

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

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    iput-object p4, p0, Lqs;->c:Landroid/os/Handler;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lqs;->b:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/view/Surface;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->getInputSurface()Landroid/view/Surface;

    move-result-object p0

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

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lqs;->b:Landroid/hardware/camera2/CameraCaptureSession;

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

.method public final b()Lsd;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lqs;->a:Lsd;

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

    nop

    nop
.end method

.method public c(Ludp;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, v0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    :goto_2
    invoke-direct {v0, v1}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_0

    nop

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

    :goto_4
    goto/32 :goto_8

    nop

    nop

    :goto_5
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lucb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    sget v0, Luct;->a:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lqs;->b:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    nop

    nop

    goto/32 :goto_11

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    const-class v1, Landroid/hardware/camera2/CameraCaptureSession;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    :goto_10
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lqs;->b:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final d(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;
    .locals 10

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_29

    nop

    :goto_1
    div-double/2addr p1, v4

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v6, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v7, 0x0

    nop

    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lqs;->a:Lsd;

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lqu;

    nop

    nop

    nop

    iget-object v0, v0, Lqu;->b:Ljava/lang/String;

    nop

    iget-object v8, p0, Lqs;->d:Lezz;

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v9, p0, Lqs;->b:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lqs;->c:Landroid/os/Handler;

    nop

    nop

    invoke-virtual {v9, p1, p2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p0

    nop

    nop

    nop

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1b

    nop

    nop

    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_7
    const-string v3, "%.3f ms"

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    div-double/2addr p1, v4

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v7, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sub-long/2addr p1, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_c
    const v0, 0x18

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_d
    const-string v3, "CXCP#capture-"

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    long-to-double p1, p1

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

    :goto_f
    check-cast v0, Lqu;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lqs;->a:Lsd;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_15
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    throw p0

    nop

    nop

    :goto_17
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_13

    nop

    nop

    :goto_19
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_10

    nop

    nop

    :goto_1b
    goto/16 :goto_20

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    :try_start_2
    const-string p1, "CXCP"

    nop

    nop

    nop

    nop

    invoke-static {p0}, Lqx;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    instance-of p1, p0, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_1

    nop

    check-cast p0, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0}, La;->al(Landroid/hardware/camera2/CameraAccessException;)I

    move-result p0

    nop

    nop

    invoke-virtual {v8, v0, p0, v6}, Lezz;->d(Ljava/lang/String;IZ)V

    goto :goto_1d

    nop

    :cond_1
    instance-of p1, p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto :goto_1c

    nop

    nop

    nop

    nop

    :cond_2
    instance-of p1, p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    if-nez p1, :cond_4

    nop

    nop

    nop

    instance-of p1, p0, Ljava/lang/SecurityException;

    nop

    nop

    nop

    if-nez p1, :cond_4

    nop

    nop

    nop

    instance-of p1, p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    nop

    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    instance-of p1, p0, Ljava/lang/NullPointerException;

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    goto :goto_1c

    nop

    :cond_3
    throw p0

    nop

    :cond_4
    :goto_1c
    const/16 p0, 0x9

    nop

    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v0, p0, p1}, Lezz;->d(Ljava/lang/String;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1d
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1f
    move-object p0, v7

    nop

    :goto_20
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-wide v4, 0x412e848000000000L    # 1000000.0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sub-long/2addr p1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_24
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_25
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

    nop

    nop

    :goto_26
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v7, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_28
    iget-object v0, v0, Lqu;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_29
    goto/32 :goto_17

    nop

    nop

    :goto_2a
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    long-to-double p1, p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2d
    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2e
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

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
.end method

.method public final e(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;
    .locals 10

    goto/32 :goto_2c

    nop

    nop

    :goto_0
    const-string v3, "CXCP#captureBurst-"

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2
    const-string v3, "%.3f ms"

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v0, Lqu;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_8
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_16

    nop

    nop

    :goto_a
    div-double/2addr p1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    div-double/2addr p1, v4

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_15

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    :try_start_0
    const-string p1, "CXCP"

    nop

    nop

    nop

    invoke-static {p0}, Lqx;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    instance-of p1, p0, Landroid/hardware/camera2/CameraAccessException;

    nop

    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    check-cast p0, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    invoke-static {p0}, La;->al(Landroid/hardware/camera2/CameraAccessException;)I

    move-result p0

    nop

    invoke-virtual {v8, v0, p0, v6}, Lezz;->d(Ljava/lang/String;IZ)V

    goto :goto_f

    nop

    nop

    :cond_0
    instance-of p1, p0, Ljava/lang/IllegalArgumentException;

    nop

    if-eqz p1, :cond_1

    nop

    nop

    goto :goto_e

    nop

    nop

    nop

    :cond_1
    instance-of p1, p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    if-nez p1, :cond_3

    nop

    instance-of p1, p0, Ljava/lang/SecurityException;

    nop

    nop

    nop

    nop

    nop

    if-nez p1, :cond_3

    nop

    nop

    nop

    instance-of p1, p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    if-nez p1, :cond_3

    nop

    instance-of p1, p0, Ljava/lang/NullPointerException;

    nop

    if-eqz p1, :cond_2

    nop

    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    throw p0

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :goto_e
    const/16 p0, 0x9

    nop

    nop

    nop

    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v0, p0, p1}, Lezz;->d(Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_f
    goto/32 :goto_14

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1b

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    iget-object v0, v0, Lqu;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    move-object p0, v7

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lqs;->a:Lsd;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_17
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

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

    nop

    nop

    nop

    :goto_18
    const-wide v4, 0x412e848000000000L    # 1000000.0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_19
    long-to-double p1, p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    throw p0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v7, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_11

    nop

    :goto_23
    sub-long/2addr p1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_12

    nop

    nop

    :goto_25
    invoke-static {v7, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_26
    sub-long/2addr p1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_27
    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_28
    const/4 v7, 0x0

    nop

    :try_start_1
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lqs;->a:Lsd;

    nop

    check-cast v0, Lqu;

    nop

    nop

    nop

    iget-object v0, v0, Lqu;->b:Ljava/lang/String;

    nop

    nop

    iget-object v8, p0, Lqs;->d:Lezz;

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v9, p0, Lqs;->b:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lqs;->c:Landroid/os/Handler;

    nop

    nop

    invoke-virtual {v9, p1, p2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_1e

    nop

    nop

    :goto_2b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2c
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2d
    long-to-double p1, p1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2e
    const v1, 0x19

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final f(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;
    .locals 10

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_0
    invoke-static {v7, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, v0, Lqu;->b:Ljava/lang/String;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6
    const/4 v6, 0x1

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-wide v4, 0x412e848000000000L    # 1000000.0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    const-string v3, "%.3f ms"

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    :goto_d
    sub-long/2addr p1, v1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lqs;->a:Lsd;

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

    nop

    :goto_f
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_1c

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    :try_start_0
    const-string p1, "CXCP"

    nop

    nop

    nop

    invoke-static {p0}, Lqx;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    nop

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    instance-of p1, p0, Landroid/hardware/camera2/CameraAccessException;

    nop

    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    nop

    invoke-static {p0}, La;->al(Landroid/hardware/camera2/CameraAccessException;)I

    move-result p0

    nop

    nop

    nop

    invoke-virtual {v8, v0, p0, v6}, Lezz;->d(Ljava/lang/String;IZ)V

    goto :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    instance-of p1, p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    goto :goto_13

    nop

    nop

    :cond_1
    instance-of p1, p0, Ljava/lang/IllegalStateException;

    nop

    if-nez p1, :cond_3

    nop

    instance-of p1, p0, Ljava/lang/SecurityException;

    nop

    nop

    nop

    nop

    if-nez p1, :cond_3

    nop

    instance-of p1, p0, Ljava/lang/UnsupportedOperationException;

    nop

    if-nez p1, :cond_3

    nop

    instance-of p1, p0, Ljava/lang/NullPointerException;

    nop

    nop

    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    goto :goto_13

    nop

    nop

    :cond_2
    throw p0

    nop

    :cond_3
    :goto_13
    const/16 p0, 0x9

    nop

    nop

    nop

    nop

    nop

    const/4 p1, 0x0

    nop

    invoke-virtual {v8, v0, p0, p1}, Lezz;->d(Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_14
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_16
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_18
    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v3, "CXCP#setRepeatingBurst-"

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move-object p0, v7

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1e
    const v0, 0x1b

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_20
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v7, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_23
    check-cast v0, Lqu;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_4

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

    :cond_4
    goto/32 :goto_10

    nop

    :goto_25
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lqs;->a:Lsd;

    nop

    check-cast v0, Lqu;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lqu;->b:Ljava/lang/String;

    nop

    iget-object v8, p0, Lqs;->d:Lezz;

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v9, p0, Lqs;->b:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    iget-object p0, p0, Lqs;->c:Landroid/os/Handler;

    nop

    nop

    invoke-virtual {v9, p1, p2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p0

    nop

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_26
    long-to-double p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_28
    long-to-double p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_29
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sub-long/2addr p1, v1

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2c
    div-double/2addr p1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2d
    div-double/2addr p1, v4

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public final g(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;
    .locals 10

    goto/32 :goto_1b

    nop

    nop

    :goto_0
    const-string v3, "CXCP#setRepeatingRequest-"

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1
    const-string v3, "%.3f ms"

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    goto/32 :goto_12

    nop

    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_f

    nop

    nop

    :goto_5
    invoke-static {v7, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_6
    const-wide v4, 0x412e848000000000L    # 1000000.0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sub-long/2addr p1, v1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    div-double/2addr p1, v4

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v7, 0x0

    nop

    nop

    nop

    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lqs;->a:Lsd;

    nop

    nop

    check-cast v0, Lqu;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lqu;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    iget-object v8, p0, Lqs;->d:Lezz;

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v9, p0, Lqs;->b:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    nop

    iget-object p0, p0, Lqs;->c:Landroid/os/Handler;

    nop

    nop

    invoke-virtual {v9, p1, p2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p0

    nop

    nop

    nop

    nop

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v0, Lqu;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_10
    div-double/2addr p1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_7

    nop

    nop

    :goto_13
    throw p0

    nop

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

    :goto_15
    goto/16 :goto_2a

    nop

    nop

    :catch_0
    move-exception p0

    nop

    :try_start_2
    const-string p1, "CXCP"

    nop

    nop

    nop

    nop

    invoke-static {p0}, Lqx;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    nop

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    instance-of p1, p0, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    nop

    if-eqz p1, :cond_0

    nop

    nop

    check-cast p0, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    nop

    invoke-static {p0}, La;->al(Landroid/hardware/camera2/CameraAccessException;)I

    move-result p0

    nop

    invoke-virtual {v8, v0, p0, v6}, Lezz;->d(Ljava/lang/String;IZ)V

    goto :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_0
    instance-of p1, p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    goto :goto_16

    nop

    nop

    nop

    nop

    :cond_1
    instance-of p1, p0, Ljava/lang/IllegalStateException;

    nop

    nop

    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    instance-of p1, p0, Ljava/lang/SecurityException;

    nop

    nop

    nop

    nop

    nop

    if-nez p1, :cond_3

    nop

    nop

    instance-of p1, p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    nop

    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    instance-of p1, p0, Ljava/lang/NullPointerException;

    nop

    nop

    nop

    if-eqz p1, :cond_2

    nop

    goto :goto_16

    nop

    nop

    :cond_2
    throw p0

    nop

    nop

    :cond_3
    :goto_16
    const/16 p0, 0x9

    nop

    const/4 p1, 0x0

    nop

    invoke-virtual {v8, v0, p0, p1}, Lezz;->d(Ljava/lang/String;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_17
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lqs;->a:Lsd;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_19
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1b
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1c
    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

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

    :goto_1d
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v7, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_20
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_11

    nop

    :goto_22
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_23
    const/4 v6, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sub-long/2addr p1, v1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_28
    const v1, 0x17

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_29
    move-object p0, v7

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    long-to-double p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2d
    iget-object v0, v0, Lqu;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    long-to-double p1, p1

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
.end method

.method public final h()V
    .locals 11

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    sub-long/2addr v8, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2
    div-double/2addr v0, v4

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    long-to-double v0, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

    :goto_5
    const v1, 0x9

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    invoke-static {p0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_7
    const-string v3, "%.3f ms"

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v7, 0x1

    nop

    nop

    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lqs;->a:Lsd;

    nop

    nop

    nop

    check-cast v0, Lqu;

    nop

    nop

    iget-object v0, v0, Lqu;->b:Ljava/lang/String;

    nop

    iget-object v8, p0, Lqs;->d:Lezz;

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lqs;->b:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    nop

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_a
    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    :try_start_2
    const-string v9, "CXCP"

    nop

    nop

    invoke-static {p0}, Lqx;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v10

    nop

    nop

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v9, p0, Landroid/hardware/camera2/CameraAccessException;

    nop

    if-eqz v9, :cond_0

    nop

    nop

    nop

    nop

    check-cast p0, Landroid/hardware/camera2/CameraAccessException;

    nop

    invoke-static {p0}, La;->al(Landroid/hardware/camera2/CameraAccessException;)I

    move-result p0

    nop

    nop

    invoke-virtual {v8, v0, p0, v7}, Lezz;->d(Ljava/lang/String;IZ)V

    goto :goto_c

    nop

    nop

    :cond_0
    instance-of v9, p0, Ljava/lang/IllegalArgumentException;

    nop

    if-eqz v9, :cond_1

    nop

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    instance-of v9, p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    if-nez v9, :cond_3

    nop

    nop

    nop

    instance-of v9, p0, Ljava/lang/SecurityException;

    nop

    nop

    nop

    if-nez v9, :cond_3

    nop

    nop

    nop

    nop

    instance-of v9, p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    if-nez v9, :cond_3

    nop

    nop

    instance-of v9, p0, Ljava/lang/NullPointerException;

    nop

    nop

    nop

    if-eqz v9, :cond_2

    nop

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    nop

    :cond_2
    throw p0

    nop

    nop

    nop

    nop

    :cond_3
    :goto_b
    const/16 p0, 0x9

    nop

    const/4 v9, 0x0

    nop

    invoke-virtual {v8, v0, p0, v9}, Lezz;->d(Ljava/lang/String;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_c
    goto/32 :goto_1e

    nop

    nop

    :goto_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    const-string v3, "CXCP#abortCaptures-"

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

    :goto_11
    iget-object v0, v0, Lqu;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lqs;->a:Lsd;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_13
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

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

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2a

    nop

    :goto_18
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-wide v4, 0x412e848000000000L    # 1000000.0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    :goto_1b
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1c
    sub-long/2addr v8, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1d
    invoke-static {v6, v3, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_20
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_21
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_22
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_25

    nop

    nop

    :goto_23
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_24
    check-cast v0, Lqu;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_26
    div-double/2addr v0, v4

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v6, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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

    :goto_28
    long-to-double v0, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_29
    throw p0

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2b
    const v0, 0x1a

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

    nop
.end method

.method public final i(Ljava/util/List;)V
    .locals 13

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    sub-long/2addr p0, v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1
    long-to-double v0, v8

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_4
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x18

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

    :goto_8
    const-string v3, "%.3f ms"

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    nop

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

    :goto_d
    iget-object v0, v0, Lqu;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v6, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_11
    invoke-static {p1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

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
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_15
    invoke-static {v6, v3, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_16
    check-cast v0, Lqu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_17
    const-wide v4, 0x412e848000000000L    # 1000000.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    :try_start_0
    const-string p1, "CXCP"

    nop

    invoke-static {p0}, Lqx;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v9

    nop

    invoke-static {p1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    instance-of p1, p0, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    nop

    if-eqz p1, :cond_0

    nop

    nop

    nop

    check-cast p0, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    nop

    invoke-static {p0}, La;->al(Landroid/hardware/camera2/CameraAccessException;)I

    move-result p0

    nop

    nop

    invoke-virtual {v8, v0, p0, v7}, Lezz;->d(Ljava/lang/String;IZ)V

    goto :goto_1a

    nop

    :cond_0
    instance-of p1, p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    if-eqz p1, :cond_1

    nop

    nop

    goto :goto_19

    nop

    nop

    :cond_1
    instance-of p1, p0, Ljava/lang/IllegalStateException;

    nop

    nop

    if-nez p1, :cond_3

    nop

    instance-of p1, p0, Ljava/lang/SecurityException;

    nop

    nop

    nop

    nop

    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    instance-of p1, p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    nop

    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    instance-of p1, p0, Ljava/lang/NullPointerException;

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto :goto_19

    nop

    nop

    nop

    :cond_2
    throw p0

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :goto_19
    const/16 p0, 0x9

    nop

    nop

    nop

    nop

    const/4 p1, 0x0

    nop

    nop

    nop

    invoke-virtual {v8, v0, p0, p1}, Lezz;->d(Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_4
    goto/32 :goto_9

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1d
    throw p0

    nop

    :goto_1e
    goto/32 :goto_5

    nop

    nop

    :goto_1f
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_2

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_21
    div-double/2addr p0, v4

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_23
    sget-object v3, Lcom/google/vr/ndk/base/qbMr/qVSTXuYNqkCvm;->AcvNwydXhB:Ljava/lang/String;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_24
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v3, 0x0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v7, 0x1

    nop

    :try_start_1
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lqs;->a:Lsd;

    nop

    nop

    nop

    check-cast v0, Lqu;

    nop

    iget-object v0, v0, Lqu;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    iget-object v8, p0, Lqs;->d:Lezz;

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lqs;->b:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    nop

    nop

    new-instance v9, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    invoke-static {p1}, Lrkm;->aI(Ljava/lang/Iterable;)I

    move-result v10

    nop

    nop

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    nop

    nop

    nop

    if-eqz v10, :cond_5

    nop

    nop

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    nop

    check-cast v10, Lrh;

    nop

    const-class v11, Landroid/hardware/camera2/params/OutputConfiguration;

    nop

    nop

    sget v12, Luct;->a:I

    nop

    new-instance v12, Lucb;

    nop

    nop

    invoke-direct {v12, v11}, Lucb;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v10, v12}, Lrh;->c(Ludp;)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_28

    nop

    nop

    :cond_5
    invoke-virtual {p0, v9}, Landroid/hardware/camera2/CameraCaptureSession;->finalizeOutputConfigurations(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_29
    long-to-double p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    div-double/2addr v0, v4

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

    :goto_2b
    sub-long/2addr v8, v1

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

    :goto_2c
    iget-object v0, p0, Lqs;->a:Lsd;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j()V
    .locals 11

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_6
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_9
    sub-long/2addr v8, v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v0, Lqu;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sub-long/2addr v8, v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    div-double/2addr v0, v4

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_f
    const-string v3, "CXCP#stopRepeating-"

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    :goto_12
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_14
    const v1, 0x1d

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    invoke-static {v6, v3, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_16
    div-double/2addr v0, v4

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

    :goto_17
    goto/16 :goto_19

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    :try_start_0
    const-string v9, "CXCP"

    nop

    nop

    nop

    invoke-static {p0}, Lqx;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v10

    nop

    nop

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v9, p0, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    nop

    if-eqz v9, :cond_1

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    invoke-static {p0}, La;->al(Landroid/hardware/camera2/CameraAccessException;)I

    move-result p0

    nop

    nop

    nop

    invoke-virtual {v8, v0, p0, v7}, Lezz;->d(Ljava/lang/String;IZ)V

    goto :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_1
    instance-of v9, p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    if-eqz v9, :cond_2

    nop

    nop

    nop

    goto :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_2
    instance-of v9, p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    if-nez v9, :cond_4

    nop

    nop

    instance-of v9, p0, Ljava/lang/SecurityException;

    nop

    nop

    nop

    nop

    if-nez v9, :cond_4

    nop

    nop

    nop

    instance-of v9, p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    if-nez v9, :cond_4

    nop

    nop

    nop

    instance-of v9, p0, Ljava/lang/NullPointerException;

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_3

    nop

    nop

    nop

    nop

    goto :goto_18

    nop

    nop

    nop

    nop

    :cond_3
    throw p0

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :goto_18
    const/16 p0, 0x9

    nop

    nop

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    invoke-virtual {v8, v0, p0, v9}, Lezz;->d(Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_19
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v6, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lqs;->a:Lsd;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    long-to-double v0, v8

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_22
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_25
    const-wide v4, 0x412e848000000000L    # 1000000.0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_26
    const-string v3, "%.3f ms"

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_27
    long-to-double v0, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_28
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v0, v0, Lqu;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lqs;->a:Lsd;

    nop

    nop

    check-cast v0, Lqu;

    nop

    iget-object v0, v0, Lqu;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    iget-object v8, p0, Lqs;->d:Lezz;

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lqs;->b:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    nop

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2b
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_23

    nop

    nop

    nop
.end method
