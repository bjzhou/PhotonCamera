.class final Lbmd;
.super Lbme;


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field final synthetic d:Lbmf;


# direct methods
.method public constructor <init>(Lbmf;)V
    .locals 2

    iput-object p1, p0, Lbmd;->d:Lbmf;

    invoke-direct {p0}, Lbme;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lbmd;->a:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lbmd;->b:J

    iput-wide v0, p0, Lbmd;->c:J

    return-void
.end method


# virtual methods
.method public final a(Landroid/hardware/camera2/CaptureResult;)V
    .locals 10

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v4

    iget-wide v6, p0, Lbmd;->b:J

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    iget v4, p0, Lbmd;->a:I

    iput v0, p0, Lbmd;->a:I

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v5

    iput-wide v5, p0, Lbmd;->b:J

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lbmd;->d:Lbmf;

    iget-object v5, v4, Lbmf;->l:Lbmy;

    if-eqz v5, :cond_1

    const/4 v6, 0x4

    if-ne v0, v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v4, v4, Lbmf;->e:Lbly;

    invoke-interface {v5, v0, v4}, Lbmy;->a(ZLbne;)V

    iget-object v0, p0, Lbmd;->d:Lbmf;

    iput-object v3, v0, Lbmf;->l:Lbmy;

    goto :goto_1

    :pswitch_2
    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lbmd;->d:Lbmf;

    iget-object v0, v0, Lbmf;->n:Lbmz;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lbmz;->a()V

    :cond_1
    :goto_1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v5

    iget-wide v7, p0, Lbmd;->c:J

    cmp-long v9, v5, v7

    if-lez v9, :cond_3

    iget-object v5, p0, Lbmd;->d:Lbmf;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v5, Lbmf;->o:I

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v5

    iput-wide v5, p0, Lbmd;->c:J

    packed-switch v4, :pswitch_data_1

    :cond_2
    goto :goto_3

    :pswitch_3
    iget-object p1, p0, Lbmd;->d:Lbmf;

    iget-object v0, p1, Lbmf;->m:Lbmg;

    if-eqz v0, :cond_2

    iget-object v4, p1, Lbmf;->j:Landroid/media/ImageReader;

    invoke-virtual {v4, v0, p1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :try_start_0
    iget-object p1, p0, Lbmd;->d:Lbmf;

    iget-object v0, p1, Lbmf;->i:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v4, p1, Lbmf;->f:Lbof;

    iget-object v5, p1, Lbmf;->d:Landroid/hardware/camera2/CameraDevice;

    new-array v1, v1, [Landroid/view/Surface;

    iget-object p1, p1, Lbmf;->j:Landroid/media/ImageReader;

    invoke-virtual {p1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    invoke-virtual {v4, v5, p1, v1}, Lbof;->a(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object v1, p0, Lbmd;->d:Lbmf;

    iget-object v2, v1, Lbmf;->m:Lbmg;

    invoke-virtual {v0, p1, v2, v1}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lbmd;->d:Lbmf;

    iput-object v3, p1, Lbmf;->m:Lbmg;

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    sget-object v0, Lbmh;->a:Lboc;

    const-string v1, "Unable to initiate capture"

    invoke-static {v0, v1, p1}, Lbod;->b(Lboc;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lbmd;->d:Lbmf;

    iput-object v3, p1, Lbmf;->m:Lbmg;

    return-void

    :goto_2
    iget-object v0, p0, Lbmd;->d:Lbmf;

    iput-object v3, v0, Lbmf;->m:Lbmg;

    throw p1

    :cond_3
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-virtual {p0, p3}, Lbmd;->a(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public final onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 1

    sget-object p1, Lbmh;->a:Lboc;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Capture attempt failed with reason "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lbod;->a(Lboc;Ljava/lang/String;)V

    return-void
.end method

.method public final onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    invoke-virtual {p0, p3}, Lbmd;->a(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method
