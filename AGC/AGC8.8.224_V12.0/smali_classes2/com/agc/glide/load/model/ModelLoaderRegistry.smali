.class public Lcom/agc/glide/load/model/ModelLoaderRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;
    }
.end annotation


# instance fields
.field private final cache:Lcom/agc/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;

.field private final multiModelLoaderFactory:Lcom/agc/glide/load/model/MultiModelLoaderFactory;


# direct methods
.method public constructor <init>(Landroidx/core/util/Pools$Pool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/load/model/MultiModelLoaderFactory;

    invoke-direct {v0, p1}, Lcom/agc/glide/load/model/MultiModelLoaderFactory;-><init>(Landroidx/core/util/Pools$Pool;)V

    invoke-direct {p0, v0}, Lcom/agc/glide/load/model/ModelLoaderRegistry;-><init>(Lcom/agc/glide/load/model/MultiModelLoaderFactory;)V

    return-void
.end method

.method private constructor <init>(Lcom/agc/glide/load/model/MultiModelLoaderFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/agc/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;

    invoke-direct {v0}, Lcom/agc/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/load/model/ModelLoaderRegistry;->cache:Lcom/agc/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;

    iput-object p1, p0, Lcom/agc/glide/load/model/ModelLoaderRegistry;->multiModelLoaderFactory:Lcom/agc/glide/load/model/MultiModelLoaderFactory;

    return-void
.end method

.method private static getClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)",
            "Ljava/lang/Class<",
            "TA;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized getModelLoadersForClass(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)",
            "Ljava/util/List<",
            "Lcom/agc/glide/load/model/ModelLoader<",
            "TA;*>;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/load/model/ModelLoaderRegistry;->cache:Lcom/agc/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;

    invoke-virtual {v0, p1}, Lcom/agc/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;->get(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/load/model/ModelLoaderRegistry;->multiModelLoaderFactory:Lcom/agc/glide/load/model/MultiModelLoaderFactory;

    invoke-virtual {v0, p1}, Lcom/agc/glide/load/model/MultiModelLoaderFactory;->build(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/glide/load/model/ModelLoaderRegistry;->cache:Lcom/agc/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;

    invoke-virtual {v1, p1, v0}, Lcom/agc/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;->put(Ljava/lang/Class;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private tearDown(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/agc/glide/load/model/ModelLoaderFactory<",
            "+TModel;+TData;>;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/load/model/ModelLoaderFactory;

    invoke-interface {v0}, Lcom/agc/glide/load/model/ModelLoaderFactory;->teardown()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/agc/glide/load/model/ModelLoaderFactory<",
            "+TModel;+TData;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/load/model/ModelLoaderRegistry;->multiModelLoaderFactory:Lcom/agc/glide/load/model/MultiModelLoaderFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/agc/glide/load/model/MultiModelLoaderFactory;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)V

    iget-object p1, p0, Lcom/agc/glide/load/model/ModelLoaderRegistry;->cache:Lcom/agc/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;

    invoke-virtual {p1}, Lcom/agc/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized build(Ljava/lang/Class;Ljava/lang/Class;)Lcom/agc/glide/load/model/ModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;)",
            "Lcom/agc/glide/load/model/ModelLoader<",
            "TModel;TData;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/load/model/ModelLoaderRegistry;->multiModelLoaderFactory:Lcom/agc/glide/load/model/MultiModelLoaderFactory;

    invoke-virtual {v0, p1, p2}, Lcom/agc/glide/load/model/MultiModelLoaderFactory;->build(Ljava/lang/Class;Ljava/lang/Class;)Lcom/agc/glide/load/model/ModelLoader;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDataClasses(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/load/model/ModelLoaderRegistry;->multiModelLoaderFactory:Lcom/agc/glide/load/model/MultiModelLoaderFactory;

    invoke-virtual {v0, p1}, Lcom/agc/glide/load/model/MultiModelLoaderFactory;->getDataClasses(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getModelLoaders(Ljava/lang/Object;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)",
            "Ljava/util/List<",
            "Lcom/agc/glide/load/model/ModelLoader<",
            "TA;*>;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/agc/glide/load/model/ModelLoaderRegistry;->getClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/agc/glide/load/model/ModelLoaderRegistry;->getModelLoadersForClass(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    :goto_0
    if-ge v5, v1, :cond_2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/agc/glide/load/model/ModelLoader;

    invoke-interface {v6, p1}, Lcom/agc/glide/load/model/ModelLoader;->handles(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v4, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    sub-int v4, v1, v5

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v3

    :cond_0
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    return-object v2

    :cond_3
    new-instance v1, Lcom/agc/glide/Registry$NoModelLoaderAvailableException;

    invoke-direct {v1, p1, v0}, Lcom/agc/glide/Registry$NoModelLoaderAvailableException;-><init>(Ljava/lang/Object;Ljava/util/List;)V

    throw v1

    :cond_4
    new-instance v0, Lcom/agc/glide/Registry$NoModelLoaderAvailableException;

    invoke-direct {v0, p1}, Lcom/agc/glide/Registry$NoModelLoaderAvailableException;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public declared-synchronized prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/agc/glide/load/model/ModelLoaderFactory<",
            "+TModel;+TData;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/load/model/ModelLoaderRegistry;->multiModelLoaderFactory:Lcom/agc/glide/load/model/MultiModelLoaderFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/agc/glide/load/model/MultiModelLoaderFactory;->prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)V

    iget-object p1, p0, Lcom/agc/glide/load/model/ModelLoaderRegistry;->cache:Lcom/agc/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;

    invoke-virtual {p1}, Lcom/agc/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/load/model/ModelLoaderRegistry;->multiModelLoaderFactory:Lcom/agc/glide/load/model/MultiModelLoaderFactory;

    invoke-virtual {v0, p1, p2}, Lcom/agc/glide/load/model/MultiModelLoaderFactory;->remove(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/agc/glide/load/model/ModelLoaderRegistry;->tearDown(Ljava/util/List;)V

    iget-object p1, p0, Lcom/agc/glide/load/model/ModelLoaderRegistry;->cache:Lcom/agc/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;

    invoke-virtual {p1}, Lcom/agc/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized replace(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/agc/glide/load/model/ModelLoaderFactory<",
            "+TModel;+TData;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/load/model/ModelLoaderRegistry;->multiModelLoaderFactory:Lcom/agc/glide/load/model/MultiModelLoaderFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/agc/glide/load/model/MultiModelLoaderFactory;->replace(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/agc/glide/load/model/ModelLoaderRegistry;->tearDown(Ljava/util/List;)V

    iget-object p1, p0, Lcom/agc/glide/load/model/ModelLoaderRegistry;->cache:Lcom/agc/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;

    invoke-virtual {p1}, Lcom/agc/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
