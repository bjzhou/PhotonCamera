.class public final Ljre;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final synthetic a:Ljrf;

.field private final b:Ljava/util/concurrent/Future;

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private final f:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljrf;)V
    .locals 4

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Ljre;->f:Ljava/util/List;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    const-wide/16 v1, 0x3c

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Ljre;->a:Ljrf;

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

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    :goto_7
    iget-object p1, p1, Ljrf;->c:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_8
    iput-wide v0, p0, Ljre;->d:J

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1f

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

    nop

    :goto_a
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

    :goto_b
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    iput-wide v0, p0, Ljre;->c:J

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_11
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    iput-wide v0, p0, Ljre;->c:J

    nop

    nop

    goto/32 :goto_8

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

    :goto_14
    invoke-interface {p1, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/16 v1, 0xe

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v0, Ljll;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_17
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

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

    :goto_18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

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

    :goto_19
    invoke-direct {v0, p0, v1}, Ljll;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object p1, p0, Ljre;->b:Ljava/util/concurrent/Future;

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

    :goto_1b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 10

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    const v0, 0xb

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw v0

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    throw v0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    iget-object v0, p0, Ljre;->b:Ljava/util/concurrent/Future;

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    monitor-enter p0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    nop

    iget-wide v4, p0, Ljre;->c:J

    nop

    nop

    nop

    nop

    nop

    sub-long/2addr v2, v4

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget-wide v4, Ljrf;->a:J

    nop

    cmp-long v0, v2, v4

    nop

    nop

    nop

    nop

    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    iget-object v0, p0, Ljre;->a:Ljrf;

    nop

    nop

    nop

    iget-object v4, p0, Ljre;->f:Ljava/util/List;

    nop

    sget-object v5, Lskd;->a:Lskd;

    nop

    invoke-virtual {v5}, Ltkg;->m()Ltkb;

    move-result-object v5

    nop

    nop

    nop

    nop

    sget-object v6, Lskc;->J:Lskc;

    nop

    nop

    iget-object v7, v5, Ltkb;->b:Ltkg;

    nop

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

    if-nez v7, :cond_1

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkb;->o()V

    :cond_1
    iget-object v7, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v7, Lskd;

    nop

    nop

    nop

    nop

    iget v6, v6, Lskc;->aG:I

    nop

    nop

    iput v6, v7, Lskd;->f:I

    nop

    iget v6, v7, Lskd;->b:I

    nop

    nop

    nop

    or-int/2addr v6, v1

    nop

    iput v6, v7, Lskd;->b:I

    nop

    nop

    nop

    nop

    nop

    sget-object v6, Lspi;->a:Lspi;

    nop

    nop

    invoke-virtual {v6}, Ltkg;->m()Ltkb;

    move-result-object v6

    nop

    nop

    nop

    iget-object v7, v6, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    if-nez v7, :cond_2

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkb;->o()V

    :cond_2
    iget-object v7, v6, Ltkb;->b:Ltkg;

    nop

    nop

    move-object v8, v7

    nop

    nop

    check-cast v8, Lspi;

    nop

    nop

    nop

    iget v9, v8, Lspi;->b:I

    nop

    nop

    nop

    nop

    or-int/2addr v1, v9

    nop

    iput v1, v8, Lspi;->b:I

    nop

    nop

    nop

    nop

    iput-wide v2, v8, Lspi;->c:J

    nop

    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v1

    nop

    if-nez v1, :cond_3

    nop

    nop

    invoke-virtual {v6}, Ltkb;->o()V

    :cond_3
    iget-object v1, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v1, Lspi;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v1, Lspi;->d:Ltkv;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ltkv;->c()Z

    move-result v3

    nop

    nop

    nop

    nop

    if-nez v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ltkg;->v(Ltkv;)Ltkv;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    iput-object v2, v1, Lspi;->d:Ltkv;

    nop

    nop

    :cond_4
    iget-object v1, v1, Lspi;->d:Ltkv;

    nop

    nop

    nop

    invoke-static {v4, v1}, Ltir;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    iget-object v1, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_5

    nop

    nop

    invoke-virtual {v5}, Ltkb;->o()V

    :cond_5
    iget-object v0, v0, Ljrf;->d:Lmjv;

    nop

    nop

    nop

    iget-object v1, v5, Ltkb;->b:Ltkg;

    nop

    check-cast v1, Lskd;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkb;->i()Ltkg;

    move-result-object v2

    nop

    nop

    check-cast v2, Lspi;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v1, Lskd;->M:Lspi;

    nop

    nop

    nop

    nop

    nop

    iget v2, v1, Lskd;->c:I

    nop

    nop

    nop

    or-int/lit16 v2, v2, 0x2000

    nop

    nop

    nop

    nop

    nop

    iput v2, v1, Lskd;->c:I

    nop

    invoke-virtual {v0, v5}, Lmjv;->J(Ltkb;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_6
    goto/32 :goto_a

    nop
.end method

.method public final declared-synchronized b()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

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

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {p0, v0}, Ljre;->c(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final declared-synchronized c(Z)V
    .locals 6

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1f

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

    :goto_1
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    sget-object v0, Lsoz;->a:Lsoz;

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Ljre;->e:Ljava/lang/String;

    nop

    nop

    nop

    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_0
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v2, Lsoz;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Lsoz;->b:I

    nop

    nop

    or-int/lit8 v3, v3, 0x2

    nop

    nop

    nop

    nop

    nop

    iput v3, v2, Lsoz;->b:I

    nop

    nop

    nop

    nop

    iput-object v1, v2, Lsoz;->d:Ljava/lang/String;

    nop

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    nop

    nop

    nop

    iget-wide v3, p0, Ljre;->d:J

    nop

    nop

    sub-long/2addr v1, v3

    nop

    nop

    nop

    iget-object v3, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-nez v3, :cond_1

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_1
    iget-object v3, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    move-object v4, v3

    nop

    check-cast v4, Lsoz;

    nop

    nop

    nop

    nop

    nop

    iget v5, v4, Lsoz;->b:I

    nop

    nop

    or-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    nop

    nop

    iput v5, v4, Lsoz;->b:I

    nop

    nop

    nop

    nop

    iput-wide v1, v4, Lsoz;->c:J

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_2

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_2
    iget-object v1, p0, Ljre;->f:Ljava/util/List;

    nop

    nop

    nop

    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lsoz;

    nop

    nop

    nop

    nop

    nop

    iget v3, v2, Lsoz;->b:I

    nop

    nop

    or-int/lit8 v3, v3, 0x4

    nop

    iput v3, v2, Lsoz;->b:I

    nop

    iput-boolean p1, v2, Lsoz;->e:Z

    nop

    nop

    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lsoz;

    nop

    nop

    nop

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p0, Ljre;->a:Ljrf;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Ljre;->e:Ljava/lang/String;

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    iget-object p1, p1, Ljrf;->b:Lpcu;

    nop

    nop

    const-string v1, "Task is complete:"

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lpcu;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

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

    :goto_7
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

    :goto_8
    throw p1

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

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

    :goto_b
    monitor-exit p0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :cond_4
    :try_start_2
    iget-object p1, p0, Ljre;->a:Ljrf;

    nop

    nop

    nop

    nop

    iget-object v0, p0, Ljre;->e:Ljava/lang/String;

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p1, Ljrf;->b:Lpcu;

    nop

    nop

    nop

    const-string v1, "Task seems stuck:"

    nop

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lpcu;->h(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized d(Ljava/lang/String;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0xf

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x13

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

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_3
    goto/32 :goto_9

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

    :goto_5
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

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    throw p1

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Ljre;->a:Ljrf;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Ljrf;->b:Lpcu;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Task started:"

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lpcu;->b(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    nop

    nop

    nop

    iput-wide v0, p0, Ljre;->d:J

    nop

    nop

    nop

    nop

    iput-object p1, p0, Ljre;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method
