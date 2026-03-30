.class public final Lufw;
.super Lugo;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static volatile _thread:Ljava/lang/Thread;

.field public static final a:Lufw;

.field private static volatile debugStatus:I

.field private static final e:J


# direct methods
.method private final declared-synchronized 175bafa759041016accb75ef876de5d9m()Z
    .locals 1

    goto/32 :goto_0

    nop

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
    invoke-static {}, Lufw;->C()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    :try_start_1
    sput v0, Lufw;->debugStatus:I

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    throw v0

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return v0

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

    :try_start_2
    monitor-exit p0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method private final declared-synchronized 7dd154808b1c676d3d63f3a63e9edabfm()Ljava/lang/Thread;
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    return-object v1

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    :goto_3
    const v1, 0x9

    nop

    nop

    goto/32 :goto_1

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    :goto_9
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    sget-object v0, Lufw;->_thread:Ljava/lang/Thread;

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    const-string v0, "kotlinx.coroutines.DefaultExecutor"

    nop

    new-instance v1, Ljava/lang/Thread;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v1, Lufw;->_thread:Ljava/lang/Thread;

    nop

    nop

    nop

    nop

    sget-object v0, Lufw;->a:Lufw;

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    const/4 v0, 0x1

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1d

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
.end method

.method private final declared-synchronized 92ebcae27b5395a18af07a7e07265cf7m()V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

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

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x3

    nop

    :try_start_1
    sput v0, Lufw;->debugStatus:I

    nop

    nop

    nop

    iget-object v0, p0, Lugo;->c:Lueq;

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    invoke-virtual {v0, v1}, Lueq;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lugo;->d:Lueq;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lueq;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x15

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    nop

    :try_start_2
    invoke-static {}, Lufw;->C()Z

    move-result v0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    :goto_11
    monitor-exit p0

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
.end method

.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lufw;->a:Lufw;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lufw;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

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

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Lugj;->u(Lugj;)V

    goto/32 :goto_10

    nop

    nop

    :goto_a
    const v0, 0x1c

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0}, Lufw;-><init>()V

    goto/32 :goto_0

    nop

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

    goto/32 :goto_15

    nop

    nop

    :goto_d
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    goto :goto_e

    nop

    nop

    :catch_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    const v1, 0x1f

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

    :goto_12
    const-wide/16 v1, 0x3e8

    nop

    :try_start_0
    const-string v3, "kotlinx.coroutines.DefaultExecutor.keepAlive"

    nop

    nop

    nop

    invoke-static {v3, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    nop

    nop
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    sput-wide v0, Lufw;->e:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop
.end method

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_1

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
    invoke-direct {p0}, Lugo;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method private static final C()Z
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    const v0, 0xa

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

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

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

    :goto_6
    goto/32 :goto_4

    nop

    nop

    :goto_7
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    return v0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eq v0, v1, :cond_1

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    :goto_b
    sget v0, Lufw;->debugStatus:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x3

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x10

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
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

    :goto_13
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    :goto_14
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method private static final D()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw v0

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
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    const v0, 0xf

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x5

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

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    const-string v1, "DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop
.end method


# virtual methods
.method protected final e()Ljava/lang/Thread;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Lufw;->7dd154808b1c676d3d63f3a63e9edabfm()Ljava/lang/Thread;

    move-result-object p0

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

    :goto_5
    sget-object v0, Lufw;->_thread:Ljava/lang/Thread;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final h(JLjava/lang/Runnable;Luad;)Lugg;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lugo;->v(JLjava/lang/Runnable;)Lugg;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i(Ljava/lang/Runnable;)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Lugo;->i(Ljava/lang/Runnable;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {}, Lufw;->D()V

    :goto_9
    goto/32 :goto_0

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_e
    const/4 v1, 0x4

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget v0, Lufw;->debugStatus:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method protected final j(JLugm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Lufw;->D()V

    goto/32 :goto_1

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
.end method

.method public final k()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_3

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

    :goto_2
    invoke-super {p0}, Lugo;->k()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    sput v0, Lufw;->debugStatus:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final run()V
    .locals 10

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lugo;->y()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x9

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

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v0, Luhu;->a:Ljava/lang/ThreadLocal;

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_5
    invoke-direct {p0}, Lufw;->92ebcae27b5395a18af07a7e07265cf7m()V

    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-direct {p0}, Lufw;->92ebcae27b5395a18af07a7e07265cf7m()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw v1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_b
    return-void

    nop

    :catchall_0
    move-exception v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    sput-object v0, Lufw;->_thread:Ljava/lang/Thread;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lufw;->e()Ljava/lang/Thread;

    :goto_e
    goto/32 :goto_b

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lufw;->e()Ljava/lang/Thread;

    :goto_10
    goto/32 :goto_11

    nop

    nop

    :goto_11
    const-string v0, "ERROR_Lufw"

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_17

    nop

    :cond_2
    :goto_13
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-direct {p0}, Lufw;->175bafa759041016accb75ef876de5d9m()Z

    move-result v1

    nop

    if-nez v1, :cond_3

    nop

    nop

    goto :goto_13

    nop

    nop

    nop

    :cond_3
    const-wide v1, 0x7fffffffffffffffL

    nop

    nop

    nop

    nop

    move-wide v3, v1

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :goto_17
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    invoke-virtual {p0}, Lugj;->l()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    cmp-long v7, v5, v1

    nop

    nop

    const-wide/16 v8, 0x0

    nop

    nop

    nop

    if-nez v7, :cond_6

    nop

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    nop

    nop

    cmp-long v7, v3, v1

    nop

    if-nez v7, :cond_5

    nop

    nop

    nop

    nop

    nop

    sget-wide v3, Lufw;->e:J

    nop

    nop

    add-long/2addr v3, v5

    nop

    nop

    :cond_5
    sub-long v5, v3, v5

    nop

    nop

    cmp-long v7, v5, v8

    nop

    if-lez v7, :cond_2

    nop

    nop

    nop

    invoke-static {v1, v2, v5, v6}, Lucd;->l(JJ)J

    move-result-wide v5

    nop

    nop

    nop

    nop

    goto :goto_18

    nop

    :cond_6
    move-wide v3, v1

    nop

    nop

    nop

    nop

    :goto_18
    cmp-long v7, v5, v8

    nop

    nop

    nop

    nop

    nop

    if-lez v7, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Lufw;->C()Z

    move-result v7

    nop

    nop

    nop

    if-nez v7, :cond_2

    nop

    invoke-static {p0, v5, v6}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_12

    nop

    nop

    :goto_19
    sput-object v0, Lufw;->_thread:Ljava/lang/Thread;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v0, Luhu;->a:Ljava/lang/ThreadLocal;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1b
    if-eqz v0, :cond_7

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1d
    const v0, 0xe

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1e
    goto/32 :goto_3

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Lugo;->y()Z

    move-result v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_21
    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_7

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

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
    const-string p0, "DefaultExecutor"

    nop

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
