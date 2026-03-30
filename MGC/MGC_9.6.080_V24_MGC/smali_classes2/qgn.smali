.class public final Lqgn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lsui;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lqgn;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lqgn;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 2

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lqgn;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_2
    throw p0

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v0, Lqgo;

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

    :goto_7
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lqgn;->b:Ljava/lang/Object;

    nop

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

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lqgo;->f()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_7

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

    goto/32 :goto_1

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    monitor-enter v0

    nop

    :try_start_1
    iget-object v1, p0, Lqgn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lqgo;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lqgo;->f()Z

    move-result v1

    nop

    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lqgn;->b:Ljava/lang/Object;

    nop

    check-cast p0, Lqgo;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p2, p1}, Lqgo;->k(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_2
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lqgn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0, p1, p2}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lqgn;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x9

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_19
    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop
.end method

.method public final cancel(Z)Z
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    const-string p1, "Cancellation of future is invalid."

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    return p0

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    iget p0, p0, Lqgn;->a:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    :goto_8
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lqgn;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

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

    :goto_2
    invoke-interface {p0}, Lsui;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lqgn;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    :goto_5
    :try_start_0
    iget-object p0, p0, Lqgn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Lqgo;

    nop

    invoke-virtual {p0}, Lqgo;->e()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Lqft; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_8

    nop

    nop

    :goto_8
    throw v0

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lqgn;->a:I

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

    :goto_1
    iget-object v0, p0, Lqgn;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Lqgn;->isDone()Z

    move-result v1

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    iget-object v1, p0, Lqgn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p3, v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    invoke-virtual {p0}, Lqgn;->isDone()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    goto :goto_3

    nop

    nop

    :cond_0
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p0

    nop

    nop

    nop

    :cond_1
    :goto_3
    iget-object p1, p0, Lqgn;->b:Ljava/lang/Object;

    nop

    nop

    check-cast p1, Lqgo;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lqgo;->a:Ljava/lang/Object;

    nop

    nop

    if-eqz p1, :cond_2

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-object p1

    nop

    nop

    nop

    nop

    :cond_2
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lqgn;->b:Ljava/lang/Object;

    nop

    nop

    check-cast p0, Lqgo;

    nop

    nop

    iget-object p0, p0, Lqgo;->b:Lqft;

    nop

    nop

    nop

    invoke-direct {p1, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x17

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

    :goto_5
    const v0, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_4
    goto/32 :goto_8

    nop

    :goto_10
    invoke-interface {p0, p1, p2, p3}, Lsui;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lqgn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method

.method public final isCancelled()Z
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lqgn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    invoke-interface {p0}, Lsui;->isCancelled()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    iget v0, p0, Lqgn;->a:I

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

.method public final isDone()Z
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lqgo;->f()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Lsui;->isDone()Z

    move-result p0

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

    :goto_4
    check-cast p0, Lqgo;

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

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    iget v0, p0, Lqgn;->a:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lqgn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method
