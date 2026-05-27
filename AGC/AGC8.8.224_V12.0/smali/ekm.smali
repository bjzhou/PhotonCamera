.class public final Lekm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic b:Lcom/google/geo/lightfield/processing/ProgressCallback;

.field final synthetic c:Lekn;


# direct methods
.method public constructor <init>(Lekn;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/geo/lightfield/processing/ProgressCallback;)V
    .locals 0

    iput-object p1, p0, Lekm;->c:Lekn;

    iput-object p2, p0, Lekm;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lekm;->b:Lcom/google/geo/lightfield/processing/ProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    move-object/from16 v1, p0

    const-string v2, "Could not configure MediaCodec"

    const-string v3, "mime"

    iget-object v4, v1, Lekm;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v5, v1, Lekm;->c:Lekn;

    iget-object v6, v1, Lekm;->b:Lcom/google/geo/lightfield/processing/ProgressCallback;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/google/geo/lightfield/processing/ProgressCallback;->setProgress(F)V

    new-instance v8, Llts;

    invoke-direct {v8}, Llts;-><init>()V

    invoke-virtual {v8}, Llts;->b()V

    iget-object v0, v5, Lekn;->g:Lehx;

    invoke-virtual {v0}, Lehx;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    filled-new-array {v9, v9}, [I

    move-result-object v10

    new-instance v11, Landroid/media/MediaExtractor;

    invoke-direct {v11}, Landroid/media/MediaExtractor;-><init>()V

    invoke-static {v11, v0}, Lekx;->b(Landroid/media/MediaExtractor;Ljava/lang/String;)Landroid/media/MediaFormat;

    move-result-object v0

    invoke-virtual {v11}, Landroid/media/MediaExtractor;->release()V

    const-string v11, "height"

    const-string v12, "width"

    const/4 v13, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v14

    aput v14, v10, v9

    invoke-virtual {v0, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    aput v0, v10, v13

    :cond_0
    aget v0, v10, v9

    aget v10, v10, v13

    new-instance v14, Lltu;

    invoke-direct {v14, v0, v10}, Lltu;-><init>(II)V

    new-instance v10, Landroid/view/Surface;

    iget-object v0, v14, Lltu;->c:Landroid/graphics/SurfaceTexture;

    invoke-direct {v10, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    new-instance v15, Lekx;

    invoke-direct {v15, v10}, Lekx;-><init>(Landroid/view/Surface;)V

    iget-object v0, v5, Lekn;->g:Lehx;

    invoke-virtual {v0}, Lehx;->b()Ljava/lang/String;

    move-result-object v0

    iput-boolean v9, v15, Lekx;->f:Z

    iget-object v7, v15, Lekx;->c:Landroid/media/MediaExtractor;

    invoke-static {v7, v0}, Lekx;->b(Landroid/media/MediaExtractor;Ljava/lang/String;)Landroid/media/MediaFormat;

    move-result-object v7

    iput-object v7, v15, Lekx;->d:Landroid/media/MediaFormat;

    iget-object v7, v15, Lekx;->d:Landroid/media/MediaFormat;

    const/4 v13, 0x0

    if-nez v7, :cond_1

    sget-object v2, Lekx;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    const-string v3, "Could not extract MediaFormat from %s"

    const/16 v7, 0x637

    invoke-static {v2, v3, v0, v7}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    iget-boolean v0, v15, Lekx;->f:Z

    move-object/from16 v17, v10

    goto/16 :goto_1

    :cond_1
    const-string v0, "durationUs"

    invoke-virtual {v7, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v15, Lekx;->d:Landroid/media/MediaFormat;

    move-object/from16 v17, v10

    invoke-virtual {v7, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v15, Lekx;->e:J

    goto :goto_0

    :cond_2
    move-object/from16 v17, v10

    :goto_0
    :try_start_0
    iget-object v0, v15, Lekx;->d:Landroid/media/MediaFormat;

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, v15, Lekx;->h:Landroid/media/MediaCodec;

    iget-object v0, v15, Lekx;->d:Landroid/media/MediaFormat;

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget-object v0, v15, Lekx;->h:Landroid/media/MediaCodec;

    iget-object v3, v15, Lekx;->d:Landroid/media/MediaFormat;

    iget-object v7, v15, Lekx;->b:Landroid/view/Surface;

    const/4 v9, 0x0

    invoke-virtual {v0, v3, v7, v13, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v0, v15, Lekx;->h:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    iget-object v0, v15, Lekx;->h:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v15, Lekx;->g:[Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    iput-boolean v2, v15, Lekx;->f:Z

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v2, Lekx;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    const-string v3, "Could not start MediaCodec"

    const/16 v7, 0x633

    invoke-static {v2, v3, v7, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    iget-boolean v0, v15, Lekx;->f:Z

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v3, Lekx;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->b()Lnaz;

    move-result-object v3

    const/16 v7, 0x635

    invoke-static {v3, v2, v7, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    iget-boolean v0, v15, Lekx;->f:Z

    goto :goto_1

    :catch_2
    move-exception v0

    sget-object v3, Lekx;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->b()Lnaz;

    move-result-object v3

    const/16 v7, 0x634

    invoke-static {v3, v2, v7, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    iget-boolean v0, v15, Lekx;->f:Z

    goto :goto_1

    :catch_3
    move-exception v0

    sget-object v0, Lekx;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    iget-object v2, v15, Lekx;->d:Landroid/media/MediaFormat;

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Could not create MediaCodec of type %s"

    const/16 v7, 0x636

    invoke-static {v0, v3, v2, v7}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    iget-boolean v0, v15, Lekx;->f:Z

    :goto_1
    if-nez v0, :cond_3

    sget-object v0, Lekn;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    iget-object v2, v5, Lekn;->g:Lehx;

    invoke-virtual {v2}, Lehx;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to open video file %s"

    const/16 v5, 0x615

    invoke-static {v0, v3, v2, v5}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    move-object/from16 v18, v4

    goto/16 :goto_9

    :cond_3
    :goto_2
    iget-object v0, v5, Lekn;->b:Lejw;

    iget-object v2, v5, Lekn;->g:Lehx;

    invoke-virtual {v2}, Lehx;->a()Ljava/lang/String;

    move-result-object v19

    iget-boolean v2, v5, Lekn;->d:Z

    iget-wide v9, v5, Lekn;->e:D

    move-object v7, v14

    iget-wide v13, v5, Lekn;->f:D

    move-object/from16 v18, v0

    move/from16 v20, v2

    move-wide/from16 v21, v9

    move-wide/from16 v23, v13

    invoke-interface/range {v18 .. v24}, Lejw;->a(Ljava/lang/String;ZDD)Lejv;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;

    iget-boolean v0, v9, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->b:Z

    if-nez v0, :cond_4

    sget-object v0, Lekn;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v2, "Failed to initialize omnistereo renderer"

    const/16 v5, 0x614

    invoke-static {v0, v2, v5}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    move-object/from16 v18, v4

    const/4 v13, 0x0

    goto/16 :goto_9

    :cond_4
    const v0, 0x3e4ccccd    # 0.2f

    invoke-interface {v6, v0}, Lcom/google/geo/lightfield/processing/ProgressCallback;->setProgress(F)V

    const/16 v16, 0x0

    :goto_3
    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v13, v16, v10

    if-gez v13, :cond_8

    :try_start_3
    invoke-virtual {v15}, Lekx;->c()Z

    move-result v13
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_6

    if-nez v13, :cond_5

    move-object/from16 v18, v4

    const/4 v13, 0x1

    goto/16 :goto_6

    :cond_5
    :try_start_4
    iget-object v13, v7, Lltu;->d:Ljava/util/concurrent/Semaphore;

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_5

    move-object/from16 v18, v4

    const-wide/16 v3, 0x2710

    :try_start_5
    invoke-virtual {v13, v3, v4, v14}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4

    if-nez v3, :cond_6

    const/4 v13, 0x1

    goto :goto_6

    :cond_6
    iget-object v3, v7, Lltu;->c:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v3, v7, Lltu;->b:Lcom/google/android/libraries/vision/opengl/Texture;

    invoke-virtual {v3}, Lcom/google/android/libraries/vision/opengl/Texture;->getName()I

    move-result v3

    iget-object v4, v15, Lekx;->d:Landroid/media/MediaFormat;

    invoke-virtual {v4, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    iget-object v10, v15, Lekx;->d:Landroid/media/MediaFormat;

    invoke-virtual {v10, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    iget-boolean v13, v9, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->b:Z

    if-eqz v13, :cond_7

    iget v13, v9, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->a:I

    invoke-virtual {v9, v13, v3, v4, v10}, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->nativeApplyTexture(IIII)V

    iget v3, v9, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->a:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v9, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->a:I

    goto :goto_4

    :cond_7
    const/4 v4, 0x1

    :goto_4
    const/high16 v3, 0x3f400000    # 0.75f

    mul-float v16, v16, v3

    add-float v3, v16, v0

    invoke-interface {v6, v3}, Lcom/google/geo/lightfield/processing/ProgressCallback;->setProgress(F)V

    invoke-virtual {v15}, Lekx;->a()F

    move-result v16

    move-object/from16 v4, v18

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    move-object/from16 v18, v4

    :goto_5
    const/4 v4, 0x1

    sget-object v3, Lltu;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    goto :goto_6

    :catch_6
    move-exception v0

    move-object/from16 v18, v4

    move-object v3, v0

    sget-object v0, Lekn;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v4, "Could not decodeNextFrame"

    const/16 v11, 0x612

    invoke-static {v0, v4, v11, v3}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    const/4 v13, 0x0

    goto :goto_6

    :cond_8
    move-object/from16 v18, v4

    const/4 v4, 0x1

    const/4 v13, 0x1

    :goto_6
    iget-boolean v0, v15, Lekx;->f:Z

    if-eqz v0, :cond_9

    :try_start_6
    iget-object v0, v15, Lekx;->h:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    sget-object v3, Lekx;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->b()Lnaz;

    move-result-object v3

    const-string v4, "Exception when stopping the decoder"

    const/16 v11, 0x631

    invoke-static {v3, v4, v11, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :goto_7
    iget-object v0, v15, Lekx;->h:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iget-object v0, v15, Lekx;->c:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    const/4 v3, 0x0

    iput-boolean v3, v15, Lekx;->f:Z

    :cond_9
    invoke-virtual/range {v17 .. v17}, Landroid/view/Surface;->release()V

    iget-object v0, v7, Lltu;->c:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iget-object v0, v7, Lltu;->b:Lcom/google/android/libraries/vision/opengl/Texture;

    invoke-virtual {v0}, Lcom/google/android/libraries/vision/opengl/Texture;->delete()V

    if-eqz v13, :cond_a

    iget-boolean v0, v5, Lekn;->c:Z

    invoke-interface {v2, v0}, Lejv;->getResult(Z)Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;

    move-result-object v0

    move-object v13, v0

    goto :goto_8

    :cond_a
    const/4 v13, 0x0

    :goto_8
    invoke-interface {v6, v10}, Lcom/google/geo/lightfield/processing/ProgressCallback;->setProgress(F)V

    invoke-virtual {v9}, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->nativeRelease()V

    const/4 v2, 0x0

    iput-boolean v2, v9, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->b:Z

    invoke-virtual {v8}, Llts;->a()V

    :goto_9
    move-object/from16 v2, v18

    invoke-virtual {v2, v13}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
