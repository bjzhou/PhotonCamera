.class final Lmnw;
.super Landroid/media/MediaCodec$Callback;
.source "PG"


# instance fields
.field final synthetic a:Lmqd;

.field final synthetic b:Lmnx;

.field final synthetic c:Lhoh;


# direct methods
.method public constructor <init>(Lmnx;Lhoh;Lmqd;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iput-object p1, p0, Lmnw;->b:Lmnx;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput-object p3, p0, Lmnw;->a:Lmqd;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lmnw;->c:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 7

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->getErrorCode()I

    move-result p0

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

    :goto_1
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    invoke-interface/range {v0 .. v6}, Lscz;->I(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/16 p1, 0x11b5

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p0, Lmnx;->a:Lsdb;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface/range {v0 .. v6}, Lscz;->I(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_9
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_15

    nop

    :goto_b
    check-cast v0, Lscz;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_c
    const v1, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_d
    const v0, 0xd

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    const/16 p1, 0x11b6

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_11
    invoke-interface {p0, p2}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

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

    :goto_12
    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isTransient()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_13
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_14
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->getMessage()Ljava/lang/String;

    move-result-object v5

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

    :goto_17
    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isTransient()Z

    move-result p0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_18
    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result p0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v1, Lcom/google/android/apps/camera/imax/cyclops/capture/xzG/uebAI;->OcVqplTWBnwjGJm:Ljava/lang/String;

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

    :goto_1a
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v0, Lscz;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object p0, Lmnx;->a:Lsdb;

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

    nop

    :goto_20
    if-lez v0, :cond_1

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    :goto_21
    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->getErrorCode()I

    move-result p0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_24
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isTransient()Z

    move-result p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_29
    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->getMessage()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

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

    :goto_2e
    move-object v0, p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2f
    const-string v1, "Stopping recording due to error (%d), transient: %s, recoverable: %s, message: %s, info: %s)"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop
.end method

.method public final onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Lmnw;->b:Lmnx;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p1, p1, Lmnx;->g:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p1

    nop

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lmnw;->b:Lmnx;

    nop

    nop

    iget-object p0, p0, Lmnx;->n:Loza;

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Loza;->a:Lpak;

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p2}, Lpak;->k(I)V

    monitor-exit p1

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit p1

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

    nop

    nop
.end method

.method public final onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    const v1, 0x1e

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Lmnw;->b:Lmnx;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xb

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

    :goto_6
    monitor-enter p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lmnw;->b:Lmnx;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lmnx;->n:Loza;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Loza;->a:Lpak;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lhnu;->a:Lhmo;

    nop

    nop

    nop

    nop

    iget-wide v1, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    invoke-interface {v0, v1, v2}, Lpak;->j(J)V

    invoke-interface {v0, p2, p3}, Lpak;->n(ILandroid/media/MediaCodec$BufferInfo;)V

    iget p2, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    and-int/lit8 p2, p2, 0x2

    nop

    nop

    nop

    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget p2, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    nop

    nop

    nop

    if-lez p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p0, Lmnw;->b:Lmnx;

    nop

    iget-object p3, p2, Lmnx;->l:Lmqa;

    nop

    nop

    nop

    nop

    if-eqz p3, :cond_0

    nop

    iget-object p2, p2, Lmnx;->d:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    nop

    iget-object p2, p0, Lmnw;->a:Lmqd;

    nop

    nop

    nop

    nop

    iget p2, p2, Lmqd;->e:I

    nop

    int-to-long v2, p2

    nop

    invoke-interface {p3, v0, v1, v2, v3}, Lmqa;->a(JJ)V

    :cond_0
    iget-object p2, p0, Lmnw;->b:Lmnx;

    nop

    nop

    nop

    nop

    nop

    iget-object p3, p2, Lmnx;->k:Lsuu;

    nop

    nop

    nop

    nop

    nop

    if-eqz p3, :cond_1

    nop

    iget-object p2, p2, Lmnx;->d:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p2

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v0, 0x2

    nop

    nop

    nop

    nop

    cmp-long p2, p2, v0

    nop

    nop

    nop

    if-ltz p2, :cond_1

    nop

    nop

    nop

    sget-object p2, Lmnx;->a:Lsdb;

    nop

    nop

    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    const/16 p3, 0x11b7

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2, p3}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    nop

    nop

    check-cast p2, Lscz;

    nop

    nop

    const-string p3, "At least %d frames are encoded. "

    nop

    iget-object v0, p0, Lmnw;->b:Lmnx;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lmnx;->d:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    nop

    nop

    invoke-interface {p2, p3, v0, v1}, Lscz;->u(Ljava/lang/String;J)V

    iget-object p2, p0, Lmnw;->b:Lmnx;

    nop

    nop

    iget-object p2, p2, Lmnx;->k:Lsuu;

    nop

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p3, 0x0

    nop

    nop

    invoke-virtual {p2, p3}, Lsuu;->e(Ljava/lang/Object;)Z

    iget-object p0, p0, Lmnw;->b:Lmnx;

    nop

    iput-object p3, p0, Lmnx;->k:Lsuu;

    nop

    nop

    :cond_1
    monitor-exit p1

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

    monitor-exit p1

    nop

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

    :goto_7
    goto/32 :goto_c

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    iget-object p1, p1, Lmnx;->g:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    :goto_b
    goto/32 :goto_4

    nop

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

    nop
.end method

.method public final onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    monitor-enter p2

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lmnw;->b:Lmnx;

    nop

    nop

    iget-object p0, p0, Lmnx;->n:Loza;

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Loza;->a:Lpak;

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p1

    nop

    invoke-interface {p0, p1}, Lpak;->l(Landroid/media/MediaFormat;)V

    monitor-exit p2

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit p2

    nop

    nop

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

    :goto_1
    iget-object p2, p0, Lmnw;->b:Lmnx;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p2, p2, Lmnx;->g:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    throw p0

    nop

    nop
.end method
