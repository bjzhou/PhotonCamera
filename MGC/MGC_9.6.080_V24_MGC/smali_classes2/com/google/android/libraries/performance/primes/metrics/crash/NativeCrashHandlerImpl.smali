.class public final Lcom/google/android/libraries/performance/primes/metrics/crash/NativeCrashHandlerImpl;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final a:Ljava/util/concurrent/CountDownLatch;

.field final b:Ljava/util/concurrent/CountDownLatch;

.field private c:Z

.field private final d:Lrss;

.field private final e:Ltxm;

.field private final f:Ltxm;

.field private final g:Ltxm;


# direct methods
.method public constructor <init>(Lrss;Ltxm;Ltxm;Ltxm;)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/metrics/crash/NativeCrashHandlerImpl;->b:Ljava/util/concurrent/CountDownLatch;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p4, p0, Lcom/google/android/libraries/performance/primes/metrics/crash/NativeCrashHandlerImpl;->g:Ltxm;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    iput-object p3, p0, Lcom/google/android/libraries/performance/primes/metrics/crash/NativeCrashHandlerImpl;->f:Ltxm;

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

    :goto_7
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    nop

    :goto_b
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    goto/32 :goto_e

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/metrics/crash/NativeCrashHandlerImpl;->a:Ljava/util/concurrent/CountDownLatch;

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
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    goto/32 :goto_1

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

    goto/32 :goto_a

    nop

    nop

    :goto_11
    iput-object p2, p0, Lcom/google/android/libraries/performance/primes/metrics/crash/NativeCrashHandlerImpl;->e:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

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

    :goto_13
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x1

    nop

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

    :goto_15
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/metrics/crash/NativeCrashHandlerImpl;->d:Lrss;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method

.method private static native awaitSignal(Z)Landroid/util/Pair;
.end method

.method private static native initializeSignalHandler(Z)Z
.end method

.method private static native unblockSignalHandler()V
.end method


