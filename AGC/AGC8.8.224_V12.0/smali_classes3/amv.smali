.class public final Lamv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final a:Lamw;

.field private final b:Lamt;


# direct methods
.method public constructor <init>(Lamw;Lamt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lamv;->a:Lamw;

    iput-object p2, p0, Lamv;->b:Lamt;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lamv;->b:Lamt;

    iget-object v0, v0, Lamt;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(F)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lamv;->b:Lamt;

    iget-object v0, v0, Lamt;->c:Ljava/util/Map;

    const-string v1, "com.android.capture.fps"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(FF)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lamv;->b:Lamt;

    new-instance v1, Lamu;

    invoke-direct {v1, p1, p2}, Lamu;-><init>(FF)V

    iput-object v1, v0, Lamt;->b:Lamu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lamv;->a:Lamw;

    invoke-interface {v0}, Lamw;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lamv;->b:Lamt;

    iput-wide p1, v0, Lamt;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lamv;->b:Lamt;

    iput p1, v0, Lamt;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f(ILandroid/media/MediaFormat;)Lamy;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lamv;->a:Lamw;

    new-instance v1, Lamy;

    move-object v2, v0

    check-cast v2, Lamz;

    invoke-direct {v1, v2, p2, p1}, Lamy;-><init>(Lamz;Landroid/media/MediaFormat;I)V

    move-object p1, v0

    check-cast p1, Lamz;

    iget-object p1, p1, Lamz;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    check-cast v0, Lamz;

    iget-object p1, v0, Lamz;->a:Ljava/util/List;

    sget-object p2, Lamx;->a:Lamx;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized g(Lamy;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Lamy;

    invoke-static {v0}, Lmoz;->p(Z)V

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    iput-boolean v1, p1, Lamy;->g:Z

    :cond_0
    iget-boolean v0, p1, Lamy;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lamy;->a:Landroid/media/MediaFormat;

    invoke-static {v0}, Lacm;->d(Landroid/media/MediaFormat;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lamy;->f:Ljava/util/Deque;

    invoke-static {p3, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    iget-object p1, p1, Lamy;->h:Lamz;

    const/4 p2, 0x0

    :goto_0
    iget-object p3, p1, Lamz;->a:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_4

    iget-object p3, p1, Lamz;->a:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lamy;

    iget-object v0, p3, Lamy;->f:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_3

    iget-object v0, p3, Lamy;->f:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v2, p3, Lamy;->f:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    invoke-virtual {p1, p3}, Lamz;->a(Lamy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
