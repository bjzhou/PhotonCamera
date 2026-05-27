.class public Lcom/agc/glide/load/engine/cache/MemoryCacheAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/engine/cache/MemoryCache;


# instance fields
.field private listener:Lcom/agc/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMemory()V
    .locals 0

    return-void
.end method

.method public getCurrentSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMaxSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public put(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/engine/Resource;)Lcom/agc/glide/load/engine/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Key;",
            "Lcom/agc/glide/load/engine/Resource<",
            "*>;)",
            "Lcom/agc/glide/load/engine/Resource<",
            "*>;"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/agc/glide/load/engine/cache/MemoryCacheAdapter;->listener:Lcom/agc/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

    invoke-interface {p1, p2}, Lcom/agc/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;->onResourceRemoved(Lcom/agc/glide/load/engine/Resource;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public remove(Lcom/agc/glide/load/Key;)Lcom/agc/glide/load/engine/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Key;",
            ")",
            "Lcom/agc/glide/load/engine/Resource<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public setResourceRemovedListener(Lcom/agc/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/load/engine/cache/MemoryCacheAdapter;->listener:Lcom/agc/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

    return-void
.end method

.method public setSizeMultiplier(F)V
    .locals 0

    return-void
.end method

.method public trimMemory(I)V
    .locals 0

    return-void
.end method
