.class Lcom/agc/glide/load/engine/SourceGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/engine/DataFetcherGenerator;
.implements Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "SourceGenerator"


# instance fields
.field private final cb:Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

.field private volatile dataToCache:Ljava/lang/Object;

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

.field private volatile loadDataListIndex:I

.field private volatile originalKey:Lcom/agc/glide/load/engine/DataCacheKey;

.field private volatile sourceCacheGenerator:Lcom/agc/glide/load/engine/DataCacheGenerator;


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/engine/DecodeHelper;Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V
    .locals 0
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

    iput-object p1, p0, Lcom/agc/glide/load/engine/SourceGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    iput-object p2, p0, Lcom/agc/glide/load/engine/SourceGenerator;->cb:Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    return-void
.end method

.method private cacheData(Ljava/lang/Object;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "SourceGenerator"

    invoke-static {}, Lcom/agc/glide/util/LogTime;->getLogTime()J

    move-result-wide v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/agc/glide/load/engine/SourceGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v5, p1}, Lcom/agc/glide/load/engine/DecodeHelper;->getRewinder(Ljava/lang/Object;)Lcom/agc/glide/load/data/DataRewinder;

    move-result-object v5

    invoke-interface {v5}, Lcom/agc/glide/load/data/DataRewinder;->rewindAndGet()Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/agc/glide/load/engine/SourceGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v7, v6}, Lcom/agc/glide/load/engine/DecodeHelper;->getSourceEncoder(Ljava/lang/Object;)Lcom/agc/glide/load/Encoder;

    move-result-object v7

    new-instance v8, Lcom/agc/glide/load/engine/DataCacheWriter;

    iget-object v9, p0, Lcom/agc/glide/load/engine/SourceGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v9}, Lcom/agc/glide/load/engine/DecodeHelper;->getOptions()Lcom/agc/glide/load/Options;

    move-result-object v9

    invoke-direct {v8, v7, v6, v9}, Lcom/agc/glide/load/engine/DataCacheWriter;-><init>(Lcom/agc/glide/load/Encoder;Ljava/lang/Object;Lcom/agc/glide/load/Options;)V

    new-instance v6, Lcom/agc/glide/load/engine/DataCacheKey;

    iget-object v9, p0, Lcom/agc/glide/load/engine/SourceGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    iget-object v9, v9, Lcom/agc/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/agc/glide/load/Key;

    iget-object v10, p0, Lcom/agc/glide/load/engine/SourceGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v10}, Lcom/agc/glide/load/engine/DecodeHelper;->getSignature()Lcom/agc/glide/load/Key;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Lcom/agc/glide/load/engine/DataCacheKey;-><init>(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/Key;)V

    iget-object v9, p0, Lcom/agc/glide/load/engine/SourceGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v9}, Lcom/agc/glide/load/engine/DecodeHelper;->getDiskCache()Lcom/agc/glide/load/engine/cache/DiskCache;

    move-result-object v9

    invoke-interface {v9, v6, v8}, Lcom/agc/glide/load/engine/cache/DiskCache;->put(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/engine/cache/DiskCache$Writer;)V

    const/4 v8, 0x2

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v10, ", data: "

    if-eqz v8, :cond_0

    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Finished encoding source to cache, key: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ", encoder: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", duration: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1, v2}, Lcom/agc/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v1

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {v9, v6}, Lcom/agc/glide/load/engine/cache/DiskCache;->get(Lcom/agc/glide/load/Key;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v6, p0, Lcom/agc/glide/load/engine/SourceGenerator;->originalKey:Lcom/agc/glide/load/engine/DataCacheKey;

    new-instance p1, Lcom/agc/glide/load/engine/DataCacheGenerator;

    iget-object v0, p0, Lcom/agc/glide/load/engine/SourceGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    iget-object v0, v0, Lcom/agc/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/agc/glide/load/Key;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/glide/load/engine/SourceGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-direct {p1, v0, v1, p0}, Lcom/agc/glide/load/engine/DataCacheGenerator;-><init>(Ljava/util/List;Lcom/agc/glide/load/engine/DecodeHelper;Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V

    iput-object p1, p0, Lcom/agc/glide/load/engine/SourceGenerator;->sourceCacheGenerator:Lcom/agc/glide/load/engine/DataCacheGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p1, p0, Lcom/agc/glide/load/engine/SourceGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    iget-object p1, p1, Lcom/agc/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/agc/glide/load/data/DataFetcher;

    invoke-interface {p1}, Lcom/agc/glide/load/data/DataFetcher;->cleanup()V

    return v3

    :cond_1
    const/4 v1, 0x3

    :try_start_2
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to write: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/agc/glide/load/engine/SourceGenerator;->originalKey:Lcom/agc/glide/load/engine/DataCacheKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " to the disk cache failed, maybe the disk cache is disabled? Trying to decode the data directly..."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :try_start_3
    iget-object p1, p0, Lcom/agc/glide/load/engine/SourceGenerator;->cb:Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    iget-object v0, p0, Lcom/agc/glide/load/engine/SourceGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    iget-object v6, v0, Lcom/agc/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/agc/glide/load/Key;

    invoke-interface {v5}, Lcom/agc/glide/load/data/DataRewinder;->rewindAndGet()Ljava/lang/Object;

    move-result-object v7

    iget-object v0, p0, Lcom/agc/glide/load/engine/SourceGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    iget-object v8, v0, Lcom/agc/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/agc/glide/load/data/DataFetcher;

    iget-object v0, p0, Lcom/agc/glide/load/engine/SourceGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    iget-object v0, v0, Lcom/agc/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/agc/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/agc/glide/load/data/DataFetcher;->getDataSource()Lcom/agc/glide/load/DataSource;

    move-result-object v9

    iget-object v0, p0, Lcom/agc/glide/load/engine/SourceGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    iget-object v10, v0, Lcom/agc/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/agc/glide/load/Key;

    move-object v5, p1

    invoke-interface/range {v5 .. v10}, Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->onDataFetcherReady(Lcom/agc/glide/load/Key;Ljava/lang/Object;Lcom/agc/glide/load/data/DataFetcher;Lcom/agc/glide/load/DataSource;Lcom/agc/glide/load/Key;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v4

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move v3, v4

    :goto_0
    if-nez v3, :cond_3

    iget-object v0, p0, Lcom/agc/glide/load/engine/SourceGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    iget-object v0, v0, Lcom/agc/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/agc/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/agc/glide/load/data/DataFetcher;->cleanup()V

    :cond_3
    throw p1
.end method

.method private hasNextModelLoader()Z
    .locals 2

    iget v0, p0, Lcom/agc/glide/load/engine/SourceGenerator;->loadDataListIndex:I

    iget-object v1, p0, Lcom/agc/glide/load/engine/SourceGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v1}, Lcom/agc/glide/load/engine/DecodeHelper;->getLoadData()Ljava/util/List;

    move-result-object v1

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

.method private startNextLoad(Lcom/agc/glide/load/model/ModelLoader$LoadData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/model/ModelLoader$LoadData<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/SourceGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    iget-object v0, v0, Lcom/agc/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/agc/glide/load/data/DataFetcher;

    iget-object v1, p0, Lcom/agc/glide/load/engine/SourceGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v1}, Lcom/agc/glide/load/engine/DecodeHelper;->getPriority()Lcom/agc/glide/Priority;

    move-result-object v1

    new-instance v2, Lcom/agc/glide/load/engine/SourceGenerator$1;

    invoke-direct {v2, p0, p1}, Lcom/agc/glide/load/engine/SourceGenerator$1;-><init>(Lcom/agc/glide/load/engine/SourceGenerator;Lcom/agc/glide/load/model/ModelLoader$LoadData;)V

    invoke-interface {v0, v1, v2}, Lcom/agc/glide/load/data/DataFetcher;->loadData(Lcom/agc/glide/Priority;Lcom/agc/glide/load/data/DataFetcher$DataCallback;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/SourceGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/agc/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/agc/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/agc/glide/load/data/DataFetcher;->cancel()V

    :cond_0
    return-void
.end method

.method public isCurrentRequest(Lcom/agc/glide/load/model/ModelLoader$LoadData;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/model/ModelLoader$LoadData<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/SourceGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onDataFetcherFailed(Lcom/agc/glide/load/Key;Ljava/lang/Exception;Lcom/agc/glide/load/data/DataFetcher;Lcom/agc/glide/load/DataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Key;",
            "Ljava/lang/Exception;",
            "Lcom/agc/glide/load/data/DataFetcher<",
            "*>;",
            "Lcom/agc/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    iget-object p4, p0, Lcom/agc/glide/load/engine/SourceGenerator;->cb:Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    iget-object v0, p0, Lcom/agc/glide/load/engine/SourceGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    iget-object v0, v0, Lcom/agc/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/agc/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/agc/glide/load/data/DataFetcher;->getDataSource()Lcom/agc/glide/load/DataSource;

    move-result-object v0

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->onDataFetcherFailed(Lcom/agc/glide/load/Key;Ljava/lang/Exception;Lcom/agc/glide/load/data/DataFetcher;Lcom/agc/glide/load/DataSource;)V

    return-void
.end method

.method public onDataFetcherReady(Lcom/agc/glide/load/Key;Ljava/lang/Object;Lcom/agc/glide/load/data/DataFetcher;Lcom/agc/glide/load/DataSource;Lcom/agc/glide/load/Key;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Key;",
            "Ljava/lang/Object;",
            "Lcom/agc/glide/load/data/DataFetcher<",
            "*>;",
            "Lcom/agc/glide/load/DataSource;",
            "Lcom/agc/glide/load/Key;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/SourceGenerator;->cb:Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    iget-object p4, p0, Lcom/agc/glide/load/engine/SourceGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    iget-object p4, p4, Lcom/agc/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/agc/glide/load/data/DataFetcher;

    invoke-interface {p4}, Lcom/agc/glide/load/data/DataFetcher;->getDataSource()Lcom/agc/glide/load/DataSource;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->onDataFetcherReady(Lcom/agc/glide/load/Key;Ljava/lang/Object;Lcom/agc/glide/load/data/DataFetcher;Lcom/agc/glide/load/DataSource;Lcom/agc/glide/load/Key;)V

    return-void
.end method

.method public onDataReadyInternal(Lcom/agc/glide/load/model/ModelLoader$LoadData;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/model/ModelLoader$LoadData<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/SourceGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v0}, Lcom/agc/glide/load/engine/DecodeHelper;->getDiskCacheStrategy()Lcom/agc/glide/load/engine/DiskCacheStrategy;

    move-result-object v0

    if-eqz p2, :cond_0

    iget-object v1, p1, Lcom/agc/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/agc/glide/load/data/DataFetcher;

    invoke-interface {v1}, Lcom/agc/glide/load/data/DataFetcher;->getDataSource()Lcom/agc/glide/load/DataSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/agc/glide/load/engine/DiskCacheStrategy;->isDataCacheable(Lcom/agc/glide/load/DataSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/agc/glide/load/engine/SourceGenerator;->dataToCache:Ljava/lang/Object;

    iget-object p1, p0, Lcom/agc/glide/load/engine/SourceGenerator;->cb:Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    invoke-interface {p1}, Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->reschedule()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/load/engine/SourceGenerator;->cb:Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    iget-object v1, p1, Lcom/agc/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/agc/glide/load/Key;

    iget-object v3, p1, Lcom/agc/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/agc/glide/load/data/DataFetcher;

    invoke-interface {v3}, Lcom/agc/glide/load/data/DataFetcher;->getDataSource()Lcom/agc/glide/load/DataSource;

    move-result-object v4

    iget-object v5, p0, Lcom/agc/glide/load/engine/SourceGenerator;->originalKey:Lcom/agc/glide/load/engine/DataCacheKey;

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->onDataFetcherReady(Lcom/agc/glide/load/Key;Ljava/lang/Object;Lcom/agc/glide/load/data/DataFetcher;Lcom/agc/glide/load/DataSource;Lcom/agc/glide/load/Key;)V

    :goto_0
    return-void
.end method

.method public onLoadFailedInternal(Lcom/agc/glide/load/model/ModelLoader$LoadData;Ljava/lang/Exception;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/model/ModelLoader$LoadData<",
            "*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/SourceGenerator;->cb:Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    iget-object v1, p0, Lcom/agc/glide/load/engine/SourceGenerator;->originalKey:Lcom/agc/glide/load/engine/DataCacheKey;

    iget-object p1, p1, Lcom/agc/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/agc/glide/load/data/DataFetcher;

    invoke-interface {p1}, Lcom/agc/glide/load/data/DataFetcher;->getDataSource()Lcom/agc/glide/load/DataSource;

    move-result-object v2

    invoke-interface {v0, v1, p2, p1, v2}, Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->onDataFetcherFailed(Lcom/agc/glide/load/Key;Ljava/lang/Exception;Lcom/agc/glide/load/data/DataFetcher;Lcom/agc/glide/load/DataSource;)V

    return-void
.end method

.method public reschedule()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public startNext()Z
    .locals 5

    iget-object v0, p0, Lcom/agc/glide/load/engine/SourceGenerator;->dataToCache:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/load/engine/SourceGenerator;->dataToCache:Ljava/lang/Object;

    iput-object v1, p0, Lcom/agc/glide/load/engine/SourceGenerator;->dataToCache:Ljava/lang/Object;

    :try_start_0
    invoke-direct {p0, v0}, Lcom/agc/glide/load/engine/SourceGenerator;->cacheData(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return v2

    :catch_0
    move-exception v0

    const/4 v3, 0x3

    const-string v4, "SourceGenerator"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Failed to properly rewind or write data to cache"

    invoke-static {v4, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/load/engine/SourceGenerator;->sourceCacheGenerator:Lcom/agc/glide/load/engine/DataCacheGenerator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/glide/load/engine/SourceGenerator;->sourceCacheGenerator:Lcom/agc/glide/load/engine/DataCacheGenerator;

    invoke-virtual {v0}, Lcom/agc/glide/load/engine/DataCacheGenerator;->startNext()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iput-object v1, p0, Lcom/agc/glide/load/engine/SourceGenerator;->sourceCacheGenerator:Lcom/agc/glide/load/engine/DataCacheGenerator;

    iput-object v1, p0, Lcom/agc/glide/load/engine/SourceGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/agc/glide/load/engine/SourceGenerator;->hasNextModelLoader()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/agc/glide/load/engine/SourceGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v1}, Lcom/agc/glide/load/engine/DecodeHelper;->getLoadData()Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/agc/glide/load/engine/SourceGenerator;->loadDataListIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/agc/glide/load/engine/SourceGenerator;->loadDataListIndex:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/glide/load/model/ModelLoader$LoadData;

    iput-object v1, p0, Lcom/agc/glide/load/engine/SourceGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    iget-object v1, p0, Lcom/agc/glide/load/engine/SourceGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/agc/glide/load/engine/SourceGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v1}, Lcom/agc/glide/load/engine/DecodeHelper;->getDiskCacheStrategy()Lcom/agc/glide/load/engine/DiskCacheStrategy;

    move-result-object v1

    iget-object v3, p0, Lcom/agc/glide/load/engine/SourceGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    iget-object v3, v3, Lcom/agc/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/agc/glide/load/data/DataFetcher;

    invoke-interface {v3}, Lcom/agc/glide/load/data/DataFetcher;->getDataSource()Lcom/agc/glide/load/DataSource;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/agc/glide/load/engine/DiskCacheStrategy;->isDataCacheable(Lcom/agc/glide/load/DataSource;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/agc/glide/load/engine/SourceGenerator;->helper:Lcom/agc/glide/load/engine/DecodeHelper;

    iget-object v3, p0, Lcom/agc/glide/load/engine/SourceGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    iget-object v3, v3, Lcom/agc/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/agc/glide/load/data/DataFetcher;

    invoke-interface {v3}, Lcom/agc/glide/load/data/DataFetcher;->getDataClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/agc/glide/load/engine/DecodeHelper;->hasLoadPath(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_3
    iget-object v0, p0, Lcom/agc/glide/load/engine/SourceGenerator;->loadData:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    invoke-direct {p0, v0}, Lcom/agc/glide/load/engine/SourceGenerator;->startNextLoad(Lcom/agc/glide/load/model/ModelLoader$LoadData;)V

    move v0, v2

    goto :goto_0

    :cond_4
    return v0
.end method
