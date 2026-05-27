.class public final Ljyg;
.super Landroid/media/MediaCodec$Callback;


# instance fields
.field public final synthetic a:Ljyi;


# direct methods
.method public constructor <init>(Ljyi;)V
    .locals 0

    iput-object p1, p0, Ljyg;->a:Ljyi;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 4

    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "AudioEncoder"

    aput-object v1, p1, v0

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p1, v2

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isTransient()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, p1, v3

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, p1, v3

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    aput-object v0, p1, v3

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x5

    aput-object v0, p1, v3

    const-string v0, "%s failed due to error (%d), transient: %s, recoverable: %s, message: %s, info: %s)"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isTransient()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljyg;->a:Ljyi;

    iput-boolean v2, v0, Ljyi;->C:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Stopping recording due to: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Ljyg;->a:Ljyi;

    new-instance p2, Ljum;

    const/16 v0, 0xc

    invoke-direct {p2, p0, v0}, Ljum;-><init>(Ljyg;I)V

    iget-object v0, p1, Ljyi;->c:Lnow;

    invoke-virtual {p1, p2, v0}, Ljyi;->g(Ljava/lang/Runnable;Lnow;)V

    iget-object p1, p0, Ljyg;->a:Ljyi;

    iget-object p1, p1, Ljyi;->n:Ljym;

    sget-object p2, Ljyk;->h:Ljyk;

    invoke-virtual {p1, p2}, Ljym;->a(Ljyk;)V

    return-void

    :cond_0
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 10

    iget-object v0, p0, Ljyg;->a:Ljyi;

    iget-boolean v1, v0, Ljyi;->o:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Ljyi;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ljyg;->a:Ljyi;

    iget-boolean v2, v1, Ljyi;->F:Z

    if-nez v2, :cond_0

    iget-object p1, v1, Ljyi;->H:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Ljyg;->a:Ljyi;

    iget-object v0, v0, Ljyi;->O:Lnph;

    invoke-virtual {v0}, Lnph;->isDone()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Ljyg;->a:Ljyi;

    iget-boolean v1, v0, Ljyi;->q:Z

    if-eqz v1, :cond_b

    iget-object v1, v0, Ljyi;->i:Lkmw;

    invoke-interface {v1}, Lkmw;->a()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    goto/16 :goto_4

    :cond_2
    if-gez p2, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Index"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is invalid"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioEncoder"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v1, v0, Ljyi;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, v0, Ljyi;->J:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_3

    :cond_4
    iget v2, v0, Ljyi;->L:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    iput p2, v0, Ljyi;->L:I

    monitor-exit v1

    return-void

    :cond_5
    iget-wide v2, v0, Ljyi;->K:J

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-eqz v7, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Ljyi;->K:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x32

    cmp-long v7, v2, v4

    if-lez v7, :cond_8

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    if-lez v3, :cond_8

    iget-object v3, v0, Ljyi;->M:[B

    if-eqz v3, :cond_6

    array-length v3, v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    if-eq v3, v4, :cond_7

    :cond_6
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    new-array v3, v3, [B

    iput-object v3, v0, Ljyi;->M:[B

    :cond_7
    iget-object v3, v0, Ljyi;->M:[B

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    iget-wide v2, v0, Ljyi;->s:J

    const-wide/16 v4, 0x61a8

    add-long/2addr v2, v4

    iput-wide v2, v0, Ljyi;->s:J

    iget-wide v2, v0, Ljyi;->K:J

    const-wide/16 v4, 0x19

    add-long/2addr v2, v4

    iput-wide v2, v0, Ljyi;->K:J

    move v9, v6

    goto :goto_1

    :cond_8
    const/4 v9, 0x0

    :goto_1
    const/4 v4, 0x0

    iget-wide v6, v0, Ljyi;->s:J

    const/4 v8, 0x0

    move-object v2, p1

    move v3, p2

    move v5, v9

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v9, :cond_9

    const-wide/16 p1, 0xa

    :try_start_2
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catch_0
    move-exception p1

    :cond_9
    :goto_2
    :try_start_3
    monitor-exit v1

    return-void

    :cond_a
    :goto_3
    iget-object v2, v0, Ljyi;->d:Lnow;

    new-instance v3, Lpi;

    const/16 v4, 0x10

    invoke-direct {v3, v0, p1, p2, v4}, Lpi;-><init>(Ljyi;Landroid/media/MediaCodec;II)V

    invoke-interface {v2, v3}, Lnow;->a(Ljava/lang/Runnable;)Lnou;

    move-result-object p1

    iput-object p1, v0, Ljyi;->J:Ljava/util/concurrent/Future;

    monitor-exit v1

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_b
    new-instance v1, Lpi;

    const/16 v2, 0x11

    invoke-direct {v1, p0, p1, p2, v2}, Lpi;-><init>(Ljyg;Landroid/media/MediaCodec;II)V

    iget-object p1, v0, Ljyi;->b:Lnow;

    invoke-virtual {v0, v1, p1}, Ljyi;->g(Ljava/lang/Runnable;Lnow;)V

    return-void

    :cond_c
    :goto_4
    return-void
.end method

.method public final onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    iget-object p1, p0, Ljyg;->a:Ljyi;

    iget-boolean v0, p1, Ljyi;->o:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, Ljyi;->f:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Ljyg;->a:Ljyi;

    iget-boolean v1, v0, Ljyi;->F:Z

    if-nez v1, :cond_0

    iget-object p3, v0, Ljyi;->I:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    return-void

    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    :goto_0
    iget-object p1, p0, Ljyg;->a:Ljyi;

    iget-object p1, p1, Ljyi;->O:Lnph;

    invoke-virtual {p1}, Lnph;->isDone()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Ljyg;->a:Ljyi;

    new-instance v0, Lpi;

    const/16 v1, 0x12

    invoke-direct {v0, p0, p2, p3, v1}, Lpi;-><init>(Ljyg;ILandroid/media/MediaCodec$BufferInfo;I)V

    iget-object p2, p1, Ljyi;->c:Lnow;

    invoke-virtual {p1, v0, p2}, Ljyi;->g(Ljava/lang/Runnable;Lnow;)V

    :cond_2
    return-void
.end method

.method public final onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 2

    iget-object p1, p0, Ljyg;->a:Ljyi;

    iget-boolean v0, p1, Ljyi;->o:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, Ljyi;->f:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Ljyg;->a:Ljyi;

    iget-boolean v1, v0, Ljyi;->F:Z

    if-nez v1, :cond_0

    iput-object p2, v0, Ljyi;->G:Landroid/media/MediaFormat;

    monitor-exit p1

    return-void

    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    :goto_0
    iget-object p1, p0, Ljyg;->a:Ljyi;

    invoke-virtual {p1, p2}, Ljyi;->f(Landroid/media/MediaFormat;)V

    return-void
.end method
