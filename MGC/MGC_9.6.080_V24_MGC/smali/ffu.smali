.class final Lffu;
.super Lffv;
.source "PG"


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field final synthetic d:Lffw;


# direct methods
.method public constructor <init>(Lffw;)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput-wide v0, p0, Lffu;->b:J

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_3
    iput-wide v0, p0, Lffu;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    const v0, 0x1b

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    const-wide/16 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lffu;->d:Lffw;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p1, -0x1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    iput p1, p0, Lffu;->a:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Lffv;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/hardware/camera2/CaptureResult;)V
    .locals 9

    goto/32 :goto_37

    nop

    nop

    :goto_0
    invoke-interface {v6, v5, v0}, Lfgp;->a(ZLfgv;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1
    iget-object v0, p1, Lffw;->l:Lffx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-gtz v4, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    :goto_3
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    iput-wide v5, p0, Lffu;->c:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v6, 0x5

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_7
    cmp-long v4, v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lffu;->d:Lffw;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v3, p0, Lffw;->l:Lffx;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v5, 0x0

    nop

    :goto_c
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_1
    goto/32 :goto_31

    nop

    :goto_e
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x2

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

    :goto_10
    iget-object v1, p1, Lffw;->i:Landroid/media/ImageReader;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_11
    if-ne v4, v1, :cond_2

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

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lffu;->d:Lffw;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_13
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_34

    nop

    nop

    :goto_15
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_3
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput v0, p0, Lffu;->a:I

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto :goto_14

    nop

    nop

    :goto_18
    goto/32 :goto_51

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_32

    nop

    nop

    :goto_1c
    goto/16 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_54

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lffu;->d:Lffw;

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_20
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-ne v0, v5, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_5
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-ne v0, v6, :cond_6

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Lffu;->d:Lffw;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto :goto_2a

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    sget-object v0, Lffy;->a:Lfht;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Unable to initiate capture"

    nop

    invoke-static {v0, v1, p1}, Lfhu;->b(Lfht;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v3, 0x0

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

    :goto_27
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_28
    iget v4, p0, Lffu;->a:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_24

    nop

    nop

    :goto_2b
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 p1, 0x3

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v6, :cond_7

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-ne v4, p1, :cond_8

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-gtz v5, :cond_9

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_35

    nop

    nop

    :goto_32
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_33
    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_a
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    return-void

    nop

    :goto_35
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_36
    iget-object v0, v0, Lffw;->m:Lfgq;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_37
    const v0, 0x1f

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_38
    check-cast v0, Ljava/lang/Integer;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_39
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v5

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3b
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    cmp-long v5, v5, v7

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-interface {v0}, Lfgq;->a()V

    :goto_3e
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_40
    if-nez v0, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

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

    :goto_42
    iput-object v3, v0, Lffw;->k:Lfgp;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v0, v4, Lffw;->e:Lffp;

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

    :goto_44
    if-ne v4, v2, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_c
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto :goto_3e

    nop

    :goto_46
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_47
    if-ne v0, v1, :cond_d

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v6, v4, Lffw;->k:Lfgp;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_49
    iput-object v3, p0, Lffw;->l:Lffx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_4a
    const/4 v5, 0x6

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v1, v0, p1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :try_start_1
    iget-object p1, p0, Lffu;->d:Lffw;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p1, Lffw;->h:Landroid/hardware/camera2/CameraCaptureSession;

    nop

    nop

    iget-object v1, p1, Lffw;->q:Lpat;

    nop

    nop

    iget-object v4, p1, Lffw;->d:Landroid/hardware/camera2/CameraDevice;

    nop

    nop

    nop

    iget-object p1, p1, Lffw;->i:Landroid/media/ImageReader;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p1

    nop

    filled-new-array {p1}, [Landroid/view/Surface;

    move-result-object p1

    nop

    invoke-virtual {v1, v4, v2, p1}, Lpat;->e(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lffu;->d:Lffw;

    nop

    nop

    nop

    iget-object v2, v1, Lffw;->l:Lffx;

    nop

    invoke-virtual {v0, p1, v2, v1}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v5

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_4d
    if-ne v0, v2, :cond_e

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object p0, p0, Lffu;->d:Lffw;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_50
    iget-object v5, p0, Lffu;->d:Lffw;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_51
    iget-object p1, p0, Lffu;->d:Lffw;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_52
    iput-object v3, p0, Lffw;->l:Lffx;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_53
    iget-wide v6, p0, Lffu;->b:J

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_54
    if-ne v0, v4, :cond_f

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_9

    nop

    nop

    :goto_55
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_56
    if-eq v0, v1, :cond_10

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_2b

    nop

    nop

    :goto_57
    iput v0, v5, Lffw;->n:I

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_58
    if-ne v0, v5, :cond_11

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-wide v7, p0, Lffu;->c:J

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v4, p0, Lffu;->d:Lffw;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_5b
    iput-wide v5, p0, Lffu;->b:J

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_5c
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v5

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop
.end method

.method public final onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p3}, Lffu;->a(Landroid/hardware/camera2/CaptureResult;)V

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

.method public final onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    sget-object p0, Lffy;->a:Lfht;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    const-string p2, "Capture attempt failed with reason "

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_7

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
    invoke-static {p0, p1}, Lfhu;->a(Lfht;Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
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

    :goto_1
    invoke-virtual {p0, p3}, Lffu;->a(Landroid/hardware/camera2/CaptureResult;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method
