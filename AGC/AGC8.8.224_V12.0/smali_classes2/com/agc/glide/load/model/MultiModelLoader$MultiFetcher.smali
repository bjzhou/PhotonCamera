.class Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/data/DataFetcher;
.implements Lcom/agc/glide/load/data/DataFetcher$DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/model/MultiModelLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/data/DataFetcher<",
        "TData;>;",
        "Lcom/agc/glide/load/data/DataFetcher$DataCallback<",
        "TData;>;"
    }
.end annotation


# instance fields
.field private callback:Lcom/agc/glide/load/data/DataFetcher$DataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/data/DataFetcher$DataCallback<",
            "-TData;>;"
        }
    .end annotation
.end field

.field private currentIndex:I

.field private exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final fetchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/glide/load/data/DataFetcher<",
            "TData;>;>;"
        }
    .end annotation
.end field

.field private isCancelled:Z

.field private priority:Lcom/agc/glide/Priority;

.field private final throwableListPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/core/util/Pools$Pool;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/agc/glide/load/data/DataFetcher<",
            "TData;>;>;",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->throwableListPool:Landroidx/core/util/Pools$Pool;

    invoke-static {p1}, Lcom/agc/glide/util/Preconditions;->checkNotEmpty(Ljava/util/Collection;)Ljava/util/Collection;

    iput-object p1, p0, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->fetchers:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->currentIndex:I

    return-void
.end method

.method private startNextOrFail()V
    .locals 4

    iget-boolean v0, p0, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->isCancelled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->currentIndex:I

    iget-object v1, p0, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->fetchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->currentIndex:I

    iget-object v0, p0, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->priority:Lcom/agc/glide/Priority;

    iget-object v1, p0, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->callback:Lcom/agc/glide/load/data/DataFetcher$DataCallback;

    invoke-virtual {p0, v0, v1}, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->loadData(Lcom/agc/glide/Priority;Lcom/agc/glide/load/data/DataFetcher$DataCallback;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->exceptions:Ljava/util/List;

    invoke-static {v0}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->callback:Lcom/agc/glide/load/data/DataFetcher$DataCallback;

    new-instance v1, Lcom/agc/glide/load/engine/GlideException;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->exceptions:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "Fetch failed"

    invoke-direct {v1, v3, v2}, Lcom/agc/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/agc/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->isCancelled:Z

    iget-object v0, p0, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->fetchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/glide/load/data/DataFetcher;

    invoke-interface {v1}, Lcom/agc/glide/load/data/DataFetcher;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cleanup()V
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->exceptions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->throwableListPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v1, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->exceptions:Ljava/util/List;

    iget-object v0, p0, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->fetchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/glide/load/data/DataFetcher;

    invoke-interface {v1}, Lcom/agc/glide/load/data/DataFetcher;->cleanup()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->fetchers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/agc/glide/load/data/DataFetcher;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getDataSource()Lcom/agc/glide/load/DataSource;
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->fetchers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/agc/glide/load/data/DataFetcher;->getDataSource()Lcom/agc/glide/load/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public loadData(Lcom/agc/glide/Priority;Lcom/agc/glide/load/data/DataFetcher$DataCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/Priority;",
            "Lcom/agc/glide/load/data/DataFetcher$DataCallback<",
            "-TData;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->priority:Lcom/agc/glide/Priority;

    iput-object p2, p0, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->callback:Lcom/agc/glide/load/data/DataFetcher$DataCallback;

    iget-object p2, p0, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->throwableListPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {p2}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->exceptions:Ljava/util/List;

    iget-object p2, p0, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->fetchers:Ljava/util/List;

    iget v0, p0, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->currentIndex:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/agc/glide/load/data/DataFetcher;

    invoke-interface {p2, p1, p0}, Lcom/agc/glide/load/data/DataFetcher;->loadData(Lcom/agc/glide/Priority;Lcom/agc/glide/load/data/DataFetcher$DataCallback;)V

    iget-boolean p1, p0, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->isCancelled:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->cancel()V

    :cond_0
    return-void
.end method

.method public onDataReady(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TData;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->callback:Lcom/agc/glide/load/data/DataFetcher$DataCallback;

    invoke-interface {v0, p1}, Lcom/agc/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->startNextOrFail()V

    :goto_0
    return-void
.end method

.method public onLoadFailed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->exceptions:Ljava/util/List;

    invoke-static {v0}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/agc/glide/load/model/MultiModelLoader$MultiFetcher;->startNextOrFail()V

    return-void
.end method
