.class Lcom/agc/glide/load/engine/Engine$EngineJobFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EngineJobFactory"
.end annotation


# instance fields
.field final animationExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

.field final diskCacheExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

.field final engineJobListener:Lcom/agc/glide/load/engine/EngineJobListener;

.field final pool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/agc/glide/load/engine/EngineJob<",
            "*>;>;"
        }
    .end annotation
.end field

.field final resourceListener:Lcom/agc/glide/load/engine/EngineResource$ResourceListener;

.field final sourceExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

.field final sourceUnlimitedExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/EngineJobListener;Lcom/agc/glide/load/engine/EngineResource$ResourceListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/agc/glide/load/engine/Engine$EngineJobFactory$1;

    invoke-direct {v0, p0}, Lcom/agc/glide/load/engine/Engine$EngineJobFactory$1;-><init>(Lcom/agc/glide/load/engine/Engine$EngineJobFactory;)V

    const/16 v1, 0x96

    invoke-static {v1, v0}, Lcom/agc/glide/util/pool/FactoryPools;->threadSafe(ILcom/agc/glide/util/pool/FactoryPools$Factory;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/glide/load/engine/Engine$EngineJobFactory;->pool:Landroidx/core/util/Pools$Pool;

    iput-object p1, p0, Lcom/agc/glide/load/engine/Engine$EngineJobFactory;->diskCacheExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    iput-object p2, p0, Lcom/agc/glide/load/engine/Engine$EngineJobFactory;->sourceExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    iput-object p3, p0, Lcom/agc/glide/load/engine/Engine$EngineJobFactory;->sourceUnlimitedExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    iput-object p4, p0, Lcom/agc/glide/load/engine/Engine$EngineJobFactory;->animationExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    iput-object p5, p0, Lcom/agc/glide/load/engine/Engine$EngineJobFactory;->engineJobListener:Lcom/agc/glide/load/engine/EngineJobListener;

    iput-object p6, p0, Lcom/agc/glide/load/engine/Engine$EngineJobFactory;->resourceListener:Lcom/agc/glide/load/engine/EngineResource$ResourceListener;

    return-void
.end method


# virtual methods
.method public build(Lcom/agc/glide/load/Key;ZZZZ)Lcom/agc/glide/load/engine/EngineJob;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/agc/glide/load/Key;",
            "ZZZZ)",
            "Lcom/agc/glide/load/engine/EngineJob<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/Engine$EngineJobFactory;->pool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/load/engine/EngineJob;

    invoke-static {v0}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/agc/glide/load/engine/EngineJob;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/agc/glide/load/engine/EngineJob;->init(Lcom/agc/glide/load/Key;ZZZZ)Lcom/agc/glide/load/engine/EngineJob;

    move-result-object p1

    return-object p1
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/Engine$EngineJobFactory;->diskCacheExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    invoke-static {v0}, Lcom/agc/glide/util/Executors;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V

    iget-object v0, p0, Lcom/agc/glide/load/engine/Engine$EngineJobFactory;->sourceExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    invoke-static {v0}, Lcom/agc/glide/util/Executors;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V

    iget-object v0, p0, Lcom/agc/glide/load/engine/Engine$EngineJobFactory;->sourceUnlimitedExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    invoke-static {v0}, Lcom/agc/glide/util/Executors;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V

    iget-object v0, p0, Lcom/agc/glide/load/engine/Engine$EngineJobFactory;->animationExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    invoke-static {v0}, Lcom/agc/glide/util/Executors;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
