.class final Lcom/agc/glide/load/engine/ActiveResources$ResourceWeakReference;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/engine/ActiveResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourceWeakReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lcom/agc/glide/load/engine/EngineResource<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final isCacheable:Z

.field final key:Lcom/agc/glide/load/Key;

.field resource:Lcom/agc/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/engine/Resource<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/engine/EngineResource;Ljava/lang/ref/ReferenceQueue;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Key;",
            "Lcom/agc/glide/load/engine/EngineResource<",
            "*>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Lcom/agc/glide/load/engine/EngineResource<",
            "*>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-static {p1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/load/Key;

    iput-object p1, p0, Lcom/agc/glide/load/engine/ActiveResources$ResourceWeakReference;->key:Lcom/agc/glide/load/Key;

    invoke-virtual {p2}, Lcom/agc/glide/load/engine/EngineResource;->isMemoryCacheable()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p2}, Lcom/agc/glide/load/engine/EngineResource;->getResource()Lcom/agc/glide/load/engine/Resource;

    move-result-object p1

    invoke-static {p1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/load/engine/Resource;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/agc/glide/load/engine/ActiveResources$ResourceWeakReference;->resource:Lcom/agc/glide/load/engine/Resource;

    invoke-virtual {p2}, Lcom/agc/glide/load/engine/EngineResource;->isMemoryCacheable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/agc/glide/load/engine/ActiveResources$ResourceWeakReference;->isCacheable:Z

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/agc/glide/load/engine/ActiveResources$ResourceWeakReference;->resource:Lcom/agc/glide/load/engine/Resource;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->clear()V

    return-void
.end method
