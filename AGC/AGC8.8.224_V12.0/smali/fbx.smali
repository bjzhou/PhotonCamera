.class public final Lfbx;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lfby;

.field private final b:Ljava/util/concurrent/Future;

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private final f:Ljava/util/List;


# direct methods
.method public constructor <init>(Lfby;)V
    .locals 4

    iput-object p1, p0, Lfbx;->a:Lfby;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfbx;->c:J

    iput-wide v0, p0, Lfbx;->d:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfbx;->f:Ljava/util/List;

    iget-object p1, p1, Lfby;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Levi;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Levi;-><init>(Lfbx;I)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-interface {p1, v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lfbx;->b:Ljava/util/concurrent/Future;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lfbx;->c:J

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfbx;->b:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lfbx;->c:J

    sub-long/2addr v0, v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-wide v2, Lfby;->a:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v2, p0, Lfbx;->a:Lfby;

    iget-object v2, v2, Lfby;->c:Lfbz;

    iget-object v3, p0, Lfbx;->f:Ljava/util/List;

    invoke-interface {v2, v0, v1, v3}, Lfbz;->B(JLjava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lfbx;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Z)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfbx;->f:Ljava/util/List;

    sget-object v1, Lnkp;->e:Lnkp;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, p0, Lfbx;->e:Ljava/lang/String;

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_0
    iget-object v3, v1, Lnwn;->b:Lnws;

    check-cast v3, Lnkp;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v3, Lnkp;->a:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Lnkp;->a:I

    iput-object v2, v3, Lnkp;->c:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lfbx;->d:J

    sub-long/2addr v2, v4

    iget-object v4, v1, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v4, v1, Lnwn;->b:Lnws;

    move-object v5, v4

    check-cast v5, Lnkp;

    iget v6, v5, Lnkp;->a:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v5, Lnkp;->a:I

    iput-wide v2, v5, Lnkp;->b:J

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lnkp;

    iget v3, v2, Lnkp;->a:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Lnkp;->a:I

    iput-boolean p1, v2, Lnkp;->d:Z

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lnkp;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lfbx;->a:Lfby;

    iget-object p1, p1, Lfby;->b:Lkaq;

    iget-object v0, p0, Lfbx;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Task is complete:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lkaq;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    iget-object p1, p0, Lfbx;->a:Lfby;

    iget-object p1, p1, Lfby;->b:Lkaq;

    iget-object v0, p0, Lfbx;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Task seems stuck:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lkaq;->i(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfbx;->a:Lfby;

    iget-object v0, v0, Lfby;->b:Lkaq;

    const-string v1, "Task started:"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lfbx;->d:J

    iput-object p1, p0, Lfbx;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
