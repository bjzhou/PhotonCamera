.class public final Ldra;
.super Ljava/lang/Object;

# interfaces
.implements Ldrc;


# instance fields
.field private final a:Lmqp;

.field private final b:Ldhi;

.field private final c:Ldxl;

.field private d:Lmqp;


# direct methods
.method public constructor <init>(Ljuf;Lmqp;Ldxl;Lkbc;Ljava/util/concurrent/Executor;Ldhi;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/apps/camera/facemetadata/jni/FaceMetadataNative;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/google/android/apps/camera/facemetadata/jni/FaceMetadataNative;

    invoke-static {v0}, Lkak;->a(Ljava/lang/Class;)V

    :cond_0
    invoke-static {}, Lcom/google/android/apps/camera/facemetadata/jni/FaceMetadataNative;->createHandle()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    iput-object v0, p0, Ldra;->d:Lmqp;

    iput-object p2, p0, Ldra;->a:Lmqp;

    new-instance p2, Lfit;

    invoke-direct {p2, p0, p5, p4, v1}, Lfit;-><init>(Ldra;Ljava/util/concurrent/Executor;Lkbc;I)V

    invoke-virtual {p1, p2}, Ljuf;->d(Lkad;)V

    iput-object p6, p0, Ldra;->b:Ldhi;

    iput-object p3, p0, Ldra;->c:Ldxl;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldra;->d:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldra;->d:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/facemetadata/jni/FaceMetadataNative;->releaseHandle(J)V

    :cond_0
    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Ldra;->d:Lmqp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/google/googlex/gcam/ShotMetadata;Lkpb;)Lmqp;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Ldra;->d:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Lmpx;->a:Lmpx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v2, v1, Ldra;->c:Ldxl;

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/gcam/ShotMetadata;->d()Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/gcam/FrameMetadata;->c()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ldxl;->a(J)Lgrw;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v3, v2, Lgrw;->q:[Lgrz;

    array-length v3, v3

    if-nez v3, :cond_1

    goto/16 :goto_4

    :cond_1
    sget-object v3, Lmpx;->a:Lmpx;

    iget-object v4, v1, Ldra;->a:Lmqp;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    iget-object v4, v1, Ldra;->b:Ldhi;

    sget-object v6, Ldhd;->e:Ldhj;

    invoke-interface {v4, v6}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    iget-object v3, v1, Ldra;->a:Lmqp;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgta;

    invoke-virtual {v3, v0, v2, v5}, Lgta;->b(Lkpb;Lgrw;Z)Lmqp;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    :cond_2
    iget-object v2, v2, Lgrw;->q:[Lgrz;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_0
    array-length v7, v2

    if-ge v6, v7, :cond_8

    aget-object v7, v2, v6

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgsx;

    iget-object v8, v8, Lgsx;->a:[Lgsw;

    aget-object v8, v8, v6

    iget-object v8, v8, Lgsw;->g:Lmqp;

    goto :goto_1

    :cond_3
    sget-object v8, Lmpx;->a:Lmpx;

    :goto_1
    iget-object v9, v7, Lgrz;->a:Landroid/graphics/Rect;

    iget-object v10, v7, Lgrz;->c:Landroid/graphics/PointF;

    iget-object v11, v7, Lgrz;->d:Landroid/graphics/PointF;

    iget-object v12, v7, Lgrz;->f:Landroid/graphics/PointF;

    iget-object v13, v7, Lgrz;->e:Landroid/graphics/PointF;

    iget-object v14, v7, Lgrz;->g:Landroid/graphics/PointF;

    iget-object v15, v7, Lgrz;->h:Landroid/graphics/PointF;

    if-eqz v10, :cond_7

    if-eqz v11, :cond_7

    if-eqz v12, :cond_7

    if-eqz v13, :cond_7

    if-eqz v14, :cond_7

    if-eqz v15, :cond_7

    iget v5, v7, Lgrz;->b:I

    int-to-float v5, v5

    invoke-static {v9}, Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;->a(Landroid/graphics/Rect;)Lkui;

    move-result-object v9

    move-object/from16 v16, v2

    new-instance v2, Landroid/graphics/Point;

    move-object/from16 v17, v3

    iget v3, v10, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iget v10, v10, Landroid/graphics/PointF;->y:F

    float-to-int v10, v10

    invoke-direct {v2, v3, v10}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, v9, Lkui;->a:Ljava/lang/Object;

    new-instance v2, Landroid/graphics/Point;

    iget v3, v11, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iget v10, v11, Landroid/graphics/PointF;->y:F

    float-to-int v10, v10

    invoke-direct {v2, v3, v10}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, v9, Lkui;->h:Ljava/lang/Object;

    new-instance v2, Landroid/graphics/Point;

    iget v3, v12, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iget v10, v12, Landroid/graphics/PointF;->y:F

    float-to-int v10, v10

    invoke-direct {v2, v3, v10}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, v9, Lkui;->g:Ljava/lang/Object;

    new-instance v2, Landroid/graphics/Point;

    iget v3, v13, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iget v10, v13, Landroid/graphics/PointF;->y:F

    float-to-int v10, v10

    invoke-direct {v2, v3, v10}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, v9, Lkui;->f:Ljava/lang/Object;

    new-instance v2, Landroid/graphics/Point;

    iget v3, v14, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iget v10, v14, Landroid/graphics/PointF;->y:F

    float-to-int v10, v10

    invoke-direct {v2, v3, v10}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, v9, Lkui;->b:Ljava/lang/Object;

    new-instance v2, Landroid/graphics/Point;

    iget v3, v15, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iget v10, v15, Landroid/graphics/PointF;->y:F

    float-to-int v10, v10

    invoke-direct {v2, v3, v10}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, v9, Lkui;->e:Ljava/lang/Object;

    const/high16 v2, -0x40800000    # -1.0f

    add-float/2addr v5, v2

    const/high16 v3, 0x42c60000    # 99.0f

    div-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v9, Lkui;->i:Ljava/lang/Object;

    iget v3, v7, Lgrz;->k:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v9, Lkui;->j:Ljava/lang/Object;

    iget v3, v7, Lgrz;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v9, Lkui;->k:Ljava/lang/Object;

    invoke-virtual {v8}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmvv;

    invoke-virtual {v3}, Lmvv;->size()I

    move-result v3

    new-array v5, v3, [F

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v3, :cond_5

    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmvv;

    invoke-virtual {v10, v7}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    if-nez v10, :cond_4

    const/high16 v10, -0x40800000    # -1.0f

    goto :goto_3

    :cond_4
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    :goto_3
    aput v10, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    iput-object v5, v9, Lkui;->c:Ljava/lang/Object;

    :cond_6
    invoke-virtual {v9}, Lkui;->b()Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required face feature missing"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;

    invoke-interface {v4, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    if-nez v2, :cond_9

    sget-object v0, Lmpx;->a:Lmpx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_9
    :try_start_2
    invoke-static {v3}, Lcom/google/android/apps/camera/facemetadata/jni/FaceMetadataNative;->generateFaceInfos([Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;)[J

    move-result-object v7

    if-nez v7, :cond_a

    sget-object v0, Lmpx;->a:Lmpx;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_a
    :try_start_3
    invoke-interface/range {p2 .. p2}, Lkpb;->c()I

    move-result v2

    invoke-interface/range {p2 .. p2}, Lkpb;->b()I

    move-result v3

    iget-object v4, v1, Ldra;->d:Lmqp;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v7, v4, v5}, Lcom/google/android/apps/camera/facemetadata/jni/FaceMetadataNative;->generateFaceThumbnails(II[JJ)[J

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/gcam/ShotMetadata;->d()Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/gcam/FrameMetadata;->a()F

    move-result v5

    check-cast v0, Leej;

    iget-wide v3, v0, Leej;->a:J

    new-instance v0, Ldrb;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Ldrb;-><init>(JF[J[J)V

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_b
    :goto_4
    :try_start_4
    sget-object v0, Lmpx;->a:Lmpx;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method
