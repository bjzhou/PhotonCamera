.class public final Lqyt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqyn;


# instance fields
.field private final a:Ltxm;


# direct methods
.method public constructor <init>(Ltxm;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object p1, p0, Lqyt;->a:Ltxm;

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x3

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

    :goto_1
    new-instance v1, Lqys;

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

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_3
    invoke-direct {v1, p0, v0}, Lqys;-><init>(Lqyt;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    :goto_8
    const v1, 0xc

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

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

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method final synthetic b(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 11

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_1a

    nop

    nop

    :goto_1
    const-wide/16 v8, 0xfa0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p1, p2, p3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    add-long/2addr v7, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_17

    nop

    nop

    nop

    :catchall_0
    move-exception v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    if-nez p1, :cond_1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    goto/32 :goto_1a

    nop

    :cond_2
    goto/32 :goto_19

    nop

    :goto_c
    const/4 v9, 0x1

    nop

    nop

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_d
    sub-long/2addr v8, v5

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    nop

    nop

    nop

    nop

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_4

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    move v9, p0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    :try_start_2
    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    invoke-interface {v4, v5, v6, v10}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move v9, p0

    nop

    nop

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
    goto :goto_10

    nop

    nop

    nop

    :catchall_1
    move-exception v4

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_14
    goto/16 :goto_25

    nop

    nop

    :catchall_2
    move-exception v4

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_25

    nop

    nop

    nop

    :cond_3
    const/4 p0, 0x0

    nop

    nop

    new-array v4, p0, [Lsui;

    nop

    nop

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, [Lsui;

    nop

    nop

    nop

    nop

    nop

    new-instance v4, Lstz;

    nop

    invoke-direct {v4, v3}, Lstz;-><init>([Lsui;)V

    array-length v5, v3

    nop

    nop

    invoke-static {v5}, Lryb;->e(I)Lrxw;

    move-result-object v5

    nop

    nop

    nop

    move v6, p0

    nop

    nop

    nop

    :goto_15
    array-length v7, v3

    nop

    if-ge v6, v7, :cond_4

    nop

    new-instance v7, Lsty;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v7, v4}, Lsty;-><init>(Lstz;)V

    invoke-virtual {v5, v7}, Lrxw;->h(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    goto :goto_15

    nop

    nop

    nop

    :cond_4
    invoke-virtual {v5}, Lrxw;->g()Lryb;

    move-result-object v5

    nop

    nop

    nop

    move v6, p0

    nop

    nop

    nop

    :goto_16
    array-length v7, v3

    nop

    if-ge v6, v7, :cond_5

    nop

    nop

    aget-object v7, v3, v6

    nop

    nop

    nop

    nop

    new-instance v8, Lstv;

    nop

    nop

    invoke-direct {v8, v4, v5, v6, p0}, Lstv;-><init>(Lstz;Lryb;II)V

    sget-object v9, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    invoke-interface {v7, v8, v9}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    add-int/lit8 v6, v6, 0x1

    nop

    nop

    goto :goto_16

    nop

    :cond_5
    invoke-virtual {v5}, Lryb;->t()Lscq;

    move-result-object v3

    nop

    nop

    nop

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    if-eqz v4, :cond_7

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Lsui;

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    :catchall_3
    move-exception p0

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

    :goto_19
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_24

    nop

    nop

    :goto_1b
    if-nez v9, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_6
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    nop

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    :goto_1c
    throw v4

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v4

    nop

    nop

    nop

    :try_start_5
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    if-eqz v0, :cond_8

    nop

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/lang/Throwable;

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1e
    sub-long v5, v7, v5

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1f
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    nop

    :catch_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {p1, p2, p3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_21
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_22
    goto :goto_1d

    nop

    :cond_8
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_23
    sub-long/2addr v5, v0

    nop

    nop

    nop

    :try_start_6
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto/32 :goto_1

    nop

    nop

    :goto_24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    nop

    nop

    nop

    :try_start_7
    new-instance v2, Ljava/util/ArrayList;

    nop

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    if-ne p2, v3, :cond_7

    nop

    iget-object p0, p0, Lqyt;->a:Ltxm;

    nop

    check-cast p0, Ltuo;

    nop

    nop

    iget-object p0, p0, Ltuo;->a:Ljava/lang/Object;

    nop

    nop

    check-cast p0, Ljava/util/Set;

    nop

    nop

    nop

    nop

    new-instance v3, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v4

    nop

    nop

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    :goto_25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_3

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    check-cast v4, Lqyr;

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-interface {v4}, Lqyr;->a()Lsui;

    move-result-object v4

    nop

    nop

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v9, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_9
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V
    :try_end_9
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0x6

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_28
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop
.end method
