.class final Lcom/agc/glide/load/engine/ActiveResources;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/load/engine/ActiveResources$ResourceWeakReference;,
        Lcom/agc/glide/load/engine/ActiveResources$DequeuedResourceCallback;
    }
.end annotation


# instance fields
.field final activeEngineResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/agc/glide/load/Key;",
            "Lcom/agc/glide/load/engine/ActiveResources$ResourceWeakReference;",
            ">;"
        }
    .end annotation
.end field

.field private volatile cb:Lcom/agc/glide/load/engine/ActiveResources$DequeuedResourceCallback;

.field private final isActiveResourceRetentionAllowed:Z

.field private volatile isShutdown:Z

.field private listener:Lcom/agc/glide/load/engine/EngineResource$ResourceListener;

.field private final monitorClearedResourcesExecutor:Ljava/util/concurrent/Executor;

.field private final resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/agc/glide/load/engine/EngineResource<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    new-instance v0, Lcom/agc/glide/load/engine/ActiveResources$1;

    invoke-direct {v0}, Lcom/agc/glide/load/engine/ActiveResources$1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/agc/glide/load/engine/ActiveResources;-><init>(ZLjava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(ZLjava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    iput-boolean p1, p0, Lcom/agc/glide/load/engine/ActiveResources;->isActiveResourceRetentionAllowed:Z

    iput-object p2, p0, Lcom/agc/glide/load/engine/ActiveResources;->monitorClearedResourcesExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/agc/glide/load/engine/ActiveResources$2;

    invoke-direct {p1, p0}, Lcom/agc/glide/load/engine/ActiveResources$2;-><init>(Lcom/agc/glide/load/engine/ActiveResources;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized activate(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/engine/EngineResource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Key;",
            "Lcom/agc/glide/load/engine/EngineResource<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/agc/glide/load/engine/ActiveResources$ResourceWeakReference;

    iget-object v1, p0, Lcom/agc/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    iget-boolean v2, p0, Lcom/agc/glide/load/engine/ActiveResources;->isActiveResourceRetentionAllowed:Z

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/agc/glide/load/engine/ActiveResources$ResourceWeakReference;-><init>(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/engine/EngineResource;Ljava/lang/ref/ReferenceQueue;Z)V

    iget-object p2, p0, Lcom/agc/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/load/engine/ActiveResources$ResourceWeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/agc/glide/load/engine/ActiveResources$ResourceWeakReference;->reset()V
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

.method public cleanReferenceQueue()V
    .locals 1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/agc/glide/load/engine/ActiveResources;->isShutdown:Z

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/load/engine/ActiveResources$ResourceWeakReference;

    invoke-virtual {p0, v0}, Lcom/agc/glide/load/engine/ActiveResources;->cleanupActiveReference(Lcom/agc/glide/load/engine/ActiveResources$ResourceWeakReference;)V

    iget-object v0, p0, Lcom/agc/glide/load/engine/ActiveResources;->cb:Lcom/agc/glide/load/engine/ActiveResources$DequeuedResourceCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/agc/glide/load/engine/ActiveResources$DequeuedResourceCallback;->onResourceDequeued()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public cleanupActiveReference(Lcom/agc/glide/load/engine/ActiveResources$ResourceWeakReference;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    iget-object v1, p1, Lcom/agc/glide/load/engine/ActiveResources$ResourceWeakReference;->key:Lcom/agc/glide/load/Key;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Lcom/agc/glide/load/engine/ActiveResources$ResourceWeakReference;->isCacheable:Z

    if-eqz v0, :cond_1

    iget-object v2, p1, Lcom/agc/glide/load/engine/ActiveResources$ResourceWeakReference;->resource:Lcom/agc/glide/load/engine/Resource;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/agc/glide/load/engine/EngineResource;

    iget-object v5, p1, Lcom/agc/glide/load/engine/ActiveResources$ResourceWeakReference;->key:Lcom/agc/glide/load/Key;

    iget-object v6, p0, Lcom/agc/glide/load/engine/ActiveResources;->listener:Lcom/agc/glide/load/engine/EngineResource$ResourceListener;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/agc/glide/load/engine/EngineResource;-><init>(Lcom/agc/glide/load/engine/Resource;ZZLcom/agc/glide/load/Key;Lcom/agc/glide/load/engine/EngineResource$ResourceListener;)V

    iget-object v1, p0, Lcom/agc/glide/load/engine/ActiveResources;->listener:Lcom/agc/glide/load/engine/EngineResource$ResourceListener;

    iget-object p1, p1, Lcom/agc/glide/load/engine/ActiveResources$ResourceWeakReference;->key:Lcom/agc/glide/load/Key;

    invoke-interface {v1, p1, v0}, Lcom/agc/glide/load/engine/EngineResource$ResourceListener;->onResourceReleased(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/engine/EngineResource;)V

    return-void

    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized deactivate(Lcom/agc/glide/load/Key;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/load/engine/ActiveResources$ResourceWeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/agc/glide/load/engine/ActiveResources$ResourceWeakReference;->reset()V
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

.method public declared-synchronized get(Lcom/agc/glide/load/Key;)Lcom/agc/glide/load/engine/EngineResource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Key;",
            ")",
            "Lcom/agc/glide/load/engine/EngineResource<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/load/engine/ActiveResources$ResourceWeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/load/engine/EngineResource;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/agc/glide/load/engine/ActiveResources;->cleanupActiveReference(Lcom/agc/glide/load/engine/ActiveResources$ResourceWeakReference;)V
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

.method public setDequeuedResourceCallback(Lcom/agc/glide/load/engine/ActiveResources$DequeuedResourceCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/load/engine/ActiveResources;->cb:Lcom/agc/glide/load/engine/ActiveResources$DequeuedResourceCallback;

    return-void
.end method

.method public setListener(Lcom/agc/glide/load/engine/EngineResource$ResourceListener;)V
    .locals 1

    monitor-enter p1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object p1, p0, Lcom/agc/glide/load/engine/ActiveResources;->listener:Lcom/agc/glide/load/engine/EngineResource$ResourceListener;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public shutdown()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/glide/load/engine/ActiveResources;->isShutdown:Z

    iget-object v0, p0, Lcom/agc/glide/load/engine/ActiveResources;->monitorClearedResourcesExecutor:Ljava/util/concurrent/Executor;

    instance-of v1, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Lcom/agc/glide/util/Executors;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V

    :cond_0
    return-void
.end method
