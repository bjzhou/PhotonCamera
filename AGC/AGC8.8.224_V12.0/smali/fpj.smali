.class public final synthetic Lfpj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field private final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;Lkpb;Lfsf;Lcom/google/googlex/gcam/NormalizedRect;Lcom/google/googlex/gcam/ShotMetadata;Ljfe;Landroid/hardware/HardwareBuffer;Lfsd;I[B)V
    .locals 0

    iput p9, p0, Lfpj;->i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfpj;->a:Ljava/lang/Object;

    iput-object p2, p0, Lfpj;->b:Ljava/lang/Object;

    iput-object p3, p0, Lfpj;->c:Ljava/lang/Object;

    iput-object p4, p0, Lfpj;->d:Ljava/lang/Object;

    iput-object p5, p0, Lfpj;->e:Ljava/lang/Object;

    iput-object p6, p0, Lfpj;->f:Ljava/lang/Object;

    iput-object p7, p0, Lfpj;->g:Ljava/lang/Object;

    iput-object p8, p0, Lfpj;->h:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkbc;Ljuf;Loiw;Loiw;Loiw;Loiw;Ljava/util/concurrent/Executor;Lmqp;I)V
    .locals 0

    iput p9, p0, Lfpj;->i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfpj;->a:Ljava/lang/Object;

    iput-object p2, p0, Lfpj;->g:Ljava/lang/Object;

    iput-object p3, p0, Lfpj;->c:Ljava/lang/Object;

    iput-object p4, p0, Lfpj;->b:Ljava/lang/Object;

    iput-object p5, p0, Lfpj;->d:Ljava/lang/Object;

    iput-object p6, p0, Lfpj;->e:Ljava/lang/Object;

    iput-object p7, p0, Lfpj;->f:Ljava/lang/Object;

    iput-object p8, p0, Lfpj;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 39

    move-object/from16 v1, p0

    iget v0, v1, Lfpj;->i:I

    packed-switch v0, :pswitch_data_0

    move-object/from16 v1, p0

    iget-object v0, v1, Lfpj;->a:Ljava/lang/Object;

    iget-object v2, v1, Lfpj;->g:Ljava/lang/Object;

    iget-object v3, v1, Lfpj;->c:Ljava/lang/Object;

    iget-object v4, v1, Lfpj;->b:Ljava/lang/Object;

    iget-object v5, v1, Lfpj;->d:Ljava/lang/Object;

    iget-object v6, v1, Lfpj;->e:Ljava/lang/Object;

    iget-object v7, v1, Lfpj;->f:Ljava/lang/Object;

    iget-object v8, v1, Lfpj;->h:Ljava/lang/Object;

    const-string v9, "MICRO_GyroModule#runGyroStartupTask"

    invoke-interface {v0, v9}, Lkbc;->e(Ljava/lang/String;)V

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lva;

    invoke-virtual {v3}, Lva;->C()Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    move-result-object v10

    new-instance v3, Leym;

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Leym;-><init>(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;I[B[B[B)V

    check-cast v2, Ljuf;

    invoke-virtual {v2, v3}, Ljuf;->d(Lkad;)V

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldxt;

    const-string v9, "microvideo-metadata"

    invoke-virtual {v3, v9}, Ldxt;->i(Ljava/lang/String;)V

    new-instance v3, Leym;

    const/4 v9, 0x7

    invoke-direct {v3, v4, v9}, Leym;-><init>(Loiw;I)V

    invoke-virtual {v2, v3}, Ljuf;->d(Lkad;)V

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldxl;

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldxm;

    invoke-virtual {v3, v4, v7}, Ldxl;->c(Ldxm;Ljava/util/concurrent/Executor;)Lkad;

    check-cast v8, Lmqp;

    invoke-virtual {v8}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfgy;

    invoke-interface {v3}, Lfgy;->e()V

    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfgy;

    new-instance v4, Leym;

    const/16 v5, 0x8

    invoke-direct {v4, v3, v5}, Leym;-><init>(Lfgy;I)V

    invoke-virtual {v2, v4}, Ljuf;->d(Lkad;)V

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, v1, Lfpj;->a:Ljava/lang/Object;

    iget-object v2, v1, Lfpj;->b:Ljava/lang/Object;

    iget-object v3, v1, Lfpj;->c:Ljava/lang/Object;

    iget-object v4, v1, Lfpj;->d:Ljava/lang/Object;

    iget-object v5, v1, Lfpj;->e:Ljava/lang/Object;

    iget-object v6, v1, Lfpj;->f:Ljava/lang/Object;

    iget-object v7, v1, Lfpj;->g:Ljava/lang/Object;

    iget-object v8, v1, Lfpj;->h:Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v9

    move-object v11, v0

    check-cast v11, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;

    iget-object v11, v11, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->d:Lnsb;

    invoke-virtual {v11, v2}, Lnsb;->b(Lkpb;)Lcom/google/googlex/gcam/RawWriteView;

    move-result-object v2

    new-instance v11, Lcom/google/googlex/gcam/AeShotParams;

    move-object v12, v3

    check-cast v12, Lfsf;

    iget-object v12, v12, Lfsf;->c:Ljava/lang/Object;

    move-object v13, v12

    check-cast v13, Lcom/google/googlex/gcam/AeShotParams;

    iget-wide v13, v13, Lcom/google/googlex/gcam/AeShotParams;->a:J

    check-cast v12, Lcom/google/googlex/gcam/AeShotParams;

    invoke-static {v13, v14, v12}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_AeShotParams__SWIG_1(JLcom/google/googlex/gcam/AeShotParams;)J

    move-result-wide v12

    const/4 v14, 0x1

    invoke-direct {v11, v12, v13, v14}, Lcom/google/googlex/gcam/AeShotParams;-><init>(JZ)V

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/google/googlex/gcam/AeShotParams;->h(Z)V

    iget-wide v12, v11, Lcom/google/googlex/gcam/AeShotParams;->a:J

    invoke-static {v2}, Lcom/google/googlex/gcam/RawWriteView;->c(Lcom/google/googlex/gcam/RawWriteView;)J

    move-result-wide v24

    check-cast v4, Lcom/google/googlex/gcam/NormalizedRect;

    invoke-static {v4}, Lcom/google/googlex/gcam/NormalizedRect;->a(Lcom/google/googlex/gcam/NormalizedRect;)J

    move-result-wide v28

    check-cast v5, Lcom/google/googlex/gcam/ShotMetadata;

    invoke-static {v5}, Lcom/google/googlex/gcam/ShotMetadata;->a(Lcom/google/googlex/gcam/ShotMetadata;)J

    move-result-wide v32

    move-object v4, v0

    check-cast v4, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;

    iget-object v4, v4, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->a:Lkaq;

    invoke-virtual {v11}, Lcom/google/googlex/gcam/AeShotParams;->c()Lcom/google/googlex/gcam/WeightedNormalizedRectVector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlex/gcam/WeightedNormalizedRectVector;->a()J

    move-result-wide v14

    invoke-static {v12, v13}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/google/googlex/gcam/AeShotParams;->c()Lcom/google/googlex/gcam/WeightedNormalizedRectVector;

    move-result-object v1

    const-wide/16 v35, 0x0

    if-nez v1, :cond_0

    move-object/from16 v37, v2

    move-wide/from16 v1, v35

    goto :goto_0

    :cond_0
    move-object/from16 v37, v2

    iget-wide v1, v1, Lcom/google/googlex/gcam/WeightedNormalizedRectVector;->a:J

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v38, v11

    const-string v11, "Processing moments HDR with "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " metering areas, shot params ptr=0x"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", weighted_metering_areas ptr=0x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lkaq;->b(Ljava/lang/String;)V

    move-object v1, v6

    check-cast v1, Ljfe;

    iget v1, v1, Ljfe;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x3

    const-string v4, "ms"

    if-ne v1, v2, :cond_2

    :try_start_1
    move-object v1, v0

    check-cast v1, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;

    iget-wide v1, v1, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->b:J

    move-object v5, v0

    check-cast v5, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;

    iget-object v5, v5, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->c:Lcom/google/googlex/gcam/Gcam;

    invoke-static {v5}, Lcom/google/googlex/gcam/Gcam;->a(Lcom/google/googlex/gcam/Gcam;)J

    move-result-wide v18

    move-object v5, v3

    check-cast v5, Lfsf;

    iget v5, v5, Lfsf;->a:I

    move-object v11, v6

    check-cast v11, Ljfe;

    iget-object v11, v11, Ljfe;->d:Ljava/lang/Object;

    move-object v14, v11

    check-cast v14, Lkaf;

    iget v14, v14, Lkaf;->a:I

    check-cast v11, Lkaf;

    iget v11, v11, Lkaf;->b:I

    check-cast v6, Ljfe;

    iget v6, v6, Ljfe;->a:I

    move-object/from16 v21, v7

    check-cast v21, Landroid/hardware/HardwareBuffer;

    move-object v15, v0

    check-cast v15, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;

    move-wide/from16 v16, v1

    move/from16 v20, v5

    move-wide/from16 v22, v24

    move-wide/from16 v24, v12

    move-wide/from16 v26, v28

    move/from16 v28, v14

    move/from16 v29, v11

    move-wide/from16 v30, v32

    move/from16 v32, v6

    invoke-virtual/range {v15 .. v32}, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->processRaw10ToYuvImageNative(JJILandroid/hardware/HardwareBuffer;JJJIIJI)J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    check-cast v0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;

    iget-object v0, v0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->a:Lkaq;

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr v5, v9

    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v5, v6, v9}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processRaw10ToYuv, total time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lkaq;->b(Ljava/lang/String;)V

    cmp-long v0, v1, v35

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error processing raw10 to Yuv image"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v0}, Lfsd;->a(Ljava/lang/RuntimeException;)V

    goto/16 :goto_2

    :cond_1
    new-instance v0, Lcom/google/googlex/gcam/YuvImage;

    invoke-direct {v0, v1, v2}, Lcom/google/googlex/gcam/YuvImage;-><init>(J)V

    check-cast v3, Lfsf;

    iget-object v1, v3, Lfsf;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/googlex/gcam/ShotMetadata;

    invoke-interface {v8, v0, v1}, Lfsd;->c(Lcom/google/googlex/gcam/YuvImage;Lcom/google/googlex/gcam/ShotMetadata;)V

    goto/16 :goto_2

    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;

    iget-wide v1, v1, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->b:J

    move-object v5, v0

    check-cast v5, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;

    iget-object v5, v5, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->c:Lcom/google/googlex/gcam/Gcam;

    invoke-static {v5}, Lcom/google/googlex/gcam/Gcam;->a(Lcom/google/googlex/gcam/Gcam;)J

    move-result-wide v18

    move-object v5, v3

    check-cast v5, Lfsf;

    iget v5, v5, Lfsf;->a:I

    move-object v11, v6

    check-cast v11, Ljfe;

    iget-wide v14, v11, Ljfe;->b:J

    move-object v11, v6

    check-cast v11, Ljfe;

    iget-object v11, v11, Ljfe;->d:Ljava/lang/Object;

    move-wide/from16 v16, v14

    move-object v14, v11

    check-cast v14, Lkaf;

    iget v14, v14, Lkaf;->a:I

    check-cast v11, Lkaf;

    iget v11, v11, Lkaf;->b:I

    move-object v15, v6

    check-cast v15, Ljfe;

    iget v15, v15, Ljfe;->a:I

    move-object/from16 v23, v7

    check-cast v23, Landroid/hardware/HardwareBuffer;

    move-object/from16 v20, v0

    check-cast v20, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;

    move/from16 v34, v15

    move-wide/from16 v21, v16

    move-object/from16 v15, v20

    move-wide/from16 v16, v1

    move/from16 v20, v5

    move-wide/from16 v26, v12

    move/from16 v30, v14

    move/from16 v31, v11

    invoke-virtual/range {v15 .. v34}, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->processRaw10ToRgbaHardwareBufferNative(JJIJLandroid/hardware/HardwareBuffer;JJJIIJI)Landroid/hardware/HardwareBuffer;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    check-cast v1, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;

    iget-wide v1, v1, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->b:J

    move-object v5, v0

    check-cast v5, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;

    iget-object v5, v5, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->c:Lcom/google/googlex/gcam/Gcam;

    invoke-static {v5}, Lcom/google/googlex/gcam/Gcam;->a(Lcom/google/googlex/gcam/Gcam;)J

    move-result-wide v18

    move-object v5, v3

    check-cast v5, Lfsf;

    iget v5, v5, Lfsf;->a:I

    move-object v11, v6

    check-cast v11, Ljfe;

    iget-wide v14, v11, Ljfe;->b:J

    move-object v11, v6

    check-cast v11, Ljfe;

    iget-object v11, v11, Ljfe;->d:Ljava/lang/Object;

    move-wide/from16 v16, v14

    move-object v14, v11

    check-cast v14, Lkaf;

    iget v14, v14, Lkaf;->a:I

    check-cast v11, Lkaf;

    iget v11, v11, Lkaf;->b:I

    move-object v15, v6

    check-cast v15, Ljfe;

    iget v15, v15, Ljfe;->a:I

    move-object/from16 v23, v7

    check-cast v23, Landroid/hardware/HardwareBuffer;

    move-object/from16 v20, v0

    check-cast v20, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;

    move/from16 v34, v15

    move-wide/from16 v21, v16

    move-object/from16 v15, v20

    move-wide/from16 v16, v1

    move/from16 v20, v5

    move-wide/from16 v26, v12

    move/from16 v30, v14

    move/from16 v31, v11

    invoke-virtual/range {v15 .. v34}, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->processRaw10ToYuvHardwareBufferNative(JJIJLandroid/hardware/HardwareBuffer;JJJIIJI)Landroid/hardware/HardwareBuffer;

    move-result-object v1

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v11

    check-cast v0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;

    iget-object v0, v0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->a:Lkaq;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr v11, v9

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v11, v12, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processRaw10ToHardwareBuffer, total time: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lkaq;->b(Ljava/lang/String;)V

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error processing raw10 to HardwareBuffer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v0}, Lfsd;->a(Ljava/lang/RuntimeException;)V

    goto :goto_2

    :cond_4
    check-cast v6, Ljfe;

    iget v0, v6, Ljfe;->c:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    check-cast v3, Lfsf;

    iget-object v0, v3, Lfsf;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/googlex/gcam/ShotMetadata;

    invoke-interface {v8, v1, v0}, Lfsd;->b(Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)V

    goto :goto_2

    :cond_5
    check-cast v3, Lfsf;

    iget-object v0, v3, Lfsf;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/googlex/gcam/ShotMetadata;

    invoke-interface {v8, v1, v0}, Lfsd;->d(Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)V

    :goto_2
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    check-cast v7, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v7}, Landroid/hardware/HardwareBuffer;->close()V

    return-void

    :catchall_0
    move-exception v0

    check-cast v7, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v7}, Landroid/hardware/HardwareBuffer;->close()V

    throw v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
