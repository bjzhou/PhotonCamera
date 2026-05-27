.class final Lhod;
.super Landroid/media/MediaCodec$Callback;


# instance fields
.field final synthetic a:Ldhi;

.field final synthetic b:Lhpu;

.field final synthetic c:Lhof;


# direct methods
.method public constructor <init>(Lhof;Ldhi;Lhpu;)V
    .locals 0

    iput-object p1, p0, Lhod;->c:Lhof;

    iput-object p2, p0, Lhod;->a:Ldhi;

    iput-object p3, p0, Lhod;->b:Lhpu;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 7

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isTransient()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lhof;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    invoke-interface {p1, p2}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v0, 0xed4

    invoke-interface {p1, v0}, Lnah;->G(I)Lnaz;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lnah;

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isTransient()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v6

    const-string v1, "Stopping recording due to: CheetahFrSelector failed due to error (%d), transient: %s, recoverable: %s, message: %s, info: %s)"

    invoke-interface/range {v0 .. v6}, Lnah;->D(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object p1, Lhof;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v0, 0xed3

    invoke-interface {p1, v0}, Lnah;->G(I)Lnaz;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lnah;

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isTransient()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v6

    const-string v1, "CheetahFrSelector failed due to error (%d), transient: %s, recoverable: %s, message: %s, info: %s)"

    invoke-interface/range {v0 .. v6}, Lnah;->D(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 0

    return-void
.end method

.method public final onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 5

    iget-object p1, p0, Lhod;->c:Lhof;

    iget-object p1, p1, Lhof;->t:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lhod;->c:Lhof;

    iget-object v1, v0, Lhof;->C:Ljwo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lhof;->x:Lhpw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Ljwo;->a:Ljyc;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lhod;->a:Ldhi;

    sget-object v3, Ldil;->a:Ldhj;

    invoke-interface {v2}, Ldhi;->c()V

    invoke-interface {v1, p2, p3}, Ljyc;->n(ILandroid/media/MediaCodec$BufferInfo;)V

    iget p2, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_0

    iget p2, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez p2, :cond_0

    iget-object p2, p0, Lhod;->c:Lhof;

    iget-object p2, p2, Lhof;->f:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lhod;->c:Lhof;

    iget-object v1, v1, Lhof;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    iget-object p3, p0, Lhod;->b:Lhpu;

    iget p3, p3, Lhpu;->h:I

    int-to-long v3, p3

    div-long/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object p2, p0, Lhod;->c:Lhof;

    iget-object p2, p2, Lhof;->q:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lhod;->c:Lhof;

    iget-object v1, v1, Lhof;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    iget-object p3, p0, Lhod;->b:Lhpu;

    iget p3, p3, Lhpu;->h:I

    int-to-long v3, p3

    div-long/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_0
    iget-object p2, p0, Lhod;->c:Lhof;

    invoke-virtual {p2}, Lhof;->d()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Lhpw;->h(J)V

    iget-object p2, p0, Lhod;->c:Lhof;

    invoke-virtual {p2}, Lhof;->c()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Lhpw;->j(J)V

    iget-object p2, p0, Lhod;->c:Lhof;

    invoke-virtual {p2}, Lhof;->a()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Lhpw;->c(J)V

    iget-object p2, p0, Lhod;->c:Lhof;

    invoke-virtual {p2}, Lhof;->b()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Lhpw;->d(J)V

    iget-object p2, p0, Lhod;->c:Lhof;

    invoke-virtual {p2}, Lhof;->l()V

    iget-object p2, p0, Lhod;->c:Lhof;

    iget-object p2, p2, Lhof;->y:Lnph;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lnph;->isDone()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lhod;->c:Lhof;

    iget-object p2, p2, Lhof;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p2

    const-wide/16 v0, 0x1

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    sget-object p2, Lhof;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const/16 p3, 0xed5

    invoke-interface {p2, p3}, Lnah;->G(I)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const-string p3, "At least %d frames are encoded. "

    iget-object v0, p0, Lhod;->c:Lhof;

    iget-object v0, v0, Lhof;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-interface {p2, p3, v0, v1}, Lnah;->q(Ljava/lang/String;J)V

    iget-object p2, p0, Lhod;->c:Lhof;

    iget-object p3, p2, Lhof;->y:Lnph;

    iget-object p2, p2, Lhof;->B:Lklb;

    invoke-virtual {p3, p2}, Lnph;->e(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 1

    iget-object p2, p0, Lhod;->c:Lhof;

    iget-object p2, p2, Lhof;->t:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lhod;->c:Lhof;

    iget-object v0, v0, Lhof;->C:Ljwo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Ljwo;->a:Ljyc;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p1

    invoke-interface {v0, p1}, Ljyc;->l(Landroid/media/MediaFormat;)V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
