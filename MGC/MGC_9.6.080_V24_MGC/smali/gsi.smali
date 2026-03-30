.class public Lgsi;
.super Lgsa;
.source "PG"


# static fields
.field private static final d:Lsdb;


# instance fields
.field public final b:Ljava/util/Deque;

.field public final c:Ljava/lang/Object;

.field private final e:Lutz;

.field private final f:Lgqi;

.field private final g:Lows;

.field private final h:Lhoh;

.field private final i:Lqhg;

.field private final k:Ljaj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lgsi;->d:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const-string v0, "gsi"

    nop

    goto/32 :goto_1

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

    nop

    nop
.end method

.method public constructor <init>(Lutz;Lqhg;Ljaj;Lgqi;Lhoh;Loyd;Lpty;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    :goto_0
    const/4 p4, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/lang/Object;

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
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p1, Lfvy;

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

    :goto_4
    iput-object p7, p0, Lgsi;->g:Lows;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p7}, Lows;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p5, p0, Lgsi;->h:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p7, p0, Lgsi;->b:Ljava/util/Deque;

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

    :goto_8
    invoke-direct {p0}, Lgsa;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p7, Ljava/util/concurrent/ConcurrentLinkedDeque;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p3, p0, Lgsi;->k:Ljaj;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p7, Lows;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    sget-object p0, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_d
    iput-object p2, p0, Lgsi;->i:Lqhg;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    const/16 p3, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    invoke-direct {p1, p0, p2, p3, p4}, Lfvy;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v0, p0, Lgsi;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    iput-object p4, p0, Lgsi;->f:Lgqi;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    iput-object p1, p0, Lgsi;->e:Lutz;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    invoke-direct {p7}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p6, p1, p0}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_16
    invoke-virtual {p7, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Lpro;)V
    .locals 58

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    invoke-interface {v2, v4}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Long;

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    nop

    iget-object v6, v1, Lgsi;->i:Lqhg;

    nop

    nop

    nop

    invoke-virtual {v6, v4, v5}, Lqhg;->a(J)J

    move-result-wide v4

    nop

    nop

    nop

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v3

    nop

    nop

    nop

    nop

    iget-object v5, v1, Lgsi;->a:Lpak;

    nop

    nop

    nop

    const-string v6, "application/p11-image-meta"

    nop

    invoke-interface {v5, v6}, Lpak;->d(Ljava/lang/String;)Lrss;

    move-result-object v5

    nop

    nop

    invoke-virtual {v5}, Lrss;->h()Z

    move-result v6

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    move-object v2, v0

    nop

    nop

    nop

    :try_start_1
    sget-object v3, Lgsi;->d:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    nop

    nop

    nop

    const-string v4, "Exception when encoding p11 metadata"

    nop

    nop

    const/16 v5, 0x2e1

    nop

    invoke-static {v4, v5, v3, v2}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_35

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xd

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_2
    const-string v2, "serializeImageMetadata failed"

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Luua;

    nop

    nop

    invoke-direct {v3, v2}, Luua;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Luua; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    :try_start_3
    new-instance v2, Ljava/lang/IllegalStateException;

    nop

    const-string v3, "The queue for zoom ratios is empty."

    nop

    nop

    nop

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    move-object v2, v0

    nop

    nop

    nop

    nop

    monitor-exit v6

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    nop
    :try_end_4
    .catch Luua; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    throw v2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v6, :cond_2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_2
    :try_start_5
    iget-object v6, v1, Lgsi;->k:Ljaj;

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v6, Ljaj;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    if-nez v7, :cond_3

    nop

    nop

    nop

    nop

    nop

    sget-object v6, Lrsa;->a:Lrsa;

    nop

    nop

    move-wide/from16 v20, v3

    nop

    nop

    goto/16 :goto_b

    nop

    :cond_3
    sget-object v7, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    invoke-interface {v2, v7}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    nop

    check-cast v7, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    nop

    nop

    nop

    iget-object v9, v6, Ljaj;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v9, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    const-wide/16 v10, -0x1

    nop

    nop

    nop

    invoke-virtual {v9, v10, v11, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v9}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    check-cast v9, Ljava/lang/Long;

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    nop

    nop

    nop

    nop

    nop

    iget-object v11, v6, Ljaj;->d:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-static {v11}, Ltbt;->d(Lpnu;)J

    move-result-wide v11

    nop

    nop

    nop

    nop

    nop

    add-long/2addr v9, v7

    nop

    nop

    nop

    nop

    nop

    add-long/2addr v9, v11

    nop

    nop

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v12, 0x1

    nop

    nop

    nop

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v11

    nop

    const-wide/16 v13, 0xc8

    nop

    nop

    nop

    nop

    nop

    div-long/2addr v11, v13

    nop

    nop

    new-instance v13, Lcom/google/googlex/gcam/GyroSampleVector;

    nop

    nop

    nop

    nop

    invoke-direct {v13}, Lcom/google/googlex/gcam/GyroSampleVector;-><init>()V

    iget-object v14, v6, Ljaj;->e:Ljava/lang/Object;

    nop

    nop

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v6, Ljaj;->b:Ljava/lang/Object;

    nop

    check-cast v15, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    move-wide/from16 v20, v3

    nop

    nop

    nop

    nop

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    nop

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    sub-long v15, v2, v11

    nop

    add-long v17, v9, v11

    nop

    nop

    nop

    nop

    new-instance v2, Lgsg;

    nop

    nop

    nop

    invoke-direct {v2, v6, v13}, Lgsg;-><init>(Ljaj;Lcom/google/googlex/gcam/GyroSampleVector;)V

    move-object/from16 v19, v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface/range {v14 .. v19}, Lppd;->b(JJLppc;)V

    invoke-static {v13}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v6

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v6}, Lrss;->h()Z

    move-result v2

    nop

    if-eqz v2, :cond_4

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto :goto_c

    nop

    :cond_4
    const/4 v2, 0x0

    nop

    :goto_c
    iget-object v4, v1, Lgsi;->e:Lutz;

    nop

    nop

    nop

    nop

    iget-object v6, v1, Lgsi;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    monitor-enter v6

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catch Luua; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_d
    :try_start_6
    iget-object v7, v1, Lgsi;->b:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Ljava/util/Deque;->isEmpty()Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    if-nez v7, :cond_1

    nop

    nop

    nop

    iget-object v7, v1, Lgsi;->b:Ljava/util/Deque;

    nop

    nop

    nop

    invoke-interface {v7}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    check-cast v7, Lqtu;

    nop

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v7, Lqtu;->b:Ljava/lang/Object;

    nop

    nop

    move-object v9, v8

    nop

    nop

    nop

    check-cast v9, Lsay;

    nop

    nop

    nop

    invoke-virtual {v9}, Lsay;->l()Z

    move-result v9

    nop

    nop

    nop

    if-eqz v9, :cond_5

    nop

    nop

    nop

    nop

    nop

    move-object v9, v8

    nop

    nop

    nop

    nop

    check-cast v9, Lsay;

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Lsay;->i()Ljava/lang/Comparable;

    move-result-object v9

    nop

    check-cast v9, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    nop

    nop

    nop

    nop

    cmp-long v9, v20, v9

    nop

    nop

    nop

    nop

    if-lez v9, :cond_5

    nop

    iget-object v7, v1, Lgsi;->b:Ljava/util/Deque;

    nop

    nop

    invoke-interface {v7}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    goto :goto_d

    nop

    nop

    :cond_5
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Lsay;

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v9}, Lsay;->j(Ljava/lang/Comparable;)Z

    move-result v8

    nop

    if-eqz v8, :cond_6

    nop

    nop

    nop

    nop

    nop

    iget v7, v7, Lqtu;->a:F

    nop

    nop

    nop

    nop

    nop

    monitor-exit v6

    nop

    :goto_e
    move/from16 v50, v7

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_1b

    nop

    :cond_6
    sget-object v8, Lgsi;->d:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Lscs;->c()Lsdo;

    move-result-object v8

    nop

    nop

    nop

    const/16 v10, 0x2e0

    nop

    nop

    invoke-interface {v8, v10}, Lscz;->M(I)Lsdo;

    move-result-object v8

    nop

    nop

    check-cast v8, Lscz;

    nop

    nop

    nop

    const-string v10, "No zoom value was found for timestamp: %d. Using the first available zoom - %f in range - %s"

    nop

    nop

    nop

    nop

    nop

    iget v11, v7, Lqtu;->a:F

    nop

    nop

    nop

    nop

    nop

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    nop

    nop

    nop

    iget-object v12, v7, Lqtu;->b:Ljava/lang/Object;

    nop

    invoke-interface {v8, v10, v9, v11, v12}, Lscz;->G(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget v7, v7, Lqtu;->a:F

    nop

    nop

    monitor-exit v6

    nop

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

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

    nop

    :goto_10
    const v1, 0x18

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

    :goto_11
    move-object v2, v0

    nop

    :try_start_7
    monitor-exit p0

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move-object/from16 v2, p1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_14
    if-lez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_17

    nop

    :goto_15
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_16
    move-object/from16 v1, p0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_9

    nop

    nop

    :goto_18
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_e

    nop

    :goto_1b
    :try_start_8
    iget-object v6, v1, Lgsi;->h:Lhoh;

    nop

    nop

    nop

    sget-object v7, Lhnw;->e:Lhmn;

    nop

    nop

    nop

    invoke-virtual {v6, v7}, Lhoh;->p(Lhmn;)Z

    move-result v6

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_8

    nop

    nop

    nop

    nop

    nop

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    move-object/from16 v7, p1

    nop

    nop

    nop

    nop

    invoke-interface {v7, v6}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    check-cast v6, Ljava/lang/String;

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_9

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    nop

    nop

    if-nez v8, :cond_9

    nop

    nop

    nop

    nop

    invoke-static {v6}, Lpnx;->b(Ljava/lang/String;)Lpnx;

    move-result-object v6

    nop

    goto :goto_1c

    nop

    :cond_8
    move-object/from16 v7, p1

    nop

    nop

    nop

    :cond_9
    iget-object v6, v1, Lgsi;->f:Lgqi;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lgqi;->b()Lpnx;

    move-result-object v6

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1c
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    invoke-interface {v7, v8}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Ljava/lang/String;

    nop

    nop

    invoke-interface/range {p1 .. p1}, Lpro;->h()Ljava/util/Map;

    move-result-object v9

    nop

    nop

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    check-cast v8, Lprk;

    nop

    sget-object v9, Lnyq;->t:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    invoke-interface {v7, v9}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    check-cast v9, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    const/high16 v10, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    nop

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    nop

    invoke-static {v9, v11}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    check-cast v9, Ljava/lang/Float;

    nop

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v24

    nop

    nop

    nop

    nop

    sget-object v9, Lnyq;->r:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    const/4 v12, -0x1

    nop

    nop

    nop

    nop

    nop

    if-nez v9, :cond_a

    nop

    filled-new-array {v12, v12, v12, v12}, [I

    move-result-object v9

    nop

    nop

    goto :goto_1d

    nop

    nop

    :cond_a
    invoke-interface {v7, v9}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    check-cast v9, [I

    nop

    filled-new-array {v12, v12, v12, v12}, [I

    move-result-object v13

    nop

    nop

    nop

    invoke-static {v9, v13}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    check-cast v9, [I

    nop

    nop

    nop

    :goto_1d
    sget-object v13, Lnyq;->s:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    if-nez v13, :cond_b

    nop

    nop

    nop

    nop

    nop

    move/from16 v29, v12

    nop

    nop

    nop

    goto :goto_1e

    nop

    nop

    nop

    :cond_b
    invoke-interface {v7, v13}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    nop

    nop

    check-cast v13, Ljava/lang/Integer;

    nop

    nop

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    nop

    nop

    nop

    nop

    invoke-static {v13, v14}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    check-cast v13, Ljava/lang/Integer;

    nop

    nop

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    nop

    move/from16 v29, v13

    nop

    nop

    :goto_1e
    sget-object v13, Lnyq;->z:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    const/4 v14, 0x0

    nop

    nop

    nop

    if-nez v13, :cond_c

    nop

    nop

    nop

    new-array v13, v14, [F

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move-object/from16 v30, v13

    nop

    nop

    nop

    nop

    goto :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_c
    invoke-interface {v7, v13}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    check-cast v13, [F

    nop

    nop

    new-array v15, v14, [F

    nop

    nop

    nop

    nop

    invoke-static {v13, v15}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    check-cast v13, [F

    nop

    nop

    nop

    goto :goto_1f

    nop

    :goto_20
    sget-object v13, Lnyq;->A:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    if-nez v13, :cond_d

    nop

    new-array v13, v14, [F

    nop

    :goto_21
    move-object/from16 v31, v13

    nop

    nop

    nop

    nop

    goto :goto_22

    nop

    nop

    nop

    nop

    :cond_d
    invoke-interface {v7, v13}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    nop

    check-cast v13, [F

    nop

    nop

    nop

    nop

    nop

    new-array v15, v14, [F

    nop

    nop

    nop

    nop

    nop

    invoke-static {v13, v15}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    check-cast v13, [F

    nop

    goto :goto_21

    nop

    nop

    nop

    nop

    :goto_22
    sget-object v13, Lnyq;->u:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7, v13}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    nop

    nop

    check-cast v13, [F

    nop

    new-array v15, v14, [F

    nop

    nop

    nop

    invoke-static {v13, v15}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    nop

    move-object/from16 v32, v13

    nop

    nop

    check-cast v32, [F

    nop

    nop

    nop

    nop

    nop

    sget-object v13, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    invoke-interface {v7, v13}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v13

    nop

    check-cast v13, Landroid/graphics/Rect;

    nop

    sget-object v15, Landroid/hardware/camera2/CaptureResult;->CONTROL_ZOOM_RATIO:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-interface {v7, v15}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v15

    nop

    nop

    nop

    nop

    check-cast v15, Ljava/lang/Float;

    nop

    nop

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v37

    nop

    nop

    nop

    nop

    nop

    sget-object v15, Lnyq;->E:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    if-nez v15, :cond_e

    nop

    move/from16 v38, v10

    nop

    nop

    nop

    nop

    goto :goto_23

    nop

    nop

    :cond_e
    invoke-interface {v7, v15}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v15

    nop

    nop

    nop

    check-cast v15, Ljava/lang/Float;

    nop

    invoke-static {v15, v11}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    nop

    nop

    check-cast v15, Ljava/lang/Float;

    nop

    nop

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    nop

    nop

    move/from16 v38, v15

    nop

    nop

    nop

    nop

    :goto_23
    sget-object v15, Lnyr;->w:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    if-nez v15, :cond_f

    nop

    nop

    nop

    nop

    new-array v15, v14, [F

    nop

    nop

    nop

    nop

    move-object/from16 v39, v15

    nop

    nop

    nop

    goto :goto_24

    nop

    nop

    nop

    :cond_f
    sget-object v15, Lnyr;->w:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-interface {v7, v15}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v15

    nop

    nop

    nop

    nop

    nop

    check-cast v15, [F

    nop

    nop

    nop

    nop

    new-array v10, v14, [F

    nop

    nop

    nop

    nop

    nop

    invoke-static {v15, v10}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    check-cast v10, [F

    nop

    nop

    nop

    nop

    move-object/from16 v39, v10

    nop

    nop

    :goto_24
    sget-object v10, Lnyr;->r:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    if-nez v10, :cond_10

    nop

    nop

    nop

    nop

    move/from16 v40, v12

    nop

    goto :goto_25

    nop

    nop

    nop

    :cond_10
    invoke-interface {v7, v10}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    check-cast v10, Ljava/lang/Integer;

    nop

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    nop

    nop

    nop

    invoke-static {v10, v12}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    check-cast v10, Ljava/lang/Integer;

    nop

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    nop

    nop

    nop

    nop

    move/from16 v40, v10

    nop

    nop

    nop

    nop

    nop

    :goto_25
    sget-object v10, Lnyr;->o:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    if-nez v10, :cond_11

    nop

    new-array v10, v14, [F

    nop

    nop

    nop

    nop

    :goto_26
    move-object/from16 v41, v10

    nop

    nop

    nop

    nop

    nop

    goto :goto_27

    nop

    nop

    nop

    :cond_11
    invoke-interface {v7, v10}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    nop

    check-cast v10, [F

    nop

    nop

    new-array v12, v14, [F

    nop

    nop

    nop

    nop

    nop

    invoke-static {v10, v12}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    check-cast v10, [F

    nop

    nop

    nop

    nop

    nop

    goto :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sget-object v10, Lnyr;->p:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    if-nez v10, :cond_12

    nop

    nop

    nop

    nop

    new-array v10, v14, [F

    nop

    nop

    nop

    :goto_28
    move-object/from16 v42, v10

    nop

    goto :goto_29

    nop

    nop

    :cond_12
    invoke-interface {v7, v10}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    check-cast v10, [F

    nop

    nop

    nop

    nop

    new-array v12, v14, [F

    nop

    invoke-static {v10, v12}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    check-cast v10, [F

    nop

    nop

    goto :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sget-object v10, Lnyr;->q:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    if-nez v10, :cond_13

    nop

    const/high16 v43, -0x40800000    # -1.0f

    nop

    nop

    nop

    goto :goto_2a

    nop

    nop

    :cond_13
    invoke-interface {v7, v10}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    check-cast v10, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    invoke-static {v10, v11}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    check-cast v10, Ljava/lang/Float;

    nop

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    nop

    nop

    nop

    nop

    nop

    move/from16 v43, v10

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object v10, Lnyr;->z:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    if-nez v10, :cond_14

    nop

    new-array v10, v14, [F

    nop

    :goto_2b
    move-object/from16 v44, v10

    nop

    nop

    goto :goto_2c

    nop

    nop

    :cond_14
    invoke-interface {v7, v10}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    nop

    check-cast v10, [F

    nop

    nop

    new-array v12, v14, [F

    nop

    nop

    nop

    invoke-static {v10, v12}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    check-cast v10, [F

    nop

    nop

    nop

    nop

    nop

    goto :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    sget-object v10, Lnyr;->A:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    if-nez v10, :cond_15

    nop

    nop

    new-array v10, v14, [F

    nop

    nop

    nop

    :goto_2d
    move-object/from16 v45, v10

    nop

    nop

    nop

    nop

    nop

    goto :goto_2e

    nop

    :cond_15
    invoke-interface {v7, v10}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    check-cast v10, [F

    nop

    new-array v12, v14, [F

    nop

    nop

    nop

    nop

    invoke-static {v10, v12}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    check-cast v10, [F

    nop

    goto :goto_2d

    nop

    nop

    :goto_2e
    if-eqz v8, :cond_17

    nop

    sget-object v10, Lnyr;->y:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    if-nez v10, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto :goto_2f

    nop

    nop

    nop

    :cond_16
    invoke-interface {v8, v10}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    check-cast v8, Ljava/lang/Float;

    nop

    nop

    invoke-static {v8, v11}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Ljava/lang/Float;

    nop

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    nop

    move/from16 v51, v8

    nop

    nop

    goto :goto_30

    nop

    :cond_17
    :goto_2f
    const/high16 v51, -0x40800000    # -1.0f

    nop

    nop

    nop

    :goto_30
    invoke-interface/range {p1 .. p1}, Lpro;->h()Ljava/util/Map;

    move-result-object v8

    nop

    nop

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v10

    nop

    nop

    nop

    new-array v10, v10, [I

    nop

    nop

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v11

    nop

    nop

    new-array v11, v11, [[J

    nop

    nop

    nop

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v12

    nop

    new-array v12, v12, [[F

    nop

    nop

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v15

    nop

    nop

    new-array v15, v15, [[F

    nop

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    nop

    nop

    nop

    nop

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    nop

    nop

    nop

    nop

    move/from16 v16, v14

    nop

    nop

    :goto_31
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    nop

    if-eqz v17, :cond_1b

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    nop

    nop

    nop

    check-cast v17, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    nop

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    nop

    nop

    nop

    nop

    move-object/from16 v14, v18

    nop

    nop

    nop

    nop

    nop

    check-cast v14, Ljava/lang/String;

    nop

    move-object v3, v4

    nop

    nop

    nop

    nop

    check-cast v3, Lwireless/android/learning/acmi/p11/metadata/P11MetadataSerializer;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v14}, Lwireless/android/learning/acmi/p11/metadata/P11MetadataSerializer;->a(Ljava/lang/String;)Lsyi;

    move-result-object v3

    nop

    nop

    nop

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    nop

    check-cast v14, Lprk;

    nop

    nop

    move-object/from16 v17, v8

    nop

    nop

    nop

    sget-object v8, Lnyr;->t:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    if-nez v8, :cond_18

    nop

    nop

    nop

    move-object/from16 v57, v5

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    goto :goto_32

    nop

    nop

    nop

    :cond_18
    invoke-interface {v14, v8}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    check-cast v8, [J

    nop

    move-object/from16 v57, v5

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v8, v5}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    move-object v5, v8

    nop

    nop

    nop

    check-cast v5, [J

    nop

    nop

    :goto_32
    sget-object v8, Lnyr;->u:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    if-nez v8, :cond_19

    nop

    nop

    nop

    nop

    move-object/from16 v22, v13

    nop

    nop

    const/4 v8, 0x0

    nop

    goto :goto_33

    nop

    nop

    nop

    nop

    :cond_19
    invoke-interface {v14, v8}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    check-cast v8, [F

    nop

    nop

    nop

    move-object/from16 v22, v13

    nop

    nop

    nop

    const/4 v13, 0x0

    nop

    invoke-static {v8, v13}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    check-cast v8, [F

    nop

    nop

    :goto_33
    sget-object v13, Lnyr;->v:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    if-nez v13, :cond_1a

    nop

    nop

    nop

    nop

    const/4 v13, 0x0

    nop

    nop

    goto :goto_34

    nop

    nop

    nop

    nop

    :cond_1a
    invoke-interface {v14, v13}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    nop

    check-cast v13, [F

    nop

    nop

    const/4 v14, 0x0

    nop

    invoke-static {v13, v14}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    nop

    nop

    check-cast v13, [F

    nop

    nop

    nop

    :goto_34
    iget v3, v3, Lsyi;->w:I

    nop

    nop

    nop

    nop

    aput v3, v10, v16

    nop

    aput-object v5, v11, v16

    nop

    nop

    aput-object v8, v12, v16

    nop

    nop

    nop

    nop

    add-int/lit8 v3, v16, 0x1

    nop

    aput-object v13, v15, v16

    nop

    nop

    nop

    nop

    nop

    move/from16 v16, v3

    nop

    move-object/from16 v8, v17

    nop

    nop

    move-object/from16 v13, v22

    nop

    nop

    nop

    move-object/from16 v5, v57

    nop

    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    move-object/from16 v57, v5

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v22, v13

    nop

    move-object v3, v4

    nop

    nop

    nop

    check-cast v3, Lwireless/android/learning/acmi/p11/metadata/P11MetadataSerializer;

    nop

    nop

    nop

    iget-object v3, v3, Lwireless/android/learning/acmi/p11/metadata/P11MetadataSerializer;->b:Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

    nop

    nop

    check-cast v2, Lcom/google/googlex/gcam/GyroSampleVector;

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    invoke-virtual {v3, v7, v2, v5, v6}, Ltbt;->w(Lpro;Lcom/google/googlex/gcam/GyroSampleVector;Ljava/util/Map;Lpnx;)Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object v2

    nop

    nop

    nop

    check-cast v4, Lwireless/android/learning/acmi/p11/metadata/P11MetadataSerializer;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v4, Lwireless/android/learning/acmi/p11/metadata/P11MetadataSerializer;->b:Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v7}, Ltbt;->q(Lpro;)Lcom/google/googlex/gcam/SpatialGainMap;

    move-result-object v3

    nop

    nop

    nop

    nop

    const/16 v4, 0x7530

    nop

    nop

    nop

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    nop

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    nop

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->SENSOR_ROLLING_SHUTTER_SKEW:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    invoke-interface {v7, v8}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    check-cast v7, Ljava/lang/Long;

    nop

    nop

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    nop

    nop

    nop

    nop

    const/4 v13, 0x0

    nop

    aget v25, v9, v13

    nop

    nop

    nop

    nop

    const/4 v13, 0x1

    nop

    nop

    nop

    aget v26, v9, v13

    nop

    const/4 v13, 0x2

    nop

    nop

    aget v27, v9, v13

    nop

    nop

    nop

    const/4 v13, 0x3

    nop

    nop

    nop

    aget v28, v9, v13

    nop

    move-object/from16 v13, v22

    nop

    iget v9, v13, Landroid/graphics/Rect;->left:I

    nop

    iget v14, v13, Landroid/graphics/Rect;->top:I

    nop

    nop

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v35

    nop

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v36

    nop

    nop

    nop

    invoke-static {v2}, Lcom/google/googlex/gcam/FrameMetadata;->c(Lcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v52

    nop

    nop

    iget-wide v2, v3, Lcom/google/googlex/gcam/SpatialGainMap;->a:J

    nop

    nop

    move-wide/from16 v22, v7

    nop

    move/from16 v33, v9

    nop

    nop

    nop

    nop

    move/from16 v34, v14

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v46, v10

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v47, v11

    nop

    move-object/from16 v48, v12

    nop

    nop

    nop

    move-object/from16 v49, v15

    nop

    nop

    nop

    nop

    move-wide/from16 v54, v2

    nop

    move-object/from16 v56, v4

    nop

    nop

    nop

    nop

    invoke-static/range {v22 .. v56}, Lwireless/android/learning/acmi/p11/metadata/P11MetadataSerializer;->nativeSerializeImageMetadata(JFIIIII[F[F[FIIIIFF[FI[F[FF[F[F[I[[J[[F[[FFFJJLjava/nio/ByteBuffer;)I

    move-result v2

    nop

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    nop

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    nop

    sub-long/2addr v7, v5

    nop

    nop

    long-to-float v5, v7

    nop

    nop

    nop

    nop

    const v6, 0x49742400    # 1000000.0f

    nop

    nop

    nop

    nop

    div-float/2addr v5, v6

    nop

    nop

    nop

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    nop

    nop

    nop

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    nop

    const-string v6, "serializeImageMetadata took %.2f ms"

    nop

    nop

    invoke-static {v3, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-ltz v2, :cond_0

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual/range {v57 .. v57}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Lpaf;

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Lgsh;

    nop

    nop

    nop

    nop

    invoke-direct {v3, v4}, Lgsh;-><init>(Ljava/nio/ByteBuffer;)V

    move-wide/from16 v4, v20

    nop

    nop

    invoke-interface {v2, v3, v4, v5}, Lpaf;->c(Lpae;J)V
    :try_end_8
    .catch Luua; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_35
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final close()V
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

    nop

    :goto_1
    invoke-virtual {p0}, Lows;->close()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lgsi;->g:Lows;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final f(Lgqg;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-boolean p0, p1, Lgqg;->L:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop
.end method
