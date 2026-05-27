.class public final Lfgv;
.super Ljava/lang/Object;

# interfaces
.implements Lfhl;


# static fields
.field private static final b:[F


# instance fields
.field public final a:Ljava/util/concurrent/ArrayBlockingQueue;

.field private final c:Landroid/media/MediaFormat;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Landroid/util/SparseArray;

.field private f:Llbd;

.field private g:Llec;

.field private h:Lleb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lfgv;->b:[F

    return-void

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
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/media/MediaFormat;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lfgv;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lfgv;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lfgv;->e:Landroid/util/SparseArray;

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0, p1}, Landroid/media/MediaFormat;-><init>(Landroid/media/MediaFormat;)V

    iput-object v0, p0, Lfgv;->c:Landroid/media/MediaFormat;

    const-string p1, "color-format"

    const v1, 0x7f420888

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method private final h(JLandroid/hardware/HardwareBuffer;Landroid/media/MediaCodec$QueueRequest;)V
    .locals 2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-virtual {p4, p3}, Landroid/media/MediaCodec$QueueRequest;->setHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/media/MediaCodec$QueueRequest;

    invoke-virtual {p4, p1, p2}, Landroid/media/MediaCodec$QueueRequest;->setPresentationTimeUs(J)Landroid/media/MediaCodec$QueueRequest;

    iget-object p1, p0, Lfgv;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p4, p2}, Landroid/media/MediaCodec$QueueRequest;->setFlags(I)Landroid/media/MediaCodec$QueueRequest;

    const-string p1, "request-sync"

    invoke-virtual {p4, p1, p3}, Landroid/media/MediaCodec$QueueRequest;->setIntegerParameter(Ljava/lang/String;I)Landroid/media/MediaCodec$QueueRequest;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0x23

    return v0
.end method

