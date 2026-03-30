.class public final Lmeq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/AutoCloseable;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Lprw;Llsc;)Lrss;
    .locals 25

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_1
    goto/32 :goto_11

    nop

    :goto_2
    monitor-enter p0

    nop

    :try_start_0
    new-instance v15, Lcom/google/android/apps/camera/jni/saliency/SaliencyPredictor;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v15}, Lcom/google/android/apps/camera/jni/saliency/SaliencyPredictor;-><init>()V

    iget-object v1, v15, Lcom/google/android/apps/camera/jni/saliency/SaliencyPredictor;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    invoke-static {v1}, Lcom/google/android/apps/camera/jni/saliency/SaliencyPredictor;->nativeLoad(Ljava/lang/Boolean;)J

    move-result-wide v1

    nop

    nop

    iput-wide v1, v15, Lcom/google/android/apps/camera/jni/saliency/SaliencyPredictor;->a:J

    nop

    nop

    nop

    :cond_1
    invoke-interface/range {p1 .. p1}, Lprw;->g()Ljava/util/List;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lprv;

    nop

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Lprv;

    nop

    nop

    const/4 v13, 0x2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Lprv;

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    iget-object v4, v0, Llsc;->a:Lprk;

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-interface {v4, v5}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, [Landroid/hardware/camera2/params/Face;

    nop

    nop

    nop

    goto :goto_3

    nop

    nop

    nop

    :cond_2
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    :goto_3
    move-object v12, v4

    nop

    nop

    nop

    nop

    new-array v4, v14, [F

    nop

    nop

    const v17, 0x3f8ccccd    # 1.1f

    nop

    nop

    nop

    nop

    nop

    if-eqz v12, :cond_3

    nop

    nop

    nop

    array-length v5, v12

    nop

    if-lez v5, :cond_3

    nop

    nop

    nop

    nop

    mul-int/lit8 v5, v5, 0x4

    nop

    new-array v4, v5, [F

    nop

    nop

    nop

    move v5, v14

    nop

    nop

    nop

    nop

    nop

    :goto_4
    array-length v6, v12

    nop

    if-ge v5, v6, :cond_3

    nop

    nop

    nop

    nop

    mul-int/lit8 v6, v5, 0x4

    nop

    nop

    nop

    nop

    nop

    aget-object v7, v12, v5

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    nop

    nop

    nop

    iget v7, v7, Landroid/graphics/Rect;->left:I

    nop

    int-to-float v7, v7

    nop

    nop

    nop

    div-float v7, v7, v17

    nop

    nop

    nop

    nop

    nop

    aput v7, v4, v6

    nop

    nop

    add-int/lit8 v7, v6, 0x1

    nop

    nop

    nop

    nop

    aget-object v8, v12, v5

    nop

    nop

    invoke-virtual {v8}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    iget v8, v8, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    nop

    int-to-float v8, v8

    nop

    nop

    nop

    nop

    div-float v8, v8, v17

    nop

    nop

    nop

    nop

    nop

    aput v8, v4, v7

    nop

    nop

    nop

    nop

    add-int/lit8 v7, v6, 0x2

    nop

    nop

    nop

    nop

    aget-object v8, v12, v5

    nop

    invoke-virtual {v8}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    iget v8, v8, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    int-to-float v8, v8

    nop

    nop

    nop

    nop

    mul-float v8, v8, v17

    nop

    nop

    nop

    aput v8, v4, v7

    nop

    add-int/lit8 v6, v6, 0x3

    nop

    nop

    nop

    nop

    nop

    aget-object v7, v12, v5

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    nop

    nop

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    nop

    int-to-float v7, v7

    nop

    nop

    nop

    mul-float v7, v7, v17

    nop

    nop

    nop

    nop

    nop

    aput v7, v4, v6

    nop

    nop

    nop

    nop

    add-int/lit8 v5, v5, 0x1

    nop

    nop

    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :cond_3
    move-object/from16 v16, v4

    nop

    nop

    nop

    nop

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->c()I

    move-result v4

    nop

    nop

    nop

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->b()I

    move-result v5

    nop

    invoke-interface {v2}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    nop

    invoke-interface {v2}, Lprv;->getPixelStride()I

    move-result v7

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lprv;->getRowStride()I

    move-result v8

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    nop

    nop

    invoke-interface {v3}, Lprv;->getPixelStride()I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lprv;->getRowStride()I

    move-result v11

    nop

    nop

    invoke-interface {v1}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v18

    nop

    nop

    nop

    invoke-interface {v1}, Lprv;->getPixelStride()I

    move-result v19

    nop

    nop

    invoke-interface {v1}, Lprv;->getRowStride()I

    move-result v20

    nop

    nop

    nop

    const/16 v21, 0x0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v0, Llsc;->t:Landroid/graphics/Rect;

    nop

    iget v1, v1, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    int-to-float v1, v1

    nop

    nop

    nop

    move/from16 v22, v1

    nop

    nop

    nop

    nop

    goto :goto_5

    nop

    nop

    :cond_4
    move/from16 v22, v21

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Llsc;->t:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    nop

    int-to-float v0, v0

    nop

    nop

    nop

    move/from16 v23, v0

    nop

    nop

    nop

    goto :goto_6

    nop

    :cond_5
    move/from16 v23, v21

    nop

    :goto_6
    iget-wide v1, v15, Lcom/google/android/apps/camera/jni/saliency/SaliencyPredictor;->a:J

    nop

    move-object v0, v15

    nop

    nop

    nop

    move v3, v4

    nop

    nop

    nop

    nop

    nop

    move v4, v5

    nop

    nop

    nop

    move-object v5, v6

    nop

    nop

    nop

    nop

    move v6, v7

    nop

    nop

    nop

    nop

    move v7, v8

    nop

    nop

    move-object v8, v9

    nop

    nop

    nop

    move v9, v10

    nop

    nop

    nop

    nop

    nop

    move v10, v11

    nop

    move-object/from16 v11, v18

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v24, v12

    nop

    nop

    nop

    nop

    nop

    move/from16 v12, v19

    nop

    nop

    nop

    nop

    move/from16 v13, v20

    nop

    nop

    nop

    nop

    nop

    move/from16 v18, v14

    nop

    nop

    nop

    move/from16 v14, v22

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v19, v15

    nop

    nop

    nop

    move/from16 v15, v23

    nop

    nop

    invoke-virtual/range {v0 .. v16}, Lcom/google/android/apps/camera/jni/saliency/SaliencyPredictor;->nativeGetSaliencyHeatMap(JIILjava/nio/Buffer;IILjava/nio/Buffer;IILjava/nio/Buffer;IIFF[F)[F

    move-result-object v0

    nop

    nop

    nop

    nop

    array-length v1, v0

    nop

    nop

    nop

    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    if-eqz v1, :cond_7

    nop

    nop

    and-int/lit8 v1, v1, 0x3

    nop

    nop

    nop

    if-eqz v1, :cond_6

    nop

    nop

    move v1, v2

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x2

    nop

    nop

    nop

    goto/16 :goto_8

    nop

    :cond_6
    move v1, v2

    nop

    nop

    nop

    nop

    nop

    move/from16 v14, v18

    nop

    nop

    nop

    :goto_7
    array-length v3, v0

    nop

    nop

    nop

    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    nop

    shr-int/2addr v3, v4

    nop

    nop

    if-ge v14, v3, :cond_8

    nop

    nop

    nop

    nop

    mul-int/lit8 v3, v14, 0x4

    nop

    nop

    aget v5, v0, v3

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v6, v3, 0x1

    nop

    aget v6, v0, v6

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v7, v3, 0x2

    nop

    aget v7, v0, v7

    nop

    nop

    add-int/lit8 v3, v3, 0x3

    nop

    nop

    nop

    aget v3, v0, v3

    nop

    const/high16 v8, -0x41000000    # -0.5f

    nop

    nop

    nop

    nop

    add-float/2addr v5, v8

    nop

    nop

    add-float/2addr v7, v8

    nop

    nop

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    nop

    nop

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    nop

    nop

    nop

    nop

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    nop

    nop

    add-float/2addr v6, v8

    nop

    add-float/2addr v3, v8

    nop

    nop

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    nop

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    nop

    nop

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    nop

    nop

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    nop

    nop

    nop

    nop

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v14, v14, 0x1

    nop

    nop

    nop

    nop

    goto/16 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_7
    const/4 v4, 0x2

    nop

    nop

    move v1, v2

    nop

    nop

    nop

    nop

    :cond_8
    :goto_8
    const/high16 v0, 0x3f000000    # 0.5f

    nop

    mul-float v1, v1, v17

    nop

    nop

    div-float/2addr v0, v1

    nop

    nop

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    nop

    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    move-object v1, v0

    nop

    nop

    check-cast v1, Lrsx;

    nop

    nop

    iget-object v1, v1, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Float;

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    nop

    const v3, 0x3f99999a    # 1.2f

    nop

    nop

    cmpg-float v1, v1, v3

    nop

    nop

    nop

    nop

    if-gez v1, :cond_9

    nop

    nop

    nop

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    :cond_9
    move-object v1, v0

    nop

    nop

    check-cast v1, Lrsx;

    nop

    nop

    iget-object v1, v1, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Float;

    nop

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    cmpg-float v1, v1, v2

    nop

    nop

    if-gez v1, :cond_a

    nop

    move-object/from16 v1, v24

    nop

    nop

    if-eqz v1, :cond_a

    nop

    nop

    nop

    array-length v1, v1

    nop

    nop

    if-lt v1, v4, :cond_a

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    :cond_a
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/camera/jni/saliency/SaliencyPredictor;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_13

    nop

    nop

    :goto_9
    const v0, 0x6

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

    :goto_a
    move-object/from16 v0, p2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    throw v0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    return-object v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    :goto_12
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    monitor-exit p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

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

    nop

    :goto_0
    return-void

    nop

    nop
.end method
