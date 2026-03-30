.class public Lmqe;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Landroid/media/MediaExtractor;

.field public final c:Lj$/util/concurrent/ConcurrentLinkedQueue;

.field public final d:Ljava/lang/Object;

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "mqe"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lmqe;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v1, Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v0, p0, Lmqe;->b:Landroid/media/MediaExtractor;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v1, p0, Lmqe;->d:Ljava/lang/Object;

    nop

    nop

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    const/4 p1, 0x1

    nop

    nop

    iput p1, p0, Lmqe;->e:I

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_f
    iput-object v1, p0, Lmqe;->c:Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Landroid/media/MediaExtractor;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    const-string v0, "Unable to open file descriptor"

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v1, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(ILrss;Lrss;)V
    .locals 17

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1
    iget-object v2, v0, Lmqe;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2
    const-string v1, "Must specify exactly one of the two intervals (sample or time)."

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    throw v0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual/range {p3 .. p3}, Lrss;->h()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v0, Lmqe;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x9

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x3

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    return-void

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

    :goto_d
    check-cast v0, Lscz;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_f
    invoke-virtual/range {p2 .. p2}, Lrss;->h()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    const/16 v1, 0x1220

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_5

    nop

    :goto_14
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_16
    monitor-enter v2

    nop

    :try_start_0
    iget v3, v0, Lmqe;->e:I

    nop

    const/4 v4, 0x1

    nop

    nop

    if-eq v3, v4, :cond_0

    nop

    nop

    sget-object v0, Lmqe;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    const/16 v1, 0x121f

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    const-string v1, "MediaExtractor already released."

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    monitor-exit v2

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_0
    const/4 v3, -0x1

    nop

    if-ne v1, v3, :cond_1

    nop

    nop

    nop

    sget-object v0, Lmqe;->a:Lsdb;

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0x121e

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Can\'t find video track from data source."

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    monitor-exit v2

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_1
    iget-object v3, v0, Lmqe;->b:Landroid/media/MediaExtractor;

    nop

    invoke-virtual {v3, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v5, v0, Lmqe;->b:Landroid/media/MediaExtractor;

    nop

    nop

    invoke-virtual {v5, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v5

    nop

    nop

    nop

    const-string v6, "max-input-size"

    nop

    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    nop

    nop

    nop

    nop

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v8, -0x1

    nop

    nop

    nop

    nop

    nop

    move v10, v7

    nop

    :goto_17
    iget-object v11, v0, Lmqe;->b:Landroid/media/MediaExtractor;

    nop

    nop

    nop

    invoke-virtual {v11, v6, v7}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v11

    nop

    if-ltz v11, :cond_9

    nop

    nop

    nop

    nop

    add-int/2addr v10, v4

    nop

    nop

    nop

    iget-object v12, v0, Lmqe;->b:Landroid/media/MediaExtractor;

    nop

    nop

    invoke-virtual {v12}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    nop

    nop

    nop

    invoke-virtual/range {p3 .. p3}, Lrss;->h()Z

    move-result v14

    nop

    nop

    nop

    if-eqz v14, :cond_2

    nop

    nop

    nop

    nop

    cmp-long v8, v12, v8

    nop

    nop

    if-nez v8, :cond_2

    nop

    nop

    nop

    nop

    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    if-ne v11, v5, :cond_3

    nop

    nop

    nop

    nop

    nop

    sget-object v8, Lmqe;->a:Lsdb;

    nop

    invoke-virtual {v8}, Lscs;->c()Lsdo;

    move-result-object v8

    nop

    nop

    const/16 v9, 0x121d

    nop

    invoke-interface {v8, v9}, Lscz;->M(I)Lsdo;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Lscz;

    nop

    const-string v9, "The read sample size is equal to the buffer size. The read sample might be incomplete."

    nop

    invoke-interface {v8, v9}, Lscz;->s(Ljava/lang/String;)V

    :cond_3
    iget-object v8, v0, Lmqe;->b:Landroid/media/MediaExtractor;

    nop

    nop

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v8

    nop

    nop

    and-int/lit8 v9, v8, 0x1

    nop

    nop

    nop

    and-int/lit8 v8, v8, 0x4

    nop

    nop

    nop

    if-eqz v8, :cond_4

    nop

    nop

    or-int/lit8 v9, v9, 0x8

    nop

    nop

    :cond_4
    iput v9, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    nop

    nop

    iput v7, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    nop

    nop

    iput v11, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    nop

    nop

    nop

    nop

    iget-object v8, v0, Lmqe;->b:Landroid/media/MediaExtractor;

    nop

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    nop

    nop

    nop

    nop

    nop

    iput-wide v8, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    iget-object v8, v0, Lmqe;->c:Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Lj$/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v8

    nop

    nop

    nop

    :goto_18
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_6

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    check-cast v9, Lmoa;

    nop

    nop

    nop

    nop

    iget-object v11, v9, Lmoa;->d:Lmob;

    nop

    nop

    nop

    iget-object v11, v11, Lmob;->j:Ljava/lang/Object;

    nop

    nop

    nop

    monitor-enter v11

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    iget-object v15, v9, Lmoa;->d:Lmob;

    nop

    nop

    nop

    nop

    nop

    iget-object v15, v15, Lmob;->g:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    move/from16 v16, v5

    nop

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v4

    nop

    nop

    nop

    nop

    iget-object v14, v9, Lmoa;->d:Lmob;

    nop

    nop

    nop

    iget-object v14, v14, Lmob;->l:Lmqd;

    nop

    nop

    nop

    nop

    nop

    iget v14, v14, Lmqd;->e:I

    nop

    nop

    nop

    nop

    int-to-long v14, v14

    nop

    nop

    div-long/2addr v4, v14

    nop

    nop

    iput-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    iget-object v4, v9, Lmoa;->a:Lpsc;

    nop

    nop

    nop

    nop

    iget v5, v9, Lmoa;->b:I

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5, v6, v3}, Lpsc;->i(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-object v4, v9, Lmoa;->d:Lmob;

    nop

    nop

    nop

    nop

    iget-object v5, v4, Lmob;->m:Lmqh;

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Lmob;->n:Lmqc;

    nop

    nop

    nop

    invoke-virtual {v5, v4}, Lmqh;->b(Lmqc;)V

    iget-object v4, v9, Lmoa;->d:Lmob;

    nop

    nop

    iget-object v5, v4, Lmob;->v:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    if-eqz v5, :cond_5

    nop

    nop

    nop

    iget-object v4, v4, Lmob;->g:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v14

    nop

    nop

    nop

    long-to-float v4, v14

    nop

    nop

    nop

    nop

    nop

    iget-wide v14, v9, Lmoa;->c:J

    nop

    nop

    nop

    nop

    long-to-float v9, v14

    nop

    nop

    div-float/2addr v4, v9

    nop

    nop

    iget-object v5, v5, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    check-cast v5, Lmpw;

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v4}, Lmpw;->c(F)V

    :cond_5
    monitor-exit v11

    nop

    move/from16 v5, v16

    nop

    const/4 v4, 0x1

    nop

    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    monitor-exit v11

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    nop

    nop

    :cond_6
    move/from16 v16, v5

    nop

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual/range {p2 .. p2}, Lrss;->h()Z

    move-result v4

    nop

    nop

    if-eqz v4, :cond_7

    nop

    move v4, v7

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual/range {p2 .. p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    check-cast v5, Ljava/lang/Long;

    nop

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    nop

    nop

    nop

    nop

    nop

    int-to-long v14, v4

    nop

    nop

    cmp-long v5, v14, v8

    nop

    nop

    nop

    nop

    if-gez v5, :cond_8

    nop

    nop

    nop

    iget-object v5, v0, Lmqe;->b:Landroid/media/MediaExtractor;

    nop

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->advance()Z

    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    goto :goto_19

    nop

    nop

    nop

    nop

    :cond_7
    iget-object v4, v0, Lmqe;->b:Landroid/media/MediaExtractor;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {p3 .. p3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    check-cast v5, Lj$/time/Duration;

    nop

    nop

    nop

    nop

    invoke-static {v5}, Lsrp;->a(Lj$/time/Duration;)J

    move-result-wide v8

    nop

    nop

    nop

    nop

    nop

    int-to-long v14, v10

    nop

    nop

    nop

    mul-long/2addr v8, v14

    nop

    const/4 v5, 0x2

    nop

    nop

    invoke-virtual {v4, v8, v9, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :cond_8
    move-wide v8, v12

    nop

    nop

    nop

    nop

    nop

    move/from16 v5, v16

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_17

    nop

    nop

    nop

    nop

    :cond_9
    :goto_1a
    iget-object v0, v0, Lmqe;->b:Landroid/media/MediaExtractor;

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    monitor-exit v2

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    monitor-exit v2

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_a

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_13

    nop

    :goto_1c
    move/from16 v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1d
    if-eq v2, v3, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_7

    nop

    nop
.end method

.method public final b()I
    .locals 7

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x7

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget v2, p0, Lmqe;->e:I

    nop

    nop

    nop

    const/4 v3, -0x1

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    if-eq v2, v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    sget-object p0, Lmqe;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0x1219

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    nop

    const-string v1, "MediaExtractor already released."

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->s(Ljava/lang/String;)V

    monitor-exit v0

    nop

    nop

    return v3

    nop

    nop

    nop

    nop

    :cond_1
    iget-object v2, p0, Lmqe;->b:Landroid/media/MediaExtractor;

    nop

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    :goto_7
    if-ge v4, v2, :cond_3

    nop

    nop

    iget-object v5, p0, Lmqe;->b:Landroid/media/MediaExtractor;

    nop

    nop

    invoke-virtual {v5, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    const-string v6, "mime"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_2

    nop

    nop

    nop

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_2

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return v4

    nop

    nop

    nop

    nop

    :cond_2
    add-int/lit8 v4, v4, 0x1

    nop

    goto :goto_7

    nop

    nop

    :cond_3
    monitor-exit v0

    nop

    nop

    nop

    return v3

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    const-string v1, "video/"

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    iget-object v0, p0, Lmqe;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop
.end method
