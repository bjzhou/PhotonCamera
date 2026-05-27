.class public final Lbrk;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/util/Map;

.field public final b:Ljava/lang/ref/ReferenceQueue;

.field public volatile c:Z

.field public volatile d:Lbri;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lbtv;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbtv;-><init>(I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lbrk;->a:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, p0, Lbrk;->b:Ljava/lang/ref/ReferenceQueue;

    new-instance v1, Lazo;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, Lazo;-><init>(Lbrk;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lbqb;)Lbsh;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbrk;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbrj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lbrj;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lbrk;->c(Lbrj;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lbqb;Lbsh;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lbrj;

    iget-object v1, p0, Lbrk;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, p2, v1}, Lbrj;-><init>(Lbqb;Lbsh;Ljava/lang/ref/ReferenceQueue;)V

    iget-object p2, p0, Lbrk;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbrj;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbrj;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c(Lbrj;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbrk;->a:Ljava/util/Map;

    iget-object v1, p1, Lbrj;->a:Lbqb;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Lbrj;->b:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lbrj;->c:Lbsn;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final declared-synchronized d(Lbqb;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbrk;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbrj;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbrj;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
