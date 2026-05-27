.class final Lnmu;
.super Lnmm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnmm;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lnnb;Lnmq;)Lnmq;
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lnnb;->listeners:Lnmq;

    if-eq v0, p2, :cond_0

    iput-object p2, p1, Lnnb;->listeners:Lnmq;

    :cond_0
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final b(Lnnb;Lnna;)Lnna;
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lnnb;->waiters:Lnna;

    if-eq v0, p2, :cond_0

    iput-object p2, p1, Lnnb;->waiters:Lnna;

    :cond_0
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final c(Lnna;Lnna;)V
    .locals 0

    iput-object p2, p1, Lnna;->next:Lnna;

    return-void
.end method

.method public final d(Lnna;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lnna;->thread:Ljava/lang/Thread;

    return-void
.end method

.method public final e(Lnnb;Lnmq;Lnmq;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lnnb;->listeners:Lnmq;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lnnb;->listeners:Lnmq;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final f(Lnnb;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lnnb;->value:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lnnb;->value:Ljava/lang/Object;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final g(Lnnb;Lnna;Lnna;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lnnb;->waiters:Lnna;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lnnb;->waiters:Lnna;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
