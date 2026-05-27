.class Lcom/agc/glide/load/engine/DecodeJob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lcom/agc/glide/util/pool/FactoryPools$Poolable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/load/engine/DecodeJob$DeferredEncodeManager;,
        Lcom/agc/glide/load/engine/DecodeJob$ReleaseManager;,
        Lcom/agc/glide/load/engine/DecodeJob$DiskCacheProvider;,
        Lcom/agc/glide/load/engine/DecodeJob$Callback;,
        Lcom/agc/glide/load/engine/DecodeJob$RunReason;,
        Lcom/agc/glide/load/engine/DecodeJob$Stage;,
        Lcom/agc/glide/load/engine/DecodeJob$DecodeCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/agc/glide/load/engine/DecodeJob<",
        "*>;>;",
        "Lcom/agc/glide/util/pool/FactoryPools$Poolable;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DecodeJob"


# instance fields
.field private callback:Lcom/agc/glide/load/engine/DecodeJob$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/engine/DecodeJob$Callback<",
            "TR;>;"
        }
    .end annotation
.end field

.field private currentAttemptingKey:Lcom/agc/glide/load/Key;

.field private currentData:Ljava/lang/Object;

.field private currentDataSource:Lcom/agc/glide/load/DataSource;

.field private currentFetcher:Lcom/agc/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/data/DataFetcher<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile currentGenerator:Lcom/agc/glide/load/engine/DataFetcherGenerator;

.field private currentSourceKey:Lcom/agc/glide/load/Key;

.field private currentThread:Ljava/lang/Thread;

.field private final decodeHelper:Lcom/agc/glide/load/engine/DecodeHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/engine/DecodeHelper<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final deferredEncodeManager:Lcom/agc/glide/load/engine/DecodeJob$DeferredEncodeManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/engine/DecodeJob$DeferredEncodeManager<",
            "*>;"
        }
    .end annotation
.end field

.field private final diskCacheProvider:Lcom/agc/glide/load/engine/DecodeJob$DiskCacheProvider;

.field private diskCacheStrategy:Lcom/agc/glide/load/engine/DiskCacheStrategy;

.field private glideContext:Lcom/agc/glide/GlideContext;

.field private height:I

.field private volatile isCallbackNotified:Z

.field private volatile isCancelled:Z

.field private isLoadingFromAlternateCacheKey:Z

.field private loadKey:Lcom/agc/glide/load/engine/EngineKey;

.field private model:Ljava/lang/Object;

.field private onlyRetrieveFromCache:Z

.field private options:Lcom/agc/glide/load/Options;

.field private order:I

.field private final pool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/agc/glide/load/engine/DecodeJob<",
            "*>;>;"
        }
    .end annotation
.end field

.field private priority:Lcom/agc/glide/Priority;

.field private final releaseManager:Lcom/agc/glide/load/engine/DecodeJob$ReleaseManager;

.field private runReason:Lcom/agc/glide/load/engine/DecodeJob$RunReason;

.field private signature:Lcom/agc/glide/load/Key;

.field private stage:Lcom/agc/glide/load/engine/DecodeJob$Stage;

.field private startFetchTime:J

.field private final stateVerifier:Lcom/agc/glide/util/pool/StateVerifier;

