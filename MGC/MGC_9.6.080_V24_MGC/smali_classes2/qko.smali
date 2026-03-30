.class public final Lqko;
.super Landroid/media/MediaCodec$Callback;
.source "PG"


# instance fields
.field final synthetic a:Lqkp;


# direct methods
.method public constructor <init>(Lqkp;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lqko;->a:Lqkp;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 1

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    goto/32 :goto_1e

    nop

    nop

    :goto_2
    if-nez p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    :goto_3
    iget-object p0, p0, Lqkp;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p0, Lqko;->a:Lqkp;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_5
    const-string v0, "Unrecoverable error occurred while encoding data."

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lqko;->a:Lqkp;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_7
    const-string v0, "Codec error"

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_8
    iget-object p1, p1, Lqkp;->e:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1, p2}, Lsuu;->a(Ljava/lang/Throwable;)Z

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p1, p0, Lqko;->a:Lqkp;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p2, 0x3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lqko;->a:Lqkp;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    if-nez p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    :goto_f
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1, p2}, Lsuu;->a(Ljava/lang/Throwable;)Z

    :goto_12
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p1, p2}, Lqkz;->d(I)V

    goto/32 :goto_d

    nop

    nop

    :goto_16
    iget-object p1, p1, Lqkp;->o:Lqkz;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_17
    invoke-virtual {p1, p2}, Lsuu;->a(Ljava/lang/Throwable;)Z

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string p2, "Unrecoverable error occurred while starting encoder or encoding."

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_19
    const/4 p1, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance p2, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v0, "Recoverable error occurred while encoding data."

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Lqkp;->e()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    :goto_1f
    goto :goto_23

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_10

    nop

    nop

    :goto_21
    iget-object p1, p0, Lqko;->a:Lqkp;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Lqkp;->e()V

    :goto_23
    goto/32 :goto_21

    nop

    nop

    :goto_24
    invoke-static {p1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isTransient()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_27
    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string p1, "AsynchMediaCodec"

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_12

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p1, p1, Lqkp;->e:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2c
    iget-object p1, p1, Lqkp;->e:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2d
    const-string v0, "Transient error occurred while processing data."

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object p1, p1, Lqkp;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object p1, p0, Lqko;->a:Lqkp;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {p1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_33

    nop

    nop

    :goto_32
    iget-object p1, p0, Lqko;->a:Lqkp;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p1, p0, Lqko;->a:Lqkp;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Lqko;->a:Lqkp;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_3
    goto/32 :goto_c

    nop

    :goto_4
    monitor-enter p1

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lqko;->a:Lqkp;

    nop

    nop

    nop

    iget-object v0, v0, Lqkp;->e:Lsuu;

    nop

    nop

    invoke-virtual {v0}, Lsuu;->isDone()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_1
    iget-object v0, p0, Lqko;->a:Lqkp;

    nop

    nop

    nop

    iget-object v0, v0, Lqkp;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lqko;->a:Lqkp;

    nop

    invoke-virtual {p0, p2}, Lqkp;->g(I)V

    goto :goto_5

    nop

    nop

    :cond_2
    iget-object v0, p0, Lqko;->a:Lqkp;

    nop

    nop

    iget-object v0, v0, Lqkp;->d:Ljava/util/Deque;

    nop

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    nop

    invoke-interface {v0, p2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    iget-object p2, p0, Lqko;->a:Lqkp;

    nop

    nop

    nop

    iget-object p2, p2, Lqkp;->o:Lqkz;

    nop

    nop

    iget-object p0, p0, Lqko;->a:Lqkp;

    nop

    invoke-interface {p2, p0}, Lqkz;->e(Lqkp;)V

    :goto_5
    monitor-exit p1

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit p1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x14

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    nop

    nop

    :goto_a
    const v0, 0x1c

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 11

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_1
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x0

    nop

    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lqko;->a:Lqkp;

    nop

    nop

    invoke-virtual {p0, p3}, Lqkp;->c(Landroid/media/MediaCodec$BufferInfo;)V

    :goto_4
    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    const-string p1, "AsynchMediaCodec"

    nop

    nop

    nop

    nop

    const-string p2, "Exception occurred while trying to release output buffer"

    nop

    nop

    nop

    nop

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v0

    nop

    nop

    return-void

    nop

    :catch_0
    move-exception p2

    nop

    nop

    iget-object p0, p0, Lqko;->a:Lqkp;

    nop

    nop

    iget-object p0, p0, Lqkp;->j:Lqko;

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1, p2}, Lqko;->onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p2

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    monitor-exit v9

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    throw p2

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p0

    nop

    nop

    :try_start_4
    const-string p1, "AsynchMediaCodec"

    nop

    nop

    nop

    nop

    nop

    const-string p2, "Exception occurred while trying construct media data"

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v0

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

    :catch_1
    move-exception p2

    nop

    iget-object p0, p0, Lqko;->a:Lqkp;

    nop

    iget-object p0, p0, Lqkp;->j:Lqko;

    nop

    nop

    invoke-virtual {p0, p1, p2}, Lqko;->onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V

    monitor-exit v0

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_d

    nop

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

    nop

    :try_start_5
    iget-object v1, p0, Lqko;->a:Lqkp;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lqkp;->e:Lsuu;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lsuu;->isDone()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    monitor-exit v0

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

    :cond_1
    iget-object v1, p0, Lqko;->a:Lqkp;

    nop

    iget-object v1, v1, Lqkp;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    nop

    and-int/lit8 v2, v2, 0x2

    nop

    nop

    nop

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    nop

    nop

    nop

    if-lez v3, :cond_5

    nop

    nop

    if-nez v1, :cond_5

    nop

    nop

    nop

    if-nez v2, :cond_5

    nop

    nop

    nop

    iget-object v1, p0, Lqko;->a:Lqkp;

    nop

    nop

    iget-boolean v1, v1, Lqkp;->m:Z

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    and-int/lit8 v1, v1, 0x4

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_e

    nop

    nop

    :cond_2
    iget-object v1, p0, Lqko;->a:Lqkp;

    nop

    nop

    nop

    iget-object v1, v1, Lqkp;->o:Lqkz;

    nop

    nop

    invoke-interface {v1, p3}, Lqkz;->b(Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v1, p0, Lqko;->a:Lqkp;

    nop

    nop

    nop

    iget-object v1, v1, Lqkp;->n:Lqlj;

    nop

    nop

    nop

    nop

    nop

    iget-object v9, p0, Lqko;->a:Lqkp;

    nop

    nop

    nop

    nop

    iget-boolean v2, v9, Lqkp;->m:Z

    nop

    nop

    if-eqz v2, :cond_3

    nop

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputFrame(I)Landroid/media/MediaCodec$OutputFrame;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v2}, Landroid/media/MediaCodec$OutputFrame;->getLinearBlock()Landroid/media/MediaCodec$LinearBlock;

    move-result-object v2

    nop

    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_3
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_7
    move-object v7, v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Landroid/media/MediaCodec$LinearBlock;->map()Ljava/nio/ByteBuffer;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto :goto_8

    nop

    nop

    nop

    nop

    :cond_4
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    nop

    nop

    :goto_8
    move-object v5, v2

    nop

    nop

    new-instance v10, Lqkn;

    nop

    nop

    nop

    nop

    nop

    move-object v2, v10

    nop

    move-object v3, v9

    nop

    nop

    nop

    nop

    move-object v4, p1

    nop

    nop

    nop

    nop

    move-object v6, p3

    nop

    nop

    nop

    nop

    nop

    move v8, p2

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v2 .. v8}, Lqkn;-><init>(Lqkp;Landroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaCodec$LinearBlock;I)V

    monitor-enter v9

    nop

    nop
    :try_end_6
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    iget-object p2, v9, Lqkp;->l:Ljava/util/Set;

    nop

    nop

    invoke-interface {p2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v9

    nop

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-interface {v1, v10}, Lqlj;->a(Lqkn;)V
    :try_end_8
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :cond_5
    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lqko;->a:Lqkp;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop
.end method

.method public final onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lqko;->a:Lqkp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-interface {p0, p2}, Lqlj;->b(Landroid/media/MediaFormat;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lqkp;->n:Lqlj;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method
