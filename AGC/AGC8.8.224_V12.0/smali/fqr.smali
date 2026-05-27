.class public final Lfqr;
.super Ljava/lang/Object;

# interfaces
.implements Lfqq;


# instance fields
.field private final a:Lkaq;

.field private final b:Lmqp;

.field private final c:Logd;

.field private final d:J

.field private final e:Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;

.field private final f:Lnsb;

.field private final g:Lmqp;

.field private final h:Lgsp;


# direct methods
.method public constructor <init>(Lkaq;Lmqp;Logd;JLcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;Lmqp;Lgsp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnsb;

    invoke-direct {v0}, Lnsb;-><init>()V

    iput-object v0, p0, Lfqr;->f:Lnsb;

    const-class v0, Lfqr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lfqr;->a:Lkaq;

    iput-object p2, p0, Lfqr;->b:Lmqp;

    iput-object p3, p0, Lfqr;->c:Logd;

    iput-wide p4, p0, Lfqr;->d:J

    iput-object p6, p0, Lfqr;->e:Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;

    iput-object p7, p0, Lfqr;->g:Lmqp;

    iput-object p8, p0, Lfqr;->h:Lgsp;

    return-void
.end method

.method private final c(Landroid/hardware/HardwareBuffer;JLcom/google/googlex/gcam/ShotMetadata;)Lkpb;
    .locals 8

    iget-object v0, p0, Lfqr;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p4, Lkmt;

    invoke-direct {p4, p1, p2, p3}, Lkmt;-><init>(Landroid/hardware/HardwareBuffer;J)V

    return-object p4

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v2

    const/4 v3, 0x1

    iget-wide v4, p0, Lfqr;->d:J

    const-wide/16 v6, 0x300

    or-long/2addr v4, v6

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/camera/moments/MomentsUtils;->allocateHardwareBuffer(IIIIJ)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p4, p0, Lfqr;->a:Lkaq;

    const-string v0, "Unable to allocate output buffer for rectiface, return image without warping."

    invoke-interface {p4, v0}, Lkaq;->d(Ljava/lang/String;)V

    new-instance p4, Lkmt;

    invoke-direct {p4, p1, p2, p3}, Lkmt;-><init>(Landroid/hardware/HardwareBuffer;J)V

    return-object p4

    :cond_1
    iget-object v1, p0, Lfqr;->b:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgtd;

    invoke-interface {v1, p1, v0, p4}, Lgtd;->f(Landroid/hardware/HardwareBuffer;Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)Z

    move-result p4

    if-nez p4, :cond_2

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    new-instance p4, Lkmt;

    invoke-direct {p4, p1, p2, p3}, Lkmt;-><init>(Landroid/hardware/HardwareBuffer;J)V

    return-object p4

    :cond_2
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V

    new-instance p1, Lkmt;

    invoke-direct {p1, v0, p2, p3}, Lkmt;-><init>(Landroid/hardware/HardwareBuffer;J)V

    return-object p1
.end method

.method private final d(Ldqq;Lkpb;Liac;)Lkpb;
    .locals 6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p3, Liac;->d:Ljava/lang/Object;

    check-cast v2, Lnor;

    iget-object v2, v2, Lnor;->b:Ljava/lang/Object;

    check-cast v2, Lkou;

    iget-object v3, p0, Lfqr;->h:Lgsp;

    move-object v4, p2

    check-cast v4, Lkmt;

    iget-wide v4, v4, Lkmt;->a:J

    invoke-virtual {v3, v4, v5}, Lgsp;->d(J)Lgsl;

    move-result-object v3

    new-instance v4, Lcvm;

    iget-object p3, p3, Liac;->a:Ljava/lang/Object;

    invoke-static {v3}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    check-cast p3, Lgyq;

    invoke-direct {v4, p2, p3, v2, v3}, Lcvm;-><init>(Lkpb;Lgyq;Lkou;Lmqp;)V

    invoke-interface {p1, v4}, Ldqq;->a(Lcvm;)Lnou;

    move-result-object p1

    invoke-interface {p1}, Lnou;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldqp;

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v2, v3, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-object p3, p0, Lfqr;->a:Lkaq;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Post-processing - image transformer finished. Took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lkaq;->b(Ljava/lang/String;)V

    invoke-interface {p1}, Ldqp;->a()Lkpb;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object p3, p0, Lfqr;->a:Lkaq;

    const-string v0, "Couldn\'t apply post-processing"

    invoke-interface {p3, v0, p1}, Lkaq;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p2
.end method


# virtual methods
.method public final a(Liac;Lcom/google/googlex/gcam/YuvWriteView;Lkpb;Lcom/google/googlex/gcam/ShotMetadata;)Lkpb;
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    iget-object v4, v0, Liac;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-boolean v6, v0, Liac;->b:Z

    const/4 v8, 0x0

    if-nez v6, :cond_0

    sget-object v6, Lmpx;->a:Lmpx;

    move-object/from16 v9, p3

    goto/16 :goto_0

    :cond_0
    iget-object v6, v1, Lfqr;->g:Lmqp;

    invoke-virtual {v6}, Lmqp;->g()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v1, Lfqr;->a:Lkaq;

    const-string v9, "Fast bokeh controller is absent, skipping blur."

    invoke-interface {v6, v9}, Lkaq;->f(Ljava/lang/String;)V

    sget-object v6, Lmpx;->a:Lmpx;

    move-object/from16 v9, p3

    goto/16 :goto_0

    :cond_1
    invoke-interface/range {p3 .. p3}, Lkpb;->i()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v1, Lfqr;->a:Lkaq;

    const-string v9, "No PD data, skipping blur."

    invoke-interface {v6, v9}, Lkaq;->f(Ljava/lang/String;)V

    sget-object v6, Lmpx;->a:Lmpx;

    move-object/from16 v9, p3

    goto/16 :goto_0

    :cond_2
    iget-object v6, v1, Lfqr;->f:Lnsb;

    move-object/from16 v9, p3

    invoke-virtual {v6, v9}, Lnsb;->a(Lkpb;)Lmqp;

    move-result-object v6

    invoke-virtual {v6}, Lmqp;->g()Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v6, v1, Lfqr;->a:Lkaq;

    const-string v10, "Unable to get RawWriteView from PD, skipping blur."

    invoke-interface {v6, v10}, Lkaq;->i(Ljava/lang/String;)V

    sget-object v6, Lmpx;->a:Lmpx;

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/googlex/gcam/RawWriteView;

    new-instance v15, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/gcam/YuvWriteView;->b()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/gcam/YuvWriteView;->a()I

    move-result v11

    invoke-static {v10, v11}, Lkaf;->h(II)Lkaf;

    move-result-object v11

    sget-object v10, Lkab;->a:Lkab;

    invoke-virtual {v10}, Lkab;->ordinal()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v10, v15

    move-object v7, v15

    move-object/from16 v15, v16

    invoke-direct/range {v10 .. v15}, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;-><init>(Lkaf;IZZLkou;)V

    iget-object v10, v1, Lfqr;->e:Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;

    invoke-virtual {v10, v6, v2, v7, v3}, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;->c(Lcom/google/googlex/gcam/RawWriteView;Lcom/google/googlex/gcam/YuvWriteView;Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;Lcom/google/googlex/gcam/ShotMetadata;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v1, Lfqr;->a:Lkaq;

    const-string v7, "Failed to create depth map, skipping blur."

    invoke-interface {v6, v7}, Lkaq;->i(Ljava/lang/String;)V

    sget-object v6, Lmpx;->a:Lmpx;

    goto :goto_0

    :cond_4
    iget-object v6, v1, Lfqr;->g:Lmqp;

    invoke-virtual {v6}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfsx;

    invoke-static/range {p2 .. p2}, Lnsy;->f(Lcom/google/googlex/gcam/YuvWriteView;)Lcom/google/googlex/gcam/YuvReadView;

    invoke-interface {v6}, Lfsx;->a()Landroid/util/Pair;

    move-result-object v6

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {v6}, Lcom/google/googlex/gcam/InterleavedImageU8;->c()I

    move-result v10

    invoke-virtual {v6}, Lcom/google/googlex/gcam/InterleavedImageU8;->b()I

    move-result v11

    const/4 v12, 0x3

    const/4 v13, 0x1

    const-wide/16 v14, 0x33

    invoke-static/range {v10 .. v15}, Landroid/hardware/HardwareBuffer;->create(IIIIJ)Landroid/hardware/HardwareBuffer;

    move-result-object v7

    const-wide/16 v10, 0x33

    invoke-static {v7, v10, v11}, Lcom/google/googlex/gcam/LockedHardwareBuffer;->c(Landroid/hardware/HardwareBuffer;J)Lcom/google/googlex/gcam/LockedHardwareBuffer;

    move-result-object v10

    :try_start_0
    invoke-virtual {v6}, Lcom/google/googlex/gcam/InterleavedImageU8;->e()Lcom/google/googlex/gcam/InterleavedReadViewU8;

    move-result-object v6

    invoke-virtual {v10}, Lcom/google/googlex/gcam/LockedHardwareBuffer;->b()Lcom/google/googlex/gcam/InterleavedWriteViewU8;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/google/googlex/gcam/image/ImageUtils;->a(Lcom/google/googlex/gcam/InterleavedReadViewU8;Lcom/google/googlex/gcam/InterleavedWriteViewU8;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v10}, Lcom/google/googlex/gcam/LockedHardwareBuffer;->close()V

    invoke-static {v7}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v6

    :goto_0
    invoke-virtual {v6}, Lmqp;->g()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/HardwareBuffer;

    goto :goto_1

    :cond_5
    new-instance v6, Leej;

    invoke-interface/range {p3 .. p3}, Lkpb;->d()J

    move-result-wide v9

    invoke-direct {v6, v2, v9, v10}, Leej;-><init>(Lcom/google/googlex/gcam/YuvWriteView;J)V

    invoke-interface {v6}, Lkpb;->c()I

    move-result v17

    invoke-interface {v6}, Lkpb;->b()I

    move-result v18

    const/16 v13, 0x23

    const/4 v14, 0x1

    const-wide/16 v15, 0x133

    move/from16 v11, v17

    move/from16 v12, v18

    invoke-static/range {v11 .. v16}, Landroid/hardware/HardwareBuffer;->create(IIIIJ)Landroid/hardware/HardwareBuffer;

    move-result-object v2

    iget-object v7, v6, Leej;->b:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkpa;

    iget-object v8, v6, Leej;->b:Ljava/util/List;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkpa;

    iget-object v6, v6, Leej;->b:Ljava/util/List;

    const/4 v9, 0x2

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkpa;

    invoke-interface {v7}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v19

    invoke-interface {v7}, Lkpa;->getRowStride()I

    move-result v20

    invoke-interface {v7}, Lkpa;->getPixelStride()I

    move-result v21

    invoke-interface {v8}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v22

    invoke-interface {v8}, Lkpa;->getRowStride()I

    move-result v23

    invoke-interface {v8}, Lkpa;->getPixelStride()I

    move-result v24

    invoke-interface {v6}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v25

    invoke-interface {v6}, Lkpa;->getRowStride()I

    move-result v26

    invoke-interface {v6}, Lkpa;->getPixelStride()I

    move-result v27

    move-object/from16 v28, v2

    invoke-static/range {v17 .. v28}, Lcom/google/android/apps/camera/moments/MomentsUtils;->yuv2hwyuv(IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILandroid/hardware/HardwareBuffer;)J

    :goto_1
    invoke-direct {v1, v2, v4, v5, v3}, Lfqr;->c(Landroid/hardware/HardwareBuffer;JLcom/google/googlex/gcam/ShotMetadata;)Lkpb;

    move-result-object v2

    iget-object v3, v1, Lfqr;->c:Logd;

    invoke-interface {v3}, Logd;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldqq;

    invoke-direct {v1, v3, v2, v0}, Lfqr;->d(Ldqq;Lkpb;Liac;)Lkpb;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_1
    invoke-virtual {v10}, Lcom/google/googlex/gcam/LockedHardwareBuffer;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_2
    const-class v0, Ljava/lang/Throwable;

    const-string v4, "addSuppressed"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Throwable;

    aput-object v5, v6, v8

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v8

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_2
    throw v2
.end method

.method public final b(Liac;Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)Lkpb;
    .locals 2

    iget-object v0, p1, Liac;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1, p3}, Lfqr;->c(Landroid/hardware/HardwareBuffer;JLcom/google/googlex/gcam/ShotMetadata;)Lkpb;

    move-result-object p2

    iget-object p3, p0, Lfqr;->c:Logd;

    invoke-interface {p3}, Logd;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ldqq;

    invoke-direct {p0, p3, p2, p1}, Lfqr;->d(Ldqq;Lkpb;Liac;)Lkpb;

    move-result-object p1

    return-object p1
.end method
