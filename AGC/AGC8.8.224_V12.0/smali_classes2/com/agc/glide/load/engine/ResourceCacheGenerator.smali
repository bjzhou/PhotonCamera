.class Lcom/agc/glide/load/engine/ResourceCacheGenerator;
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

.field private final cb:Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

.field private currentKey:Lcom/agc/glide/load/engine/ResourceCacheKey;

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

.field private resourceClassIndex:I

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->resourceClassIndex:I

    iput-object p1, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    iput-object p2, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->cb:Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    return-void
.end method

.method private hasNextModelLoader()Z
    .locals 2

    iget v0, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->modelLoaderIndex:I

    iget-object v1, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->modelLoaders:Ljava/util/List;

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

    iget-object v0, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/agc/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/agc/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/agc/glide/load/data/DataFetcher;->cancel()V

    :cond_0
    return-void
.end method

.method public onDataReady(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->cb:Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    iget-object v1, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->sourceKey:Lcom/agc/glide/load/Key;

    iget-object v2, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    iget-object v3, v2, Lcom/agc/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/agc/glide/load/data/DataFetcher;

    sget-object v4, Lcom/agc/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/agc/glide/load/DataSource;

    iget-object v5, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->currentKey:Lcom/agc/glide/load/engine/ResourceCacheKey;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->onDataFetcherReady(Lcom/agc/glide/load/Key;Ljava/lang/Object;Lcom/agc/glide/load/data/DataFetcher;Lcom/agc/glide/load/DataSource;Lcom/agc/glide/load/Key;)V

    return-void
.end method

.method public onLoadFailed(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->cb:Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    iget-object v1, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->currentKey:Lcom/agc/glide/load/engine/ResourceCacheKey;

    iget-object v2, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    iget-object v2, v2, Lcom/agc/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/agc/glide/load/data/DataFetcher;

    sget-object v3, Lcom/agc/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/agc/glide/load/DataSource;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->onDataFetcherFailed(Lcom/agc/glide/load/Key;Ljava/lang/Exception;Lcom/agc/glide/load/data/DataFetcher;Lcom/agc/glide/load/DataSource;)V

    return-void
.end method

.method public startNext()Z
    .locals 14

    const-string v0, "ResourceCacheGenerator.startNext"

    invoke-static {v0}, Lcom/agc/glide/util/pool/GlideTrace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v0}, Lcom/agc/glide/load/engine/DecodeHelper;->getCacheKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/agc/glide/util/pool/GlideTrace;->endSection()V

    return v2

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v1}, Lcom/agc/glide/load/engine/DecodeHelper;->getRegisteredResourceClasses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const-class v0, Ljava/io/File;

    iget-object v1, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v1}, Lcom/agc/glide/load/engine/DecodeHelper;->getTranscodeClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/agc/glide/util/pool/GlideTrace;->endSection()V

    return v2

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find any load path from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v2}, Lcom/agc/glide/load/engine/DecodeHelper;->getModelClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v2}, Lcom/agc/glide/load/engine/DecodeHelper;->getTranscodeClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->modelLoaders:Ljava/util/List;

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->hasNextModelLoader()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->hasNextModelLoader()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->modelLoaders:Ljava/util/List;

    iget v1, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->modelLoaderIndex:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->modelLoaderIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/load/model/ModelLoader;

    iget-object v1, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->cacheFile:Ljava/io/File;

    iget-object v3, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v3}, Lcom/agc/glide/load/engine/DecodeHelper;->getWidth()I

    move-result v3

    iget-object v5, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v5}, Lcom/agc/glide/load/engine/DecodeHelper;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v6}, Lcom/agc/glide/load/engine/DecodeHelper;->getOptions()Lcom/agc/glide/load/Options;

    move-result-object v6

    invoke-interface {v0, v1, v3, v5, v6}, Lcom/agc/glide/load/model/ModelLoader;->buildLoadData(Ljava/lang/Object;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/model/ModelLoader$LoadData;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    iget-object v0, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    iget-object v1, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    iget-object v1, v1, Lcom/agc/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/agc/glide/load/data/DataFetcher;

    invoke-interface {v1}, Lcom/agc/glide/load/data/DataFetcher;->getDataClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/agc/glide/load/engine/DecodeHelper;->hasLoadPath(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    iget-object v0, v0, Lcom/agc/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/agc/glide/load/data/DataFetcher;

    iget-object v1, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v1}, Lcom/agc/glide/load/engine/DecodeHelper;->getPriority()Lcom/agc/glide/Priority;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/agc/glide/load/data/DataFetcher;->loadData(Lcom/agc/glide/Priority;Lcom/agc/glide/load/data/DataFetcher$DataCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v4

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/agc/glide/util/pool/GlideTrace;->endSection()V

    return v2

    :cond_6
    :goto_2
    :try_start_3
    iget v3, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->resourceClassIndex:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->resourceClassIndex:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_8

    iget v3, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->sourceIdIndex:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->sourceIdIndex:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lt v3, v4, :cond_7

    invoke-static {}, Lcom/agc/glide/util/pool/GlideTrace;->endSection()V

    return v2

    :cond_7
    :try_start_4
    iput v2, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->resourceClassIndex:I

    :cond_8
    iget v3, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->sourceIdIndex:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/agc/glide/load/Key;

    iget v4, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->resourceClassIndex:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/Class;

    iget-object v4, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v4, v11}, Lcom/agc/glide/load/engine/DecodeHelper;->getTransformation(Ljava/lang/Class;)Lcom/agc/glide/load/Transformation;

    move-result-object v10

    new-instance v13, Lcom/agc/glide/load/engine/ResourceCacheKey;

    iget-object v4, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v4}, Lcom/agc/glide/load/engine/DecodeHelper;->getArrayPool()Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

    move-result-object v5

    iget-object v4, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v4}, Lcom/agc/glide/load/engine/DecodeHelper;->getSignature()Lcom/agc/glide/load/Key;

    move-result-object v7

    iget-object v4, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v4}, Lcom/agc/glide/load/engine/DecodeHelper;->getWidth()I

    move-result v8

    iget-object v4, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v4}, Lcom/agc/glide/load/engine/DecodeHelper;->getHeight()I

    move-result v9

    iget-object v4, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v4}, Lcom/agc/glide/load/engine/DecodeHelper;->getOptions()Lcom/agc/glide/load/Options;

    move-result-object v12

    move-object v4, v13

    move-object v6, v3

    invoke-direct/range {v4 .. v12}, Lcom/agc/glide/load/engine/ResourceCacheKey;-><init>(Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/agc/glide/load/Key;Lcom/agc/glide/load/Key;IILcom/agc/glide/load/Transformation;Ljava/lang/Class;Lcom/agc/glide/load/Options;)V

    iput-object v13, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->currentKey:Lcom/agc/glide/load/engine/ResourceCacheKey;

    iget-object v4, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v4}, Lcom/agc/glide/load/engine/DecodeHelper;->getDiskCache()Lcom/agc/glide/load/engine/cache/DiskCache;

    move-result-object v4

    iget-object v5, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->currentKey:Lcom/agc/glide/load/engine/ResourceCacheKey;

    invoke-interface {v4, v5}, Lcom/agc/glide/load/engine/cache/DiskCache;->get(Lcom/agc/glide/load/Key;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->cacheFile:Ljava/io/File;

    if-eqz v4, :cond_2

    iput-object v3, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->sourceKey:Lcom/agc/glide/load/Key;

    iget-object v3, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v3, v4}, Lcom/agc/glide/load/engine/DecodeHelper;->getModelLoaders(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->modelLoaders:Ljava/util/List;

    iput v2, p0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;->modelLoaderIndex:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/agc/glide/util/pool/GlideTrace;->endSection()V

    throw v0
.end method