.field private final throwables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/engine/DecodeJob$DiskCacheProvider;Landroidx/core/util/Pools$Pool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/DecodeJob$DiskCacheProvider;",
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/agc/glide/load/engine/DecodeJob<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-direct {v0}, Lcom/agc/glide/load/engine/DecodeHelper;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->decodeHelper:Lcom/agc/glide/load/engine/DecodeHelper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->throwables:Ljava/util/List;

    invoke-static {}, Lcom/agc/glide/util/pool/StateVerifier;->newInstance()Lcom/agc/glide/util/pool/StateVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->stateVerifier:Lcom/agc/glide/util/pool/StateVerifier;

    new-instance v0, Lcom/agc/glide/load/engine/DecodeJob$DeferredEncodeManager;

    invoke-direct {v0}, Lcom/agc/glide/load/engine/DecodeJob$DeferredEncodeManager;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->deferredEncodeManager:Lcom/agc/glide/load/engine/DecodeJob$DeferredEncodeManager;

    new-instance v0, Lcom/agc/glide/load/engine/DecodeJob$ReleaseManager;

    invoke-direct {v0}, Lcom/agc/glide/load/engine/DecodeJob$ReleaseManager;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->releaseManager:Lcom/agc/glide/load/engine/DecodeJob$ReleaseManager;

    iput-object p1, p0, Lcom/agc/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/agc/glide/load/engine/DecodeJob$DiskCacheProvider;

    iput-object p2, p0, Lcom/agc/glide/load/engine/DecodeJob;->pool:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method private decodeFromData(Lcom/agc/glide/load/data/DataFetcher;Ljava/lang/Object;Lcom/agc/glide/load/DataSource;)Lcom/agc/glide/load/engine/Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/agc/glide/load/data/DataFetcher<",
            "*>;TData;",
            "Lcom/agc/glide/load/DataSource;",
            ")",
            "Lcom/agc/glide/load/engine/Resource<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/agc/glide/load/engine/GlideException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-interface {p1}, Lcom/agc/glide/load/data/DataFetcher;->cleanup()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/agc/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    invoke-direct {p0, p2, p3}, Lcom/agc/glide/load/engine/DecodeJob;->decodeFromFetcher(Ljava/lang/Object;Lcom/agc/glide/load/DataSource;)Lcom/agc/glide/load/engine/Resource;

    move-result-object p2

    const-string p3, "DecodeJob"

    const/4 v2, 0x2

    invoke-static {p3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoded result "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, v0, v1}, Lcom/agc/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-interface {p1}, Lcom/agc/glide/load/data/DataFetcher;->cleanup()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lcom/agc/glide/load/data/DataFetcher;->cleanup()V

    throw p2
.end method

.method private decodeFromFetcher(Ljava/lang/Object;Lcom/agc/glide/load/DataSource;)Lcom/agc/glide/load/engine/Resource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/agc/glide/load/DataSource;",
            ")",
            "Lcom/agc/glide/load/engine/Resource<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/agc/glide/load/engine/GlideException;
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->decodeHelper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/agc/glide/load/engine/DecodeHelper;->getLoadPath(Ljava/lang/Class;)Lcom/agc/glide/load/engine/LoadPath;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/agc/glide/load/engine/DecodeJob;->runLoadPath(Ljava/lang/Object;Lcom/agc/glide/load/DataSource;Lcom/agc/glide/load/engine/LoadPath;)Lcom/agc/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method private decodeFromRetrievedData()V
    .locals 4

    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->startFetchTime:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentData:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cache key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentSourceKey:Lcom/agc/glide/load/Key;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fetcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentFetcher:Lcom/agc/glide/load/data/DataFetcher;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Retrieved data"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/agc/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentFetcher:Lcom/agc/glide/load/data/DataFetcher;

    iget-object v2, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentData:Ljava/lang/Object;

    iget-object v3, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentDataSource:Lcom/agc/glide/load/DataSource;

    invoke-direct {p0, v1, v2, v3}, Lcom/agc/glide/load/engine/DecodeJob;->decodeFromData(Lcom/agc/glide/load/data/DataFetcher;Ljava/lang/Object;Lcom/agc/glide/load/DataSource;)Lcom/agc/glide/load/engine/Resource;

    move-result-object v0
    :try_end_0
    .catch Lcom/agc/glide/load/engine/GlideException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentAttemptingKey:Lcom/agc/glide/load/Key;

    iget-object v3, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentDataSource:Lcom/agc/glide/load/DataSource;

    invoke-virtual {v1, v2, v3}, Lcom/agc/glide/load/engine/GlideException;->setLoggingDetails(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/DataSource;)V

    iget-object v2, p0, Lcom/agc/glide/load/engine/DecodeJob;->throwables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentDataSource:Lcom/agc/glide/load/DataSource;

    iget-boolean v2, p0, Lcom/agc/glide/load/engine/DecodeJob;->isLoadingFromAlternateCacheKey:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/agc/glide/load/engine/DecodeJob;->notifyEncodeAndRelease(Lcom/agc/glide/load/engine/Resource;Lcom/agc/glide/load/DataSource;Z)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/agc/glide/load/engine/DecodeJob;->runGenerators()V

    :goto_1
    return-void
.end method

.method private getNextGenerator()Lcom/agc/glide/load/engine/DataFetcherGenerator;
    .locals 3

    sget-object v0, Lcom/agc/glide/load/engine/DecodeJob$1;->$SwitchMap$com$agc$glide$load$engine$DecodeJob$Stage:[I

    iget-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->stage:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/agc/glide/load/engine/DecodeJob;->stage:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/agc/glide/load/engine/SourceGenerator;

    iget-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->decodeHelper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-direct {v0, v1, p0}, Lcom/agc/glide/load/engine/SourceGenerator;-><init>(Lcom/agc/glide/load/engine/DecodeHelper;Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/agc/glide/load/engine/DataCacheGenerator;

    iget-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->decodeHelper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-direct {v0, v1, p0}, Lcom/agc/glide/load/engine/DataCacheGenerator;-><init>(Lcom/agc/glide/load/engine/DecodeHelper;Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/agc/glide/load/engine/ResourceCacheGenerator;

    iget-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->decodeHelper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-direct {v0, v1, p0}, Lcom/agc/glide/load/engine/ResourceCacheGenerator;-><init>(Lcom/agc/glide/load/engine/DecodeHelper;Lcom/agc/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getNextStage(Lcom/agc/glide/load/engine/DecodeJob$Stage;)Lcom/agc/glide/load/engine/DecodeJob$Stage;
    .locals 3

    sget-object v0, Lcom/agc/glide/load/engine/DecodeJob$1;->$SwitchMap$com$agc$glide$load$engine$DecodeJob$Stage:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object p1, p0, Lcom/agc/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/agc/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1}, Lcom/agc/glide/load/engine/DiskCacheStrategy;->decodeCachedResource()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/agc/glide/load/engine/DecodeJob$Stage;->RESOURCE_CACHE:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/agc/glide/load/engine/DecodeJob$Stage;->RESOURCE_CACHE:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, p1}, Lcom/agc/glide/load/engine/DecodeJob;->getNextStage(Lcom/agc/glide/load/engine/DecodeJob$Stage;)Lcom/agc/glide/load/engine/DecodeJob$Stage;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_1
    sget-object p1, Lcom/agc/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    return-object p1

    :pswitch_2
    iget-boolean p1, p0, Lcom/agc/glide/load/engine/DecodeJob;->onlyRetrieveFromCache:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/agc/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/agc/glide/load/engine/DecodeJob$Stage;->SOURCE:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    :goto_1
    return-object p1

    :pswitch_3
    iget-object p1, p0, Lcom/agc/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/agc/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1}, Lcom/agc/glide/load/engine/DiskCacheStrategy;->decodeCachedData()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/agc/glide/load/engine/DecodeJob$Stage;->DATA_CACHE:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/agc/glide/load/engine/DecodeJob$Stage;->DATA_CACHE:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, p1}, Lcom/agc/glide/load/engine/DecodeJob;->getNextStage(Lcom/agc/glide/load/engine/DecodeJob$Stage;)Lcom/agc/glide/load/engine/DecodeJob$Stage;

    move-result-object p1

    :goto_2
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getOptionsWithHardwareConfig(Lcom/agc/glide/load/DataSource;)Lcom/agc/glide/load/Options;
    .locals 3

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->options:Lcom/agc/glide/load/Options;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/agc/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/agc/glide/load/DataSource;

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/agc/glide/load/engine/DecodeJob;->decodeHelper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {p1}, Lcom/agc/glide/load/engine/DecodeHelper;->isScaleOnlyOrNoTransform()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    sget-object v1, Lcom/agc/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/agc/glide/load/Option;

    invoke-virtual {v0, v1}, Lcom/agc/glide/load/Options;->get(Lcom/agc/glide/load/Option;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/agc/glide/load/Options;

    invoke-direct {v0}, Lcom/agc/glide/load/Options;-><init>()V

    iget-object v2, p0, Lcom/agc/glide/load/engine/DecodeJob;->options:Lcom/agc/glide/load/Options;

    invoke-virtual {v0, v2}, Lcom/agc/glide/load/Options;->putAll(Lcom/agc/glide/load/Options;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/agc/glide/load/Options;->set(Lcom/agc/glide/load/Option;Ljava/lang/Object;)Lcom/agc/glide/load/Options;

    return-object v0
.end method

.method private getPriority()I
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->priority:Lcom/agc/glide/Priority;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method private logWithTimeAndKey(Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/agc/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method private logWithTimeAndKey(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2, p3}, Lcom/agc/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", load key: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/agc/glide/load/engine/DecodeJob;->loadKey:Lcom/agc/glide/load/engine/EngineKey;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p4, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", thread: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DecodeJob"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyComplete(Lcom/agc/glide/load/engine/Resource;Lcom/agc/glide/load/DataSource;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/Resource<",
            "TR;>;",
            "Lcom/agc/glide/load/DataSource;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/agc/glide/load/engine/DecodeJob;->setNotifiedOrThrow()V

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->callback:Lcom/agc/glide/load/engine/DecodeJob$Callback;

    invoke-interface {v0, p1, p2, p3}, Lcom/agc/glide/load/engine/DecodeJob$Callback;->onResourceReady(Lcom/agc/glide/load/engine/Resource;Lcom/agc/glide/load/DataSource;Z)V

    return-void
.end method

.method private notifyEncodeAndRelease(Lcom/agc/glide/load/engine/Resource;Lcom/agc/glide/load/DataSource;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/Resource<",
            "TR;>;",
            "Lcom/agc/glide/load/DataSource;",
            "Z)V"
        }
    .end annotation

    const-string v0, "DecodeJob.notifyEncodeAndRelease"

    invoke-static {v0}, Lcom/agc/glide/util/pool/GlideTrace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    instance-of v0, p1, Lcom/agc/glide/load/engine/Initializable;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/agc/glide/load/engine/Initializable;

    invoke-interface {v0}, Lcom/agc/glide/load/engine/Initializable;->initialize()V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->deferredEncodeManager:Lcom/agc/glide/load/engine/DecodeJob$DeferredEncodeManager;

    invoke-virtual {v1}, Lcom/agc/glide/load/engine/DecodeJob$DeferredEncodeManager;->hasResourceToEncode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/agc/glide/load/engine/LockedResource;->obtain(Lcom/agc/glide/load/engine/Resource;)Lcom/agc/glide/load/engine/LockedResource;

    move-result-object p1

    move-object v0, p1

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/agc/glide/load/engine/DecodeJob;->notifyComplete(Lcom/agc/glide/load/engine/Resource;Lcom/agc/glide/load/DataSource;Z)V

    sget-object p1, Lcom/agc/glide/load/engine/DecodeJob$Stage;->ENCODE:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    iput-object p1, p0, Lcom/agc/glide/load/engine/DecodeJob;->stage:Lcom/agc/glide/load/engine/DecodeJob$Stage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p1, p0, Lcom/agc/glide/load/engine/DecodeJob;->deferredEncodeManager:Lcom/agc/glide/load/engine/DecodeJob$DeferredEncodeManager;

    invoke-virtual {p1}, Lcom/agc/glide/load/engine/DecodeJob$DeferredEncodeManager;->hasResourceToEncode()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/agc/glide/load/engine/DecodeJob;->deferredEncodeManager:Lcom/agc/glide/load/engine/DecodeJob$DeferredEncodeManager;

    iget-object p2, p0, Lcom/agc/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/agc/glide/load/engine/DecodeJob$DiskCacheProvider;

    iget-object p3, p0, Lcom/agc/glide/load/engine/DecodeJob;->options:Lcom/agc/glide/load/Options;

    invoke-virtual {p1, p2, p3}, Lcom/agc/glide/load/engine/DecodeJob$DeferredEncodeManager;->encode(Lcom/agc/glide/load/engine/DecodeJob$DiskCacheProvider;Lcom/agc/glide/load/Options;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Lcom/agc/glide/load/engine/LockedResource;->unlock()V

    :cond_3
    invoke-direct {p0}, Lcom/agc/glide/load/engine/DecodeJob;->onEncodeComplete()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/agc/glide/util/pool/GlideTrace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0}, Lcom/agc/glide/load/engine/LockedResource;->unlock()V

    :cond_4
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {}, Lcom/agc/glide/util/pool/GlideTrace;->endSection()V

    throw p1
.end method

.method private notifyFailed()V
    .locals 3

    invoke-direct {p0}, Lcom/agc/glide/load/engine/DecodeJob;->setNotifiedOrThrow()V

    new-instance v0, Lcom/agc/glide/load/engine/GlideException;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/agc/glide/load/engine/DecodeJob;->throwables:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "Failed to load resource"

    invoke-direct {v0, v2, v1}, Lcom/agc/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->callback:Lcom/agc/glide/load/engine/DecodeJob$Callback;

    invoke-interface {v1, v0}, Lcom/agc/glide/load/engine/DecodeJob$Callback;->onLoadFailed(Lcom/agc/glide/load/engine/GlideException;)V

    invoke-direct {p0}, Lcom/agc/glide/load/engine/DecodeJob;->onLoadFailed()V

    return-void
.end method

.method private onEncodeComplete()V
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->releaseManager:Lcom/agc/glide/load/engine/DecodeJob$ReleaseManager;

    invoke-virtual {v0}, Lcom/agc/glide/load/engine/DecodeJob$ReleaseManager;->onEncodeComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/agc/glide/load/engine/DecodeJob;->releaseInternal()V

    :cond_0
    return-void
.end method

.method private onLoadFailed()V
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->releaseManager:Lcom/agc/glide/load/engine/DecodeJob$ReleaseManager;

    invoke-virtual {v0}, Lcom/agc/glide/load/engine/DecodeJob$ReleaseManager;->onFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/agc/glide/load/engine/DecodeJob;->releaseInternal()V

    :cond_0
    return-void
.end method

.method private releaseInternal()V
    .locals 4

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->releaseManager:Lcom/agc/glide/load/engine/DecodeJob$ReleaseManager;

    invoke-virtual {v0}, Lcom/agc/glide/load/engine/DecodeJob$ReleaseManager;->reset()V

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->deferredEncodeManager:Lcom/agc/glide/load/engine/DecodeJob$DeferredEncodeManager;

    invoke-virtual {v0}, Lcom/agc/glide/load/engine/DecodeJob$DeferredEncodeManager;->clear()V

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->decodeHelper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v0}, Lcom/agc/glide/load/engine/DecodeHelper;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->isCallbackNotified:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->glideContext:Lcom/agc/glide/GlideContext;

    iput-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->signature:Lcom/agc/glide/load/Key;

    iput-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->options:Lcom/agc/glide/load/Options;

    iput-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->priority:Lcom/agc/glide/Priority;

    iput-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->loadKey:Lcom/agc/glide/load/engine/EngineKey;

    iput-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->callback:Lcom/agc/glide/load/engine/DecodeJob$Callback;

    iput-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->stage:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    iput-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentGenerator:Lcom/agc/glide/load/engine/DataFetcherGenerator;

    iput-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentThread:Ljava/lang/Thread;

    iput-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentSourceKey:Lcom/agc/glide/load/Key;

    iput-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentData:Ljava/lang/Object;

    iput-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentDataSource:Lcom/agc/glide/load/DataSource;

    iput-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentFetcher:Lcom/agc/glide/load/data/DataFetcher;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/agc/glide/load/engine/DecodeJob;->startFetchTime:J

    iput-boolean v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->isCancelled:Z

    iput-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->model:Ljava/lang/Object;

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->throwables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->pool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method private reschedule(Lcom/agc/glide/load/engine/DecodeJob$RunReason;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/load/engine/DecodeJob;->runReason:Lcom/agc/glide/load/engine/DecodeJob$RunReason;

    iget-object p1, p0, Lcom/agc/glide/load/engine/DecodeJob;->callback:Lcom/agc/glide/load/engine/DecodeJob$Callback;

    invoke-interface {p1, p0}, Lcom/agc/glide/load/engine/DecodeJob$Callback;->reschedule(Lcom/agc/glide/load/engine/DecodeJob;)V

    return-void
.end method

.method private runGenerators()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentThread:Ljava/lang/Thread;

    invoke-static {}, Lcom/agc/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->startFetchTime:J

    const/4 v0, 0x0

    :cond_0
    iget-boolean v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->isCancelled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentGenerator:Lcom/agc/glide/load/engine/DataFetcherGenerator;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentGenerator:Lcom/agc/glide/load/engine/DataFetcherGenerator;

    invoke-interface {v0}, Lcom/agc/glide/load/engine/DataFetcherGenerator;->startNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->stage:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v1}, Lcom/agc/glide/load/engine/DecodeJob;->getNextStage(Lcom/agc/glide/load/engine/DecodeJob$Stage;)Lcom/agc/glide/load/engine/DecodeJob$Stage;

    move-result-object v1

    iput-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->stage:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0}, Lcom/agc/glide/load/engine/DecodeJob;->getNextGenerator()Lcom/agc/glide/load/engine/DataFetcherGenerator;

    move-result-object v1

    iput-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentGenerator:Lcom/agc/glide/load/engine/DataFetcherGenerator;

    iget-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->stage:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    sget-object v2, Lcom/agc/glide/load/engine/DecodeJob$Stage;->SOURCE:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/agc/glide/load/engine/DecodeJob$RunReason;->SWITCH_TO_SOURCE_SERVICE:Lcom/agc/glide/load/engine/DecodeJob$RunReason;

    invoke-direct {p0, v0}, Lcom/agc/glide/load/engine/DecodeJob;->reschedule(Lcom/agc/glide/load/engine/DecodeJob$RunReason;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->stage:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    sget-object v2, Lcom/agc/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->isCancelled:Z

    if-eqz v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/agc/glide/load/engine/DecodeJob;->notifyFailed()V

    :cond_3
    return-void
.end method

.method private runLoadPath(Ljava/lang/Object;Lcom/agc/glide/load/DataSource;Lcom/agc/glide/load/engine/LoadPath;)Lcom/agc/glide/load/engine/Resource;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "ResourceType:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/agc/glide/load/DataSource;",
            "Lcom/agc/glide/load/engine/LoadPath<",
            "TData;TResourceType;TR;>;)",
            "Lcom/agc/glide/load/engine/Resource<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/agc/glide/load/engine/GlideException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/agc/glide/load/engine/DecodeJob;->getOptionsWithHardwareConfig(Lcom/agc/glide/load/DataSource;)Lcom/agc/glide/load/Options;

    move-result-object v2

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->glideContext:Lcom/agc/glide/GlideContext;

    invoke-virtual {v0}, Lcom/agc/glide/GlideContext;->getRegistry()Lcom/agc/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/Registry;->getRewinder(Ljava/lang/Object;)Lcom/agc/glide/load/data/DataRewinder;

    move-result-object p1

    :try_start_0
    iget v3, p0, Lcom/agc/glide/load/engine/DecodeJob;->width:I

    iget v4, p0, Lcom/agc/glide/load/engine/DecodeJob;->height:I

    new-instance v5, Lcom/agc/glide/load/engine/DecodeJob$DecodeCallback;

    invoke-direct {v5, p0, p2}, Lcom/agc/glide/load/engine/DecodeJob$DecodeCallback;-><init>(Lcom/agc/glide/load/engine/DecodeJob;Lcom/agc/glide/load/DataSource;)V

    move-object v0, p3

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/agc/glide/load/engine/LoadPath;->load(Lcom/agc/glide/load/data/DataRewinder;Lcom/agc/glide/load/Options;IILcom/agc/glide/load/engine/DecodePath$DecodeCallback;)Lcom/agc/glide/load/engine/Resource;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lcom/agc/glide/load/data/DataRewinder;->cleanup()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lcom/agc/glide/load/data/DataRewinder;->cleanup()V

    throw p2
.end method

.method private runWrapped()V
    .locals 3

    sget-object v0, Lcom/agc/glide/load/engine/DecodeJob$1;->$SwitchMap$com$agc$glide$load$engine$DecodeJob$RunReason:[I

    iget-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->runReason:Lcom/agc/glide/load/engine/DecodeJob$RunReason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/agc/glide/load/engine/DecodeJob;->decodeFromRetrievedData()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized run reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/agc/glide/load/engine/DecodeJob;->runReason:Lcom/agc/glide/load/engine/DecodeJob$RunReason;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/agc/glide/load/engine/DecodeJob$Stage;->INITIALIZE:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v0}, Lcom/agc/glide/load/engine/DecodeJob;->getNextStage(Lcom/agc/glide/load/engine/DecodeJob$Stage;)Lcom/agc/glide/load/engine/DecodeJob$Stage;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->stage:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0}, Lcom/agc/glide/load/engine/DecodeJob;->getNextGenerator()Lcom/agc/glide/load/engine/DataFetcherGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentGenerator:Lcom/agc/glide/load/engine/DataFetcherGenerator;

    :cond_2
    invoke-direct {p0}, Lcom/agc/glide/load/engine/DecodeJob;->runGenerators()V

    :goto_0
    return-void
.end method

.method private setNotifiedOrThrow()V
    .locals 3

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->stateVerifier:Lcom/agc/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/agc/glide/util/pool/StateVerifier;->throwIfRecycled()V

    iget-boolean v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->isCallbackNotified:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->throwables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->throwables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already notified"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    iput-boolean v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->isCallbackNotified:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->isCancelled:Z

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentGenerator:Lcom/agc/glide/load/engine/DataFetcherGenerator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/agc/glide/load/engine/DataFetcherGenerator;->cancel()V

    :cond_0
    return-void
.end method

.method public compareTo(Lcom/agc/glide/load/engine/DecodeJob;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/DecodeJob<",
            "*>;)I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/agc/glide/load/engine/DecodeJob;->getPriority()I

    move-result v0

    invoke-direct {p1}, Lcom/agc/glide/load/engine/DecodeJob;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->order:I

    iget p1, p1, Lcom/agc/glide/load/engine/DecodeJob;->order:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/agc/glide/load/engine/DecodeJob;

    invoke-virtual {p0, p1}, Lcom/agc/glide/load/engine/DecodeJob;->compareTo(Lcom/agc/glide/load/engine/DecodeJob;)I

    move-result p1

    return p1
.end method

.method public getVerifier()Lcom/agc/glide/util/pool/StateVerifier;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->stateVerifier:Lcom/agc/glide/util/pool/StateVerifier;

    return-object v0
.end method

.method public init(Lcom/agc/glide/GlideContext;Ljava/lang/Object;Lcom/agc/glide/load/engine/EngineKey;Lcom/agc/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/Priority;Lcom/agc/glide/load/engine/DiskCacheStrategy;Ljava/util/Map;ZZZLcom/agc/glide/load/Options;Lcom/agc/glide/load/engine/DecodeJob$Callback;I)Lcom/agc/glide/load/engine/DecodeJob;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Lcom/agc/glide/load/engine/EngineKey;",
            "Lcom/agc/glide/load/Key;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/agc/glide/Priority;",
            "Lcom/agc/glide/load/engine/DiskCacheStrategy;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/agc/glide/load/Transformation<",
            "*>;>;ZZZ",
            "Lcom/agc/glide/load/Options;",
            "Lcom/agc/glide/load/engine/DecodeJob$Callback<",
            "TR;>;I)",
            "Lcom/agc/glide/load/engine/DecodeJob<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/agc/glide/load/engine/DecodeJob;->decodeHelper:Lcom/agc/glide/load/engine/DecodeHelper;

    iget-object v15, v0, Lcom/agc/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/agc/glide/load/engine/DecodeJob$DiskCacheProvider;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p10

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p15

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-virtual/range {v1 .. v15}, Lcom/agc/glide/load/engine/DecodeHelper;->init(Lcom/agc/glide/GlideContext;Ljava/lang/Object;Lcom/agc/glide/load/Key;IILcom/agc/glide/load/engine/DiskCacheStrategy;Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/Priority;Lcom/agc/glide/load/Options;Ljava/util/Map;ZZLcom/agc/glide/load/engine/DecodeJob$DiskCacheProvider;)V

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/agc/glide/load/engine/DecodeJob;->glideContext:Lcom/agc/glide/GlideContext;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/agc/glide/load/engine/DecodeJob;->signature:Lcom/agc/glide/load/Key;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/agc/glide/load/engine/DecodeJob;->priority:Lcom/agc/glide/Priority;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/agc/glide/load/engine/DecodeJob;->loadKey:Lcom/agc/glide/load/engine/EngineKey;

    move/from16 v1, p5

    iput v1, v0, Lcom/agc/glide/load/engine/DecodeJob;->width:I

    move/from16 v1, p6

    iput v1, v0, Lcom/agc/glide/load/engine/DecodeJob;->height:I

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/agc/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/agc/glide/load/engine/DiskCacheStrategy;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/agc/glide/load/engine/DecodeJob;->onlyRetrieveFromCache:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/agc/glide/load/engine/DecodeJob;->options:Lcom/agc/glide/load/Options;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/agc/glide/load/engine/DecodeJob;->callback:Lcom/agc/glide/load/engine/DecodeJob$Callback;

    move/from16 v1, p17

    iput v1, v0, Lcom/agc/glide/load/engine/DecodeJob;->order:I

    sget-object v1, Lcom/agc/glide/load/engine/DecodeJob$RunReason;->INITIALIZE:Lcom/agc/glide/load/engine/DecodeJob$RunReason;

    iput-object v1, v0, Lcom/agc/glide/load/engine/DecodeJob;->runReason:Lcom/agc/glide/load/engine/DecodeJob$RunReason;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/agc/glide/load/engine/DecodeJob;->model:Ljava/lang/Object;

    return-object v0
.end method

.method public onDataFetcherFailed(Lcom/agc/glide/load/Key;Ljava/lang/Exception;Lcom/agc/glide/load/data/DataFetcher;Lcom/agc/glide/load/DataSource;)V
    .locals 2
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

    invoke-interface {p3}, Lcom/agc/glide/load/data/DataFetcher;->cleanup()V

    new-instance v0, Lcom/agc/glide/load/engine/GlideException;

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Lcom/agc/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3}, Lcom/agc/glide/load/data/DataFetcher;->getDataClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p1, p4, p2}, Lcom/agc/glide/load/engine/GlideException;->setLoggingDetails(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/DataSource;Ljava/lang/Class;)V

    iget-object p1, p0, Lcom/agc/glide/load/engine/DecodeJob;->throwables:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentThread:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    sget-object p1, Lcom/agc/glide/load/engine/DecodeJob$RunReason;->SWITCH_TO_SOURCE_SERVICE:Lcom/agc/glide/load/engine/DecodeJob$RunReason;

    invoke-direct {p0, p1}, Lcom/agc/glide/load/engine/DecodeJob;->reschedule(Lcom/agc/glide/load/engine/DecodeJob$RunReason;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/agc/glide/load/engine/DecodeJob;->runGenerators()V

    :goto_0
    return-void
.end method

.method public onDataFetcherReady(Lcom/agc/glide/load/Key;Ljava/lang/Object;Lcom/agc/glide/load/data/DataFetcher;Lcom/agc/glide/load/DataSource;Lcom/agc/glide/load/Key;)V
    .locals 0
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

    iput-object p1, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentSourceKey:Lcom/agc/glide/load/Key;

    iput-object p2, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentData:Ljava/lang/Object;

    iput-object p3, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentFetcher:Lcom/agc/glide/load/data/DataFetcher;

    iput-object p4, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentDataSource:Lcom/agc/glide/load/DataSource;

    iput-object p5, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentAttemptingKey:Lcom/agc/glide/load/Key;

    iget-object p2, p0, Lcom/agc/glide/load/engine/DecodeJob;->decodeHelper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {p2}, Lcom/agc/glide/load/engine/DecodeHelper;->getCacheKeys()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eq p1, p2, :cond_0

    const/4 p3, 0x1

    :cond_0
    iput-boolean p3, p0, Lcom/agc/glide/load/engine/DecodeJob;->isLoadingFromAlternateCacheKey:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentThread:Ljava/lang/Thread;

    if-eq p1, p2, :cond_1

    sget-object p1, Lcom/agc/glide/load/engine/DecodeJob$RunReason;->DECODE_DATA:Lcom/agc/glide/load/engine/DecodeJob$RunReason;

    invoke-direct {p0, p1}, Lcom/agc/glide/load/engine/DecodeJob;->reschedule(Lcom/agc/glide/load/engine/DecodeJob$RunReason;)V

    goto :goto_0

    :cond_1
    const-string p1, "DecodeJob.decodeFromRetrievedData"

    invoke-static {p1}, Lcom/agc/glide/util/pool/GlideTrace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/agc/glide/load/engine/DecodeJob;->decodeFromRetrievedData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/agc/glide/util/pool/GlideTrace;->endSection()V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/agc/glide/util/pool/GlideTrace;->endSection()V

    throw p1
.end method

.method public onResourceDecoded(Lcom/agc/glide/load/DataSource;Lcom/agc/glide/load/engine/Resource;)Lcom/agc/glide/load/engine/Resource;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/agc/glide/load/DataSource;",
            "Lcom/agc/glide/load/engine/Resource<",
            "TZ;>;)",
            "Lcom/agc/glide/load/engine/Resource<",
            "TZ;>;"
        }
    .end annotation

    invoke-interface {p2}, Lcom/agc/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    sget-object v0, Lcom/agc/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/agc/glide/load/DataSource;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->decodeHelper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {v0, v8}, Lcom/agc/glide/load/engine/DecodeHelper;->getTransformation(Ljava/lang/Class;)Lcom/agc/glide/load/Transformation;

    move-result-object v0

    iget-object v2, p0, Lcom/agc/glide/load/engine/DecodeJob;->glideContext:Lcom/agc/glide/GlideContext;

    iget v3, p0, Lcom/agc/glide/load/engine/DecodeJob;->width:I

    iget v4, p0, Lcom/agc/glide/load/engine/DecodeJob;->height:I

    invoke-interface {v0, v2, p2, v3, v4}, Lcom/agc/glide/load/Transformation;->transform(Landroid/content/Context;Lcom/agc/glide/load/engine/Resource;II)Lcom/agc/glide/load/engine/Resource;

    move-result-object v2

    move-object v7, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, p2

    move-object v7, v1

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p2}, Lcom/agc/glide/load/engine/Resource;->recycle()V

    :cond_1
    iget-object p2, p0, Lcom/agc/glide/load/engine/DecodeJob;->decodeHelper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {p2, v0}, Lcom/agc/glide/load/engine/DecodeHelper;->isResourceEncoderAvailable(Lcom/agc/glide/load/engine/Resource;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/agc/glide/load/engine/DecodeJob;->decodeHelper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {p2, v0}, Lcom/agc/glide/load/engine/DecodeHelper;->getResultEncoder(Lcom/agc/glide/load/engine/Resource;)Lcom/agc/glide/load/ResourceEncoder;

    move-result-object v1

    iget-object p2, p0, Lcom/agc/glide/load/engine/DecodeJob;->options:Lcom/agc/glide/load/Options;

    invoke-interface {v1, p2}, Lcom/agc/glide/load/ResourceEncoder;->getEncodeStrategy(Lcom/agc/glide/load/Options;)Lcom/agc/glide/load/EncodeStrategy;

    move-result-object p2

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/agc/glide/load/EncodeStrategy;->NONE:Lcom/agc/glide/load/EncodeStrategy;

    :goto_1
    move-object v10, v1

    iget-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->decodeHelper:Lcom/agc/glide/load/engine/DecodeHelper;

    iget-object v2, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentSourceKey:Lcom/agc/glide/load/Key;

    invoke-virtual {v1, v2}, Lcom/agc/glide/load/engine/DecodeHelper;->isSourceKey(Lcom/agc/glide/load/Key;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-object v3, p0, Lcom/agc/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/agc/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v3, v1, p1, p2}, Lcom/agc/glide/load/engine/DiskCacheStrategy;->isResourceCacheable(ZLcom/agc/glide/load/DataSource;Lcom/agc/glide/load/EncodeStrategy;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v10, :cond_5

    sget-object p1, Lcom/agc/glide/load/engine/DecodeJob$1;->$SwitchMap$com$agc$glide$load$EncodeStrategy:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    if-eq p1, v2, :cond_4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    new-instance p1, Lcom/agc/glide/load/engine/ResourceCacheKey;

    iget-object p2, p0, Lcom/agc/glide/load/engine/DecodeJob;->decodeHelper:Lcom/agc/glide/load/engine/DecodeHelper;

    invoke-virtual {p2}, Lcom/agc/glide/load/engine/DecodeHelper;->getArrayPool()Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

    move-result-object v2

    iget-object v3, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentSourceKey:Lcom/agc/glide/load/Key;

    iget-object v4, p0, Lcom/agc/glide/load/engine/DecodeJob;->signature:Lcom/agc/glide/load/Key;

    iget v5, p0, Lcom/agc/glide/load/engine/DecodeJob;->width:I

    iget v6, p0, Lcom/agc/glide/load/engine/DecodeJob;->height:I

    iget-object v9, p0, Lcom/agc/glide/load/engine/DecodeJob;->options:Lcom/agc/glide/load/Options;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/agc/glide/load/engine/ResourceCacheKey;-><init>(Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/agc/glide/load/Key;Lcom/agc/glide/load/Key;IILcom/agc/glide/load/Transformation;Ljava/lang/Class;Lcom/agc/glide/load/Options;)V

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown strategy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/agc/glide/load/engine/DataCacheKey;

    iget-object p2, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentSourceKey:Lcom/agc/glide/load/Key;

    iget-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->signature:Lcom/agc/glide/load/Key;

    invoke-direct {p1, p2, v1}, Lcom/agc/glide/load/engine/DataCacheKey;-><init>(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/Key;)V

    :goto_2
    invoke-static {v0}, Lcom/agc/glide/load/engine/LockedResource;->obtain(Lcom/agc/glide/load/engine/Resource;)Lcom/agc/glide/load/engine/LockedResource;

    move-result-object v0

    iget-object p2, p0, Lcom/agc/glide/load/engine/DecodeJob;->deferredEncodeManager:Lcom/agc/glide/load/engine/DecodeJob$DeferredEncodeManager;

    invoke-virtual {p2, p1, v10, v0}, Lcom/agc/glide/load/engine/DecodeJob$DeferredEncodeManager;->init(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/ResourceEncoder;Lcom/agc/glide/load/engine/LockedResource;)V

    goto :goto_3

    :cond_5
    new-instance p1, Lcom/agc/glide/Registry$NoResultEncoderAvailableException;

    invoke-interface {v0}, Lcom/agc/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/agc/glide/Registry$NoResultEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw p1

    :cond_6
    :goto_3
    return-object v0
.end method

.method public release(Z)V
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->releaseManager:Lcom/agc/glide/load/engine/DecodeJob$ReleaseManager;

    invoke-virtual {v0, p1}, Lcom/agc/glide/load/engine/DecodeJob$ReleaseManager;->release(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/agc/glide/load/engine/DecodeJob;->releaseInternal()V

    :cond_0
    return-void
.end method

.method public reschedule()V
    .locals 1

    sget-object v0, Lcom/agc/glide/load/engine/DecodeJob$RunReason;->SWITCH_TO_SOURCE_SERVICE:Lcom/agc/glide/load/engine/DecodeJob$RunReason;

    invoke-direct {p0, v0}, Lcom/agc/glide/load/engine/DecodeJob;->reschedule(Lcom/agc/glide/load/engine/DecodeJob$RunReason;)V

    return-void
.end method

.method public run()V
    .locals 5

    const-string v0, "DecodeJob"

    iget-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->runReason:Lcom/agc/glide/load/engine/DecodeJob$RunReason;

    iget-object v2, p0, Lcom/agc/glide/load/engine/DecodeJob;->model:Ljava/lang/Object;

    const-string v3, "DecodeJob#run(reason=%s, model=%s)"

    invoke-static {v3, v1, v2}, Lcom/agc/glide/util/pool/GlideTrace;->beginSectionFormat(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/agc/glide/load/engine/DecodeJob;->currentFetcher:Lcom/agc/glide/load/data/DataFetcher;

    :try_start_0
    iget-boolean v2, p0, Lcom/agc/glide/load/engine/DecodeJob;->isCancelled:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/agc/glide/load/engine/DecodeJob;->notifyFailed()V
    :try_end_0
    .catch Lcom/agc/glide/load/engine/CallbackException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/agc/glide/load/data/DataFetcher;->cleanup()V

    :cond_0
    invoke-static {}, Lcom/agc/glide/util/pool/GlideTrace;->endSection()V

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/agc/glide/load/engine/DecodeJob;->runWrapped()V
    :try_end_1
    .catch Lcom/agc/glide/load/engine/CallbackException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/agc/glide/load/data/DataFetcher;->cleanup()V

    :cond_2
    invoke-static {}, Lcom/agc/glide/util/pool/GlideTrace;->endSection()V

    return-void

    :catchall_0
    move-exception v2

    const/4 v3, 0x3

    :try_start_2
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeJob threw unexpectedly, isCancelled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/agc/glide/load/engine/DecodeJob;->isCancelled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", stage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/agc/glide/load/engine/DecodeJob;->stage:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->stage:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    sget-object v3, Lcom/agc/glide/load/engine/DecodeJob$Stage;->ENCODE:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeJob;->throwables:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/agc/glide/load/engine/DecodeJob;->notifyFailed()V

    :cond_4
    throw v2

    :catch_0
    move-exception v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/agc/glide/load/data/DataFetcher;->cleanup()V

    :cond_5
    invoke-static {}, Lcom/agc/glide/util/pool/GlideTrace;->endSection()V

    throw v0
.end method

.method public willDecodeFromCache()Z
    .locals 2

    sget-object v0, Lcom/agc/glide/load/engine/DecodeJob$Stage;->INITIALIZE:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v0}, Lcom/agc/glide/load/engine/DecodeJob;->getNextStage(Lcom/agc/glide/load/engine/DecodeJob$Stage;)Lcom/agc/glide/load/engine/DecodeJob$Stage;

    move-result-object v0

    sget-object v1, Lcom/agc/glide/load/engine/DecodeJob$Stage;->RESOURCE_CACHE:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/agc/glide/load/engine/DecodeJob$Stage;->DATA_CACHE:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
