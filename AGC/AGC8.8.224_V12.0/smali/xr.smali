.class final Lxr;
.super Lxj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lxj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lxs;Lxs;)V
    .locals 0

    iput-object p2, p1, Lxs;->next:Lxs;

    return-void
.end method

.method public final b(Lxs;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lxs;->thread:Ljava/lang/Thread;

    return-void
.end method

.method public final c(Lxt;Lxn;Lxn;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lxt;->listeners:Lxn;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lxt;->listeners:Lxn;

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

.method public final d(Lxt;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lxt;->value:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lxt;->value:Ljava/lang/Object;

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

.method public final e(Lxt;Lxs;Lxs;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lxt;->waiters:Lxs;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lxt;->waiters:Lxs;

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
