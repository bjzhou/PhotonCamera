.class public final Lqkj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqkh;


# instance fields
.field private final a:Lqkh;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:I

.field private final d:J

.field private e:J

.field private f:J

.field private volatile g:Ljava/util/concurrent/Future;

.field private volatile h:Z


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em()J
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x4

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

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_3
    if-nez p0, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    :goto_4
    iget-object p0, p0, Lqkj;->a:Lqkh;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-wide v0

    nop

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    const v1, 0x6

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget p0, p0, Lqki;->b:I

    nop

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

    nop

    :goto_b
    return-wide v0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast p0, Lqki;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method private final declared-synchronized 7ecc92917e9c4556cc19f457ddc41af8m()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lqkj;->h:Z

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    iget-object v0, p0, Lqkj;->g:Ljava/util/concurrent/Future;

    nop

    invoke-static {v0}, Lsgj;->X(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public constructor <init>(Lqkh;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_0
    int-to-long p1, p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-wide/32 v0, 0x3b9aca00

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    div-long/2addr v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_4
    invoke-virtual {v0}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    iput-wide v0, p0, Lqkj;->d:J

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

    :goto_8
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_a
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v0, p0, Lqkj;->g:Ljava/util/concurrent/Future;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p1}, Lqkh;->a()Landroid/media/AudioFormat;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p1}, Lqkh;->a()Landroid/media/AudioFormat;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_12
    iput-wide v0, p0, Lqkj;->f:J

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_13
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-boolean v0, p0, Lqkj;->h:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_15
    mul-int/2addr p2, v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_18
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_19
    const v1, 0x5

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

    :goto_1a
    iput-object p2, p0, Lqkj;->b:Ljava/util/concurrent/ExecutorService;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1b
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1c
    invoke-interface {p1}, Lqkh;->a()Landroid/media/AudioFormat;

    move-result-object p1

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

    :goto_1d
    iput-wide v0, p0, Lqkj;->e:J

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1e
    iput p2, p0, Lqkj;->c:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1f
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_20
    iput-object p1, p0, Lqkj;->a:Lqkh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {p2}, Lqkk;->a(Landroid/media/AudioFormat;)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/media/AudioFormat;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop
.end method

