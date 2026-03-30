.class public final Lpan;
.super Landroid/media/MediaCodec$Callback;
.source "PG"


# instance fields
.field public final synthetic a:Lpap;


# direct methods
.method public constructor <init>(Lpap;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lpan;->a:Lpap;

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
.end method


# virtual methods
.method public final onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 6

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "AudioEncoder"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lpan;->a:Lpap;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_28

    nop

    nop

    :goto_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_a
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x3

    nop

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

    :goto_c
    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isTransient()Z

    move-result p1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    new-instance p2, Lpam;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lpap;->k:Lryb;

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

    nop

    :goto_12
    const-string v0, "Stopping recording due to: "

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v1, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_15
    iget-object v0, p1, Lpap;->c:Lsuk;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lt p2, p1, :cond_1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v0, "%s failed due to error (%d), transient: %s, recoverable: %s, message: %s, info: %s)"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_19
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1a
    add-int/lit8 p2, p2, 0x1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p2, p0, v0}, Lpam;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1}, Lpau;->a(Lpar;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1e
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1f
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_20
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

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

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_24
    iput-boolean v2, v0, Lpap;->x:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_2

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    :goto_26
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_27

    nop

    :goto_29
    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v5

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1, p2, v0}, Lpap;->e(Ljava/lang/Runnable;Lsuk;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isTransient()Z

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto :goto_21

    nop

    :goto_2d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object p1, p0, Lpan;->a:Lpap;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2f
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_30
    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->getErrorCode()I

    move-result p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_31
    sget-object v1, Lpar;->i:Lpar;

    nop

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

    :goto_32
    iget-object p0, p0, Lpan;->a:Lpap;

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

    :goto_33
    check-cast v0, Lpau;

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_34
    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->getMessage()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_35
    const-string v0, "AudioEncoder"

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 9

    goto/32 :goto_2b

    nop

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

    :goto_1
    goto/32 :goto_17

    nop

    nop

    :goto_2
    if-ltz p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    iget-object v0, v0, Lpap;->E:Lsuu;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1, p0}, Lpap;->e(Ljava/lang/Runnable;Lsuk;)V

    :goto_5
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter v1

    nop

    nop

    :try_start_0
    iget-object p0, v0, Lpap;->z:Ljava/util/concurrent/Future;

    nop

    if-eqz p0, :cond_6

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p0

    nop

    nop

    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    iget p0, v0, Lpap;->B:I

    nop

    nop

    nop

    nop

    nop

    const/4 v2, -0x1

    nop

    nop

    nop

    nop

    nop

    if-ne p0, v2, :cond_2

    nop

    nop

    nop

    iput p2, v0, Lpap;->B:I

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_2
    iget-wide v2, v0, Lpap;->A:J

    nop

    nop

    const-wide/16 v4, -0x1

    nop

    cmp-long p0, v2, v4

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    if-eqz p0, :cond_5

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    iget-wide v5, v0, Lpap;->A:J

    nop

    sub-long/2addr v3, v5

    nop

    nop

    const-wide/16 v5, 0x32

    nop

    cmp-long p0, v3, v5

    nop

    nop

    nop

    nop

    if-lez p0, :cond_5

    nop

    nop

    nop

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    nop

    nop

    nop

    if-eqz p0, :cond_5

    nop

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    nop

    nop

    nop

    nop

    if-lez v3, :cond_5

    nop

    iget-object v3, v0, Lpap;->C:[B

    nop

    nop

    if-eqz v3, :cond_3

    nop

    nop

    nop

    nop

    array-length v3, v3

    nop

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    nop

    nop

    if-eq v3, v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    nop

    new-array v3, v3, [B

    nop

    nop

    iput-object v3, v0, Lpap;->C:[B

    nop

    nop

    nop

    nop

    :cond_4
    iget-object v3, v0, Lpap;->C:[B

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    nop

    nop

    nop

    iget-wide v3, v0, Lpap;->o:J

    nop

    nop

    nop

    const-wide/16 v5, 0x61a8

    nop

    nop

    nop

    nop

    nop

    add-long/2addr v3, v5

    nop

    nop

    nop

    nop

    nop

    iput-wide v3, v0, Lpap;->o:J

    nop

    iget-wide v3, v0, Lpap;->A:J

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v5, 0x19

    nop

    nop

    add-long/2addr v3, v5

    nop

    nop

    nop

    nop

    iput-wide v3, v0, Lpap;->A:J

    nop

    nop

    :cond_5
    move p0, v2

    nop

    nop

    nop

    nop

    nop

    iget-wide v6, v0, Lpap;->o:J

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    move-object v2, p1

    nop

    nop

    move v3, p2

    nop

    nop

    nop

    nop

    move v5, p0

    nop

    nop

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean v1, v0, Lpap;->m:Z

    nop

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

    nop

    :goto_a
    const-wide/16 p0, 0xa

    nop

    :try_start_1
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :goto_b
    :try_start_2
    monitor-exit v1

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    :cond_6
    :goto_c
    iget-object p0, v0, Lpap;->d:Lsuk;

    nop

    nop

    new-instance v2, Lmw;

    nop

    nop

    const/16 v3, 0x11

    nop

    nop

    nop

    invoke-direct {v2, v0, p1, p2, v3}, Lmw;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-interface {p0, v2}, Lsuk;->a(Ljava/lang/Runnable;)Lsui;

    move-result-object p0

    nop

    nop

    iput-object p0, v0, Lpap;->z:Ljava/util/concurrent/Future;

    nop

    monitor-exit v1

    nop

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

    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_11

    nop

    :goto_e
    if-nez v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_9
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2a

    nop

    nop

    :goto_13
    if-ne p0, v1, :cond_a

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_a
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_14
    const/16 v2, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_15
    const-string p0, "Index"

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

    :goto_16
    const-string p1, "AudioEncoder"

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

    :goto_17
    iget-object v1, v0, Lpap;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

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

    :goto_19
    iget-object v0, p0, Lpan;->a:Lpap;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1a
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1b
    iget-object p0, v0, Lpap;->b:Lsuk;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1c
    throw p0

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Lsuu;->isDone()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_20
    invoke-interface {p0}, Lppp;->c()I

    move-result p0

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

    :goto_21
    const-string p1, " is invalid"

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz p0, :cond_b

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {v1, p0, p1, p2, v2}, Lmw;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {p2, p0, p1}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    nop

    :goto_25
    iget-object p0, v0, Lpap;->g:Lppp;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_5

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2a
    iget-object v0, p0, Lpan;->a:Lpap;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2b
    const v0, 0x10

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

    :goto_2c
    new-instance v1, Lmw;

    nop

    goto/32 :goto_14

    nop

    nop

    nop
.end method

.method public final onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Lsuu;->isDone()Z

    move-result p1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x10

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

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_8

    nop

    :goto_6
    new-instance v0, Lmw;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    iget-object p1, p0, Lpan;->a:Lpap;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    const/16 v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    iget-object p1, p0, Lpan;->a:Lpap;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p1, p1, Lpap;->E:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, v0, p0}, Lpap;->e(Ljava/lang/Runnable;Lsuk;)V

    :goto_e
    goto/32 :goto_0

    nop

    nop

    :goto_f
    iget-object p0, p1, Lpap;->c:Lsuk;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    if-eqz p1, :cond_1

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

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, p0, p2, p3, v1}, Lmw;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public final onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    :goto_0
    const v1, 0x12

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
    if-eqz p1, :cond_0

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
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

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

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Lsuu;->isDone()Z

    move-result p1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    const/4 v0, 0x1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_9
    iget-object p1, p0, Lpap;->E:Lsuu;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    new-instance p1, Loxl;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v0, 0x9

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

    :goto_c
    iget-object p2, p0, Lpap;->a:Lsuk;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    if-eqz p1, :cond_2

    nop

    goto/32 :goto_16

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p1, p0, p2, v0, v1}, Loxl;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, p1, p2}, Lpap;->e(Ljava/lang/Runnable;Lsuk;)V

    :goto_14
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_f

    nop

    nop

    :goto_17
    iget-object p0, p0, Lpan;->a:Lpap;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_18
    iget-object p1, p0, Lpap;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_7

    nop

    nop

    :goto_1b
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string p1, "format changed twice"

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop
.end method
