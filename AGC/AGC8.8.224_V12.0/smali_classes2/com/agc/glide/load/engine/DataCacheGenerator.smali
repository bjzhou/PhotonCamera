.class Lcom/agc/glide/load/engine/DataCacheGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/engine/DataFetcherGenerator;
.implements Lcom/agc/glide/load/data/DataFetcher$DataCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/engine/DataFetcherGenerator;",
        "Lcom/agc/glide/load/data/DataFetcher$DataCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private cacheFile:Ljava/io/File;

.field private final cacheKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/glide/load/Key;",
            ">;"
        }
    .end annotation
.end field

.field private final cb:Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

.field private final helper:Lcom/agc/glide/load/engine/DecodeHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/engine/DecodeHelper<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/model/ModelLoader$LoadData<",
            "*>;"
        }
    .end annotation
.end field

.field private modelLoaderIndex:I

.field private modelLoaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/glide/load/model/ModelLoader<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field private sourceIdIndex:I

.field private sourceKey:Lcom/agc/glide/load/Key;


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/engine/DecodeHelper;Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/DecodeHelper<",
            "*>;",
            "Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/agc/glide/load/engine/DecodeHelper;->getCacheKeys()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/agc/glide/load/engine/DataCacheGenerator;-><init>(Ljava/util/List;Lcom/agc/glide/load/engine/DecodeHelper;Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/agc/glide/load/engine/DecodeHelper;Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/agc/glide/load/Key;",
            ">;",
            "Lcom/agc/glide/load/engine/DecodeHelper<",
            "*>;",
            "Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->sourceIdIndex:I

    iput-object p1, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->cacheKeys:Ljava/util/List;

    iput-object p2, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    iput-object p3, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->cb:Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    return-void
.end method

.method private hasNextModelLoader()Z
    .locals 2

    iget v0, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->modelLoaderIndex:I

    iget-object v1, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->modelLoaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/agc/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/agc/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/agc/glide/load/data/DataFetcher;->cancel()V

    :cond_0
    return-void
.end method

.method public onDataReady(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->cb:Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    iget-object v1, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->sourceKey:Lcom/agc/glide/load/Key;

    iget-object v2, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    iget-object v3, v2, Lcom/agc/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/agc/glide/load/data/DataFetcher;

    sget-object v4, Lcom/agc/glide/load/DataSource;->DATA_DISK_CACHE:Lcom/agc/glide/load/DataSource;

    iget-object v5, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->sourceKey:Lcom/agc/glide/load/Key;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->onDataFetcherReady(Lcom/agc/glide/load/Key;Ljava/lang/Object;Lcom/agc/glide/load/data/DataFetcher;Lcom/agc/glide/load/DataSource;Lcom/agc/glide/load/Key;)V

    return-void
.end method

.method public onLoadFailed(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->cb:Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    iget-object v1, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->sourceKey:Lcom/agc/glide/load/Key;

    iget-object v2, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    iget-object v2, v2, Lcom/agc/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/agc/glide/load/data/DataFetcher;

    sget-object v3, Lcom/agc/glide/load/DataSource;->DATA_DISK_CACHE:Lcom/agc/glide/load/DataSource;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->onDataFetcherFailed(Lcom/agc/glide/load/Key;Ljava/lang/Exception;Lcom/agc/glide/load/data/DataFetcher;Lcom/agc/glide/load/DataSource;)V

    return-void
.end method

.method public startNext()Z
    .locals 7

    const-string v0, "DataCacheGenerator.startNext"

    invoke-static {v0}, Lcom/agc/glide/util/pool/GlideTrace;->beginSection(Ljava/lang/String;)V

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->modelLoaders:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/agc/glide/load/engine/DataCacheGenerator;->hasNextModelLoader()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/agc/glide/load/engine/DataCacheGenerator;->hasNextModelLoader()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->modelLoaders:Ljava/util/List;

    iget v3, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->modelLoaderIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->modelLoaderIndex:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/load/model/ModelLoader;

    iget-object v3, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->cacheFile:Ljava/io/File;

    iget-object v4, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v4}, Lcom/agc/glide/load/engine/DecodeHelper;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v5}, Lcom/agc/glide/load/engine/DecodeHelper;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v6}, Lcom/agc/glide/load/engine/DecodeHelper;->getOptions()Lcom/agc/glide/load/Options;

    move-result-object v6

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/agc/glide/load/model/ModelLoader;->buildLoadData(Ljava/lang/Object;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/model/ModelLoader$LoadData;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    iget-object v0, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    iget-object v3, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    iget-object v3, v3, Lcom/agc/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/agc/glide/load/data/DataFetcher;

    invoke-interface {v3}, Lcom/agc/glide/load/data/DataFetcher;->getDataClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/agc/glide/load/engine/DecodeHelper;->hasLoadPath(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    iget-object v0, v0, Lcom/agc/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/agc/glide/load/data/DataFetcher;

    iget-object v1, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v1}, Lcom/agc/glide/load/engine/DecodeHelper;->getPriority()Lcom/agc/glide/Priority;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/agc/glide/load/data/DataFetcher;->loadData(Lcom/agc/glide/Priority;Lcom/agc/glide/load/data/DataFetcher$DataCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/agc/glide/util/pool/GlideTrace;->endSection()V

    return v1

    :cond_4
    :goto_2
    :try_start_1
    iget v0, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->sourceIdIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->sourceIdIndex:I

    iget-object v2, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->cacheKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v0, v2, :cond_5

    invoke-static {}, Lcom/agc/glide/util/pool/GlideTrace;->endSection()V

    return v1

    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->cacheKeys:Ljava/util/List;

    iget v2, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->sourceIdIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/load/Key;

    new-instance v2, Lcom/agc/glide/load/engine/DataCacheKey;

    iget-object v3, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v3}, Lcom/agc/glide/load/engine/DecodeHelper;->getSignature()Lcom/agc/glide/load/Key;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/agc/glide/load/engine/DataCacheKey;-><init>(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/Key;)V

    iget-object v3, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v3}, Lcom/agc/glide/load/engine/DecodeHelper;->getDiskCache()Lcom/agc/glide/load/engine/cache/DiskCache;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/agc/glide/load/engine/cache/DiskCache;->get(Lcom/agc/glide/load/Key;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->cacheFile:Ljava/io/File;

    if-eqz v2, :cond_0

    iput-object v0, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->sourceKey:Lcom/agc/glide/load/Key;

    iget-object v0, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v0, v2}, Lcom/agc/glide/load/engine/DecodeHelper;->getModelLoaders(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->modelLoaders:Ljava/util/List;

    iput v1, p0, Lcom/agc/glide/load/engine/DataCacheGenerator;->modelLoaderIndex:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/agc/glide/util/pool/GlideTrace;->endSection()V

    throw v0
.end method