.method public final declared-synchronized b()Lnou;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lfgv;->e:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lfgv;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lldn;

    invoke-virtual {v1}, Lldn;->close()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfgv;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lfgv;->g:Llec;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Llec;->a()Lnou;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lnor;->a:Lnou;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final declared-synchronized c(Lkxy;Llbd;Llel;Landroid/os/Handler;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lfgv;->f:Llbd;

    new-instance p2, Lfhq;

    invoke-direct {p2, p1}, Lfhq;-><init>(Lkxy;)V

    invoke-static {p2}, Lktf;->o(Llen;)Llec;

    move-result-object p1

    iput-object p1, p0, Lfgv;->g:Llec;

    iget-object p2, p0, Lfgv;->c:Landroid/media/MediaFormat;

    check-cast p1, Llef;

    invoke-virtual {p1, p2}, Llef;->c(Landroid/media/MediaFormat;)Lleh;

    move-result-object p1

    iput-object p4, p1, Lleh;->c:Landroid/os/Handler;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lleh;->f:Z

    new-instance p4, Lfic;

    invoke-direct {p4, p0, p3, p2}, Lfic;-><init>(Lfgv;Llel;I)V

    invoke-virtual {p1, p4}, Lleh;->b(Llel;)V

    invoke-virtual {p1}, Lleh;->a()Lleb;

    move-result-object p1

    iput-object p1, p0, Lfgv;->h:Lleb;

    iget-object p1, p0, Lfgv;->g:Llec;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Llec;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfgv;->h:Lleb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()[F
    .locals 1

    sget-object v0, Lfgv;->b:[F

    return-object v0
.end method

.method public final f(Lkpb;)V
    .locals 5

    :try_start_0
    invoke-interface {p1}, Lkpb;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lfgv;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lldz;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-interface {p1}, Lkpb;->d()J

    move-result-wide v2

    invoke-interface {v1}, Lldz;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaCodec$QueueRequest;

    invoke-direct {p0, v2, v3, v0, p1}, Lfgv;->h(JLandroid/hardware/HardwareBuffer;Landroid/media/MediaCodec$QueueRequest;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v1}, Lldz;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_5
    invoke-interface {v1}, Lldz;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-static {p1, v1}, Lfys;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lldz;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_1
    if-eqz v0, :cond_2

    :try_start_7
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_2
    return-void

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_3

    :try_start_8
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_9
    invoke-static {p1, v0}, Lfys;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p1
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    move-exception p1

    return-void
.end method

.method public final declared-synchronized g(Lkpb;Lfhk;)V
    .locals 19

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Lfgv;->f:Llbd;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {p1 .. p1}, Lkpb;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    if-eqz v3, :cond_1

    :try_start_1
    new-instance v4, Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    invoke-direct {v4, v3}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;-><init>(Landroid/hardware/HardwareBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    iget-object v0, v1, Lfgv;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1388

    invoke-virtual {v0, v6, v7, v5}, Ljava/util/concurrent/ArrayBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lldz;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    move-object v5, v0

    :goto_0
    :try_start_3
    invoke-static {v2, v4}, Llcd;->b(Llbd;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Llcd;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v5, :cond_2

    :try_start_4
    invoke-interface {v5}, Lldz;->a()I

    move-result v0

    invoke-interface/range {p1 .. p1}, Lkpb;->c()I

    move-result v6

    invoke-interface/range {p1 .. p1}, Lkpb;->b()I

    move-result v7

    iget-object v8, v1, Lfgv;->e:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lldn;

    iget-object v12, v1, Lfgv;->f:Llbd;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v8, :cond_0

    const/16 v8, 0x23

    const/4 v9, 0x1

    const-wide/32 v10, 0x10200

    invoke-static/range {v6 .. v11}, Landroid/hardware/HardwareBuffer;->create(IIIIJ)Landroid/hardware/HardwareBuffer;

    move-result-object v6

    new-instance v15, Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    invoke-direct {v15, v6}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;-><init>(Landroid/hardware/HardwareBuffer;)V

    invoke-static {v12, v15}, Lldc;->j(Llbd;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Lldc;

    move-result-object v14

    new-instance v8, Lldn;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v8

    move-object/from16 v16, v6

    invoke-direct/range {v13 .. v18}, Lldn;-><init>(Lldc;Lcom/google/android/libraries/oliveoil/gl/EGLImage;Landroid/hardware/HardwareBuffer;[B[B)V

    iget-object v6, v1, Lfgv;->e:Landroid/util/SparseArray;

    invoke-virtual {v6, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    :goto_1
    iget-object v0, v8, Lldn;->b:Lldc;

    move-object/from16 v6, p2

    invoke-interface {v6, v2, v0}, Lfhk;->a(Llcd;Lldc;)V

    iget-object v0, v2, Llbk;->b:Llbd;

    invoke-static {v0}, Lktf;->v(Llbd;)V

    invoke-interface/range {p1 .. p1}, Lkpb;->d()J

    move-result-wide v6

    iget-object v0, v8, Lldn;->a:Landroid/hardware/HardwareBuffer;

    invoke-interface {v5}, Lldz;->b()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MediaCodec$QueueRequest;

    invoke-direct {v1, v6, v7, v0, v8}, Lfgv;->h(JLandroid/hardware/HardwareBuffer;Landroid/media/MediaCodec$QueueRequest;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v2}, Llbk;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-interface {v5}, Lldz;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v4}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :goto_2
    :try_start_8
    invoke-virtual {v3}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    :cond_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    move-object v6, v0

    :try_start_9
    invoke-virtual {v2}, Llbk;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_a
    invoke-static {v6, v2}, Lfys;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_3
    throw v6

    :cond_2
    invoke-virtual {v2}, Llbk;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    invoke-virtual {v4}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v2, v0

    if-eqz v5, :cond_3

    :try_start_c
    invoke-interface {v5}, Lldz;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v5, v0

    :try_start_d
    invoke-static {v2, v5}, Lfys;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_5
    :try_start_e
    invoke-virtual {v4}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object v4, v0

    :try_start_f
    invoke-static {v2, v4}, Lfys;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_6
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :catchall_6
    move-exception v0

    move-object v2, v0

    :try_start_10
    invoke-virtual {v3}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception v0

    move-object v3, v0

    :try_start_11
    invoke-static {v2, v3}, Lfys;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_7
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :catchall_8
    move-exception v0

    monitor-exit p0

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method
