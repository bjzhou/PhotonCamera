.class public final Lldw;
.super Landroid/media/MediaCodec$Callback;


# instance fields
.field final synthetic a:Lldx;


# direct methods
.method public constructor <init>(Lldx;)V
    .locals 0

    iput-object p1, p0, Lldw;->a:Lldx;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 1

    const-string p1, "AsynchMediaCodec"

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isTransient()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Transient error occurred while processing data."

    invoke-static {p1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Recoverable error occurred while encoding data."

    invoke-static {p1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lldw;->a:Lldx;

    iget-object p1, p1, Lldx;->e:Lnph;

    invoke-virtual {p1, p2}, Lnph;->a(Ljava/lang/Throwable;)Z

    iget-object p1, p0, Lldw;->a:Lldx;

    invoke-virtual {p1}, Lldx;->e()V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "Unrecoverable error occurred while encoding data."

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lldw;->a:Lldx;

    iget-object p1, p1, Lldx;->e:Lnph;

    invoke-virtual {p1, p2}, Lnph;->a(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_2
    const-string p2, "Unrecoverable error occurred while starting encoder or encoding."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lldw;->a:Lldx;

    iget-object p1, p1, Lldx;->e:Lnph;

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Codec error"

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lnph;->a(Ljava/lang/Throwable;)Z

    :goto_0
    iget-object p1, p0, Lldw;->a:Lldx;

    invoke-virtual {p1}, Lldx;->e()V

    :goto_1
    iget-object p1, p0, Lldw;->a:Lldx;

    iget-object p1, p1, Lldx;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p1, p0, Lldw;->a:Lldx;

    iget-object p1, p1, Lldx;->o:Llel;

    invoke-interface {p1, p2}, Llel;->e(I)V

    iget-object p1, p0, Lldw;->a:Lldx;

    iget-object p1, p1, Lldx;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    return-void
.end method

.method public final onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 2

    iget-object p1, p0, Lldw;->a:Lldx;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lldw;->a:Lldx;

    iget-object v0, v0, Lldx;->e:Lnph;

    invoke-virtual {v0}, Lnph;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p1

    return-void

    :cond_0
    iget-object v0, p0, Lldw;->a:Lldx;

    iget-object v0, v0, Lldx;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lldw;->a:Lldx;

    invoke-virtual {v0, p2}, Lldx;->g(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lldw;->a:Lldx;

    iget-object v0, v0, Lldx;->d:Ljava/util/Deque;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    iget-object p2, p0, Lldw;->a:Lldx;

    iget-object p2, p2, Lldx;->o:Llel;

    iget-object v0, p0, Lldw;->a:Lldx;

    invoke-interface {p2, v0}, Llel;->a(Lldy;)V

    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 11

    iget-object v0, p0, Lldw;->a:Lldx;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lldw;->a:Lldx;

    iget-object v1, v1, Lldx;->e:Lnph;

    invoke-virtual {v1}, Lnph;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lldw;->a:Lldx;

    iget-object v1, v1, Lldx;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v3, :cond_4

    if-nez v1, :cond_4

    if-nez v2, :cond_4

    iget-object v1, p0, Lldw;->a:Lldx;

    iget-boolean v1, v1, Lldx;->m:Z

    if-eqz v1, :cond_1

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lldw;->a:Lldx;

    iget-object v1, v1, Lldx;->o:Llel;

    invoke-interface {v1, p3}, Llel;->c(Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v1, p0, Lldw;->a:Lldx;

    iget-object v1, v1, Lldx;->n:Lleu;

    iget-object v9, p0, Lldw;->a:Lldx;

    iget-boolean v2, v9, Lldx;->m:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputFrame(I)Landroid/media/MediaCodec$OutputFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaCodec$OutputFrame;->getLinearBlock()Landroid/media/MediaCodec$LinearBlock;

    move-result-object v2

    move-object v7, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move-object v7, v2

    :goto_0
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/media/MediaCodec$LinearBlock;->map()Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    :goto_1
    move-object v5, v2

    new-instance v10, Lldv;

    move-object v2, v10

    move-object v3, v9

    move-object v4, p1

    move-object v6, p3

    move v8, p2

    invoke-direct/range {v2 .. v8}, Lldv;-><init>(Lldx;Landroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaCodec$LinearBlock;I)V

    monitor-enter v9
    :try_end_1
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p2, v9, Lldx;->l:Ljava/util/Set;

    invoke-interface {p2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v1, v10}, Lleu;->a(Lldv;)V
    :try_end_3
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception p2

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p2
    :try_end_5
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_6
    const-string p2, "AsynchMediaCodec"

    const-string p3, "Exception occurred while trying construct media data"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v0

    return-void

    :catch_0
    move-exception p2

    iget-object p3, p0, Lldw;->a:Lldx;

    iget-object p3, p3, Lldx;->j:Lldw;

    invoke-virtual {p3, p1, p2}, Lldw;->onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    return-void

    :cond_4
    :goto_2
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {p1, p2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_7
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iget-object p1, p0, Lldw;->a:Lldx;

    invoke-virtual {p1, p3}, Lldx;->c(Landroid/media/MediaCodec$BufferInfo;)V

    :goto_3
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p1

    const-string p2, "AsynchMediaCodec"

    const-string p3, "Exception occurred while trying to release output buffer"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v0

    return-void

    :catch_1
    move-exception p2

    iget-object p3, p0, Lldw;->a:Lldx;

    iget-object p3, p3, Lldx;->j:Lldw;

    invoke-virtual {p3, p1, p2}, Lldw;->onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V

    monitor-exit v0

    return-void

    :catchall_3
    move-exception p1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p1
.end method

.method public final onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0

    iget-object p1, p0, Lldw;->a:Lldx;

    iget-object p1, p1, Lldx;->n:Lleu;

    invoke-interface {p1, p2}, Lleu;->b(Landroid/media/MediaFormat;)V

    return-void
.end method
