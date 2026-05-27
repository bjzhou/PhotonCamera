.class final Lcom/agc/glide/load/engine/Jobs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final jobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/agc/glide/load/Key;",
            "Lcom/agc/glide/load/engine/EngineJob<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final onlyCacheJobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/agc/glide/load/Key;",
            "Lcom/agc/glide/load/engine/EngineJob<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/load/engine/Jobs;->jobs:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/load/engine/Jobs;->onlyCacheJobs:Ljava/util/Map;

    return-void
.end method

.method private getJobMap(Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Lcom/agc/glide/load/Key;",
            "Lcom/agc/glide/load/engine/EngineJob<",
            "*>;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/agc/glide/load/engine/Jobs;->onlyCacheJobs:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/agc/glide/load/engine/Jobs;->jobs:Ljava/util/Map;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public get(Lcom/agc/glide/load/Key;Z)Lcom/agc/glide/load/engine/EngineJob;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Key;",
            "Z)",
            "Lcom/agc/glide/load/engine/EngineJob<",
            "*>;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/agc/glide/load/engine/Jobs;->getJobMap(Z)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/load/engine/EngineJob;

    return-object p1
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/agc/glide/load/Key;",
            "Lcom/agc/glide/load/engine/EngineJob<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/Jobs;->jobs:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/engine/EngineJob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Key;",
            "Lcom/agc/glide/load/engine/EngineJob<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/agc/glide/load/engine/EngineJob;->onlyRetrieveFromCache()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/agc/glide/load/engine/Jobs;->getJobMap(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeIfCurrent(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/engine/EngineJob;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Key;",
            "Lcom/agc/glide/load/engine/EngineJob<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/agc/glide/load/engine/EngineJob;->onlyRetrieveFromCache()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/agc/glide/load/engine/Jobs;->getJobMap(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
