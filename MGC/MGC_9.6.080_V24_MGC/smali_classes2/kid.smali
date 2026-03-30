.class public final Lkid;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/Deque;

.field public final b:Ljava/util/Deque;

.field public final c:Landroid/media/MediaCodec;

.field public final d:Landroid/os/Handler;

.field public final e:Lpcu;

.field public final f:Ljava/util/Deque;

.field public g:Z

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Landroid/os/Handler;

.field public j:Ljava/lang/Runnable;

.field final synthetic k:Lkie;

.field private l:Landroid/view/Surface;

.field private m:Lqle;

.field private n:Z

.field private o:Z

.field private p:Lqjw;

.field private final q:Ljava/util/Set;

.field private r:J

.field private final s:[F

.field private final t:[F

.field private final u:[F

.field private final v:[F

.field private final w:Lpcg;

.field private final x:Landroid/os/HandlerThread;

.field private y:Lj$/util/Optional;

.field private z:Lqjs;


# direct methods
.method private final declared-synchronized 1478a1c7833aac5e360e0ba4b0c0c568m()V
    .locals 13

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

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

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    move v0, v3

    nop

    :goto_6
    :try_start_0
    iget-object v4, p0, Lkid;->b:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Deque;->isEmpty()Z

    move-result v4

    nop

    nop

    if-nez v4, :cond_5

    nop

    nop

    invoke-direct {p0}, Lkid;->b1051a9d8893542362ad09051775f8f6m()V

    iget-object v4, p0, Lkid;->m:Lqle;

    nop

    nop

    nop

    nop

    iget-object v5, p0, Lkid;->b:Ljava/util/Deque;

    nop

    invoke-interface {v5}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    check-cast v5, Landroid/util/Pair;

    nop

    nop

    nop

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Ljava/lang/Integer;

    nop

    nop

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    nop

    check-cast v5, Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    iget v7, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    and-int/lit8 v7, v7, 0x4

    nop

    nop

    if-nez v7, :cond_3

    nop

    iget v7, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    nop

    nop

    and-int/lit8 v7, v7, 0x2

    nop

    nop

    nop

    nop

    if-nez v7, :cond_3

    nop

    nop

    nop

    if-eqz v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object v7, p0, Lkid;->k:Lkie;

    nop

    nop

    nop

    nop

    iget-boolean v7, v7, Lkie;->i:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_1

    nop

    nop

    nop

    iget-object v7, p0, Lkid;->q:Ljava/util/Set;

    nop

    nop

    iget-wide v8, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    nop

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    nop

    nop

    nop

    nop

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    nop

    if-nez v7, :cond_3

    nop

    nop

    nop

    nop

    nop

    iget-object v7, p0, Lkid;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v8}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    nop

    nop

    nop

    nop

    iget-object v8, p0, Lkid;->e:Lpcu;

    nop

    nop

    iget-wide v9, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    nop

    new-instance v11, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    sget-object v12, Lcom/google/android/apps/camera/imax/cyclops/capture/xzG/uebAI;->TjswgIa:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", index = "

    nop

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    nop

    invoke-interface {v8, v9}, Lpcu;->b(Ljava/lang/String;)V

    iget-object v8, p0, Lkid;->k:Lkie;

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v4, v5, v7}, Lkie;->d(Lqle;Landroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)V

    iget-object v4, p0, Lkid;->q:Ljava/util/Set;

    nop

    nop

    iget-wide v7, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    nop

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    nop

    nop

    nop

    :cond_1
    iget-object v7, p0, Lkid;->c:Landroid/media/MediaCodec;

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    nop

    nop

    invoke-virtual {v7, v8}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    iget-object v8, p0, Lkid;->e:Lpcu;

    nop

    iget-wide v9, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    nop

    nop

    new-instance v11, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " Sending Buffer to Muxer: ts = "

    nop

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", index = "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v8, v9}, Lpcu;->b(Ljava/lang/String;)V

    iget-object v8, p0, Lkid;->k:Lkie;

    nop

    invoke-virtual {v8, v4, v5, v7}, Lkie;->d(Lqle;Landroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)V

    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v4, p0, Lkid;->e:Lpcu;

    nop

    nop

    nop

    nop

    nop

    const-string v7, "Submitting to null muxer track; was it closed already without an error?"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v7}, Lpcu;->d(Ljava/lang/String;)V

    :cond_3
    :goto_7
    iget-object v4, p0, Lkid;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    nop

    invoke-virtual {v4, v6, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    iget v0, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    nop

    nop

    nop

    and-int/lit8 v0, v0, 0x4

    nop

    if-eqz v0, :cond_f

    nop

    nop

    :cond_4
    move v0, v2

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

    :cond_5
    if-nez v0, :cond_6

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto :goto_8

    nop

    nop

    nop

    nop

    :cond_6
    if-eqz v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lkid;->e:Lpcu;

    nop

    nop

    nop

    nop

    const-string v1, "Release encoder due to timeout."

    nop

    invoke-interface {v0, v1}, Lpcu;->b(Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lkid;->y:Lj$/util/Optional;

    nop

    nop

    iget-object v0, p0, Lkid;->p:Lqjw;

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_8

    nop

    iget-object v2, p0, Lkid;->e:Lpcu;

    nop

    nop

    nop

    nop

    const-string v3, "Closing glTextureCopier"

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lpcu;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lqjw;->close()V

    iput-object v1, p0, Lkid;->p:Lqjw;

    nop

    nop

    nop

    nop

    :cond_8
    iget-object v0, p0, Lkid;->z:Lqjs;

    nop

    nop

    if-eqz v0, :cond_9

    nop

    nop

    iget-object v2, p0, Lkid;->e:Lpcu;

    nop

    nop

    const-string v3, "Closing encoderCanvas"

    nop

    nop

    invoke-interface {v2, v3}, Lpcu;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lqia;->close()V

    iput-object v1, p0, Lkid;->z:Lqjs;

    nop

    nop

    :cond_9
    iget-object v0, p0, Lkid;->e:Lpcu;

    nop

    nop

    const-string v2, "Releasing codec"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lpcu;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lkid;->c:Landroid/media/MediaCodec;

    nop

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iget-object v0, p0, Lkid;->l:Landroid/view/Surface;

    nop

    if-eqz v0, :cond_a

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lkid;->e:Lpcu;

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v3

    nop

    nop

    nop

    nop

    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    nop

    sget-object v5, Lcom/google/android/libraries/phenotype/client/stable/NyRu/FYEOygtxYXoPt;->jQUIaArjYBcJP:Ljava/lang/String;

    nop

    nop

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lpcu;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lkid;->l:Landroid/view/Surface;

    nop

    nop

    nop

    nop

    :cond_a
    invoke-direct {p0}, Lkid;->23ce148e54b083367f51e25c7971761em()V

    invoke-direct {p0}, Lkid;->33b3102b6558811a7b7629a1e8e59bd2m()V

    iget-object v0, p0, Lkid;->k:Lkie;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lkie;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v0, p0, Lkid;->e:Lpcu;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lkid;->k:Lkie;

    nop

    iget-object v2, v2, Lkie;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Released codec (success); current active count: "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lpcu;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lkid;->m:Lqle;

    nop

    if-eqz v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lqle;->close()V

    iput-object v1, p0, Lkid;->m:Lqle;

    nop

    nop

    :cond_b
    iget-object v0, p0, Lkid;->b:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lkid;->e:Lpcu;

    nop

    nop

    nop

    nop

    const-string v1, "Received EOS but output buffers still present?"

    nop

    invoke-interface {v0, v1}, Lpcu;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lkid;->b:Ljava/util/Deque;

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_c
    goto/32 :goto_16

    nop

    :goto_d
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v1, p0, Lkid;->y:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_d

    nop

    nop

    iget-object v1, p0, Lkid;->y:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    nop

    nop

    nop

    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    nop

    cmp-long v1, v4, v6

    nop

    nop

    nop

    nop

    nop

    if-gez v1, :cond_d

    nop

    nop

    nop

    nop

    move v1, v2

    nop

    nop

    nop

    goto :goto_e

    nop

    nop

    :cond_d
    move v1, v3

    nop

    nop

    nop

    :goto_e
    iget-object v4, p0, Lkid;->e:Lpcu;

    nop

    nop

    nop

    new-instance v5, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-interface {v4, v0}, Lpcu;->b(Ljava/lang/String;)V

    iget-boolean v0, p0, Lkid;->o:Z

    nop

    if-eqz v0, :cond_f

    nop

    nop

    nop

    if-nez v1, :cond_f

    nop

    nop

    nop

    iget-object v0, p0, Lkid;->m:Lqle;

    nop

    nop

    nop

    nop

    if-nez v0, :cond_e

    nop

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    :cond_e
    move v2, v3

    nop

    nop

    nop

    :goto_f
    invoke-static {v2}, Lrrf;->x(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x1b

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

    :goto_11
    const-string v0, "encoder time out = "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    monitor-exit p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    :cond_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_3

    nop

    nop

    :goto_17
    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method

.method private final declared-synchronized 19e596a3e324281407eb5c11093c0152m()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lkid;->o:Z

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Lkid;->23ce148e54b083367f51e25c7971761em()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_1
    iget-object v0, p0, Lkid;->k:Lkie;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v0, v0, Lkie;->h:Z

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    invoke-direct {p0}, Lkid;->7ecc92917e9c4556cc19f457ddc41af8m()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    return-void

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

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_3
    invoke-direct {p0}, Lkid;->d5484163cd8d335e6b17663474ff5f2bm()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method private final declared-synchronized 23ce148e54b083367f51e25c7971761em()V
    .locals 6

    goto/32 :goto_c

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

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_1
    throw v0

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    :goto_5
    goto :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    :goto_7
    :try_start_1
    iget-object v0, p0, Lkid;->f:Ljava/util/Deque;

    nop

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_0

    nop

    iget-object v0, p0, Lkid;->f:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Lprw;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lkid;->e:Lpcu;

    nop

    invoke-interface {v0}, Lprw;->d()J

    move-result-wide v2

    nop

    nop

    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closing image at "

    nop

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Landroidx/wear/widget/xrA/fuyPMnCeXU;->xkx:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lpcu;->b(Ljava/lang/String;)V

    invoke-interface {v0}, Lprw;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

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

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0xa

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_e
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 33b3102b6558811a7b7629a1e8e59bd2m()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    iget-object v1, p0, Lkid;->j:Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lkid;->e:Lpcu;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v1, "Stop Heart Beat Update."

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_5
    const v1, 0xc

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lkid;->y:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    iget-object v0, p0, Lkid;->i:Landroid/os/Handler;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lkid;->x:Landroid/os/HandlerThread;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_12
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v0, v1}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop
.end method

.method private final declared-synchronized 3fd9578e124c68aa49885b22b61b4ec8m()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    :try_start_1
    new-instance v0, Lkev;

    nop

    nop

    nop

    const/16 v1, 0x14

    nop

    nop

    invoke-direct {v0, p0, v1}, Lkev;-><init>(Ljava/lang/Object;I)V

    iget-object v1, p0, Lkid;->k:Lkie;

    nop

    nop

    iget-object v1, v1, Lkie;->k:Lqht;

    nop

    nop

    invoke-interface {v1, v0}, Lqht;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    throw v0

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final declared-synchronized 51550bab6b6440a4fd45f825c221b363m(Lprw;)V
    .locals 8

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

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

    :try_start_0
    invoke-virtual {v4}, Lqia;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    goto :goto_7

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    :try_start_2
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v0

    nop

    :catchall_2
    move-exception p1

    nop

    monitor-exit p0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_15

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v0

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :catchall_4
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_4
    invoke-virtual {v3}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    goto/32 :goto_c

    nop

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

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_d

    nop

    nop

    :catchall_5
    move-exception v1

    nop

    nop

    nop

    nop

    :try_start_5
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d
    throw v0

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :catchall_6
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    :try_start_6
    new-instance v3, Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    nop

    nop

    nop

    nop

    invoke-direct {v3, p1}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;-><init>(Landroid/hardware/HardwareBuffer;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :try_start_7
    iget-object v4, p0, Lkid;->k:Lkie;

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lkie;->k:Lqht;

    nop

    nop

    invoke-static {v4, v3}, Lqiu;->b(Lqht;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Lqiu;

    move-result-object v4

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    new-instance v5, Lkhy;

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x2

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v6}, Lkhy;-><init>(I)V

    new-instance v7, Lkhz;

    nop

    nop

    invoke-direct {v7, v1, v2, v6}, Lkhz;-><init>(JI)V

    invoke-virtual {v0, v5, v7}, Lqia;->d(Lqja;Lqeu;)Lqfs;

    iget-object v1, p0, Lkid;->p:Lqjw;

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    iget-object v2, p0, Lkid;->v:[F

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v4, v0, v2}, Lqjw;->c(Lqiu;Lqjs;[F)V

    :cond_2
    iget-object v0, p0, Lkid;->k:Lkie;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lkie;->k:Lqht;

    nop

    nop

    nop

    invoke-static {v0}, Lqoe;->B(Lqht;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-virtual {v4}, Lqia;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    invoke-virtual {v3}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :try_start_b
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/32 :goto_5

    nop

    nop

    :goto_13
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_e

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_15
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_18
    :try_start_c
    invoke-interface {p1}, Lprw;->d()J

    move-result-wide v1

    nop

    invoke-interface {p1}, Lprw;->f()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    nop

    nop

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/32 :goto_1a

    nop

    nop

    :goto_19
    monitor-enter p0

    nop

    :try_start_d
    iget-object v0, p0, Lkid;->z:Lqjs;

    nop
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz p1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_4
    :try_start_e
    iget-object v0, p0, Lkid;->e:Lpcu;

    nop

    nop

    const-string v1, "Attempting to encode image with no hardware buffer content. Skipping."

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lpcu;->h(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto/32 :goto_8

    nop

    nop

    :goto_1b
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop
.end method

.method private final declared-synchronized 7ecc92917e9c4556cc19f457ddc41af8m()V
    .locals 8

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    throw v0

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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

    :goto_d
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lkid;->o:Z

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    xor-int/2addr v0, v1

    nop

    nop

    invoke-static {v0}, Lrrf;->x(Z)V

    iget-object v0, p0, Lkid;->z:Lqjs;

    nop

    :goto_e
    iget-boolean v2, p0, Lkid;->n:Z

    nop

    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lkid;->f:Ljava/util/Deque;

    nop

    nop

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    if-nez v2, :cond_2

    nop

    if-eqz v0, :cond_2

    nop

    nop

    iget-object v2, p0, Lkid;->m:Lqle;

    nop

    nop

    if-eqz v2, :cond_2

    nop

    iget-object v2, p0, Lkid;->f:Ljava/util/Deque;

    nop

    invoke-interface {v2}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Lprw;

    nop

    nop

    nop

    invoke-direct {p0, v2}, Lkid;->51550bab6b6440a4fd45f825c221b363m(Lprw;)V

    iget-object v3, p0, Lkid;->e:Lpcu;

    nop

    invoke-interface {v2}, Lprw;->d()J

    move-result-wide v4

    nop

    nop

    new-instance v6, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending image to encoder: "

    nop

    nop

    nop

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    invoke-interface {v3, v4}, Lpcu;->b(Ljava/lang/String;)V

    invoke-interface {v2}, Lprw;->d()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    iput-wide v3, p0, Lkid;->r:J

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lprw;->close()V

    invoke-direct {p0}, Lkid;->b1051a9d8893542362ad09051775f8f6m()V

    goto :goto_e

    nop

    nop

    nop

    :cond_2
    iget-boolean v2, p0, Lkid;->n:Z

    nop

    nop

    nop

    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lkid;->f:Ljava/util/Deque;

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_0

    nop

    iget-boolean v2, p0, Lkid;->g:Z

    nop

    nop

    nop

    if-eqz v2, :cond_0

    nop

    if-eqz v0, :cond_0

    nop

    iget-object v0, p0, Lkid;->k:Lkie;

    nop

    iget-boolean v0, v0, Lkie;->i:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    iget-object v0, p0, Lkid;->e:Lpcu;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "Wait Until CodecStarts and Send Hardware EOS"

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lpcu;->b(Ljava/lang/String;)V

    iget-wide v2, p0, Lkid;->r:J

    nop

    nop

    nop

    invoke-virtual {p0, v2, v3}, Lkid;->d(J)V

    goto :goto_f

    nop

    nop

    nop

    :cond_3
    iget-object v0, p0, Lkid;->e:Lpcu;

    nop

    nop

    const-string v2, "Send Hardware EOS"

    nop

    nop

    invoke-interface {v0, v2}, Lpcu;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lkid;->3fd9578e124c68aa49885b22b61b4ec8m()V

    :goto_f
    iput-boolean v1, p0, Lkid;->n:Z

    nop

    iget-object v0, p0, Lkid;->e:Lpcu;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "EOS sent"

    nop

    nop

    invoke-interface {v0, v1}, Lpcu;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    return-void

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

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public constructor <init>(Lkie;Landroid/media/MediaCodec;Landroid/os/Handler;Lpcg;)V
    .locals 5

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v2, p0, Lkid;->t:[F

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_32

    nop

    nop

    :goto_4
    iput-object p2, p0, Lkid;->x:Landroid/os/HandlerThread;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string p1, "-hb"

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lkid;->k:Lkie;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_49

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    const-string p2, " "

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_a
    iput-object v0, p0, Lkid;->a:Ljava/util/Deque;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_e
    new-instance p2, Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    const/16 v0, 0x10

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Ljava/util/ArrayDeque;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_13
    invoke-interface {v4, p0}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_14
    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    :cond_0
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v1, p0, Lkid;->v:[F

    nop

    :goto_18
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_1a
    new-array v0, v0, [F

    nop

    nop

    nop

    nop

    nop

    fill-array-data v0, :array_2

    goto/32 :goto_46

    nop

    nop

    :goto_1b
    new-instance v0, Ljava/util/ArrayDeque;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move-object v2, v0

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object v3, p0, Lkid;->y:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1f
    iput-object v0, p0, Lkid;->b:Ljava/util/Deque;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_21
    iput-boolean v0, p0, Lkid;->n:Z

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_22
    iput-object v0, p0, Lkid;->f:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_24
    new-array v1, v0, [F

    nop

    fill-array-data v1, :array_0

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_26
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_22

    nop

    nop

    :goto_27
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_28
    iput-boolean v0, p0, Lkid;->g:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-object p2, p0, Lkid;->c:Landroid/media/MediaCodec;

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_2a
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_4c

    nop

    nop

    :goto_2b
    invoke-direct {v4, p3, p2}, Lpcy;-><init>(Lpcu;Ljava/lang/String;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance v4, Lpcy;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_2d
    iget-object p3, p1, Lkie;->g:Lpcu;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_2e
    new-instance p3, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_2f
    iget-object p2, p1, Lkie;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_31
    iput-boolean v0, p0, Lkid;->o:Z

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_32
    iput-object v0, p0, Lkid;->q:Ljava/util/Set;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {p3}, Lpnu;->l()Lpog;

    move-result-object p3

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object p1, p1, Lkie;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    new-instance p2, Landroid/os/HandlerThread;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iput-object p4, p0, Lkid;->w:Lpcg;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iput-object v4, p0, Lkid;->e:Lpcu;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_39
    iput-object p2, p0, Lkid;->i:Landroid/os/Handler;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_3a
    new-instance v0, Ljava/util/ArrayDeque;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-direct {p2, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    :goto_3c
    iget-object p3, p1, Lkie;->d:Lpnu;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_3d
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_1d

    nop

    :goto_3f
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3d

    nop

    nop

    :goto_41
    iput-object v1, p0, Lkid;->s:[F

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_42
    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    goto/32 :goto_20

    nop

    nop

    :goto_44
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    new-array v2, v0, [F

    nop

    nop

    nop

    nop

    nop

    fill-array-data v2, :array_1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iput-object v0, p0, Lkid;->u:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-nez p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_48
    return-void

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :goto_49
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4a
    iput-object v2, p0, Lkid;->v:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_4b
    invoke-static {p4}, Lkav;->P(Lpcg;)Z

    move-result p2

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iput-object v1, p0, Lkid;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_4f
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_18

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_52
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_53
    if-lez v0, :cond_2

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    :goto_54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    :goto_55
    const-string v3, "codec "

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_56
    const-string p0, "created"

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p2, p3}, Lnpr;->m(Lpog;)Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_58
    iput-object p3, p0, Lkid;->d:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_59
    iget-object p2, p1, Lkie;->l:Lnpr;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop
.end method

.method private final b1051a9d8893542362ad09051775f8f6m()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    sget-object v1, Lkie;->a:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Lj$/time/Instant;->plus(Lj$/time/temporal/TemporalAmount;)Lj$/time/Instant;

    move-result-object v0

    nop

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

    :goto_6
    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Lkid;->y:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    :goto_d
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

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

    :goto_e
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop
.end method

.method private final declared-synchronized d5484163cd8d335e6b17663474ff5f2bm()V
    .locals 28

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-boolean v0, v1, Lkid;->o:Z

    nop

    const/4 v2, 0x1

    nop

    xor-int/2addr v0, v2

    nop

    nop

    invoke-static {v0}, Lrrf;->x(Z)V

    :goto_6
    iget-boolean v0, v1, Lkid;->n:Z

    nop

    nop

    nop

    if-nez v0, :cond_3

    nop

    iget-object v0, v1, Lkid;->a:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_3

    nop

    iget-object v0, v1, Lkid;->f:Ljava/util/Deque;

    nop

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v1, Lkid;->m:Lqle;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    iget-object v0, v1, Lkid;->a:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    nop

    nop

    nop

    iget-object v0, v1, Lkid;->f:Ljava/util/Deque;

    nop

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lprw;

    nop

    nop

    nop

    iget-object v3, v1, Lkid;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Landroid/media/MediaCodec;->getInputImage(I)Landroid/media/Image;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lprw;->d()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    invoke-virtual {v7, v5, v6, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    nop

    new-instance v9, Lpng;

    nop

    invoke-direct {v9, v3}, Lpng;-><init>(Landroid/media/Image;)V

    iget-object v3, v1, Lkid;->k:Lkie;

    nop

    nop

    nop

    nop

    iget-object v10, v1, Lkid;->w:Lpcg;

    nop

    iget-object v11, v3, Lkie;->l:Lnpr;

    nop

    nop

    iget-object v12, v3, Lkie;->d:Lpnu;

    nop

    nop

    invoke-interface {v12}, Lpnu;->l()Lpog;

    move-result-object v12

    nop

    nop

    nop

    invoke-virtual {v11, v12}, Lnpr;->m(Lpog;)Z

    move-result v11

    nop

    if-eqz v11, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lprw;->c()I

    move-result v11

    nop

    iget v12, v9, Lpng;->b:I

    nop

    nop

    nop

    if-ne v11, v12, :cond_1

    nop

    nop

    invoke-interface {v0}, Lprw;->b()I

    move-result v11

    nop

    nop

    nop

    nop

    iget v12, v9, Lpng;->c:I

    nop

    nop

    nop

    if-ne v11, v12, :cond_1

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lprw;->a()I

    move-result v3

    nop

    nop

    nop

    nop

    const/16 v11, 0x23

    nop

    nop

    nop

    nop

    const/4 v12, 0x0

    nop

    nop

    nop

    if-ne v3, v11, :cond_0

    nop

    nop

    nop

    move v3, v2

    nop

    nop

    nop

    nop

    nop

    goto :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    move v3, v12

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v3}, La;->au(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {v10}, Lkav;->P(Lpcg;)Z

    move-result v27

    nop

    nop

    invoke-interface {v0}, Lprw;->g()Ljava/util/List;

    move-result-object v3

    nop

    nop

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Lprv;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v13

    nop

    nop

    invoke-interface {v0}, Lprw;->g()Ljava/util/List;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Lprv;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lprv;->getRowStride()I

    move-result v14

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lprw;->g()Ljava/util/List;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, Lprv;

    nop

    nop

    nop

    invoke-interface {v3}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v15

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lprw;->g()Ljava/util/List;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Lprv;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lprv;->getRowStride()I

    move-result v16

    nop

    nop

    nop

    invoke-interface {v0}, Lprw;->g()Ljava/util/List;

    move-result-object v3

    nop

    nop

    nop

    const/4 v10, 0x2

    nop

    nop

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Lprv;

    nop

    nop

    nop

    invoke-interface {v3}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v17

    nop

    nop

    nop

    invoke-interface {v0}, Lprw;->g()Ljava/util/List;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Lprv;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lprv;->getRowStride()I

    move-result v18

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Lpng;->k()Lryb;

    move-result-object v3

    nop

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Lprv;

    nop

    nop

    nop

    invoke-interface {v3}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v19

    nop

    invoke-virtual {v9}, Lpng;->k()Lryb;

    move-result-object v3

    nop

    nop

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lprv;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lprv;->getRowStride()I

    move-result v20

    nop

    nop

    nop

    invoke-virtual {v9}, Lpng;->k()Lryb;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Lprv;

    nop

    invoke-interface {v3}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v21

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Lpng;->k()Lryb;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Lprv;

    nop

    invoke-interface {v3}, Lprv;->getRowStride()I

    move-result v22

    nop

    nop

    nop

    invoke-virtual {v9}, Lpng;->k()Lryb;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, Lprv;

    nop

    nop

    invoke-interface {v3}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v23

    nop

    nop

    nop

    invoke-virtual {v9}, Lpng;->k()Lryb;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Lprv;

    nop

    nop

    nop

    invoke-interface {v3}, Lprv;->getRowStride()I

    move-result v24

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lprw;->c()I

    move-result v25

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lprw;->b()I

    move-result v26

    nop

    nop

    nop

    invoke-static/range {v13 .. v27}, Lcom/google/android/apps/camera/jni/eisutil/FrameUtilNative;->mirrorYUV420888(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIIZ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    iget-object v3, v3, Lkie;->f:Llqk;

    nop

    nop

    nop

    nop

    invoke-interface {v3, v0, v9}, Llqk;->a(Lprw;Lprw;)V

    invoke-static {v9, v10}, Lnpr;->n(Lprw;Lpcg;)V

    goto :goto_8

    nop

    nop

    nop

    :cond_2
    iget-object v3, v3, Lkie;->f:Llqk;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v0, v9}, Llqk;->a(Lprw;Lprw;)V

    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v9

    nop

    nop

    sub-long/2addr v9, v5

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v1, Lkid;->e:Lpcu;

    nop

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    invoke-virtual {v5, v9, v10, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    nop

    nop

    nop

    nop

    new-instance v9, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "frame transform done in "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    invoke-interface {v3, v5}, Lpcu;->b(Ljava/lang/String;)V

    invoke-interface {v0}, Lprw;->close()V

    iget-object v3, v1, Lkid;->e:Lpcu;

    nop

    nop

    invoke-interface {v0}, Lprw;->d()J

    move-result-wide v5

    nop

    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sending image to encoder: "

    nop

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v0}, Lpcu;->b(Ljava/lang/String;)V

    iget-object v3, v1, Lkid;->c:Landroid/media/MediaCodec;

    nop

    iget-object v0, v1, Lkid;->k:Lkie;

    nop

    nop

    nop

    iget v6, v0, Lkie;->j:I

    nop

    nop

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    const/4 v5, 0x0

    nop

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    invoke-direct/range {p0 .. p0}, Lkid;->b1051a9d8893542362ad09051775f8f6m()V

    goto/16 :goto_6

    nop

    :cond_3
    iget-object v0, v1, Lkid;->a:Ljava/util/Deque;

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_4

    nop

    nop

    nop

    iget-object v0, v1, Lkid;->f:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_4

    nop

    nop

    nop

    iget-boolean v0, v1, Lkid;->g:Z

    nop

    nop

    nop

    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    iget-boolean v0, v1, Lkid;->n:Z

    nop

    nop

    nop

    if-nez v0, :cond_4

    nop

    nop

    nop

    iget-object v0, v1, Lkid;->a:Ljava/util/Deque;

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    nop

    nop

    iget-object v3, v1, Lkid;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v7, 0x0

    nop

    nop

    const/4 v9, 0x4

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget-object v0, v1, Lkid;->e:Lpcu;

    nop

    nop

    const-string v3, "Sending EOS (Software)"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v3}, Lpcu;->b(Ljava/lang/String;)V

    iput-boolean v2, v1, Lkid;->n:Z

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x3

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

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

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    return-void

    nop

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

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x10

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_f

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Lqep;)Lkgn;
    .locals 6

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p1

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_1
    const v0, 0x20

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x19

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
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

    :goto_9
    throw p1

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lkid;->m:Lqle;

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    move v0, v1

    nop

    goto :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_d
    const-string v2, "Trying to add track twice"

    nop

    invoke-static {v0, v2}, Lrrf;->y(ZLjava/lang/Object;)V

    new-instance v0, Lkia;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, p0, p1}, Lkia;-><init>(Lkid;Lqep;)V

    iget-object v2, p0, Lkid;->d:Landroid/os/Handler;

    nop

    nop

    iget-object v3, p0, Lkid;->c:Landroid/media/MediaCodec;

    nop

    invoke-virtual {v3, v0, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    iget-object v0, p0, Lkid;->k:Lkie;

    nop

    nop

    nop

    iget-boolean v2, v0, Lkie;->h:Z

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    nop

    iget-object v0, v0, Lkie;->e:Landroid/media/MediaFormat;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "color-format"

    nop

    nop

    nop

    const v4, 0x7f000789

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v0, p0, Lkid;->c:Landroid/media/MediaCodec;

    nop

    nop

    iget-object v2, p0, Lkid;->k:Lkie;

    nop

    nop

    iget-object v2, v2, Lkie;->e:Landroid/media/MediaFormat;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2, v3, v3, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v0, p0, Lkid;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lkid;->l:Landroid/view/Surface;

    nop

    nop

    nop

    iget-object v2, p0, Lkid;->k:Lkie;

    nop

    nop

    nop

    nop

    new-instance v3, Lqlw;

    nop

    invoke-direct {v3, v0}, Lqlw;-><init>(Ljava/lang/Object;)V

    iget-object v0, v2, Lkie;->e:Landroid/media/MediaFormat;

    nop

    nop

    nop

    nop

    const-string v4, "width"

    nop

    nop

    nop

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    const-string v5, "height"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    new-instance v5, Lqfd;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v4, v0}, Lqfd;-><init>(II)V

    iget-object v0, v2, Lkie;->k:Lqht;

    nop

    nop

    nop

    nop

    invoke-static {v0, v3, v5}, Lqjs;->k(Lqht;Lqlt;Lqfd;)Lqjs;

    move-result-object v0

    nop

    nop

    iput-object v0, p0, Lkid;->z:Lqjs;

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lkid;->k:Lkie;

    nop

    nop

    new-instance v2, Lqjw;

    nop

    nop

    iget-object v0, v0, Lkie;->k:Lqht;

    nop

    nop

    nop

    nop

    invoke-direct {v2, v0}, Lqjw;-><init>(Lqht;)V

    iput-object v2, p0, Lkid;->p:Lqjw;

    nop

    nop

    nop

    goto :goto_e

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v2, p0, Lkid;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lkie;->e:Landroid/media/MediaFormat;

    nop

    invoke-virtual {v2, v0, v3, v3, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    :goto_e
    iput-object p1, p0, Lkid;->m:Lqle;

    nop

    nop

    iget-object p1, p0, Lkid;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    new-instance p1, Lkib;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p1, p0, v1}, Lkib;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lkid;->j:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lkid;->i:Landroid/os/Handler;

    nop

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance p1, Lkic;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p1, p0}, Lkic;-><init>(Lkid;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lkie;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_5
    const-string v1, "Released codec due to error; current active count: "

    nop

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

    nop

    :goto_6
    invoke-direct {p0}, Lkid;->33b3102b6558811a7b7629a1e8e59bd2m()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw p1

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    const v0, 0x4

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    iget-object p1, p0, Lkid;->c:Landroid/media/MediaCodec;

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_e
    invoke-direct {p0}, Lkid;->23ce148e54b083367f51e25c7971761em()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    iget-object p1, p0, Lkid;->k:Lkie;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lkid;->e:Lpcu;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v0, v1, p1}, Lpcu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    const-string v1, "Error while encoding track"

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

    :goto_14
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_15
    invoke-interface {p1, p0}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    :goto_16
    goto/32 :goto_8

    nop

    nop

    :goto_17
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0xf

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

    :goto_19
    iget-object p1, p0, Lkid;->e:Lpcu;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p0, p0, Lkid;->k:Lkie;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object p1, p0, Lkid;->m:Lqle;

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_1

    nop

    invoke-interface {p1}, Lqle;->close()V

    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-object p1, p0, Lkid;->m:Lqle;

    nop

    nop

    nop

    nop

    nop

    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    nop

    iput-boolean p1, p0, Lkid;->o:Z

    nop

    nop

    nop

    nop

    :cond_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_e

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p1, p1, Lkie;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop
.end method

.method public final declared-synchronized c(Ljava/lang/String;)V
    .locals 5

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "update ("

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

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lkid;->e:Lpcu;

    nop

    const-string v2, "update ("

    nop

    const-string v3, ")"

    nop

    nop

    nop

    nop

    invoke-static {p1, v2, v3}, La;->bj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    invoke-interface {v1, v2}, Lpcu;->b(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lkid;->19e596a3e324281407eb5c11093c0152m()V

    invoke-direct {p0}, Lkid;->1478a1c7833aac5e360e0ba4b0c0c568m()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_4

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v3

    nop

    nop

    :try_start_2
    invoke-virtual {p0, v3}, Lkid;->b(Ljava/lang/Exception;)V

    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    sub-long/2addr v3, v1

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lkid;->e:Lpcu;

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") takes: "

    nop

    nop

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-interface {v1, p1}, Lpcu;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    :goto_b
    const v0, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

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

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_3
    monitor-exit p0

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized d(J)V
    .locals 4

    goto/32 :goto_6

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

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lkid;->3fd9578e124c68aa49885b22b61b4ec8m()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0xd

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_2
    iget-object v0, p0, Lkid;->z:Lqjs;

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :goto_f
    :try_start_3
    iget-object v1, p0, Lkid;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lkhy;

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    invoke-direct {v1, v2}, Lkhy;-><init>(I)V

    new-instance v3, Lkhz;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, p1, p2, v2}, Lkhz;-><init>(JI)V

    invoke-virtual {v0, v1, v3}, Lqia;->d(Lqja;Lqeu;)Lqfs;

    iget-object v0, p0, Lkid;->k:Lkie;

    nop

    iget-object v0, v0, Lkie;->k:Lqht;

    nop

    nop

    nop

    invoke-static {v0}, Lqoe;->B(Lqht;)V

    iget-object v0, p0, Lkid;->d:Landroid/os/Handler;

    nop

    nop

    new-instance v1, Lhpv;

    nop

    nop

    nop

    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, p1, p2, v2}, Lhpv;-><init>(Ljava/lang/Object;JI)V

    const-wide/16 p1, 0xa

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method
