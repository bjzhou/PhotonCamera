.class public final Lheg;
.super Ljava/lang/Object;

# interfaces
.implements Lhej;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lkpb;Lgrw;)Lmqp;
    .locals 25

    move-object/from16 v0, p2

    monitor-enter p0

    :try_start_0
    new-instance v15, Lcom/google/android/apps/camera/jni/saliency/SaliencyPredictor;

    invoke-direct {v15}, Lcom/google/android/apps/camera/jni/saliency/SaliencyPredictor;-><init>()V

    iget-object v1, v15, Lcom/google/android/apps/camera/jni/saliency/SaliencyPredictor;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/camera/jni/saliency/SaliencyPredictor;->nativeLoad(Ljava/lang/Boolean;)J

    move-result-wide v1

    iput-wide v1, v15, Lcom/google/android/apps/camera/jni/saliency/SaliencyPredictor;->a:J

    :cond_0
    invoke-interface/range {p1 .. p1}, Lkpb;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkpa;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkpa;

    const/4 v13, 0x2

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkpa;

    if-eqz v0, :cond_1

    iget-object v4, v0, Lgrw;->a:Lkoq;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v4, v5}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/camera2/params/Face;

    move-object v12, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    move-object v12, v4

    :goto_0
    new-array v4, v14, [F

    const v17, 0x3f8ccccd    # 1.1f

    if-eqz v12, :cond_3

    array-length v5, v12

    if-lez v5, :cond_3

    mul-int/lit8 v5, v5, 0x4

    new-array v4, v5, [F

    const/4 v5, 0x0

    :goto_1
    array-length v6, v12

    if-ge v5, v6, :cond_2

    mul-int/lit8 v6, v5, 0x4

    aget-object v7, v12, v5

    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    div-float v7, v7, v17

    aput v7, v4, v6

    add-int/lit8 v7, v6, 0x1

    aget-object v8, v12, v5

    invoke-virtual {v8}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    div-float v8, v8, v17

    aput v8, v4, v7

    add-int/lit8 v7, v6, 0x2

    aget-object v8, v12, v5

    invoke-virtual {v8}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    mul-float v8, v8, v17

    aput v8, v4, v7

    aget-object v7, v12, v5

    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    add-int/lit8 v6, v6, 0x3

    mul-float v7, v7, v17

    aput v7, v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v16, v4

    goto :goto_2

    :cond_3
    move-object/from16 v16, v4

    :goto_2
    invoke-interface/range {p1 .. p1}, Lkpb;->c()I

    move-result v4

    invoke-interface/range {p1 .. p1}, Lkpb;->b()I

    move-result v5

    invoke-interface {v2}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-interface {v2}, Lkpa;->getPixelStride()I

    move-result v7

    invoke-interface {v2}, Lkpa;->getRowStride()I

    move-result v8

    invoke-interface {v3}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-interface {v3}, Lkpa;->getPixelStride()I

    move-result v10

    invoke-interface {v3}, Lkpa;->getRowStride()I

    move-result v11

    invoke-interface {v1}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v18

    invoke-interface {v1}, Lkpa;->getPixelStride()I

    move-result v19

    invoke-interface {v1}, Lkpa;->getRowStride()I

    move-result v20

    const/16 v21, 0x0

    if-eqz v0, :cond_4

    iget-object v1, v0, Lgrw;->t:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    move/from16 v22, v1

    goto :goto_3

    :cond_4
    const/16 v22, 0x0

    :goto_3
    if-eqz v0, :cond_5

    iget-object v0, v0, Lgrw;->t:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    move/from16 v23, v0

    goto :goto_4

    :cond_5
    const/16 v23, 0x0

    :goto_4
    iget-wide v1, v15, Lcom/google/android/apps/camera/jni/saliency/SaliencyPredictor;->a:J

    move-object v0, v15

    move v3, v4

    move v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v11

    move-object/from16 v11, v18

    move-object/from16 v24, v12

    move/from16 v12, v19

    move/from16 v13, v20

    const/16 v18, 0x0

    move/from16 v14, v22

    move-object/from16 v19, v15

    move/from16 v15, v23

    invoke-virtual/range {v0 .. v16}, Lcom/google/android/apps/camera/jni/saliency/SaliencyPredictor;->nativeGetSaliencyHeatMap(JIILjava/nio/Buffer;IILjava/nio/Buffer;IILjava/nio/Buffer;IIFF[F)[F

    move-result-object v0

    array-length v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_7

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_6

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    goto :goto_6

    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    :goto_5
    array-length v3, v0

    const/4 v4, 0x2

    shr-int/2addr v3, v4

    if-ge v14, v3, :cond_8

    mul-int/lit8 v3, v14, 0x4

    aget v5, v0, v3

    add-int/lit8 v6, v3, 0x1

    aget v6, v0, v6

    add-int/lit8 v7, v3, 0x2

    aget v7, v0, v7

    add-int/lit8 v3, v3, 0x3

    aget v3, v0, v3

    const/high16 v8, -0x41000000    # -0.5f

    add-float/2addr v5, v8

    add-float/2addr v7, v8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float/2addr v6, v8

    add-float/2addr v3, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_7
    const/4 v4, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_8
    :goto_6
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v1, v1, v17

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lmqt;

    iget-object v1, v1, Lmqt;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const v3, 0x3f99999a    # 1.2f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_9

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    :cond_9
    move-object v1, v0

    check-cast v1, Lmqt;

    iget-object v1, v1, Lmqt;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_a

    move-object/from16 v1, v24

    if-eqz v1, :cond_a

    array-length v1, v1

    if-lt v1, v4, :cond_a

    sget-object v0, Lmpx;->a:Lmpx;

    :cond_a
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/camera/jni/saliency/SaliencyPredictor;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method public final close()V
    .locals 0

    return-void
.end method
