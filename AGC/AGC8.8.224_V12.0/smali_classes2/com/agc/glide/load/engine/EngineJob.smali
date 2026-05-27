.class Lcom/agc/glide/load/engine/EngineJob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/engine/DecodeJob$Callback;
.implements Lcom/agc/glide/util/pool/FactoryPools$Poolable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/load/engine/EngineJob$EngineResourceFactory;,
        Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;,
        Lcom/agc/glide/load/engine/EngineJob$CallResourceReady;,
        Lcom/agc/glide/load/engine/EngineJob$CallLoadFailed;,
        Lcom/agc/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/engine/DecodeJob$Callback<",
        "TR;>;",
        "Lcom/agc/glide/util/pool/FactoryPools$Poolable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lcom/agc/glide/load/engine/EngineJob$EngineResourceFactory;


# instance fields
.field private final animationExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

.field final cbs:Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

.field dataSource:Lcom/agc/glide/load/DataSource;

.field private decodeJob:Lcom/agc/glide/load/engine/DecodeJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/engine/DecodeJob<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final diskCacheExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

.field private final engineJobListener:Lcom/agc/glide/load/engine/EngineJobListener;

.field engineResource:Lcom/agc/glide/load/engine/EngineResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/engine/EngineResource<",
            "*>;"
        }
    .end annotation
.end field

.field private final engineResourceFactory:Lcom/agc/glide/load/engine/EngineJob$EngineResourceFactory;

.field exception:Lcom/agc/glide/load/engine/GlideException;

.field private hasLoadFailed:Z

.field private hasResource:Z

.field private isCacheable:Z

.field private volatile isCancelled:Z

.field private isLoadedFromAlternateCacheKey:Z

.field private key:Lcom/agc/glide/load/Key;

.field private onlyRetrieveFromCache:Z

.field private final pendingCallbacks:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final pool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/agc/glide/load/engine/EngineJob<",
            "*>;>;"
        }
    .end annotation
.end field

.field private resource:Lcom/agc/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/engine/Resource<",
            "*>;"
        }
    .end annotation
.end field

.field private final resourceListener:Lcom/agc/glide/load/engine/EngineResource$ResourceListener;

.field private final sourceExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

.field private final sourceUnlimitedExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

.field private final stateVerifier:Lcom/agc/glide/util/pool/StateVerifier;

.field private useAnimationPool:Z

.field private useUnlimitedSourceGeneratorPool:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/agc/glide/load/engine/EngineJob$EngineResourceFactory;

    invoke-direct {v0}, Lcom/agc/glide/load/engine/EngineJob$EngineResourceFactory;-><init>()V

    sput-object v0, Lcom/agc/glide/load/engine/EngineJob;->DEFAULT_FACTORY:Lcom/agc/glide/load/engine/EngineJob$EngineResourceFactory;

    return-void
.end method

