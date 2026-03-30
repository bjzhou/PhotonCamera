.class public final Lugr;
.super Lugq;
.source "PG"

# interfaces
.implements Lufz;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lumu;->a:Ljava/lang/reflect/Method;

    nop

    nop

    :try_start_0
    instance-of p0, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    nop

    nop

    nop

    nop

    nop

    if-eqz p0, :cond_0

    nop

    nop

    check-cast p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    nop

    nop

    nop

    goto :goto_1

    nop

    :cond_0
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    sget-object p0, Lumu;->a:Ljava/lang/reflect/Method;

    nop

    if-eqz p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_2
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

    :goto_4
    invoke-direct {p0}, Lugq;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_5
    iput-object p1, p0, Lugr;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method private static final e(Luad;Ljava/util/concurrent/RejectedExecutionException;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "The task was rejected"

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

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1}, Lucu;->q(Luad;Ljava/util/concurrent/CancellationException;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, p1}, Luch;->K(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

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
.end method

.method private static final i(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Luad;J)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    invoke-interface {p0, p1, p3, p4, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p2, p0}, Lugr;->e(Luad;Ljava/util/concurrent/RejectedExecutionException;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Luad;Ljava/lang/Runnable;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lugr;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Lufp;->a(Luad;Ljava/lang/Runnable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p0, Luge;->b:Lufp;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1, p0}, Lugr;->e(Luad;Ljava/util/concurrent/RejectedExecutionException;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final c(JLuez;)V
    .locals 4

    goto/32 :goto_5

    nop

    nop

    :goto_0
    goto/16 :goto_11

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    :goto_5
    const v0, 0x7

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, v2, p1}, Luex;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1, p2, p3}, Lugo;->c(JLuez;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

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

    :goto_a
    goto/32 :goto_20

    nop

    nop

    :goto_b
    goto/32 :goto_17

    nop

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

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v3, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_e
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lufa;->b:Luad;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move-object v0, v2

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v0, v1, p0, p1, p2}, Lugr;->i(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Luad;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v1, Lerm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    if-nez v2, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lugr;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_18
    sget-object p0, Lufw;->a:Lufw;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    :goto_1a
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1b
    move-object p0, p3

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1c
    check-cast p0, Lufa;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v1, p0, p3, v3, v2}, Lerm;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1e
    instance-of v1, v0, Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    :goto_20
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_21
    check-cast p3, Lufa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p3, p0}, Lufa;->z(Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_23
    new-instance p0, Luex;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_24
    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    instance-of v0, p0, Ljava/util/concurrent/ExecutorService;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :goto_8
    goto/32 :goto_6

    nop

    nop

    :goto_9
    iget-object p0, p0, Lugr;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p0, Ljava/util/concurrent/ExecutorService;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    instance-of v0, p1, Lugr;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    if-eq p1, p0, :cond_1

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

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p1, Lugr;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lugr;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p1, Lugr;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final h(JLjava/lang/Runnable;Luad;)Lugg;
    .locals 2

    goto/32 :goto_5

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
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_11

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    instance-of v0, p0, Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_9
    invoke-static {p0, p3, p4, p1, p2}, Lugr;->i(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Luad;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    sget-object p0, Lufw;->a:Lufw;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lugr;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1, p2, p3}, Lugo;->v(JLjava/lang/Runnable;)Lugg;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move-object p0, v1

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_18

    nop

    nop

    :goto_12
    goto :goto_e

    nop

    nop

    :goto_13
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0, v1}, Lugf;-><init>(Ljava/util/concurrent/Future;)V

    goto/32 :goto_12

    nop

    nop

    :goto_16
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_c

    nop

    nop

    :goto_1b
    new-instance p0, Lugf;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1a

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lugr;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

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

    :goto_1
    iget-object p0, p0, Lugr;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop
.end method