# virtual methods
.method public final declared-synchronized a(Lqpy;)V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/libraries/performance/primes/metrics/crash/NativeCrashHandlerImpl;->c:Z

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/lang/Thread;

    nop

    new-instance v2, Lqqg;

    nop

    nop

    invoke-direct {v2, p0, p1}, Lqqg;-><init>(Lcom/google/android/libraries/performance/primes/metrics/crash/NativeCrashHandlerImpl;Lqpy;)V

    const-string p1, "Primes-nativecrash-sidecar"

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    const/16 p1, 0xa

    nop

    invoke-virtual {v1, p1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    const v0, 0x3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    goto/32 :goto_5

    nop

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
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_4

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

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_9
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/libraries/performance/primes/metrics/crash/NativeCrashHandlerImpl;->c:Z

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

    nop

    :goto_f
    return-void

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

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    throw p1

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic b(Lqpy;)V
    .locals 10

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p1, "unable to initialize signal handler"

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    check-cast p0, Lscz;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_4
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_5
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    :goto_8
    goto/32 :goto_2f

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

    goto/32 :goto_1a

    nop

    nop

    :goto_a
    goto/16 :goto_21

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    goto/32 :goto_20

    nop

    nop

    :goto_b
    sget-object p1, Lqmo;->a:Lsdb;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

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

    :goto_e
    throw p0

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p0

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

    nop

    nop

    :goto_f
    invoke-static {}, Lcom/google/android/libraries/performance/primes/metrics/crash/NativeCrashHandlerImpl;->unblockSignalHandler()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    throw p0

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_14
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/metrics/crash/NativeCrashHandlerImpl;->initializeSignalHandler(Z)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v0, Ljava/lang/Boolean;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_19
    sget-object p0, Lqmo;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_8

    nop

    :goto_1d
    return-void

    nop

    nop

    :goto_1e
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/metrics/crash/NativeCrashHandlerImpl;->a:Ljava/util/concurrent/CountDownLatch;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/metrics/crash/NativeCrashHandlerImpl;->g:Ltxm;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/metrics/crash/NativeCrashHandlerImpl;->awaitSignal(Z)Landroid/util/Pair;

    move-result-object v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1f
    const/16 p1, 0x1531

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_20
    move-object v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_21
    :try_start_1
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/lang/Thread;

    nop

    nop

    nop

    if-eqz v2, :cond_d

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_2c

    nop

    nop

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    iget-object v4, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    if-nez v4, :cond_2

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_2
    iget-object v4, v2, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v4, Ltor;

    nop

    sget-object v5, Ltor;->a:Ltor;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v4, Ltor;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v5, v5, 0x20

    nop

    nop

    nop

    iput v5, v4, Ltor;->b:I

    nop

    nop

    nop

    nop

    iput-object v3, v4, Ltor;->d:Ljava/lang/String;

    nop

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    nop

    iget-object v5, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    if-nez v5, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_3
    iget-object v5, v2, Ltkb;->b:Ltkg;

    nop

    check-cast v5, Ltor;

    nop

    nop

    iget v6, v5, Ltor;->b:I

    nop

    or-int/lit8 v6, v6, 0x10

    nop

    nop

    nop

    nop

    nop

    iput v6, v5, Ltor;->b:I

    nop

    nop

    iput-wide v3, v5, Ltor;->c:J

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    nop

    nop

    nop

    array-length v3, v0

    nop

    const/4 v4, 0x0

    nop

    :goto_22
    if-ge v4, v3, :cond_d

    nop

    nop

    nop

    aget-object v5, v0, v4

    nop

    nop

    nop

    nop

    nop

    sget-object v6, Ltoq;->a:Ltoq;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkg;->m()Ltkb;

    move-result-object v6

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    nop

    iget-object v8, v6, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    nop

    if-nez v8, :cond_4

    nop

    nop

    invoke-virtual {v6}, Ltkb;->o()V

    :cond_4
    iget-object v8, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Ltoq;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v9, v8, Ltoq;->b:I

    nop

    nop

    nop

    or-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    nop

    nop

    iput v9, v8, Ltoq;->b:I

    nop

    nop

    iput-object v7, v8, Ltoq;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    iget-object v8, v6, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    nop

    nop

    if-nez v8, :cond_5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkb;->o()V

    :cond_5
    iget-object v8, v6, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v8, Ltoq;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v9, v8, Ltoq;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v9, v9, 0x2

    nop

    nop

    iput v9, v8, Ltoq;->b:I

    nop

    iput-object v7, v8, Ltoq;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    iget-object v8, v6, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    if-nez v8, :cond_6

    nop

    invoke-virtual {v6}, Ltkb;->o()V

    :cond_6
    iget-object v8, v6, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v8, Ltoq;

    nop

    nop

    nop

    nop

    iget v9, v8, Ltoq;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v9, v9, 0x8

    nop

    nop

    nop

    nop

    nop

    iput v9, v8, Ltoq;->b:I

    nop

    nop

    iput v7, v8, Ltoq;->f:I

    nop

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    if-eqz v5, :cond_8

    nop

    nop

    nop

    nop

    iget-object v7, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    if-nez v7, :cond_7

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkb;->o()V

    :cond_7
    iget-object v7, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v7, Ltoq;

    nop

    nop

    nop

    iget v8, v7, Ltoq;->b:I

    nop

    nop

    or-int/lit8 v8, v8, 0x4

    nop

    nop

    iput v8, v7, Ltoq;->b:I

    nop

    iput-object v5, v7, Ltoq;->e:Ljava/lang/String;

    nop

    nop

    nop

    :cond_8
    iget-object v5, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    if-nez v5, :cond_9

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_9
    iget-object v5, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Ltor;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkb;->i()Ltkg;

    move-result-object v6

    nop

    nop

    check-cast v6, Ltoq;

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v5, Ltor;->e:Ltkv;

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Ltkv;->c()Z

    move-result v8

    nop

    if-nez v8, :cond_a

    nop

    invoke-static {v7}, Ltkg;->v(Ltkv;)Ltkv;

    move-result-object v7

    nop

    nop

    nop

    iput-object v7, v5, Ltor;->e:Ltkv;

    nop

    :cond_a
    iget-object v5, v5, Ltor;->e:Ltkv;

    nop

    nop

    nop

    invoke-interface {v5, v6}, Ltkv;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto/32 :goto_4

    nop

    nop

    :goto_23
    if-lez v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_7

    nop

    :goto_24
    goto/16 :goto_31

    nop

    :goto_25
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p0, p0, Lcom/google/android/libraries/performance/primes/metrics/crash/NativeCrashHandlerImpl;->b:Ljava/util/concurrent/CountDownLatch;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v0, v1, p1, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_22

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    sget-object v3, Lqmo;->a:Lsdb;

    nop

    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-interface {v3, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const/16 v3, 0x1530

    nop

    nop

    nop

    nop

    invoke-interface {v0, v3}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    const-string v3, "unable to populate java stack frames"

    nop

    invoke-interface {v0, v3}, Lscz;->s(Ljava/lang/String;)V

    goto :goto_2c

    nop

    nop

    :goto_2b
    move-object v2, v1

    nop

    nop

    nop

    nop

    :cond_d
    :goto_2c
    iget-object p0, p0, Lcom/google/android/libraries/performance/primes/metrics/crash/NativeCrashHandlerImpl;->f:Ltxm;

    nop

    nop

    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    check-cast p0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    if-eqz p0, :cond_e

    nop

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    :cond_e
    if-eqz v2, :cond_f

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    nop

    nop

    nop

    move-object v1, p0

    nop

    nop

    check-cast v1, Ltor;

    nop

    nop

    nop

    nop

    :cond_f
    sget-object p0, Landroid/os/StrictMode$ThreadPolicy;->LAX:Landroid/os/StrictMode$ThreadPolicy;

    nop

    invoke-static {p0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    sget-object p0, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    nop

    invoke-static {p0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    move-object p0, p1

    nop

    nop

    check-cast p0, Lqqa;

    nop

    iget-object p0, p0, Lqqa;->g:Lqts;

    nop

    nop

    nop

    nop

    move-object v0, p1

    nop

    nop

    nop

    nop

    check-cast v0, Lqqa;

    nop

    nop

    iget-object v0, v0, Lqqa;->a:Lqmf;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Lqts;->a(Lqmf;)Ltkb;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_10

    nop

    nop

    invoke-virtual {p0}, Ltkb;->o()V

    :cond_10
    iget-object v0, p0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Luqp;

    nop

    nop

    sget-object v2, Luqp;->a:Luqp;

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x5

    nop

    nop

    iput v2, v0, Luqp;->g:I

    nop

    nop

    nop

    nop

    nop

    iget v2, v0, Luqp;->b:I

    nop

    nop

    or-int/lit8 v2, v2, 0x10

    nop

    nop

    nop

    iput v2, v0, Luqp;->b:I

    nop

    nop

    nop

    if-eqz v1, :cond_12

    nop

    nop

    iget-object v0, p0, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_11

    nop

    invoke-virtual {p0}, Ltkb;->o()V

    :cond_11
    iget-object v0, p0, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v0, Luqp;

    nop

    iput-object v1, v0, Luqp;->j:Ltor;

    nop

    nop

    nop

    iget v1, v0, Luqp;->b:I

    nop

    nop

    nop

    or-int/lit16 v1, v1, 0x200

    nop

    nop

    nop

    iput v1, v0, Luqp;->b:I

    nop

    nop

    :cond_12
    invoke-virtual {p0}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Luqp;

    nop

    check-cast p1, Lqqa;

    nop

    nop

    invoke-virtual {p1, p0}, Lqqa;->l(Luqp;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v0, :cond_13

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_13
    :try_start_3
    sget-object v2, Ltor;->a:Ltor;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkg;->m()Ltkb;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    nop

    check-cast v3, Ljava/nio/ByteBuffer;

    nop

    invoke-static {v3}, Ltjn;->L(Ljava/nio/ByteBuffer;)Ltjn;

    move-result-object v3

    nop

    nop

    nop

    nop

    sget-object v4, Ltjv;->a:Ltjv;

    nop

    nop

    nop

    nop

    sget-object v4, Ltlz;->a:Ltlz;

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Ltjv;->a:Ltjv;

    nop

    invoke-virtual {v2, v3, v4}, Ltkb;->q(Ltjn;Ltjv;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_a

    nop

    nop

    :goto_2e
    const/16 v1, 0x1532

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/metrics/crash/NativeCrashHandlerImpl;->d:Lrss;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_30
    return-void

    nop

    :goto_31
    :try_start_4
    const-string v0, "native_crash_handler_jni"

    nop

    nop

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    const-string v0, "read P/H"

    nop

    nop

    nop

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/metrics/crash/NativeCrashHandlerImpl;->e:Ltxm;

    nop

    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_32
    if-eqz v0, :cond_14

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {}, Lcom/google/android/libraries/performance/primes/metrics/crash/NativeCrashHandlerImpl;->unblockSignalHandler()V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_34
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_35
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_37
    check-cast v0, Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_38
    const-string v0, "unable to load native_crash_handler_jni"

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const v0, 0x1a

    nop

    goto/32 :goto_14

    nop

    nop

    nop
.end method