.method public constructor <init>(Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/EngineJobListener;Lcom/agc/glide/load/engine/EngineResource$ResourceListener;Landroidx/core/util/Pools$Pool;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/executor/GlideExecutor;",
            "Lcom/agc/glide/load/engine/executor/GlideExecutor;",
            "Lcom/agc/glide/load/engine/executor/GlideExecutor;",
            "Lcom/agc/glide/load/engine/executor/GlideExecutor;",
            "Lcom/agc/glide/load/engine/EngineJobListener;",
            "Lcom/agc/glide/load/engine/EngineResource$ResourceListener;",
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/agc/glide/load/engine/EngineJob<",
            "*>;>;)V"
        }
    .end annotation

    sget-object v8, Lcom/agc/glide/load/engine/EngineJob;->DEFAULT_FACTORY:Lcom/agc/glide/load/engine/EngineJob$EngineResourceFactory;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/agc/glide/load/engine/EngineJob;-><init>(Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/EngineJobListener;Lcom/agc/glide/load/engine/EngineResource$ResourceListener;Landroidx/core/util/Pools$Pool;Lcom/agc/glide/load/engine/EngineJob$EngineResourceFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/EngineJobListener;Lcom/agc/glide/load/engine/EngineResource$ResourceListener;Landroidx/core/util/Pools$Pool;Lcom/agc/glide/load/engine/EngineJob$EngineResourceFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/executor/GlideExecutor;",
            "Lcom/agc/glide/load/engine/executor/GlideExecutor;",
            "Lcom/agc/glide/load/engine/executor/GlideExecutor;",
            "Lcom/agc/glide/load/engine/executor/GlideExecutor;",
            "Lcom/agc/glide/load/engine/EngineJobListener;",
            "Lcom/agc/glide/load/engine/EngineResource$ResourceListener;",
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/agc/glide/load/engine/EngineJob<",
            "*>;>;",
            "Lcom/agc/glide/load/engine/EngineJob$EngineResourceFactory;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    invoke-direct {v0}, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->cbs:Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    invoke-static {}, Lcom/agc/glide/util/pool/StateVerifier;->newInstance()Lcom/agc/glide/util/pool/StateVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->stateVerifier:Lcom/agc/glide/util/pool/StateVerifier;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->pendingCallbacks:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/agc/glide/load/engine/EngineJob;->diskCacheExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    iput-object p2, p0, Lcom/agc/glide/load/engine/EngineJob;->sourceExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    iput-object p3, p0, Lcom/agc/glide/load/engine/EngineJob;->sourceUnlimitedExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    iput-object p4, p0, Lcom/agc/glide/load/engine/EngineJob;->animationExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    iput-object p5, p0, Lcom/agc/glide/load/engine/EngineJob;->engineJobListener:Lcom/agc/glide/load/engine/EngineJobListener;

    iput-object p6, p0, Lcom/agc/glide/load/engine/EngineJob;->resourceListener:Lcom/agc/glide/load/engine/EngineResource$ResourceListener;

    iput-object p7, p0, Lcom/agc/glide/load/engine/EngineJob;->pool:Landroidx/core/util/Pools$Pool;

    iput-object p8, p0, Lcom/agc/glide/load/engine/EngineJob;->engineResourceFactory:Lcom/agc/glide/load/engine/EngineJob$EngineResourceFactory;

    return-void
.end method

.method private getActiveSourceExecutor()Lcom/agc/glide/load/engine/executor/GlideExecutor;
    .locals 1

    iget-boolean v0, p0, Lcom/agc/glide/load/engine/EngineJob;->useUnlimitedSourceGeneratorPool:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->sourceUnlimitedExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/agc/glide/load/engine/EngineJob;->useAnimationPool:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->animationExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->sourceExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    :goto_0
    return-object v0
.end method

.method private isDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/glide/load/engine/EngineJob;->hasLoadFailed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/agc/glide/load/engine/EngineJob;->hasResource:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/agc/glide/load/engine/EngineJob;->isCancelled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private declared-synchronized release()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->key:Lcom/agc/glide/load/Key;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->cbs:Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    invoke-virtual {v0}, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->key:Lcom/agc/glide/load/Key;

    iput-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->engineResource:Lcom/agc/glide/load/engine/EngineResource;

    iput-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->resource:Lcom/agc/glide/load/engine/Resource;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/agc/glide/load/engine/EngineJob;->hasLoadFailed:Z

    iput-boolean v1, p0, Lcom/agc/glide/load/engine/EngineJob;->isCancelled:Z

    iput-boolean v1, p0, Lcom/agc/glide/load/engine/EngineJob;->hasResource:Z

    iput-boolean v1, p0, Lcom/agc/glide/load/engine/EngineJob;->isLoadedFromAlternateCacheKey:Z

    iget-object v2, p0, Lcom/agc/glide/load/engine/EngineJob;->decodeJob:Lcom/agc/glide/load/engine/DecodeJob;

    invoke-virtual {v2, v1}, Lcom/agc/glide/load/engine/DecodeJob;->release(Z)V

    iput-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->decodeJob:Lcom/agc/glide/load/engine/DecodeJob;

    iput-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->exception:Lcom/agc/glide/load/engine/GlideException;

    iput-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->dataSource:Lcom/agc/glide/load/DataSource;

    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->pool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addCallback(Lcom/agc/glide/request/ResourceCallback;Ljava/util/concurrent/Executor;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->stateVerifier:Lcom/agc/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/agc/glide/util/pool/StateVerifier;->throwIfRecycled()V

    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->cbs:Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    invoke-virtual {v0, p1, p2}, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->add(Lcom/agc/glide/request/ResourceCallback;Ljava/util/concurrent/Executor;)V

    iget-boolean v0, p0, Lcom/agc/glide/load/engine/EngineJob;->hasResource:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/agc/glide/load/engine/EngineJob;->incrementPendingCallbacks(I)V

    new-instance v0, Lcom/agc/glide/load/engine/EngineJob$CallResourceReady;

    invoke-direct {v0, p0, p1}, Lcom/agc/glide/load/engine/EngineJob$CallResourceReady;-><init>(Lcom/agc/glide/load/engine/EngineJob;Lcom/agc/glide/request/ResourceCallback;)V

    :goto_0
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/agc/glide/load/engine/EngineJob;->hasLoadFailed:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/agc/glide/load/engine/EngineJob;->incrementPendingCallbacks(I)V

    new-instance v0, Lcom/agc/glide/load/engine/EngineJob$CallLoadFailed;

    invoke-direct {v0, p0, p1}, Lcom/agc/glide/load/engine/EngineJob$CallLoadFailed;-><init>(Lcom/agc/glide/load/engine/EngineJob;Lcom/agc/glide/request/ResourceCallback;)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/agc/glide/load/engine/EngineJob;->isCancelled:Z

    xor-int/2addr p1, v1

    const-string p2, "Cannot add callbacks to a cancelled EngineJob"

    invoke-static {p1, p2}, Lcom/agc/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public callCallbackOnLoadFailed(Lcom/agc/glide/request/ResourceCallback;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->exception:Lcom/agc/glide/load/engine/GlideException;

    invoke-interface {p1, v0}, Lcom/agc/glide/request/ResourceCallback;->onLoadFailed(Lcom/agc/glide/load/engine/GlideException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance v0, Lcom/agc/glide/load/engine/CallbackException;

    invoke-direct {v0, p1}, Lcom/agc/glide/load/engine/CallbackException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public callCallbackOnResourceReady(Lcom/agc/glide/request/ResourceCallback;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->engineResource:Lcom/agc/glide/load/engine/EngineResource;

    iget-object v1, p0, Lcom/agc/glide/load/engine/EngineJob;->dataSource:Lcom/agc/glide/load/DataSource;

    iget-boolean v2, p0, Lcom/agc/glide/load/engine/EngineJob;->isLoadedFromAlternateCacheKey:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/agc/glide/request/ResourceCallback;->onResourceReady(Lcom/agc/glide/load/engine/Resource;Lcom/agc/glide/load/DataSource;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance v0, Lcom/agc/glide/load/engine/CallbackException;

    invoke-direct {v0, p1}, Lcom/agc/glide/load/engine/CallbackException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public cancel()V
    .locals 2

    invoke-direct {p0}, Lcom/agc/glide/load/engine/EngineJob;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/glide/load/engine/EngineJob;->isCancelled:Z

    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->decodeJob:Lcom/agc/glide/load/engine/DecodeJob;

    invoke-virtual {v0}, Lcom/agc/glide/load/engine/DecodeJob;->cancel()V

    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->engineJobListener:Lcom/agc/glide/load/engine/EngineJobListener;

    iget-object v1, p0, Lcom/agc/glide/load/engine/EngineJob;->key:Lcom/agc/glide/load/Key;

    invoke-interface {v0, p0, v1}, Lcom/agc/glide/load/engine/EngineJobListener;->onEngineJobCancelled(Lcom/agc/glide/load/engine/EngineJob;Lcom/agc/glide/load/Key;)V

    return-void
.end method

.method public decrementPendingCallbacks()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->stateVerifier:Lcom/agc/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/agc/glide/util/pool/StateVerifier;->throwIfRecycled()V

    invoke-direct {p0}, Lcom/agc/glide/load/engine/EngineJob;->isDone()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, Lcom/agc/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->pendingCallbacks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Can\'t decrement below 0"

    invoke-static {v1, v2}, Lcom/agc/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->engineResource:Lcom/agc/glide/load/engine/EngineResource;

    invoke-direct {p0}, Lcom/agc/glide/load/engine/EngineJob;->release()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/agc/glide/load/engine/EngineResource;->release()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getVerifier()Lcom/agc/glide/util/pool/StateVerifier;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->stateVerifier:Lcom/agc/glide/util/pool/StateVerifier;

    return-object v0
.end method

.method public declared-synchronized incrementPendingCallbacks(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/agc/glide/load/engine/EngineJob;->isDone()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, Lcom/agc/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->pendingCallbacks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/agc/glide/load/engine/EngineJob;->engineResource:Lcom/agc/glide/load/engine/EngineResource;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/agc/glide/load/engine/EngineResource;->acquire()V
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

.method public declared-synchronized init(Lcom/agc/glide/load/Key;ZZZZ)Lcom/agc/glide/load/engine/EngineJob;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Key;",
            "ZZZZ)",
            "Lcom/agc/glide/load/engine/EngineJob<",
            "TR;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/agc/glide/load/engine/EngineJob;->key:Lcom/agc/glide/load/Key;

    iput-boolean p2, p0, Lcom/agc/glide/load/engine/EngineJob;->isCacheable:Z

    iput-boolean p3, p0, Lcom/agc/glide/load/engine/EngineJob;->useUnlimitedSourceGeneratorPool:Z

    iput-boolean p4, p0, Lcom/agc/glide/load/engine/EngineJob;->useAnimationPool:Z

    iput-boolean p5, p0, Lcom/agc/glide/load/engine/EngineJob;->onlyRetrieveFromCache:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/agc/glide/load/engine/EngineJob;->isCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyCallbacksOfException()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->stateVerifier:Lcom/agc/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/agc/glide/util/pool/StateVerifier;->throwIfRecycled()V

    iget-boolean v0, p0, Lcom/agc/glide/load/engine/EngineJob;->isCancelled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/agc/glide/load/engine/EngineJob;->release()V

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->cbs:Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    invoke-virtual {v0}, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/agc/glide/load/engine/EngineJob;->hasLoadFailed:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/glide/load/engine/EngineJob;->hasLoadFailed:Z

    iget-object v1, p0, Lcom/agc/glide/load/engine/EngineJob;->key:Lcom/agc/glide/load/Key;

    iget-object v2, p0, Lcom/agc/glide/load/engine/EngineJob;->cbs:Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    invoke-virtual {v2}, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->copy()Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    move-result-object v2

    invoke-virtual {v2}, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lcom/agc/glide/load/engine/EngineJob;->incrementPendingCallbacks(I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->engineJobListener:Lcom/agc/glide/load/engine/EngineJobListener;

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v3}, Lcom/agc/glide/load/engine/EngineJobListener;->onEngineJobComplete(Lcom/agc/glide/load/engine/EngineJob;Lcom/agc/glide/load/Key;Lcom/agc/glide/load/engine/EngineResource;)V

    invoke-virtual {v2}, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;

    iget-object v2, v1, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/agc/glide/load/engine/EngineJob$CallLoadFailed;

    iget-object v1, v1, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;->cb:Lcom/agc/glide/request/ResourceCallback;

    invoke-direct {v3, p0, v1}, Lcom/agc/glide/load/engine/EngineJob$CallLoadFailed;-><init>(Lcom/agc/glide/load/engine/EngineJob;Lcom/agc/glide/request/ResourceCallback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/agc/glide/load/engine/EngineJob;->decrementPendingCallbacks()V

    return-void

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already failed once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public notifyCallbacksOfResult()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->stateVerifier:Lcom/agc/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/agc/glide/util/pool/StateVerifier;->throwIfRecycled()V

    iget-boolean v0, p0, Lcom/agc/glide/load/engine/EngineJob;->isCancelled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->resource:Lcom/agc/glide/load/engine/Resource;

    invoke-interface {v0}, Lcom/agc/glide/load/engine/Resource;->recycle()V

    invoke-direct {p0}, Lcom/agc/glide/load/engine/EngineJob;->release()V

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->cbs:Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    invoke-virtual {v0}, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/agc/glide/load/engine/EngineJob;->hasResource:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->engineResourceFactory:Lcom/agc/glide/load/engine/EngineJob$EngineResourceFactory;

    iget-object v1, p0, Lcom/agc/glide/load/engine/EngineJob;->resource:Lcom/agc/glide/load/engine/Resource;

    iget-boolean v2, p0, Lcom/agc/glide/load/engine/EngineJob;->isCacheable:Z

    iget-object v3, p0, Lcom/agc/glide/load/engine/EngineJob;->key:Lcom/agc/glide/load/Key;

    iget-object v4, p0, Lcom/agc/glide/load/engine/EngineJob;->resourceListener:Lcom/agc/glide/load/engine/EngineResource$ResourceListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/agc/glide/load/engine/EngineJob$EngineResourceFactory;->build(Lcom/agc/glide/load/engine/Resource;ZLcom/agc/glide/load/Key;Lcom/agc/glide/load/engine/EngineResource$ResourceListener;)Lcom/agc/glide/load/engine/EngineResource;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->engineResource:Lcom/agc/glide/load/engine/EngineResource;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/glide/load/engine/EngineJob;->hasResource:Z

    iget-object v1, p0, Lcom/agc/glide/load/engine/EngineJob;->cbs:Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    invoke-virtual {v1}, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->copy()Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    move-result-object v1

    invoke-virtual {v1}, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/agc/glide/load/engine/EngineJob;->incrementPendingCallbacks(I)V

    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->key:Lcom/agc/glide/load/Key;

    iget-object v2, p0, Lcom/agc/glide/load/engine/EngineJob;->engineResource:Lcom/agc/glide/load/engine/EngineResource;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/agc/glide/load/engine/EngineJob;->engineJobListener:Lcom/agc/glide/load/engine/EngineJobListener;

    invoke-interface {v3, p0, v0, v2}, Lcom/agc/glide/load/engine/EngineJobListener;->onEngineJobComplete(Lcom/agc/glide/load/engine/EngineJob;Lcom/agc/glide/load/Key;Lcom/agc/glide/load/engine/EngineResource;)V

    invoke-virtual {v1}, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;

    iget-object v2, v1, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/agc/glide/load/engine/EngineJob$CallResourceReady;

    iget-object v1, v1, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;->cb:Lcom/agc/glide/request/ResourceCallback;

    invoke-direct {v3, p0, v1}, Lcom/agc/glide/load/engine/EngineJob$CallResourceReady;-><init>(Lcom/agc/glide/load/engine/EngineJob;Lcom/agc/glide/request/ResourceCallback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/agc/glide/load/engine/EngineJob;->decrementPendingCallbacks()V

    return-void

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onLoadFailed(Lcom/agc/glide/load/engine/GlideException;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/agc/glide/load/engine/EngineJob;->exception:Lcom/agc/glide/load/engine/GlideException;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/agc/glide/load/engine/EngineJob;->notifyCallbacksOfException()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onResourceReady(Lcom/agc/glide/load/engine/Resource;Lcom/agc/glide/load/DataSource;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/Resource<",
            "TR;>;",
            "Lcom/agc/glide/load/DataSource;",
            "Z)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/agc/glide/load/engine/EngineJob;->resource:Lcom/agc/glide/load/engine/Resource;

    iput-object p2, p0, Lcom/agc/glide/load/engine/EngineJob;->dataSource:Lcom/agc/glide/load/DataSource;

    iput-boolean p3, p0, Lcom/agc/glide/load/engine/EngineJob;->isLoadedFromAlternateCacheKey:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/agc/glide/load/engine/EngineJob;->notifyCallbacksOfResult()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onlyRetrieveFromCache()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/glide/load/engine/EngineJob;->onlyRetrieveFromCache:Z

    return v0
.end method

.method public declared-synchronized removeCallback(Lcom/agc/glide/request/ResourceCallback;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->stateVerifier:Lcom/agc/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/agc/glide/util/pool/StateVerifier;->throwIfRecycled()V

    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->cbs:Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    invoke-virtual {v0, p1}, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->remove(Lcom/agc/glide/request/ResourceCallback;)V

    iget-object p1, p0, Lcom/agc/glide/load/engine/EngineJob;->cbs:Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    invoke-virtual {p1}, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/agc/glide/load/engine/EngineJob;->cancel()V

    iget-boolean p1, p0, Lcom/agc/glide/load/engine/EngineJob;->hasResource:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/agc/glide/load/engine/EngineJob;->hasLoadFailed:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/agc/glide/load/engine/EngineJob;->pendingCallbacks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/agc/glide/load/engine/EngineJob;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reschedule(Lcom/agc/glide/load/engine/DecodeJob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/DecodeJob<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/agc/glide/load/engine/EngineJob;->getActiveSourceExecutor()Lcom/agc/glide/load/engine/executor/GlideExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/load/engine/executor/GlideExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized start(Lcom/agc/glide/load/engine/DecodeJob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/DecodeJob<",
            "TR;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/agc/glide/load/engine/EngineJob;->decodeJob:Lcom/agc/glide/load/engine/DecodeJob;

    invoke-virtual {p1}, Lcom/agc/glide/load/engine/DecodeJob;->willDecodeFromCache()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob;->diskCacheExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/agc/glide/load/engine/EngineJob;->getActiveSourceExecutor()Lcom/agc/glide/load/engine/executor/GlideExecutor;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/agc/glide/load/engine/executor/GlideExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