.method public final addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lqkj;->a:Lqkh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-interface {p0, p1, p2}, Lqkh;->addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b(Ljava/nio/ByteBuffer;I)Lqkg;
    .locals 8

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1
    if-gez v2, :cond_0

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

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_17

    nop

    nop

    :goto_3
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-gtz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    return-object v1

    nop

    nop

    nop

    nop

    :goto_7
    :try_start_0
    new-instance v0, Landroid/media/AudioTimestamp;

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Landroid/media/AudioTimestamp;-><init>()V

    iget v1, p0, Lqkj;->c:I

    nop

    nop

    nop

    div-int v1, p2, v1

    nop

    nop

    iget-wide v2, p0, Lqkj;->f:J

    nop

    nop

    nop

    iput-wide v2, v0, Landroid/media/AudioTimestamp;->framePosition:J

    nop

    nop

    nop

    iget-wide v2, p0, Lqkj;->e:J

    nop

    nop

    iput-wide v2, v0, Landroid/media/AudioTimestamp;->nanoTime:J

    nop

    iget-wide v2, p0, Lqkj;->e:J

    nop

    nop

    new-instance v0, Lqkg;

    nop

    nop

    invoke-direct {v0, p1, p2, v2, v3}, Lqkg;-><init>(Ljava/nio/ByteBuffer;IJ)V

    iget-wide v2, p0, Lqkj;->f:J

    nop

    int-to-long v4, v1

    nop

    nop

    nop

    nop

    add-long/2addr v2, v4

    nop

    nop

    nop

    iput-wide v2, p0, Lqkj;->f:J

    nop

    nop

    nop

    nop

    iget-wide v1, p0, Lqkj;->e:J

    nop

    iget-wide v6, p0, Lqkj;->d:J

    nop

    nop

    nop

    nop

    mul-long/2addr v4, v6

    nop

    nop

    nop

    nop

    add-long/2addr v1, v4

    nop

    nop

    nop

    iput-wide v1, p0, Lqkj;->e:J

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-array p2, p2, [B

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_8
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x0

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

    nop

    :goto_b
    return-object v1

    nop

    nop

    nop

    nop

    :goto_c
    :try_start_1
    iget-object v0, p0, Lqkj;->g:Ljava/util/concurrent/Future;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lqkj;->a:Lqkh;

    nop

    nop

    invoke-interface {v0, p1, p2}, Lqkh;->b(Ljava/nio/ByteBuffer;I)Lqkg;

    move-result-object v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    cmp-long v0, v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    return-object v0

    nop

    nop

    :catchall_0
    move-exception p1

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x8

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    iget-boolean v0, p0, Lqkj;->h:Z

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-object v0

    nop

    nop

    :cond_3
    :try_start_4
    iget-wide v2, p0, Lqkj;->e:J

    nop

    nop

    nop

    const-wide/16 v4, 0x0

    nop

    nop

    nop

    cmp-long v0, v2, v4

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_4

    nop

    nop

    invoke-direct {p0}, Lqkj;->23ce148e54b083367f51e25c7971761em()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    iput-wide v2, p0, Lqkj;->e:J

    nop

    nop

    nop

    nop

    :cond_4
    invoke-direct {p0}, Lqkj;->23ce148e54b083367f51e25c7971761em()J

    move-result-wide v4

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_15
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_9

    nop

    nop

    :goto_17
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_16

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1b
    const v0, 0xd

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz v0, :cond_6

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return-object v1

    nop

    :goto_1e
    :try_start_5
    iget-wide v2, p0, Lqkj;->e:J

    nop

    nop

    nop

    nop

    iget-wide v4, v0, Lqkg;->c:J

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    cmp-long v2, v4, v2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c()V
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    :goto_1
    throw v0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
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

    :goto_5
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lqkj;->h:Z

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    const-string v0, "SSAudioStream"

    nop

    const-string v1, "AudioStream already started."

    nop

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

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

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_9
    return-void

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x1

    nop

    nop

    :try_start_2
    iput-boolean v0, p0, Lqkj;->h:Z

    nop

    nop

    nop

    iget-object v1, p0, Lqkj;->b:Ljava/util/concurrent/ExecutorService;

    nop

    iget-object v2, p0, Lqkj;->a:Lqkh;

    nop

    nop

    nop

    new-instance v3, Lqlc;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v2, v0}, Lqlc;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    nop

    nop

    iput-object v0, p0, Lqkj;->g:Ljava/util/concurrent/Future;

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized close()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

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

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lqkj;->h:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    invoke-virtual {p0}, Lqkj;->d()V

    :cond_0
    iget-object v0, p0, Lqkj;->a:Lqkh;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lqkh;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized d()V
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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_4
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    throw v0

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lqkj;->7ecc92917e9c4556cc19f457ddc41af8m()V

    iget-object v0, p0, Lqkj;->a:Lqkh;

    nop

    nop

    nop

    invoke-interface {v0}, Lqkh;->d()V

    const/4 v0, 0x0

    nop

    nop

    iput-boolean v0, p0, Lqkj;->h:Z

    nop

    nop

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    iput-object v0, p0, Lqkj;->g:Ljava/util/concurrent/Future;

    nop

    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-wide v0, p0, Lqkj;->e:J

    nop

    nop

    nop

    nop

    nop

    iput-wide v0, p0, Lqkj;->f:J

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

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

    :try_start_2
    iget-boolean v0, p0, Lqkj;->h:Z

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    const-string v0, "SSAudioStream"

    nop

    nop

    nop

    const-string v1, "Trying to stop an un-started AudioStream."

    nop

    nop

    nop

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public final getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lqkh;->getPreferredDevice()Landroid/media/AudioDeviceInfo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lqkj;->a:Lqkh;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lqkh;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    move-result-object p0

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lqkj;->a:Lqkh;

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

    nop
.end method

.method public final removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Lqkh;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lqkj;->a:Lqkh;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public final setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lqkj;->a:Lqkh;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Lqkh;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result p0

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

    :goto_2
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final setPreferredMicrophoneDirection(I)Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Lqkh;->setPreferredMicrophoneDirection(I)Z

    move-result p0

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
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lqkj;->a:Lqkh;

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final setPreferredMicrophoneFieldDimension(F)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Lqkh;->setPreferredMicrophoneFieldDimension(F)Z

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lqkj;->a:Lqkh;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop
.end method
