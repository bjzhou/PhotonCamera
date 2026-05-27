.class public final Lcri;
.super Ljava/lang/Object;

# interfaces
.implements Lkmx;
.implements Lcrk;


# static fields
.field public static final a:Lnak;

.field private static final k:Lj$/time/Duration;

.field private static final l:Lj$/time/Duration;

.field private static final m:Lj$/time/Duration;


# instance fields
.field public final b:Lnow;

.field public final c:Lnow;

.field public final d:Ljava/lang/Object;

.field public final e:Lnph;

.field public f:Lkmw;

.field public g:I

.field public h:Lcrh;

.field public final i:Lcrb;

.field public j:Lcrd;

.field private final n:Ljava/nio/ByteBuffer;

.field private final o:I

.field private final p:Lhhk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com/google/android/apps/camera/camcorder/audio/processor/AudioProcessorImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcri;->a:Lnak;

    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

    sput-object v0, Lcri;->k:Lj$/time/Duration;

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

    sput-object v0, Lcri;->l:Lj$/time/Duration;

    const-wide/16 v0, 0x2bc

    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

    sput-object v0, Lcri;->m:Lj$/time/Duration;

    return-void
.end method

.method public constructor <init>(Lhhk;Lcrb;)V
    .locals 6

    const-string v0, "AProcInput"

    invoke-static {v0}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lnsy;->p(Ljava/util/concurrent/ExecutorService;)Lnow;

    move-result-object v0

    const-string v1, "AProcOutput"

    invoke-static {v1}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {v1}, Lnsy;->p(Ljava/util/concurrent/ExecutorService;)Lnow;

    move-result-object v1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcri;->d:Ljava/lang/Object;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v2

    iput-object v2, p0, Lcri;->e:Lnph;

    sget-object v2, Lcrh;->a:Lcrh;

    iput-object v2, p0, Lcri;->h:Lcrh;

    iput-object p1, p0, Lcri;->p:Lhhk;

    iput-object p2, p0, Lcri;->i:Lcrb;

    iput-object v0, p0, Lcri;->b:Lnow;

    iput-object v1, p0, Lcri;->c:Lnow;

    iget p2, p1, Lhhk;->e:I

    int-to-long v0, p2

    iget p2, p1, Lhhk;->d:I

    int-to-long v2, p2

    iget-object p2, p1, Lhhk;->c:Lhib;

    invoke-interface {p2}, Lhib;->b()Lj$/time/Duration;

    move-result-object p2

    invoke-virtual {p2}, Lj$/time/Duration;->toMillis()J

    move-result-wide v4

    mul-long v0, v0, v2

    mul-long v0, v0, v4

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lnsy;->N(J)I

    move-result p2

    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Insufficient sample number per buffer"

    invoke-static {v0, v1}, Lmoz;->q(ZLjava/lang/Object;)V

    sget-object v0, Ljwq;->b:Ljwq;

    iget v0, v0, Ljwq;->f:I

    mul-int p2, p2, v0

    iput p2, p0, Lcri;->o:I

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcri;->n:Ljava/nio/ByteBuffer;

    new-instance p2, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {p2, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Lcri;)V

    iput-object p2, p1, Lhhk;->f:Landroidx/wear/ambient/AmbientMode$AmbientController;

    return-void
.end method

