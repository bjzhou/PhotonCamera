.class public final Lkgf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkgn;


# instance fields
.field private final a:Lkge;

.field private final b:Lqep;

.field private c:Z

.field private final d:Lgvg;


# direct methods
.method public constructor <init>(Lkge;Lqep;Lgvg;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p3, p0, Lkgf;->d:Lgvg;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iput-boolean p1, p0, Lkgf;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lkgf;->a:Lkge;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lkgf;->b:Lqep;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Lprw;)Z
    .locals 11

    goto/32 :goto_b

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1
    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v1

    nop

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v3

    nop

    nop

    sget-object v4, Lkgm;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lscs;->c()Lsdo;

    move-result-object v4

    nop

    nop

    nop

    nop

    const-string v5, "Encoding failed. Retrying..."

    nop

    nop

    nop

    const/16 v6, 0xb85

    nop

    nop

    invoke-static {v5, v6, v4, v3}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "Max attempts to encode reached! Encoding failed!"

    nop

    nop

    nop

    new-instance v1, Ljava/lang/IllegalStateException;

    nop

    nop

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catchall_1
    move-exception v0

    nop

    nop

    :try_start_1
    invoke-interface {p1}, Lprw;->close()V

    throw v0

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p1

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    :try_start_2
    iget-object v0, p0, Lkgf;->a:Lkge;

    nop

    nop

    iget-object v1, p0, Lkgf;->d:Lgvg;

    nop

    nop

    nop

    check-cast v0, Lkgg;

    nop

    nop

    iget-object v0, v0, Lkgg;->a:Lkge;

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    const/4 v3, 0x3

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    const v0, 0x19

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lt v2, v3, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    :try_start_3
    move-object v3, v0

    nop

    check-cast v3, Lkgg;

    nop

    nop

    iget-object v3, v3, Lkgg;->a:Lkge;

    nop

    nop

    nop

    nop

    move-object v4, v3

    nop

    check-cast v4, Lkgh;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lkgh;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    nop

    nop

    nop

    nop

    int-to-long v4, v4

    nop

    nop

    nop

    invoke-interface {p1}, Lprw;->d()J

    move-result-wide v6

    nop

    new-instance v8, Lkgl;

    nop

    nop

    nop

    nop

    nop

    const-wide/32 v9, 0xf4240

    nop

    mul-long/2addr v4, v9

    nop

    invoke-direct {v8, p1, v4, v5}, Lkgl;-><init>(Lprw;J)V

    check-cast v3, Lkgh;

    nop

    nop

    iget-object v3, v3, Lkgh;->b:Lkge;

    nop

    nop

    nop

    invoke-interface {v3, v8, v1}, Lkge;->a(Lprw;Lgvg;)Lkgd;

    move-result-object v3

    nop

    nop

    nop

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    nop

    nop

    nop

    move-object v6, v3

    nop

    nop

    nop

    nop

    check-cast v6, Lkgi;

    nop

    nop

    iget-object v6, v6, Lkgi;->a:Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    new-instance v7, Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    invoke-direct {v7}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-wide v4, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    nop

    iget v4, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    nop

    nop

    nop

    nop

    iput v4, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    nop

    nop

    nop

    nop

    nop

    iget v4, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    nop

    iput v4, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    nop

    nop

    iget v4, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    iput v4, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    new-instance v4, Lkgk;

    nop

    invoke-direct {v4, v7, v3}, Lkgk;-><init>(Landroid/media/MediaCodec$BufferInfo;Lkgd;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, v4, Lkgk;->b:Lkgd;

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lkgi;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lkgi;->b:Landroid/media/MediaCodec;

    nop

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    nop

    nop

    nop

    iget-object v1, v4, Lkgk;->a:Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    nop

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-wide v5, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    iput-wide v5, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    iget v3, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    nop

    nop

    nop

    iput v3, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    iget v3, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    nop

    nop

    nop

    nop

    iput v3, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    nop

    nop

    nop

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    nop

    nop

    nop

    nop

    nop

    iput v1, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    nop

    nop

    nop

    iget v1, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    nop

    iget-object v3, v4, Lkgk;->b:Lkgd;

    nop

    nop

    move-object v5, v3

    nop

    nop

    check-cast v5, Lkgi;

    nop

    iget-object v5, v5, Lkgi;->b:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    move-object v6, v3

    nop

    nop

    check-cast v6, Lkgi;

    nop

    nop

    nop

    nop

    nop

    iget v6, v6, Lkgi;->c:I

    nop

    nop

    nop

    invoke-virtual {v5, v6}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    nop

    move-object v6, v3

    nop

    nop

    nop

    nop

    check-cast v6, Lkgi;

    nop

    iget-object v6, v6, Lkgi;->a:Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    nop

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    nop

    nop

    nop

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    check-cast v3, Lkgi;

    nop

    iget-object v3, v3, Lkgi;->a:Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    nop

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    nop

    nop

    nop

    nop

    add-int/2addr v6, v3

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance v3, Lkgj;

    nop

    invoke-direct {v3, v2, v0, v1}, Lkgj;-><init>(Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaFormat;Ljava/nio/ByteBuffer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-interface {v4}, Lkgd;->close()V

    iget-object v0, v3, Lkgj;->a:Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    iget-boolean v1, p0, Lkgf;->c:Z

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_2

    nop

    iget-object v1, p0, Lkgf;->b:Lqep;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v3, Lkgj;->b:Landroid/media/MediaFormat;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v4

    nop

    nop

    nop

    invoke-interface {v1, v4}, Lqep;->a(Lsui;)V

    iput-boolean v2, p0, Lkgf;->c:Z

    nop

    nop

    nop

    :cond_2
    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    nop

    and-int/lit8 v1, v1, 0x4

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_3

    nop

    nop

    nop

    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    nop

    and-int/lit8 v1, v1, 0x2

    nop

    if-nez v1, :cond_3

    nop

    nop

    nop

    iget-object v1, p0, Lkgf;->b:Lqep;

    nop

    nop

    nop

    iget-object v3, v3, Lkgj;->c:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    invoke-interface {v1, v3, v0}, Lqep;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_3
    :try_start_6
    invoke-interface {p1}, Lprw;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    throw p1

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    return v2

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    :try_start_7
    invoke-interface {v4}, Lkgd;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized close()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lkgf;->b:Lqep;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lqep;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    :goto_2
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method
