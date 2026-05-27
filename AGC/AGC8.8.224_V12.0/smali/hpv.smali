.class public final Lhpv;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/timelapse/extractor/VideoExtractorImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhpv;->a:Lnak;

    return-void
.end method

.method public static final a(ILmqp;Lmqp;Landroid/media/MediaExtractor;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/lang/Object;I)V
    .locals 16

    move/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual/range {p2 .. p2}, Lmqp;->g()Z

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lmqp;->g()Z

    move-result v3

    if-ne v2, v3, :cond_0

    sget-object v0, Lhpv;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Must specify exactly one of the two intervals (sample or time)."

    const/16 v2, 0xf34

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    monitor-enter p5

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    :try_start_0
    sget-object v0, Lhpv;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0xf32

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "Can\'t find video track from data source."

    invoke-interface {v0, v1}, Lnah;->o(Ljava/lang/String;)V

    monitor-exit p5

    return-void

    :cond_1
    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    invoke-static/range {p6 .. p6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v1, v3, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v8

    if-ltz v8, :cond_9

    add-int/lit8 v7, v7, 0x1

    invoke-virtual/range {p3 .. p3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    invoke-virtual/range {p2 .. p2}, Lmqp;->g()Z

    move-result v11

    if-eqz v11, :cond_2

    cmp-long v11, v9, v5

    if-eqz v11, :cond_9

    :cond_2
    move/from16 v5, p6

    if-ne v8, v5, :cond_3

    sget-object v6, Lhpv;->a:Lnak;

    invoke-virtual {v6}, Lnaf;->c()Lnaz;

    move-result-object v6

    check-cast v6, Lnah;

    const/16 v11, 0xf31

    invoke-interface {v6, v11}, Lnah;->G(I)Lnaz;

    move-result-object v6

    check-cast v6, Lnah;

    const-string v11, "The read sample size is equal to the buffer size. The read sample might be incomplete."

    invoke-interface {v6, v11}, Lnah;->o(Ljava/lang/String;)V

    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v6

    and-int/lit8 v11, v6, 0x1

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_4

    or-int/lit8 v11, v11, 0x8

    goto :goto_1

    :cond_4
    :goto_1
    iput v11, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v4, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iput v8, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual/range {p3 .. p3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v11

    iput-wide v11, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lhoe;

    iget-object v11, v8, Lhoe;->d:Lhof;

    iget-object v11, v11, Lhof;->t:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v13, v8, Lhoe;->d:Lhof;

    iget-object v13, v13, Lhof;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v12

    iget-object v14, v8, Lhoe;->d:Lhof;

    iget-object v14, v14, Lhof;->z:Lhpu;

    iget v14, v14, Lhpu;->h:I

    int-to-long v14, v14

    div-long/2addr v12, v14

    iput-wide v12, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v12, v8, Lhoe;->a:Lkpf;

    iget v13, v8, Lhoe;->b:I

    invoke-interface {v12, v13, v3, v2}, Lkpf;->h(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-object v12, v8, Lhoe;->d:Lhof;

    iget-object v13, v12, Lhof;->w:Lhps;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v12, Lhof;->A:Lhpt;

    invoke-virtual {v13, v12}, Lhps;->c(Lhpt;)V

    iget-object v12, v8, Lhoe;->d:Lhof;

    iget-object v13, v12, Lhof;->D:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    if-eqz v13, :cond_5

    iget-object v12, v12, Lhof;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v14

    long-to-float v12, v14

    iget-wide v14, v8, Lhoe;->c:J

    long-to-float v8, v14

    div-float/2addr v12, v8

    iget-object v8, v13, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    check-cast v8, Lhpq;

    invoke-virtual {v8, v12}, Lhpq;->d(F)V

    :cond_5
    monitor-exit v11

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_6
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual/range {p1 .. p1}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    int-to-long v13, v6

    cmp-long v8, v13, v11

    if-gez v8, :cond_7

    invoke-virtual/range {p3 .. p3}, Landroid/media/MediaExtractor;->advance()Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    goto :goto_4

    :cond_8
    invoke-virtual/range {p2 .. p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lj$/time/Duration;

    invoke-static {v6}, Lnmf;->a(Lj$/time/Duration;)J

    move-result-wide v11

    int-to-long v13, v7

    mul-long v11, v11, v13

    const/4 v6, 0x2

    invoke-virtual {v1, v11, v12, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_4
    move-wide v5, v9

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    monitor-exit p5

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public static final b(Landroid/media/MediaExtractor;Ljava/lang/Object;)I
    .locals 5

    const-string v0, "video/"

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit p1

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p1

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method
