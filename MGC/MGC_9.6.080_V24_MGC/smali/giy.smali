.class public final Lgiy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private a:Z

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    goto/32 :goto_2

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
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lgiy;->c:Ljava/util/concurrent/Executor;

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

    :goto_5
    iput-object v0, p0, Lgiy;->b:Ljava/util/List;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ljava/util/ArrayList;

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

    :goto_7
    iput-boolean p1, p0, Lgiy;->a:Z

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lgiy;->a:Z

    nop

    const/4 v1, 0x1

    nop

    xor-int/2addr v0, v1

    nop

    nop

    invoke-static {v0}, Lrrf;->x(Z)V

    iput-boolean v1, p0, Lgiy;->a:Z

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_7
    rem-int v0, v0, v1

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

    nop

    :goto_8
    throw v0

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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
.end method

.method public final declared-synchronized b()V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lgiy;->a:Z

    nop

    invoke-static {v0}, Lrrf;->x(Z)V

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-boolean v0, p0, Lgiy;->a:Z

    nop

    nop

    nop

    iget-object v0, p0, Lgiy;->b:Ljava/util/List;

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_0

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Runnable;

    nop

    iget-object v2, p0, Lgiy;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    nop

    :cond_0
    iget-object v0, p0, Lgiy;->b:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_d
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :catchall_0
    move-exception p1

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lgiy;->a:Z

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lgiy;->b:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :cond_0
    :try_start_2
    iget-object v0, p0, Lgiy;->b:Ljava/util/List;

    nop

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    const-string v1, "LatchExecutor: Bad pending task."

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v1}, Lrrf;->y(ZLjava/lang/Object;)V

    iget-object v0, p0, Lgiy;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_9
    const v0, 0x17

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    throw p1

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method
