.class public final Ljyv;
.super Ljava/lang/Object;

# interfaces
.implements Ljyb;


# instance fields
.field private final A:Lkbc;

.field private final B:D

.field private final C:Ljwb;

.field private final D:Ljwb;

.field private final E:Ljxa;

.field private final F:Ljyj;

.field private G:Landroid/media/MediaCodec$Callback;

.field private H:J

.field private volatile I:J

.field private final J:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile K:Z

.field private final L:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Landroid/media/MediaCodec;

.field public final d:Landroid/view/Surface;

.field public final e:Ljym;

.field public final f:I

.field public final g:Landroid/util/Range;

.field public final h:Lnph;

.field public final i:Landroid/os/HandlerThread;

.field public final j:Landroid/os/Handler;

.field public final k:Z

.field public final l:Z

.field public m:J

.field public n:J

.field public final o:Ljava/util/concurrent/atomic/AtomicLong;

.field public final p:Ljava/util/concurrent/atomic/AtomicLong;

.field public final q:Ljava/util/concurrent/atomic/AtomicLong;

.field public volatile r:Z

.field public volatile s:Z

.field public volatile t:Z

.field public final u:Ljava/util/List;

.field public v:Z

.field public w:Landroid/media/MediaFormat;

.field public x:I

.field private final y:Z

.field private final z:Ljxx;


