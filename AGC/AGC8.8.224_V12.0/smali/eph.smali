.class public final Leph;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;

.field public d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/lasagna/MotionBlurNativeProcessor"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Leph;->a:Lnak;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Leph;->b:Ljava/lang/Object;

    new-instance v0, Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;

    invoke-direct {v0}, Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;-><init>()V

    iput-object v0, p0, Leph;->c:Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Leph;->d:J

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Leph;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v2, p0, Leph;->c:Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;->abortShot(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object p1, Leph;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "abortShot(): processor hasn\'t been initialized."

    const/16 v1, 0x6cf

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Leph;->b:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-wide v1, p0, Leph;->d:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-object v5, p0, Leph;->c:Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;

    invoke-virtual {v5, v1, v2}, Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;->delete(J)V

    iput-wide v3, p0, Leph;->d:J

    goto :goto_0

    :cond_0
    sget-object v1, Leph;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x6d0

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Calling close() on an already closed processor."

    invoke-interface {v1, v2}, Lnah;->o(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Leph;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v2, p0, Leph;->c:Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;->endShot(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object p1, Leph;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "endShot(): processor hasn\'t been initialized."

    const/16 v1, 0x6d2

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(IILnqk;Ljava/lang/String;JLcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;Lcom/google/googlex/gcam/lasagna/LasagnaCallbacks;Z[B[B[B)V
    .locals 16

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Leph;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, v1, Leph;->c:Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;

    move-object/from16 v0, p3

    iget v6, v0, Lnqk;->f:I

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    invoke-virtual/range {v3 .. v15}, Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;->create(IIILjava/lang/String;JLcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;Lcom/google/googlex/gcam/lasagna/LasagnaCallbacks;Z[B[B[B)J

    move-result-wide v3

    iput-wide v3, v1, Leph;->d:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->p(Z)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Leph;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v2, p0, Leph;->c:Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;

    invoke-virtual {v2, v0, v1}, Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;->printDiagnosticsToLog(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Leph;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "printDiagnostics(): processor hasn\'t been initialized."

    const/16 v2, 0x6d3

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f(I)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Leph;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v2, p0, Leph;->c:Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;->beginShot(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_0
    :try_start_1
    sget-object p1, Leph;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "beginShot(): processor hasn\'t been initialized."

    const/16 v1, 0x6d6

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized g(ILnsz;Lcom/google/googlex/gcam/DebugParams;)Z
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Leph;->d:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Leph;->c:Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;

    invoke-interface {p2}, Lnsz;->a()J

    move-result-wide v5

    if-eqz p3, :cond_0

    invoke-static {p3}, Lcom/google/googlex/gcam/DebugParams;->a(Lcom/google/googlex/gcam/DebugParams;)J

    move-result-wide p2

    goto :goto_0

    :cond_0
    move-wide p2, v3

    :goto_0
    move v3, p1

    move-wide v4, v5

    move-wide v6, p2

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;->processZslBurst(JIJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_1
    :try_start_1
    sget-object p1, Leph;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string p2, "processZslBurst(): processor hasn\'t been initialized."

    const/16 p3, 0x6d8

    invoke-static {p1, p2, p3}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized h(ILnsx;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Leph;->d:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Leph;->c:Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;

    iget-object v3, p2, Lnsx;->a:Lcom/google/googlex/gcam/RawWriteView;

    invoke-static {v3}, Lcom/google/googlex/gcam/RawWriteView;->c(Lcom/google/googlex/gcam/RawWriteView;)J

    move-result-wide v4

    iget-object v3, p2, Lnsx;->b:Lcom/google/googlex/gcam/FrameMetadata;

    invoke-static {v3}, Lcom/google/googlex/gcam/FrameMetadata;->b(Lcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v6

    iget-object v3, p2, Lnsx;->c:Lcom/google/googlex/gcam/SpatialGainMap;

    iget-wide v8, v3, Lcom/google/googlex/gcam/SpatialGainMap;->a:J

    iget-object v10, p2, Lnsx;->d:Ljava/lang/Runnable;

    move v3, p1

    invoke-virtual/range {v0 .. v10}, Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;->processPslFrame(JIJJJLjava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object p1, Leph;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string p2, "processZslBurst(): processor hasn\'t been initialized."

    const/16 v0, 0x6d7

    invoke-static {p1, p2, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized i(Lcom/google/googlex/gcam/StaticMetadata;IFIZ)Z
    .locals 15

    move-object v1, p0

    monitor-enter p0

    :try_start_0
    iget-wide v3, v1, Leph;->d:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    iget-object v2, v1, Leph;->c:Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;

    invoke-static/range {p1 .. p1}, Lcom/google/googlex/gcam/StaticMetadata;->a(Lcom/google/googlex/gcam/StaticMetadata;)J

    move-result-wide v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v7, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-virtual/range {v2 .. v14}, Lcom/google/googlex/gcam/lasagna/LasagnaNativeProcessorJni;->setOptions(JJIZZFIZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :cond_0
    :try_start_1
    sget-object v0, Leph;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v2, "setOptions(): processor hasn\'t been initialized."

    const/16 v3, 0x6d9

    invoke-static {v0, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
