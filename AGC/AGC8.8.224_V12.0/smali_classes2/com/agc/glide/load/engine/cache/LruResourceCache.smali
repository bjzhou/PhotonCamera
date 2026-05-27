.class public Lcom/agc/glide/load/engine/cache/LruResourceCache;
.super Lcom/agc/glide/util/LruCache;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/engine/cache/MemoryCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/agc/glide/util/LruCache<",
        "Lcom/agc/glide/load/Key;",
        "Lcom/agc/glide/load/engine/Resource<",
        "*>;>;",
        "Lcom/agc/glide/load/engine/cache/MemoryCache;"
    }
.end annotation


# instance fields
.field private listener:Lcom/agc/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/agc/glide/util/LruCache;-><init>(J)V

    return-void
.end method


# virtual methods
.method public getSize(Lcom/agc/glide/load/engine/Resource;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/Resource<",
            "*>;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/agc/glide/util/LruCache;->getSize(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Lcom/agc/glide/load/engine/Resource;->getSize()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/agc/glide/load/engine/Resource;

    invoke-virtual {p0, p1}, Lcom/agc/glide/load/engine/cache/LruResourceCache;->getSize(Lcom/agc/glide/load/engine/Resource;)I

    move-result p1

    return p1
.end method

.method public onItemEvicted(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/engine/Resource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Key;",
            "Lcom/agc/glide/load/engine/Resource<",
            "*>;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/agc/glide/load/engine/cache/LruResourceCache;->listener:Lcom/agc/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, Lcom/agc/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;->onResourceRemoved(Lcom/agc/glide/load/engine/Resource;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/agc/glide/load/Key;

    check-cast p2, Lcom/agc/glide/load/engine/Resource;

    invoke-virtual {p0, p1, p2}, Lcom/agc/glide/load/engine/cache/LruResourceCache;->onItemEvicted(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/engine/Resource;)V

    return-void
.end method

.method public bridge synthetic put(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/engine/Resource;)Lcom/agc/glide/load/engine/Resource;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/agc/glide/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/load/engine/Resource;

    return-object p1
.end method

.method public bridge synthetic remove(Lcom/agc/glide/load/Key;)Lcom/agc/glide/load/engine/Resource;
    .locals 0

    invoke-super {p0, p1}, Lcom/agc/glide/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/load/engine/Resource;

    return-object p1
.end method

.method public setResourceRemovedListener(Lcom/agc/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/load/engine/cache/LruResourceCache;->listener:Lcom/agc/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

    return-void
.end method

.method public trimMemory(I)V
    .locals 4

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/util/LruCache;->clearMemory()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    if-ge p1, v0, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/agc/glide/util/LruCache;->getMaxSize()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/agc/glide/util/LruCache;->trimToSize(J)V

    :cond_2
    :goto_0
    return-void
.end method
