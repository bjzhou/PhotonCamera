.class final Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/engine/EngineJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourceCallbacksAndExecutors"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/agc/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;",
        ">;"
    }
.end annotation


# instance fields
.field private final callbacksAndExecutors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/agc/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->callbacksAndExecutors:Ljava/util/List;

    return-void
.end method

.method private static defaultCallbackAndExecutor(Lcom/agc/glide/request/ResourceCallback;)Lcom/agc/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;
    .locals 2

    new-instance v0, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;

    invoke-static {}, Lcom/agc/glide/util/Executors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;-><init>(Lcom/agc/glide/request/ResourceCallback;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/agc/glide/request/ResourceCallback;Ljava/util/concurrent/Executor;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->callbacksAndExecutors:Ljava/util/List;

    new-instance v1, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;

    invoke-direct {v1, p1, p2}, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;-><init>(Lcom/agc/glide/request/ResourceCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->callbacksAndExecutors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public contains(Lcom/agc/glide/request/ResourceCallback;)Z
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->callbacksAndExecutors:Ljava/util/List;

    invoke-static {p1}, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->defaultCallbackAndExecutor(Lcom/agc/glide/request/ResourceCallback;)Lcom/agc/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public copy()Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;
    .locals 3

    new-instance v0, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->callbacksAndExecutors:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->callbacksAndExecutors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/agc/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->callbacksAndExecutors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/agc/glide/request/ResourceCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->callbacksAndExecutors:Ljava/util/List;

    invoke-static {p1}, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->defaultCallbackAndExecutor(Lcom/agc/glide/request/ResourceCallback;)Lcom/agc/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->callbacksAndExecutors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
