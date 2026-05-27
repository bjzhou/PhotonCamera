.class public final Ljyi;
.super Ljava/lang/Object;

# interfaces
.implements Ljyf;


# instance fields
.field public volatile A:Z

.field public volatile B:Z

.field public volatile C:Z

.field public D:Lkad;

.field public E:Lkad;

.field public F:Z

.field public G:Landroid/media/MediaFormat;

.field public final H:Ljava/util/List;

.field public final I:Ljava/util/List;

.field public J:Ljava/util/concurrent/Future;

.field public K:J

.field public L:I

.field public M:[B

.field public final N:Landroid/os/HandlerThread;

.field public final O:Lnph;

.field public P:I

.field private final Q:Lkbc;

.field private final R:Ljyj;

.field private S:J

.field private final T:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final U:Landroid/os/Handler;

.field private final V:Landroid/media/MediaCodec$Callback;

.field public final a:Lnow;

.field public final b:Lnow;

.field public final c:Lnow;

.field public final d:Lnow;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;

.field public final i:Lkmw;

.field public final j:Landroid/media/MediaCodec;

.field public final k:Ljxx;

.field public final l:Ljwb;

.field public final m:D

.field public final n:Ljym;

.field public final o:Z

.field public final p:Ljava/util/Queue;

.field public final q:Z

.field public final r:Ljava/util/Deque;

.field public s:J

.field public volatile t:J

.field public u:J

.field public final v:Ljwb;

.field public final w:Ljava/util/concurrent/atomic/AtomicLong;

.field public final x:Ljava/util/concurrent/atomic/AtomicLong;

.field public volatile y:Z

.field public volatile z:Z


# direct methods
.method public constructor <init>(Ljwx;Lkmw;Ljxx;Ljym;Lkbc;Ljwb;Ljwb;ZLjyj;Z)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Ljyi;->e:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Ljyi;->f:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Ljyi;->g:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Ljyi;->h:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayDeque;

    const/16 v4, 0x3e8

    invoke-direct {v3, v4}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v3, v0, Ljyi;->p:Ljava/util/Queue;

    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v3, v0, Ljyi;->r:Ljava/util/Deque;

    const-wide/16 v3, -0x1

    iput-wide v3, v0, Ljyi;->s:J

    const-wide v5, 0x7fffffffffffffffL

    iput-wide v5, v0, Ljyi;->t:J

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Ljyi;->S:J

    new-instance v7, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v7, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v7, v0, Ljyi;->w:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v7, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v7, v0, Ljyi;->x:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v5, 0x0

    iput-boolean v5, v0, Ljyi;->y:Z

    iput-boolean v5, v0, Ljyi;->z:Z

    iput-boolean v5, v0, Ljyi;->A:Z

    iput-boolean v5, v0, Ljyi;->B:Z

    iput-boolean v5, v0, Ljyi;->C:Z

    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v6, v0, Ljyi;->T:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v5, v0, Ljyi;->F:Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Ljyi;->H:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Ljyi;->I:Ljava/util/List;

    const/4 v6, 0x0

    iput-object v6, v0, Ljyi;->J:Ljava/util/concurrent/Future;

    iput-wide v3, v0, Ljyi;->K:J

    const/4 v3, -0x1

    iput v3, v0, Ljyi;->L:I

    iput-object v6, v0, Ljyi;->M:[B

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v3

    iput-object v3, v0, Ljyi;->O:Lnph;

    new-instance v3, Ljyg;

    invoke-direct {v3, p0}, Ljyg;-><init>(Ljyi;)V

    iput-object v3, v0, Ljyi;->V:Landroid/media/MediaCodec$Callback;

    move-object v4, p2

    iput-object v4, v0, Ljyi;->i:Lkmw;

    move-object v4, p4

    iput-object v4, v0, Ljyi;->n:Ljym;

    move-object/from16 v4, p6

    iput-object v4, v0, Ljyi;->l:Ljwb;

    move-object/from16 v4, p7

    iput-object v4, v0, Ljyi;->v:Ljwb;

    iput-boolean v2, v0, Ljyi;->o:Z

    move-object/from16 v4, p9

    iput-object v4, v0, Ljyi;->R:Ljyj;

    iget v4, v1, Ljwx;->d:I

    int-to-double v7, v4

    iget v9, v1, Ljwx;->c:I

    int-to-double v9, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v9

    iput-wide v7, v0, Ljyi;->m:D

    const/4 v7, 0x1

    if-eqz p10, :cond_1

    const v8, 0xbb80

    if-ne v4, v8, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    goto :goto_0

    :cond_1
    :goto_0
    iput-boolean v5, v0, Ljyi;->q:Z

    iget-object v4, v1, Ljwx;->a:Ljwp;

    iget v4, v4, Ljwp;->g:I

    packed-switch v4, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported audio codec type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    sget-object v4, Ljxb;->e:Ljxb;

    goto :goto_1

    :pswitch_1
    sget-object v4, Ljxb;->d:Ljxb;

    goto :goto_1

    :pswitch_2
    sget-object v4, Ljxb;->c:Ljxb;

    goto :goto_1

    :pswitch_3
    sget-object v4, Ljxb;->b:Ljxb;

    goto :goto_1

    :pswitch_4
    sget-object v4, Ljxb;->a:Ljxb;

    :goto_1
    iget-object v5, v4, Ljxb;->f:Ljava/lang/String;

    new-instance v8, Landroid/media/MediaFormat;

    invoke-direct {v8}, Landroid/media/MediaFormat;-><init>()V

    const-string v9, "mime"

    invoke-virtual {v8, v9, v5}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v4, Ljxb;->f:Ljava/lang/String;

    const-string v9, "audio/mp4a-latm"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "aac-profile"

    const/4 v9, 0x2

    invoke-virtual {v8, v5, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_2
    iget v5, v1, Ljwx;->c:I

    const-string v9, "sample-rate"

    invoke-virtual {v8, v9, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v5, v1, Ljwx;->e:I

    const-string v9, "channel-count"

    invoke-virtual {v8, v9, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v1, v1, Ljwx;->b:I

    const-string v5, "bitrate"

    invoke-virtual {v8, v5, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-static {v4}, Ljyx;->i(Ljxd;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, v0, Ljyi;->j:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "AEncFormat"

    invoke-static {v4}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-static {v4}, Lnsy;->p(Ljava/util/concurrent/ExecutorService;)Lnow;

    move-result-object v4

    iput-object v4, v0, Ljyi;->a:Lnow;

    const-string v4, "AEncInput"

    invoke-static {v4}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-static {v4}, Lnsy;->p(Ljava/util/concurrent/ExecutorService;)Lnow;

    move-result-object v4

    iput-object v4, v0, Ljyi;->b:Lnow;

    const-string v4, "AEncOutput"

    invoke-static {v4}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-static {v4}, Lnsy;->p(Ljava/util/concurrent/ExecutorService;)Lnow;

    move-result-object v4

    iput-object v4, v0, Ljyi;->c:Lnow;

    const-string v4, "AEncReadAudio"

    invoke-static {v4}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-static {v4}, Lnsy;->p(Ljava/util/concurrent/ExecutorService;)Lnow;

    move-result-object v4

    iput-object v4, v0, Ljyi;->d:Lnow;

    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "AudioEncoder"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, v0, Ljyi;->N:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {v4}, Ljvd;->o(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v4

    iput-object v4, v0, Ljyi;->U:Landroid/os/Handler;

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    invoke-virtual {v1, v8, v6, v6, v7}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    move-object v3, p3

    iput-object v3, v0, Ljyi;->k:Ljxx;

    move-object/from16 v3, p5

    iput-object v3, v0, Ljyi;->Q:Lkbc;

    iput v7, v0, Ljyi;->P:I

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c()J
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method private final j()V
    .locals 3

    iget-object v0, p0, Ljyi;->U:Landroid/os/Handler;

    new-instance v1, Ljum;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Ljum;-><init>(Ljyi;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    iget-object v0, p0, Ljyi;->N:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Ljyi;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Ljyi;->P:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Ljyi;->N:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Ljyi;->j()V

    :cond_0
    iget-object v1, p0, Ljyi;->a:Lnow;

    invoke-interface {v1}, Lnow;->shutdown()V

    iget-object v1, p0, Ljyi;->c:Lnow;

    invoke-interface {v1}, Lnow;->shutdown()V

    iget-object v1, p0, Ljyi;->b:Lnow;

    invoke-interface {v1}, Lnow;->shutdown()V

    iget-object v1, p0, Ljyi;->d:Lnow;

    invoke-interface {v1}, Lnow;->shutdown()V

    iget-object v1, p0, Ljyi;->j:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iget-object v1, p0, Ljyi;->i:Lkmw;

    invoke-interface {v1}, Lkmw;->close()V

    iget-object v1, p0, Ljyi;->D:Lkad;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lkad;->close()V

    :cond_1
    iget-object v1, p0, Ljyi;->E:Lkad;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lkad;->close()V

    :cond_2
    iput v2, p0, Ljyi;->P:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(J)V
    .locals 7

    iget-object v0, p0, Ljyi;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Ljyi;->P:I

    const/4 v2, 0x2

    const/4 v3, 0x5

    if-eq v1, v2, :cond_0

    if-ne v1, v3, :cond_2

    const/4 v1, 0x5

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljyi;->d(J)J

    move-result-wide p1

    if-ne v1, v3, :cond_1

    invoke-virtual {p0, p1, p2}, Ljyi;->i(J)V

    :cond_1
    iget-wide v1, p0, Ljyi;->u:J

    sub-long/2addr p1, v1

    iput-wide p1, p0, Ljyi;->t:J

    iget-object p1, p0, Ljyi;->Q:Lkbc;

    const-string p2, "AudioEncoder#stop"

    invoke-interface {p1, p2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v1, p0, Ljyi;->R:Ljyj;

    const/4 v2, 0x1

    iget-wide v3, p0, Ljyi;->t:J

    iget-object v5, p0, Ljyi;->w:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v6, p0, Ljyi;->O:Lnph;

    invoke-virtual/range {v1 .. v6}, Ljyj;->a(IJLjava/util/concurrent/atomic/AtomicLong;Lnou;)V

    iget-object p1, p0, Ljyi;->i:Lkmw;

    invoke-interface {p1}, Lkmw;->d()V

    iget-object p1, p0, Ljyi;->U:Landroid/os/Handler;

    new-instance p2, Ljum;

    const/16 v1, 0xa

    invoke-direct {p2, p0, v1}, Ljum;-><init>(Ljyi;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Ljyi;->j()V

    iget-object p1, p0, Ljyi;->Q:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    const/4 p1, 0x3

    iput p1, p0, Ljyi;->P:I

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Ljyi;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljyi;->c()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljyi;->b(J)V

    invoke-virtual {p0}, Ljyi;->a()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d(J)J
    .locals 2

    long-to-double p1, p1

    iget-wide v0, p0, Ljyi;->m:D

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    double-to-long p1, p1

    return-wide p1
.end method

.method public final e(Landroid/media/MediaCodec;I)V
    .locals 10

    iget-object v0, p0, Ljyi;->i:Lkmw;

    invoke-interface {v0}, Lkmw;->a()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    if-ltz p2, :cond_3

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    iget-object v3, p0, Ljyi;->i:Lkmw;

    invoke-interface {v3, v0, v2}, Lkmw;->e(Ljava/nio/ByteBuffer;I)Lkgd;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ljyi;->i:Lkmw;

    invoke-interface {v0}, Lkmw;->a()I

    move-result v0

    if-ne v0, v1, :cond_1

    const-string v0, "AudioEncoder"

    const-string v1, "Read buffer from AudioRecord, but buffer size is 0."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    const/4 v7, 0x4

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-wide v5, p0, Ljyi;->s:J

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void

    :cond_2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lkgd;->b()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljyi;->d(J)J

    move-result-wide v1

    const/4 v5, 0x0

    invoke-virtual {v0}, Lkgd;->a()I

    move-result v6

    const/4 v9, 0x0

    move-object v3, p1

    move v4, p2

    move-wide v7, v1

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iput-wide v1, p0, Ljyi;->s:J

    :cond_3
    return-void
.end method

.method public final f(Landroid/media/MediaFormat;)V
    .locals 2

    iget-object v0, p0, Ljyi;->T:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljyi;->O:Lnph;

    invoke-virtual {v0}, Lnph;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljoq;

    const/16 v1, 0xe

    invoke-direct {v0, p0, p1, v1}, Ljoq;-><init>(Ljyi;Landroid/media/MediaFormat;I)V

    iget-object p1, p0, Ljyi;->a:Lnow;

    invoke-virtual {p0, v0, p1}, Ljyi;->g(Ljava/lang/Runnable;Lnow;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "format changed twice"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Ljava/lang/Runnable;Lnow;)V
    .locals 1

    invoke-interface {p2, p1}, Lnow;->a(Ljava/lang/Runnable;)Lnou;

    move-result-object p1

    new-instance p2, Ljua;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Ljua;-><init>(Ljyi;I)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-static {p1, p2, v0}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final h()V
    .locals 8

    :cond_0
    :goto_0
    iget-object v0, p0, Ljyi;->p:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ljyi;->p:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljyh;

    iget-object v0, v0, Ljyh;->a:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v2, p0, Ljyi;->v:Ljwb;

    check-cast v2, Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3

    iget-object v0, p0, Ljyi;->p:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljyh;

    iget-object v1, v0, Ljyh;->a:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v3, p0, Ljyi;->l:Ljwb;

    check-cast v3, Ljvk;

    iget-object v3, v3, Ljvk;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    iget-object v1, v0, Ljyh;->a:Landroid/media/MediaCodec$BufferInfo;

    iget-object v0, v0, Ljyh;->b:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Ljyi;->k:Ljxx;

    invoke-interface {v2}, Ljxx;->o()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    :try_start_0
    iget-object v2, p0, Ljyi;->k:Ljxx;

    const-wide/16 v4, 0x7d0

    invoke-interface {v2, v4, v5}, Ljxx;->j(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "AudioEncoder"

    const-string v2, "Could not start all required tracks."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v3, p0, Ljyi;->B:Z

    iget-object v0, p0, Ljyi;->n:Ljym;

    sget-object v1, Ljyk;->c:Ljyk;

    invoke-virtual {v0, v1}, Ljym;->a(Ljyk;)V

    goto :goto_2

    :cond_1
    :goto_1
    iget-wide v4, p0, Ljyi;->S:J

    iget-wide v6, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v2, v4, v6

    if-gez v2, :cond_2

    iget-wide v4, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v4, p0, Ljyi;->S:J

    iget-object v2, p0, Ljyi;->k:Ljxx;

    invoke-interface {v2, v0, v1}, Ljxx;->l(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iput-boolean v3, p0, Ljyi;->A:Z

    :cond_2
    :goto_2
    iput-boolean v3, p0, Ljyi;->z:Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final i(J)V
    .locals 6

    iget-object v0, p0, Ljyi;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ljyi;->r:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmym;

    iget-object v2, p0, Ljyi;->r:Ljava/util/Deque;

    invoke-virtual {v1}, Lmym;->i()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lmym;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lmym;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Ljyi;->u:J

    invoke-virtual {v1}, Lmym;->i()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr p1, v4

    add-long/2addr v2, p1

    iput-wide v2, p0, Ljyi;->u:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
