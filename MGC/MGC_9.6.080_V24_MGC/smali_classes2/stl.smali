.class final Lstl;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lstn;

.field b:Ljava/util/concurrent/Executor;

.field c:Ljava/lang/Runnable;

.field d:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lstn;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lstk;->a:Lstk;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    iput-object p1, p0, Lstl;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p2, p0, Lstl;->a:Lstn;

    nop

    goto/32 :goto_3

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

    :goto_4
    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 4

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v1, Lstk;->b:Lstk;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xf

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v2, p0, Lstl;->d:Ljava/lang/Thread;

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

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    :goto_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_7
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Lstl;->d:Ljava/lang/Thread;

    nop

    :try_start_0
    iget-object v0, p0, Lstl;->a:Lstn;

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lstn;->a:Lstm;

    nop

    nop

    nop

    iget-object v1, v0, Lstm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lstl;->d:Ljava/lang/Thread;

    nop

    nop

    if-ne v1, v3, :cond_1

    nop

    nop

    nop

    nop

    iput-object v2, p0, Lstl;->a:Lstn;

    nop

    nop

    nop

    iget-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    goto :goto_a

    nop

    nop

    :cond_0
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v1}, Lrrf;->x(Z)V

    iput-object p1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lstl;->b:Ljava/util/concurrent/Executor;

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v0, Lstm;->c:Ljava/lang/Object;

    nop

    nop

    nop

    iput-object v2, p0, Lstl;->b:Ljava/util/concurrent/Executor;

    nop

    goto :goto_b

    nop

    nop

    nop

    :cond_1
    iget-object v0, p0, Lstl;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p0, Lstl;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    iput-object p1, p0, Lstl;->c:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v2, p0, Lstl;->b:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    iput-object v2, p0, Lstl;->a:Lstn;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v2, p0, Lstl;->d:Ljava/lang/Thread;

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

    :goto_10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    nop

    goto/32 :goto_9

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
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    :goto_14
    goto/32 :goto_5

    nop

    :goto_15
    invoke-virtual {p0}, Lstl;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

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

    :goto_17
    if-eq v0, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_18
    const v0, 0x15

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

    nop

    nop
.end method

.method public final run()V
    .locals 3

    goto/32 :goto_5

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

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v2, v1, Lstm;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Lstl;->d:Ljava/lang/Thread;

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    :goto_5
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    iput-object v2, p0, Lstl;->c:Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    iput-object v2, v1, Lstm;->a:Ljava/lang/Object;

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

    :goto_8
    const v1, 0x1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lstl;->a:Lstn;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_a
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v2, p0, Lstl;->a:Lstn;

    nop

    :try_start_0
    iget-object v0, p0, Lstl;->c:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p0, Lstl;->c:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_c
    iget-object p0, v1, Lstm;->b:Ljava/lang/Object;

    nop

    nop

    if-eqz p0, :cond_1

    nop

    iget-object v0, v1, Lstm;->c:Ljava/lang/Object;

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    iput-object v2, v1, Lstm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    iput-object v2, v1, Lstm;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v0, v1, Lstm;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v1}, Lstm;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v1, v0, Lstn;->a:Lstm;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lstl;->c:Ljava/lang/Runnable;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v1, Lstm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_1c
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1f
    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop
.end method
