.class public final Lbmq;
.super Lbnz;

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# instance fields
.field final synthetic a:Lbmv;

.field private final b:Lbni;

.field private c:Landroid/hardware/Camera;

.field private d:I

.field private e:Lbmr;

.field private f:I


# direct methods
.method public constructor <init>(Lbmv;Lbni;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lbmq;->a:Lbmv;

    invoke-direct {p0, p3}, Lbnz;-><init>(Landroid/os/Looper;)V

    const/4 p1, -0x1

    iput p1, p0, Lbmq;->d:I

    const/4 p1, 0x0

    iput p1, p0, Lbmq;->f:I

    iput-object p2, p0, Lbmq;->b:Lbni;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    invoke-super {p0, p1}, Lbnz;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lbmq;->a:Lbmv;

    iget-object v0, v0, Lbmv;->e:Lbnx;

    invoke-virtual {v0}, Lbnx;->d()Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lbmv;->a:Lboc;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lbze;->K(I)Ljava/lang/String;

    invoke-static {v0}, Lbod;->g(Lboc;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    :try_start_0
    sget-object v1, Lbmv;->a:Lboc;

    goto/16 :goto_7

    :sswitch_0
    iget-object v1, p0, Lbmq;->a:Lbmv;

    iget-object v1, v1, Lbmv;->e:Lbnx;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lbnx;->c(I)V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcvm;

    iget-object v2, p0, Lbmq;->c:Landroid/hardware/Camera;

    iget-object v3, v1, Lcvm;->a:Ljava/lang/Object;

    iget-object v6, v1, Lcvm;->b:Ljava/lang/Object;

    iget-object v7, v1, Lcvm;->d:Ljava/lang/Object;

    iget-object v1, v1, Lcvm;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3, v6, v7, v1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto/16 :goto_8

    :sswitch_1
    iget-object v1, p0, Lbmq;->e:Lbmr;

    invoke-virtual {v1}, Lbmr;->a()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    iget-object v2, p0, Lbmq;->c:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v1, p0, Lbmq;->e:Lbmr;

    invoke-virtual {v1}, Lbmr;->b()V

    goto/16 :goto_8

    :sswitch_2
    iget-object v2, p0, Lbmq;->c:Landroid/hardware/Camera;

    iget-object v3, p0, Lbmq;->a:Lbmv;

    iget-object v3, v3, Lbmv;->b:Lbnq;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v6, v5}, Lbnq;->e(IZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    iget-object v2, p0, Lbmq;->e:Lbmr;

    invoke-virtual {v2}, Lbmr;->a()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-lez v3, :cond_0

    iget-object v1, p0, Lbmq;->a:Lbmv;

    iget-object v1, v1, Lbmv;->b:Lbnq;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Lbnq;->d(I)I

    move-result v1

    goto :goto_0

    :cond_0
    :goto_0
    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    iget-object v1, p0, Lbmq;->c:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v1, p0, Lbmq;->e:Lbmr;

    invoke-virtual {v1}, Lbmr;->b()V

    goto/16 :goto_8

    :sswitch_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v5, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_1
    iget-object v2, p0, Lbmq;->c:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    goto/16 :goto_8

    :sswitch_4
    iget-object v1, p0, Lbmq;->c:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopFaceDetection()V

    goto/16 :goto_8

    :sswitch_5
    iget-object v1, p0, Lbmq;->c:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startFaceDetection()V

    goto/16 :goto_8

    :sswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera$FaceDetectionListener;

    iget-object v2, p0, Lbmq;->c:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    goto/16 :goto_8

    :sswitch_7
    iget v1, p0, Lbmq;->f:I

    add-int/2addr v1, v3

    iput v1, p0, Lbmq;->f:I

    goto/16 :goto_8

    :sswitch_8
    iget-object v1, p0, Lbmq;->c:Landroid/hardware/Camera;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$OnZoomChangeListener;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto/16 :goto_8

    :sswitch_9
    iget-object v1, p0, Lbmq;->c:Landroid/hardware/Camera;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    check-cast v2, Landroid/hardware/Camera$AutoFocusMoveCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_8

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v2, Lbmv;->a:Lboc;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lbod;->c(Lboc;Ljava/lang/String;)V

    goto/16 :goto_8

    :sswitch_a
    iget v1, p0, Lbmq;->f:I

    add-int/2addr v1, v5

    iput v1, p0, Lbmq;->f:I

    iget-object v1, p0, Lbmq;->c:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    iget-object v1, p0, Lbmq;->a:Lbmv;

    iget-object v1, v1, Lbmv;->e:Lbnx;

    invoke-virtual {v1, v2}, Lbnx;->c(I)V

    goto/16 :goto_8

    :sswitch_b
    iget v1, p0, Lbmq;->f:I

    if-lez v1, :cond_2

    sget-object v1, Lbmv;->a:Lboc;

    invoke-static {v1}, Lbod;->g(Lboc;)V

    goto/16 :goto_8

    :cond_2
    iget-object v1, p0, Lbmq;->a:Lbmv;

    iget-object v1, v1, Lbmv;->e:Lbnx;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lbnx;->c(I)V

    iget-object v1, p0, Lbmq;->c:Landroid/hardware/Camera;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto/16 :goto_8

    :sswitch_c
    iget-object v1, p0, Lbmq;->e:Lbmr;

    invoke-virtual {v1}, Lbmr;->a()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lbnw;

    iget-object v6, p0, Lbmq;->a:Lbmv;

    iget-object v6, v6, Lbmv;->c:Lbmw;

    iget-object v6, v6, Lbnp;->w:Lbze;

    invoke-virtual {v2}, Lbnw;->e()Lbob;

    move-result-object v6

    invoke-virtual {v6}, Lbob;->b()I

    move-result v7

    invoke-virtual {v6}, Lbob;->a()I

    move-result v6

    invoke-virtual {v1, v7, v6}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    invoke-virtual {v2}, Lbnw;->f()Lbob;

    move-result-object v6

    invoke-virtual {v6}, Lbob;->b()I

    move-result v7

    invoke-virtual {v6}, Lbob;->a()I

    move-result v6

    invoke-virtual {v1, v7, v6}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iget v6, v2, Lbnw;->j:I

    if-ne v6, v3, :cond_3

    iget v3, v2, Lbnw;->h:I

    iget v6, v2, Lbnw;->i:I

    invoke-virtual {v1, v3, v6}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v6}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    :goto_2
    iget v3, v2, Lbnw;->l:I

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    iget-byte v3, v2, Lbnw;->n:B

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    iget-object v3, p0, Lbmq;->a:Lbmv;

    iget-object v3, v3, Lbmv;->c:Lbmw;

    sget-object v6, Lbnk;->a:Lbnk;

    invoke-virtual {v3, v6}, Lbnp;->d(Lbnk;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, v2, Lbnw;->p:F

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v6

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float v3, v3, v7

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    neg-int v3, v3

    if-ne v3, v6, :cond_5

    add-int/lit8 v3, v3, -0x1

    :cond_5
    :goto_3
    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    :cond_6
    iget v3, v2, Lbnw;->q:I

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    iget-object v3, p0, Lbmq;->a:Lbmv;

    iget-object v3, v3, Lbmv;->c:Lbmw;

    sget-object v6, Lbnk;->e:Lbnk;

    invoke-virtual {v3, v6}, Lbnp;->d(Lbnk;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, v2, Lbnw;->w:Z

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    :cond_7
    iget-object v3, v2, Lbnw;->s:Lbnm;

    invoke-virtual {v3}, Lbnm;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lbze;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    iget-object v3, p0, Lbmq;->a:Lbmv;

    iget-object v3, v3, Lbmv;->c:Lbmw;

    sget-object v6, Lbnk;->f:Lbnk;

    invoke-virtual {v3, v6}, Lbnp;->d(Lbnk;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-boolean v3, v2, Lbnw;->x:Z

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    :cond_8
    iget-object v3, p0, Lbmq;->a:Lbmv;

    iget-object v3, v3, Lbmv;->c:Lbmw;

    sget-object v6, Lbnk;->c:Lbnk;

    invoke-virtual {v3, v6}, Lbnp;->d(Lbnk;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Lbnw;->g()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Lbnw;->g()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    :cond_a
    :goto_4
    iget-object v3, p0, Lbmq;->a:Lbmv;

    iget-object v3, v3, Lbmv;->c:Lbmw;

    sget-object v6, Lbnk;->d:Lbnk;

    invoke-virtual {v3, v6}, Lbnp;->d(Lbnk;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Lbnw;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v2}, Lbnw;->h()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_5

    :cond_b
    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    :cond_c
    :goto_5
    iget-object v3, v2, Lbnw;->r:Lbnl;

    sget-object v6, Lbnl;->a:Lbnl;

    if-eq v3, v6, :cond_d

    iget-object v3, v2, Lbnw;->r:Lbnl;

    invoke-virtual {v3}, Lbnl;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lbze;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :cond_d
    iget-object v3, v2, Lbnw;->t:Lbnn;

    sget-object v6, Lbnn;->a:Lbnn;

    if-eq v3, v6, :cond_e

    iget-object v3, v2, Lbnw;->t:Lbnn;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lbnn;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lbze;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    :cond_e
    iget-boolean v3, v2, Lbnw;->y:Z

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    iget-object v3, v2, Lbnw;->z:Lbob;

    if-nez v3, :cond_f

    move-object v6, v4

    goto :goto_6

    :cond_f
    new-instance v6, Lbob;

    invoke-direct {v6, v3}, Lbob;-><init>(Lbob;)V

    :goto_6
    if-eqz v6, :cond_10

    invoke-virtual {v6}, Lbob;->b()I

    move-result v3

    invoke-virtual {v6}, Lbob;->a()I

    move-result v6

    invoke-virtual {v1, v3, v6}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    :cond_10
    iget v2, v2, Lbnw;->o:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    iget-object v2, p0, Lbmq;->c:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v1, p0, Lbmq;->e:Lbmr;

    invoke-virtual {v1}, Lbmr;->b()V

    goto/16 :goto_8

    :sswitch_d
    iget-object v1, p0, Lbmq;->e:Lbmr;

    invoke-virtual {v1}, Lbmr;->b()V

    goto/16 :goto_8

    :sswitch_e
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lbmq;->e:Lbmr;

    invoke-virtual {v3}, Lbmr;->a()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    aput-object v3, v2, v1

    goto/16 :goto_8

    :sswitch_f
    iget-object v1, p0, Lbmq;->e:Lbmr;

    invoke-virtual {v1}, Lbmr;->a()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    iget-object v2, p0, Lbmq;->c:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v1, p0, Lbmq;->e:Lbmr;

    invoke-virtual {v1}, Lbmr;->b()V

    goto/16 :goto_8

    :sswitch_10
    iget-object v1, p0, Lbmq;->c:Landroid/hardware/Camera;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_8

    :sswitch_11
    iget-object v1, p0, Lbmq;->c:Landroid/hardware/Camera;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_8

    :sswitch_12
    :try_start_3
    iget-object v1, p0, Lbmq;->c:Landroid/hardware/Camera;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_8

    :catch_1
    move-exception v1

    :try_start_4
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :sswitch_13
    iget-object v1, p0, Lbmq;->c:Landroid/hardware/Camera;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto/16 :goto_8

    :sswitch_14
    iget-object v1, p0, Lbmq;->c:Landroid/hardware/Camera;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_8

    :sswitch_15
    iget-object v1, p0, Lbmq;->c:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    goto/16 :goto_8

    :sswitch_16
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lbng;

    iget-object v2, p0, Lbmq;->c:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lbng;->a()V

    goto/16 :goto_8

    :sswitch_17
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v2, p0, Lbmq;->c:Landroid/hardware/Camera;

    check-cast v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_8

    :catch_2
    move-exception v1

    :try_start_6
    sget-object v2, Lbmv;->a:Lboc;

    const-string v3, "Could not set preview texture"

    invoke-static {v2, v3, v1}, Lbod;->b(Lboc;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    :sswitch_18
    iget-object v1, p0, Lbmq;->c:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->lock()V

    iget-object v1, p0, Lbmq;->a:Lbmv;

    iget-object v1, v1, Lbmv;->e:Lbnx;

    invoke-virtual {v1, v2}, Lbnx;->c(I)V

    goto/16 :goto_8

    :sswitch_19
    iget-object v1, p0, Lbmq;->c:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->unlock()V

    iget-object v1, p0, Lbmq;->a:Lbmv;

    iget-object v1, v1, Lbmv;->e:Lbnx;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lbnx;->c(I)V

    goto/16 :goto_8

    :sswitch_1a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lbnb;

    iget v9, p1, Landroid/os/Message;->arg1:I
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v3, p0, Lbmq;->c:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->reconnect()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-object v3, p0, Lbmq;->a:Lbmv;

    iget-object v3, v3, Lbmv;->e:Lbnx;

    invoke-virtual {v3, v2}, Lbnx;->c(I)V

    if-eqz v1, :cond_14

    new-instance v2, Lbmp;

    iget-object v8, p0, Lbmq;->a:Lbmv;

    iget-object v10, p0, Lbmq;->c:Landroid/hardware/Camera;

    iget-object v11, v8, Lbmv;->c:Lbmw;

    move-object v6, v2

    move-object v7, v8

    invoke-direct/range {v6 .. v11}, Lbmp;-><init>(Lbmv;Lbni;ILandroid/hardware/Camera;Lbmw;)V

    invoke-virtual {v1, v2}, Lbnb;->b(Lbne;)V

    goto/16 :goto_8

    :catch_3
    move-exception v2

    if-eqz v1, :cond_14

    iget v2, p0, Lbmq;->d:I

    invoke-virtual {p0, v2}, Lbnz;->c(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lbnb;->a:Landroid/os/Handler;

    new-instance v6, Lbem;

    const/16 v7, 0x9

    invoke-direct {v6, v1, v2, v7}, Lbem;-><init>(Lbnb;Ljava/lang/String;I)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_8

    :sswitch_1b
    iget-object v1, p0, Lbmq;->c:Landroid/hardware/Camera;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    iget-object v1, p0, Lbmq;->a:Lbmv;

    iget-object v1, v1, Lbmv;->e:Lbnx;

    invoke-virtual {v1, v5}, Lbnx;->c(I)V

    iput-object v4, p0, Lbmq;->c:Landroid/hardware/Camera;

    iput v3, p0, Lbmq;->d:I

    goto/16 :goto_8

    :cond_11
    sget-object v1, Lbmv;->a:Lboc;

    const-string v2, "Releasing camera without any camera opened."

    invoke-static {v1, v2}, Lbod;->c(Lboc;Ljava/lang/String;)V

    goto/16 :goto_8

    :sswitch_1c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lbna;

    iget v9, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lbmq;->a:Lbmv;

    iget-object v3, v3, Lbmv;->e:Lbnx;

    invoke-virtual {v3}, Lbnx;->a()I

    move-result v3

    if-eq v3, v5, :cond_12

    invoke-virtual {p0, v9}, Lbnz;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v9, v2}, Lbna;->d(ILjava/lang/String;)V

    goto/16 :goto_8

    :cond_12
    sget-object v3, Lbmv;->a:Lboc;

    invoke-static {v3}, Lbod;->f(Lboc;)V

    invoke-static {v9}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Lbmq;->c:Landroid/hardware/Camera;

    if-eqz v3, :cond_13

    iput v9, p0, Lbmq;->d:I

    new-instance v6, Lbmr;

    invoke-direct {v6, v3}, Lbmr;-><init>(Landroid/hardware/Camera;)V

    iput-object v6, p0, Lbmq;->e:Lbmr;

    iget-object v3, p0, Lbmq;->a:Lbmv;

    invoke-static {}, Lbmm;->c()Lbmm;

    move-result-object v6

    invoke-virtual {v6, v9}, Lbmm;->b(I)Lbnq;

    move-result-object v6

    iput-object v6, v3, Lbmv;->b:Lbnq;

    iget-object v3, p0, Lbmq;->a:Lbmv;

    new-instance v6, Lbmw;

    iget-object v7, p0, Lbmq;->e:Lbmr;

    invoke-virtual {v7}, Lbmr;->a()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-direct {v6, v7}, Lbmw;-><init>(Landroid/hardware/Camera$Parameters;)V

    iput-object v6, v3, Lbmv;->c:Lbmw;

    iget-object v3, p0, Lbmq;->c:Landroid/hardware/Camera;

    invoke-virtual {v3, p0}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    iget-object v3, p0, Lbmq;->a:Lbmv;

    iget-object v3, v3, Lbmv;->e:Lbnx;

    invoke-virtual {v3, v2}, Lbnx;->c(I)V

    if-eqz v1, :cond_14

    new-instance v2, Lbmp;

    iget-object v7, p0, Lbmq;->a:Lbmv;

    iget-object v8, p0, Lbmq;->b:Lbni;

    iget-object v10, p0, Lbmq;->c:Landroid/hardware/Camera;

    iget-object v11, v7, Lbmv;->c:Lbmw;

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lbmp;-><init>(Lbmv;Lbni;ILandroid/hardware/Camera;Lbmw;)V

    invoke-interface {v1, v2}, Lbna;->b(Lbne;)V

    goto :goto_8

    :cond_13
    if-eqz v1, :cond_14

    invoke-virtual {p0, v9}, Lbnz;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v9, v2}, Lbna;->c(ILjava/lang/String;)V

    goto :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :catch_4
    move-exception v1

    goto :goto_9

    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid CameraProxy message="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbod;->a(Lboc;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_14
    :goto_8
    invoke-static {p1}, Lbnh;->a(Landroid/os/Message;)V

    return-void

    :goto_9
    :try_start_9
    iget-object v2, p0, Lbmq;->a:Lbmv;

    iget-object v2, v2, Lbmv;->e:Lbnx;

    invoke-virtual {v2}, Lbnx;->a()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CameraAction["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lbze;->K(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] at CameraState["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lbmv;->a:Lboc;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RuntimeException during "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v1}, Lbod;->b(Lboc;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v3, p0, Lbmq;->a:Lbmv;

    iget-object v3, v3, Lbmv;->e:Lbnx;

    invoke-virtual {v3}, Lbnx;->b()V

    iget-object v3, p0, Lbmq;->c:Landroid/hardware/Camera;

    if-eqz v3, :cond_15

    sget-object v3, Lbmv;->a:Lboc;

    invoke-static {v3}, Lbod;->f(Lboc;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    iget-object v3, p0, Lbmq;->c:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    iput-object v4, p0, Lbmq;->c:Landroid/hardware/Camera;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_b

    :catchall_1
    move-exception v0

    goto :goto_a

    :catch_5
    move-exception v3

    :try_start_c
    sget-object v6, Lbmv;->a:Lboc;

    const-string v7, "Fail when calling Camera.release()."

    invoke-static {v6, v7, v3}, Lbod;->b(Lboc;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    iput-object v4, p0, Lbmq;->c:Landroid/hardware/Camera;

    goto :goto_b

    :goto_a
    iput-object v4, p0, Lbmq;->c:Landroid/hardware/Camera;

    throw v0

    :cond_15
    :goto_b
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v5, :cond_16

    iget-object v3, p0, Lbmq;->c:Landroid/hardware/Camera;

    if-nez v3, :cond_16

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_14

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lbna;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lbnz;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lbna;->c(ILjava/lang/String;)V

    goto/16 :goto_8

    :cond_16
    iget-object v3, p0, Lbmq;->b:Lbni;

    check-cast v3, Lbmv;

    iget-object v3, v3, Lbmv;->g:Lbnv;

    iget v4, p0, Lbmq;->d:I

    invoke-virtual {p0, v4}, Lbnz;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4, v0, v2}, Lbnv;->b(Ljava/lang/RuntimeException;Ljava/lang/String;II)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_8

    :goto_c
    invoke-static {p1}, Lbnh;->a(Landroid/os/Message;)V

    throw v0

    :cond_17
    sget-object v0, Lbmv;->a:Lboc;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Lbze;->K(I)Ljava/lang/String;

    invoke-static {v0}, Lbod;->g(Lboc;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1c
        0x2 -> :sswitch_1b
        0x3 -> :sswitch_1a
        0x4 -> :sswitch_19
        0x5 -> :sswitch_18
        0x65 -> :sswitch_17
        0x66 -> :sswitch_16
        0x67 -> :sswitch_15
        0x68 -> :sswitch_14
        0x69 -> :sswitch_13
        0x6a -> :sswitch_12
        0x6b -> :sswitch_11
        0x6c -> :sswitch_10
        0xc9 -> :sswitch_f
        0xca -> :sswitch_e
        0xcb -> :sswitch_d
        0xcc -> :sswitch_c
        0x12d -> :sswitch_b
        0x12e -> :sswitch_a
        0x12f -> :sswitch_9
        0x130 -> :sswitch_8
        0x131 -> :sswitch_7
        0x1cd -> :sswitch_6
        0x1ce -> :sswitch_5
        0x1cf -> :sswitch_4
        0x1f5 -> :sswitch_3
        0x1f6 -> :sswitch_2
        0x1f7 -> :sswitch_1
        0x259 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onError(ILandroid/hardware/Camera;)V
    .locals 3

    iget-object p2, p0, Lbmq;->a:Lbmv;

    iget-object p2, p2, Lbmv;->g:Lbnv;

    invoke-virtual {p2, p1}, Lbnv;->a(I)V

    const/16 p2, 0x64

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lbnz;->r:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lbmq;->a:Lbmv;

    iget-object p2, p2, Lbmv;->g:Lbnv;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Media server died."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lbmq;->d:I

    invoke-virtual {p0, v1}, Lbnz;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbmq;->a:Lbmv;

    iget-object v2, v2, Lbmv;->e:Lbnx;

    invoke-virtual {v2}, Lbnx;->a()I

    move-result v2

    invoke-virtual {p2, v0, v1, p1, v2}, Lbnv;->b(Ljava/lang/RuntimeException;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method
