.class public final Lfpr;
.super Ljava/lang/Object;

# interfaces
.implements Lfpz;


# instance fields
.field private final a:Lfpq;

.field private final b:Lkxy;

.field private c:Z

.field private final d:Lbkb;


# direct methods
.method public constructor <init>(Lfpq;Lkxy;Lbkb;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfpr;->a:Lfpq;

    iput-object p2, p0, Lfpr;->b:Lkxy;

    iput-object p3, p0, Lfpr;->d:Lbkb;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lfpr;->c:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lkpb;)Z
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfpr;->a:Lfpq;

    iget-object v1, p0, Lfpr;->d:Lbkb;

    check-cast v0, Lfps;

    iget-object v0, v0, Lfps;->a:Lfpq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    :try_start_1
    move-object v4, v0

    check-cast v4, Lfps;

    iget-object v4, v4, Lfps;->a:Lfpq;

    move-object v5, v4

    check-cast v5, Lfpt;

    iget-object v5, v5, Lfpt;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    int-to-long v5, v5

    invoke-interface {p1}, Lkpb;->d()J

    move-result-wide v7

    new-instance v9, Lfpx;

    const-wide/32 v10, 0xf4240

    mul-long v5, v5, v10

    invoke-direct {v9, p1, v5, v6}, Lfpx;-><init>(Lkpb;J)V

    check-cast v4, Lfpt;

    iget-object v4, v4, Lfpt;->b:Lfpq;

    invoke-interface {v4, v9, v1}, Lfpq;->a(Lkpb;Lbkb;)Lfpp;

    move-result-object v4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v7, v8, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    move-object v7, v4

    check-cast v7, Lfpu;

    iget-object v7, v7, Lfpu;->a:Landroid/media/MediaCodec$BufferInfo;

    new-instance v8, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v8}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-wide v5, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v5, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v5, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v5, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iput v5, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v5, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v5, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    new-instance v5, Lfpw;

    invoke-direct {v5, v8, v4}, Lfpw;-><init>(Landroid/media/MediaCodec$BufferInfo;Lfpp;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v0, 0x1

    :try_start_2
    iget-object v1, v5, Lfpw;->b:Lfpp;

    check-cast v1, Lfpu;

    iget-object v1, v1, Lfpu;->b:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    iget-object v3, v5, Lfpw;->a:Landroid/media/MediaCodec$BufferInfo;

    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v6, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v6, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iput v6, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v3, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v3, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v6, v5, Lfpw;->b:Lfpp;

    move-object v7, v6

    check-cast v7, Lfpu;

    iget-object v7, v7, Lfpu;->b:Landroid/media/MediaCodec;

    move-object v8, v6

    check-cast v8, Lfpu;

    iget v8, v8, Lfpu;->c:I

    invoke-virtual {v7, v8}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v7

    move-object v8, v6

    check-cast v8, Lfpu;

    iget-object v8, v8, Lfpu;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object v8, v6

    check-cast v8, Lfpu;

    iget-object v8, v8, Lfpu;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    check-cast v6, Lfpu;

    iget-object v6, v6, Lfpu;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v8, v6

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance v6, Lfpv;

    invoke-direct {v6, v4, v1, v3}, Lfpv;-><init>(Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaFormat;Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v5}, Lfpp;->close()V

    iget-object v1, v6, Lfpv;->a:Landroid/media/MediaCodec$BufferInfo;

    iget-boolean v2, p0, Lfpr;->c:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lfpr;->b:Lkxy;

    iget-object v3, v6, Lfpv;->b:Landroid/media/MediaFormat;

    invoke-static {v3}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v3

    invoke-interface {v2, v3}, Lkxy;->a(Lnou;)V

    iput-boolean v0, p0, Lfpr;->c:Z

    :cond_0
    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_1

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    iget-object v2, p0, Lfpr;->b:Lkxy;

    iget-object v3, v6, Lfpv;->c:Ljava/nio/ByteBuffer;

    invoke-interface {v2, v3, v1}, Lkxy;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    :try_start_4
    invoke-interface {p1}, Lkpb;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    :try_start_5
    invoke-interface {v5}, Lfpp;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_6
    const-class v4, Ljava/lang/Throwable;

    const-string v5, "addSuppressed"

    new-array v6, v0, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Throwable;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v2

    invoke-virtual {v4, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    :try_start_7
    throw v1

    :catch_1
    move-exception v4

    sget-object v5, Lfpy;->a:Lnak;

    invoke-virtual {v5}, Lnaf;->c()Lnaz;

    move-result-object v5

    const-string v6, "Encoding failed. Retrying..."

    const/16 v7, 0x9ad

    invoke-static {v5, v6, v7, v4}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_2
    const-string v0, "Max attempts to encode reached! Encoding failed!"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_8
    invoke-interface {p1}, Lkpb;->close()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfpr;->b:Lkxy;

    invoke-interface {v0}, Lkxy;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
