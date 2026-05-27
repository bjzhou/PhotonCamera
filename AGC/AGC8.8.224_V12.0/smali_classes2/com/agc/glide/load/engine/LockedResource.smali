.class final Lcom/agc/glide/load/engine/LockedResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/engine/Resource;
.implements Lcom/agc/glide/util/pool/FactoryPools$Poolable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/engine/Resource<",
        "TZ;>;",
        "Lcom/agc/glide/util/pool/FactoryPools$Poolable;"
    }
.end annotation


# static fields
.field private static final POOL:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/agc/glide/load/engine/LockedResource<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private isLocked:Z

.field private isRecycled:Z

.field private final stateVerifier:Lcom/agc/glide/util/pool/StateVerifier;

.field private toWrap:Lcom/agc/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/engine/Resource<",
            "TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/agc/glide/load/engine/LockedResource$1;

    invoke-direct {v0}, Lcom/agc/glide/load/engine/LockedResource$1;-><init>()V

    const/16 v1, 0x14

    invoke-static {v1, v0}, Lcom/agc/glide/util/pool/FactoryPools;->threadSafe(ILcom/agc/glide/util/pool/FactoryPools$Factory;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    sput-object v0, Lcom/agc/glide/load/engine/LockedResource;->POOL:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/agc/glide/util/pool/StateVerifier;->newInstance()Lcom/agc/glide/util/pool/StateVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/glide/load/engine/LockedResource;->stateVerifier:Lcom/agc/glide/util/pool/StateVerifier;

    return-void
.end method

.method private init(Lcom/agc/glide/load/engine/Resource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/Resource<",
            "TZ;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/glide/load/engine/LockedResource;->isRecycled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/glide/load/engine/LockedResource;->isLocked:Z

    iput-object p1, p0, Lcom/agc/glide/load/engine/LockedResource;->toWrap:Lcom/agc/glide/load/engine/Resource;

    return-void
.end method

.method public static obtain(Lcom/agc/glide/load/engine/Resource;)Lcom/agc/glide/load/engine/LockedResource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/agc/glide/load/engine/Resource<",
            "TZ;>;)",
            "Lcom/agc/glide/load/engine/LockedResource<",
            "TZ;>;"
        }
    .end annotation

    sget-object v0, Lcom/agc/glide/load/engine/LockedResource;->POOL:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/load/engine/LockedResource;

    invoke-static {v0}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/load/engine/LockedResource;

    invoke-direct {v0, p0}, Lcom/agc/glide/load/engine/LockedResource;->init(Lcom/agc/glide/load/engine/Resource;)V

    return-object v0
.end method

.method private release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/agc/glide/load/engine/LockedResource;->toWrap:Lcom/agc/glide/load/engine/Resource;

    sget-object v0, Lcom/agc/glide/load/engine/LockedResource;->POOL:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/LockedResource;->toWrap:Lcom/agc/glide/load/engine/Resource;

    invoke-interface {v0}, Lcom/agc/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getResourceClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/LockedResource;->toWrap:Lcom/agc/glide/load/engine/Resource;

    invoke-interface {v0}, Lcom/agc/glide/load/engine/Resource;->getResourceClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/LockedResource;->toWrap:Lcom/agc/glide/load/engine/Resource;

    invoke-interface {v0}, Lcom/agc/glide/load/engine/Resource;->getSize()I

    move-result v0

    return v0
.end method

.method public getVerifier()Lcom/agc/glide/util/pool/StateVerifier;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/LockedResource;->stateVerifier:Lcom/agc/glide/util/pool/StateVerifier;

    return-object v0
.end method

.method public declared-synchronized recycle()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/load/engine/LockedResource;->stateVerifier:Lcom/agc/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/agc/glide/util/pool/StateVerifier;->throwIfRecycled()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/glide/load/engine/LockedResource;->isRecycled:Z

    iget-boolean v0, p0, Lcom/agc/glide/load/engine/LockedResource;->isLocked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/load/engine/LockedResource;->toWrap:Lcom/agc/glide/load/engine/Resource;

    invoke-interface {v0}, Lcom/agc/glide/load/engine/Resource;->recycle()V

    invoke-direct {p0}, Lcom/agc/glide/load/engine/LockedResource;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unlock()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/load/engine/LockedResource;->stateVerifier:Lcom/agc/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/agc/glide/util/pool/StateVerifier;->throwIfRecycled()V

    iget-boolean v0, p0, Lcom/agc/glide/load/engine/LockedResource;->isLocked:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/glide/load/engine/LockedResource;->isLocked:Z

    iget-boolean v0, p0, Lcom/agc/glide/load/engine/LockedResource;->isRecycled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/load/engine/LockedResource;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