.method public static final d(Ljava/lang/Runnable;Lnow;)V
    .locals 1

    invoke-interface {p1, p0}, Lnow;->a(Ljava/lang/Runnable;)Lnou;

    move-result-object p0

    new-instance p1, Lhhp;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lhhp;-><init>(I)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-static {p0, p1, v0}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private final e()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcri;->e:Lnph;

    sget-object v1, Lcri;->m:Lj$/time/Duration;

    invoke-virtual {v1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lnph;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    sget-object v1, Lcri;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v2, "Failed to get the process completed."

    const/16 v3, 0x230

    invoke-static {v1, v2, v3, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final a(Lkmw;)Lkmw;
    .locals 8

    iput-object p1, p0, Lcri;->f:Lkmw;

    invoke-interface {p1}, Lkmw;->b()Landroid/media/AudioFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v1

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v0

    mul-int v1, v1, v0

    sget-object v0, Ljwq;->b:Ljwq;

    iget v0, v0, Ljwq;->f:I

    mul-int v1, v1, v0

    sget-object v0, Lcri;->k:Lj$/time/Duration;

    invoke-virtual {v0}, Lj$/time/Duration;->toMillis()J

    move-result-wide v2

    mul-int/lit8 v1, v1, 0x8

    div-int/lit8 v0, v1, 0x8

    int-to-long v4, v0

    mul-long v4, v4, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v4, v2

    long-to-int v0, v4

    iput v0, p0, Lcri;->g:I

    :try_start_0
    new-instance v2, Lcrd;

    invoke-direct {v2, v1, v0}, Lcrd;-><init>(II)V

    iput-object v2, p0, Lcri;->j:Lcrd;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcri;->i:Lcrb;

    iget v2, p0, Lcri;->o:I

    int-to-long v2, v2

    int-to-long v4, v1

    const-wide v6, 0x1dcd65000L

    mul-long v2, v2, v6

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Lj$/time/Duration;->ofNanos(J)Lj$/time/Duration;

    move-result-object v1

    iput-object v1, v0, Lcrb;->g:Lj$/time/Duration;

    iget-object v0, p0, Lcri;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    sget-object v1, Lcrh;->b:Lcrh;

    iput-object v1, p0, Lcri;->h:Lcrh;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v0, Lcrg;

    iget-object v1, p0, Lcri;->j:Lcrd;

    invoke-direct {v0, p1, p0, v1}, Lcrg;-><init>(Lkmw;Lcrk;Lcrd;)V

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-direct {v0, p1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final b(I)V
    .locals 17

    move-object/from16 v1, p0

    iget v0, v1, Lcri;->o:I

    div-int v0, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    iget-object v4, v1, Lcri;->d:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, v1, Lcri;->h:Lcrh;

    sget-object v6, Lcrh;->c:Lcrh;

    if-eq v5, v6, :cond_0

    monitor-exit v4

    return-void

    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v4, v1, Lcri;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v4, v1, Lcri;->f:Lkmw;

    iget-object v5, v1, Lcri;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-interface {v4, v5, v6}, Lkmw;->e(Ljava/nio/ByteBuffer;I)Lkgd;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v4, v1, Lcri;->f:Lkmw;

    invoke-interface {v4}, Lkmw;->a()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    sget-object v4, Lcri;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->c()Lnaz;

    move-result-object v4

    const-string v5, "Read buffer from audio stream, but the audio packet is null."

    const/16 v6, 0x22b

    invoke-static {v4, v5, v6}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    goto/16 :goto_2

    :cond_1
    iget-object v5, v1, Lcri;->p:Lhhk;

    iget-object v6, v5, Lhhk;->c:Lhib;

    invoke-virtual {v4}, Lkgd;->c()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-interface {v6, v7}, Lhib;->j(Ljava/nio/ByteBuffer;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v5, v5, Lhhk;->b:Lcrl;

    invoke-virtual {v4}, Lkgd;->b()J

    move-result-wide v6

    invoke-virtual {v4}, Lkgd;->a()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcrl;->b(JI)V

    goto :goto_1

    :cond_2
    sget-object v5, Lhhk;->a:Lnak;

    invoke-virtual {v5}, Lnaf;->c()Lnaz;

    move-result-object v5

    check-cast v5, Lnah;

    const/16 v6, 0xe26

    invoke-interface {v5, v6}, Lnah;->G(I)Lnaz;

    move-result-object v5

    check-cast v5, Lnah;

    invoke-virtual {v4}, Lkgd;->b()J

    move-result-wide v6

    const-string v8, "Audio (%d) isn\'t provided due to invalid state."

    invoke-interface {v5, v8, v6, v7}, Lnah;->q(Ljava/lang/String;J)V

    :goto_1
    iget-object v5, v1, Lcri;->i:Lcrb;

    invoke-virtual {v4}, Lkgd;->b()J

    move-result-wide v6

    iget-object v8, v5, Lcrb;->c:Ljava/lang/Object;

    monitor-enter v8

    :try_start_1
    iget-wide v9, v5, Lcrb;->f:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v5, Lcrb;->f:J

    iget-object v4, v5, Lcrb;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x1

    invoke-virtual {v4, v9, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-nez v4, :cond_4

    iget-wide v9, v5, Lcrb;->h:J

    sub-long v9, v6, v9

    invoke-static {v9, v10}, Lj$/time/Duration;->ofNanos(J)Lj$/time/Duration;

    move-result-object v4

    iget-object v9, v5, Lcrb;->g:Lj$/time/Duration;

    invoke-virtual {v9}, Lj$/time/Duration;->toNanos()J

    move-result-wide v9

    long-to-float v9, v9

    const v10, 0x3e4ccccd    # 0.2f

    mul-float v9, v9, v10

    float-to-long v9, v9

    invoke-static {v9, v10}, Lj$/time/Duration;->ofNanos(J)Lj$/time/Duration;

    move-result-object v9

    iget-object v10, v5, Lcrb;->g:Lj$/time/Duration;

    invoke-virtual {v4, v9}, Lj$/time/Duration;->minus(Lj$/time/Duration;)Lj$/time/Duration;

    move-result-object v9

    invoke-virtual {v9}, Lj$/time/Duration;->toNanos()J

    move-result-wide v11

    invoke-virtual {v10}, Lj$/time/Duration;->toNanos()J

    move-result-wide v9

    div-long/2addr v11, v9

    long-to-int v9, v11

    if-lez v9, :cond_3

    iget v10, v5, Lcrb;->e:I

    add-int/2addr v10, v9

    iput v10, v5, Lcrb;->e:I

    sget-object v10, Lcrb;->a:Lnak;

    invoke-virtual {v10}, Lnaf;->c()Lnaz;

    move-result-object v10

    check-cast v10, Lnah;

    const/16 v11, 0x212

    invoke-interface {v10, v11}, Lnah;->G(I)Lnaz;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lnah;

    const-string v12, "Audio packet timestamp: %d. Expected frame duration: %d ns. Elapsed time: %d ns. Possible frame loss counts: %d"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iget-object v10, v5, Lcrb;->g:Lj$/time/Duration;

    invoke-virtual {v10}, Lj$/time/Duration;->toNanos()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v4}, Lj$/time/Duration;->toNanos()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v11 .. v16}, Lnah;->C(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    iget v4, v5, Lcrb;->d:I

    if-le v9, v4, :cond_4

    iput v9, v5, Lcrb;->d:I

    :cond_4
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-wide v6, v5, Lcrb;->h:J

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_5
    return-void
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lcri;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcri;->h:Lcrh;

    sget-object v2, Lcrh;->c:Lcrh;

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    sget-object v1, Lcrh;->d:Lcrh;

    iput-object v1, p0, Lcri;->h:Lcrh;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcri;->f:Lkmw;

    invoke-interface {v0}, Lkmw;->d()V

    iget-object v0, p0, Lcri;->p:Lhhk;

    iget-object v0, v0, Lhhk;->c:Lhib;

    invoke-interface {v0}, Lhib;->d()V

    invoke-direct {p0}, Lcri;->e()V

    iget-object v0, p0, Lcri;->c:Lnow;

    invoke-interface {v0}, Lnow;->shutdown()V

    iget-object v0, p0, Lcri;->b:Lnow;

    invoke-interface {v0}, Lnow;->shutdown()V

    :try_start_1
    iget-object v0, p0, Lcri;->c:Lnow;

    sget-object v1, Lcri;->l:Lj$/time/Duration;

    invoke-virtual {v1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Lnow;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    iget-object v0, p0, Lcri;->b:Lnow;

    invoke-virtual {v1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Lnow;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcri;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    const-string v2, "Failed to await termination for input and output executors."

    const/16 v3, 0x22c

    invoke-static {v1, v2, v3, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :goto_0
    iget-object v1, p0, Lcri;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    sget-object v0, Lcrh;->e:Lcrh;

    iput-object v0, p0, Lcri;->h:Lcrh;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lcri;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcri;->h:Lcrh;

    sget-object v2, Lcrh;->f:Lcrh;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcri;->c()V

    iget-object v1, p0, Lcri;->f:Lkmw;

    invoke-interface {v1}, Lkmw;->close()V

    iget-object v1, p0, Lcri;->p:Lhhk;

    invoke-virtual {v1}, Lhhk;->close()V

    sget-object v1, Lcrh;->f:Lcrh;

    iput-object v1, p0, Lcri;->h:Lcrh;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