# direct methods
.method public constructor <init>(Ljxa;Ljxr;IIILjxx;Lmqp;Lmqp;ZLjym;Lkbc;Ljwb;Ljwb;ZLjyj;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Ljyv;->a:Ljava/lang/Object;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Ljyv;->b:Ljava/lang/Object;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v4

    iput-object v4, v0, Ljyv;->h:Lnph;

    new-instance v4, Ljyu;

    invoke-direct {v4, p0}, Ljyu;-><init>(Ljyv;)V

    iput-object v4, v0, Ljyv;->G:Landroid/media/MediaCodec$Callback;

    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, v0, Ljyv;->I:J

    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v4, v0, Ljyv;->o:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v4, v0, Ljyv;->p:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v4, v0, Ljyv;->J:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v4, v0, Ljyv;->q:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v4, 0x0

    iput-boolean v4, v0, Ljyv;->r:Z

    iput-boolean v4, v0, Ljyv;->s:Z

    iput-boolean v4, v0, Ljyv;->K:Z

    iput-boolean v4, v0, Ljyv;->t:Z

    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v5, v0, Ljyv;->L:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Ljyv;->u:Ljava/util/List;

    iput-boolean v4, v0, Ljyv;->v:Z

    iput-object v1, v0, Ljyv;->E:Ljxa;

    move-object/from16 v5, p10

    iput-object v5, v0, Ljyv;->e:Ljym;

    move-object/from16 v5, p12

    iput-object v5, v0, Ljyv;->C:Ljwb;

    move-object/from16 v5, p13

    iput-object v5, v0, Ljyv;->D:Ljwb;

    move-object/from16 v5, p15

    iput-object v5, v0, Ljyv;->F:Ljyj;

    iput-boolean v3, v0, Ljyv;->l:Z

    invoke-virtual {p1}, Ljxa;->a()I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {p1}, Ljxa;->c()I

    move-result v7

    int-to-double v7, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    iput-wide v5, v0, Ljyv;->B:D

    iget v5, v1, Ljxa;->d:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported video codec type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    sget-object v5, Ljxe;->d:Ljxe;

    goto :goto_0

    :pswitch_2
    sget-object v5, Ljxe;->c:Ljxe;

    goto :goto_0

    :pswitch_3
    sget-object v5, Ljxe;->b:Ljxe;

    goto :goto_0

    :pswitch_4
    sget-object v5, Ljxe;->a:Ljxe;

    :goto_0
    iget-object v6, v5, Ljxe;->e:Ljava/lang/String;

    iget-object v7, v1, Ljxa;->b:Ljwu;

    invoke-virtual {v7}, Ljwu;->b()Lkaf;

    move-result-object v7

    iget v7, v7, Lkaf;->a:I

    iget-object v8, v1, Ljxa;->b:Ljwu;

    invoke-virtual {v8}, Ljwu;->b()Lkaf;

    move-result-object v8

    iget v8, v8, Lkaf;->b:I

    invoke-static {v6, v7, v8}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v7

    iget v8, v2, Ljxr;->d:I

    const-string v9, "color-format"

    invoke-virtual {v7, v9, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljxa;->b()I

    move-result v8

    const-string v9, "bitrate"

    invoke-virtual {v7, v9, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljxa;->c()I

    move-result v8

    const-string v9, "frame-rate"

    invoke-virtual {v7, v9, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljxa;->a()I

    move-result v8

    const-string v9, "capture-rate"

    invoke-virtual {v7, v9, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v8, v1, Ljxa;->g:F

    const-string v9, "i-frame-interval"

    invoke-virtual {v7, v9, v8}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    const-string v8, "color-standard"

    move v9, p3

    invoke-virtual {v7, v8, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v8, "color-range"

    move/from16 v9, p4

    invoke-virtual {v7, v8, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v8, "color-transfer"

    move/from16 v9, p5

    invoke-virtual {v7, v8, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v8, "create-input-buffers-suspended"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v8, v1, Ljxa;->e:I

    const/4 v10, -0x1

    if-eq v8, v10, :cond_0

    const-string v11, "profile"

    invoke-virtual {v7, v11, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    iget v8, v1, Ljxa;->f:I

    if-eq v8, v10, :cond_1

    const-string v10, "level"

    const v8, 0x100

    invoke-virtual {v7, v10, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    iget-object v8, v1, Ljxa;->c:Ljws;

    invoke-virtual {v8}, Ljws;->e()Z

    move-result v10

    if-eqz v10, :cond_2

    iget v8, v8, Ljws;->i:I

    const-string v10, "operating-rate"

    invoke-virtual {v7, v10, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v8, "priority"

    invoke-virtual {v7, v8, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_2
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v5}, Ljyx;->i(Ljxd;)Landroid/media/MediaCodec;

    move-result-object v5

    iput-object v5, v0, Ljyv;->c:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Landroid/os/HandlerThread;

    const-string v10, "VideoEncoder"

    invoke-direct {v8, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v8, v0, Ljyv;->i:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-static {v8}, Ljvd;->o(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v8

    iput-object v8, v0, Ljyv;->j:Landroid/os/Handler;

    if-eqz p9, :cond_3

    iput-boolean v9, v0, Ljyv;->k:Z

    goto :goto_2

    :cond_3
    invoke-virtual/range {p8 .. p8}, Lmqp;->g()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual/range {p8 .. p8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/MediaCodec$Callback;

    iput-object v10, v0, Ljyv;->G:Landroid/media/MediaCodec$Callback;

    iput-boolean v9, v0, Ljyv;->k:Z

    goto :goto_1

    :cond_4
    iput-boolean v4, v0, Ljyv;->k:Z

    :goto_1
    iget-object v10, v0, Ljyv;->G:Landroid/media/MediaCodec$Callback;

    invoke-virtual {v5, v10, v8}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    :goto_2
    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8, v8, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual/range {p7 .. p7}, Lmqp;->g()Z

    move-result v7

    iput-boolean v7, v0, Ljyv;->y:Z

    invoke-virtual/range {p7 .. p7}, Lmqp;->g()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual/range {p7 .. p7}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    iput-object v2, v0, Ljyv;->d:Landroid/view/Surface;

    invoke-virtual {v5, v2}, Landroid/media/MediaCodec;->setInputSurface(Landroid/view/Surface;)V

    goto :goto_3

    :cond_5
    sget-object v7, Ljxr;->a:Ljxr;

    if-ne v2, v7, :cond_6

    invoke-virtual {v5}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    iput-object v2, v0, Ljyv;->d:Landroid/view/Surface;

    goto :goto_3

    :cond_6
    iput-object v8, v0, Ljyv;->d:Landroid/view/Surface;

    :goto_3
    move-object/from16 v2, p6

    iput-object v2, v0, Ljyv;->z:Ljxx;

    move-object/from16 v2, p11

    iput-object v2, v0, Ljyv;->A:Lkbc;

    invoke-virtual {p1}, Ljxa;->b()I

    move-result v1

    iput v1, v0, Ljyv;->f:I

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object v1

    iput-object v1, v0, Ljyv;->g:Landroid/util/Range;

    iput v9, v0, Ljyv;->x:I

    if-eqz v3, :cond_7

    invoke-virtual {v5}, Landroid/media/MediaCodec;->start()V

    invoke-virtual {p0, v4}, Ljyv;->d(Z)V

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final g()V
    .locals 3

    iget-object v0, p0, Ljyv;->j:Landroid/os/Handler;

    new-instance v1, Ljum;

    const/16 v2, 0x13

    invoke-direct {v1, p0, v2}, Ljum;-><init>(Ljyv;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    iget-object v0, p0, Ljyv;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 11

    iget-object v0, p0, Ljyv;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Ljyv;->x:I

    const/4 v2, 0x2

    const/4 v3, 0x5

    if-eq v1, v2, :cond_0

    if-ne v1, v3, :cond_8

    invoke-virtual {p0, p1, p2}, Ljyv;->e(J)V

    :cond_0
    iget-wide v4, p0, Ljyv;->m:J

    sub-long v4, p1, v4

    long-to-double v4, v4

    iget-wide v6, p0, Ljyv;->B:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-long v4, v4

    :try_start_1
    iput-wide v4, p0, Ljyv;->I:J

    iget-object v1, p0, Ljyv;->A:Lkbc;

    const-string v4, "VideoEncoder#stop"

    invoke-interface {v1, v4}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v1, p0, Ljyv;->d:Landroid/view/Surface;

    if-eqz v1, :cond_1

    iget v1, p0, Ljyv;->x:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Ljyv;->c:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    :cond_1
    iget-object v1, p0, Ljyv;->d:Landroid/view/Surface;

    if-nez v1, :cond_5

    iget-object v1, p0, Ljyv;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget v4, p0, Ljyv;->x:I

    if-ne v4, v3, :cond_2

    goto :goto_0

    :cond_2
    if-ne v4, v2, :cond_4

    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Ljyv;->d:Landroid/view/Surface;

    if-nez v1, :cond_3

    iget-object v1, p0, Ljyv;->c:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_5

    iget-object v1, p0, Ljyv;->c:Landroid/media/MediaCodec;

    invoke-virtual {v1, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v4, p0, Ljyv;->c:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x4

    move-wide v8, p1

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object p2, Ljxr;->a:Ljxr;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "As "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "is used as color format, you are not allowed to add data here"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    :try_start_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "encoding is not yet started."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :cond_5
    :goto_1
    iget-object p1, p0, Ljyv;->d:Landroid/view/Surface;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Ljyv;->h:Lnph;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnph;->e(Ljava/lang/Object;)Z

    :cond_6
    iget-boolean p1, p0, Ljyv;->k:Z

    if-nez p1, :cond_7

    iget-object v1, p0, Ljyv;->F:Ljyj;

    const/4 v2, 0x2

    iget-wide v3, p0, Ljyv;->I:J

    iget-object v5, p0, Ljyv;->p:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v6, p0, Ljyv;->h:Lnph;

    invoke-virtual/range {v1 .. v6}, Ljyj;->a(IJLjava/util/concurrent/atomic/AtomicLong;Lnou;)V

    :cond_7
    iget-object p1, p0, Ljyv;->j:Landroid/os/Handler;

    new-instance p2, Lkcu;

    const/4 v1, 0x1

    invoke-direct {p2, p0, v1}, Lkcu;-><init>(Ljyv;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Ljyv;->g()V

    const/4 p1, 0x3

    iput p1, p0, Ljyv;->x:I

    iget-object p1, p0, Ljyv;->A:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    :cond_8
    iget p1, p0, Ljyv;->x:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_b

    iget-object p1, p0, Ljyv;->c:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V

    iget-object p1, p0, Ljyv;->i:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-direct {p0}, Ljyv;->g()V

    :cond_9
    iget-object p1, p0, Ljyv;->d:Landroid/view/Surface;

    if-eqz p1, :cond_a

    iget-boolean v1, p0, Ljyv;->y:Z

    if-nez v1, :cond_a

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    :cond_a
    iput p2, p0, Ljyv;->x:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    :cond_b
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public final b(J)J
    .locals 2

    long-to-double p1, p1

    iget-wide v0, p0, Ljyv;->B:D

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    double-to-long p1, p1

    return-wide p1
.end method

.method public final c(Landroid/media/MediaFormat;)V
    .locals 3

    const-string v0, "time-lapse-enable"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v0, p0, Ljyv;->E:Ljxa;

    invoke-virtual {v0}, Ljxa;->a()I

    move-result v0

    const-string v2, "time-lapse-fps"

    invoke-virtual {p1, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Ljyv;->L:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljyv;->z:Ljxx;

    invoke-interface {v0, p1}, Ljxx;->e(Landroid/media/MediaFormat;)V

    iget-object p1, p0, Ljyv;->z:Ljxx;

    invoke-interface {p1}, Ljxx;->k()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "format changed twice"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final close()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-virtual {p0, v0, v1}, Ljyv;->a(J)V

    return-void
.end method

.method public final d(Z)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "drop-input-frames"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Ljyv;->c:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method public final e(J)V
    .locals 2

    iget-wide v0, p0, Ljyv;->n:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Ljyv;->m:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ljyv;->m:J

    return-void
.end method

.method public final f(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 13

    const-string v0, "VideoEncoder"

    if-gez p1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Ljyv;->c:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_c

    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iput v3, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    :cond_1
    iget-wide v4, p0, Ljyv;->B:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    cmpl-double v2, v4, v6

    if-nez v2, :cond_2

    iget-wide v4, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    long-to-double v4, v4

    iget-wide v6, p0, Ljyv;->B:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-long v4, v4

    iput-wide v4, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :cond_2
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v2, :cond_7

    iget-object v2, p0, Ljyv;->h:Lnph;

    invoke-virtual {v2}, Lnph;->isDone()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Ljyv;->z:Ljxx;

    invoke-interface {v2}, Ljxx;->o()Z

    move-result v2

    const/4 v4, 0x1

    const-wide/16 v5, 0x3e8

    if-nez v2, :cond_3

    :try_start_0
    iget-object v2, p0, Ljyv;->z:Ljxx;

    invoke-interface {v2, v5, v6}, Ljxx;->j(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Could not start all required tracks."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v4, p0, Ljyv;->K:Z

    iget-object v0, p0, Ljyv;->e:Ljym;

    sget-object v1, Ljyk;->k:Ljyk;

    invoke-virtual {v0, v1}, Ljym;->a(Ljyk;)V

    goto/16 :goto_1

    :cond_3
    :goto_0
    iget-wide v7, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v0, p0, Ljyv;->C:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-nez v0, :cond_4

    iget-object v0, p0, Ljyv;->C:Ljwb;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Ljyv;->q:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_4
    iget-object v0, p0, Ljyv;->D:Ljwb;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Ljyv;->p:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Ljyv;->J:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, v7, v8}, Ljyv;->b(J)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Ljyv;->e:Ljym;

    sget-object v2, Ljya;->b:Ljya;

    invoke-virtual {v0, v2}, Ljym;->d(Ljya;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Ljyv;->k:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Ljyv;->e:Ljym;

    sget-object v2, Ljya;->b:Ljya;

    iget-object v9, p0, Ljyv;->J:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v9}, Ljym;->b(Ljya;Ljava/util/concurrent/atomic/AtomicLong;)V

    :cond_5
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Ljyv;->z:Ljxx;

    invoke-interface {v0, v1, p2}, Ljxx;->n(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iput-boolean v4, p0, Ljyv;->s:Z

    iget-wide v0, p0, Ljyv;->H:J

    cmp-long v2, v0, v11

    if-lez v2, :cond_6

    cmp-long v2, v7, v0

    if-lez v2, :cond_6

    iget-object v2, p0, Ljyv;->z:Ljxx;

    sub-long v0, v7, v0

    div-long/2addr v0, v5

    invoke-interface {v2, v0, v1}, Ljxx;->d(J)V

    :cond_6
    iput-wide v7, p0, Ljyv;->H:J

    iget-object v0, p0, Ljyv;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    :cond_7
    :goto_1
    iget-object v0, p0, Ljyv;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v2, p0, Ljyv;->I:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_8

    iget p1, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_a

    :cond_8
    iget p1, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_a

    iget-boolean p1, p0, Ljyv;->r:Z

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Ljyv;->s:Z

    if-nez p1, :cond_a

    :cond_9
    iget-boolean p1, p0, Ljyv;->K:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Ljyv;->t:Z

    if-eqz p1, :cond_b

    :cond_a
    iget-object p1, p0, Ljyv;->h:Lnph;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnph;->e(Ljava/lang/Object;)Z

    :cond_b
    :goto_2
    iget-object p1, p0, Ljyv;->h:Lnph;

    invoke-virtual {p1}, Lnph;->isDone()Z

    return-void

    :cond_c
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encoderOutputBuffer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
