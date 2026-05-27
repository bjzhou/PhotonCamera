.class public final Lcom/agc/glide/GlideBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/GlideBuilder$LogRequestOrigins;,
        Lcom/agc/glide/GlideBuilder$EnableImageDecoderForBitmaps;,
        Lcom/agc/glide/GlideBuilder$ManualOverrideHardwareBitmapMaxFdCount;
    }
.end annotation


# instance fields
.field private animationExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

.field private arrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

.field private bitmapPool:Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

.field private connectivityMonitorFactory:Lcom/agc/glide/manager/ConnectivityMonitorFactory;

.field private defaultRequestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private defaultRequestOptionsFactory:Lcom/agc/glide/Glide$RequestOptionsFactory;

.field private final defaultTransitionOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/agc/glide/TransitionOptions<",
            "**>;>;"
        }
    .end annotation
.end field

.field private diskCacheExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

.field private diskCacheFactory:Lcom/agc/glide/load/engine/cache/DiskCache$Factory;

.field private engine:Lcom/agc/glide/load/engine/Engine;

.field private final glideExperimentsBuilder:Lcom/agc/glide/GlideExperiments$Builder;

.field private isActiveResourceRetentionAllowed:Z

.field private logLevel:I

.field private memoryCache:Lcom/agc/glide/load/engine/cache/MemoryCache;

.field private memorySizeCalculator:Lcom/agc/glide/load/engine/cache/MemorySizeCalculator;

.field private requestManagerFactory:Lcom/agc/glide/manager/RequestManagerRetriever$RequestManagerFactory;

.field private sourceExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/GlideBuilder;->defaultTransitionOptions:Ljava/util/Map;

    new-instance v0, Lcom/agc/glide/GlideExperiments$Builder;

    invoke-direct {v0}, Lcom/agc/glide/GlideExperiments$Builder;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/GlideBuilder;->glideExperimentsBuilder:Lcom/agc/glide/GlideExperiments$Builder;

    const/4 v0, 0x4

    iput v0, p0, Lcom/agc/glide/GlideBuilder;->logLevel:I

    new-instance v0, Lcom/agc/glide/GlideBuilder$1;

    invoke-direct {v0, p0}, Lcom/agc/glide/GlideBuilder$1;-><init>(Lcom/agc/glide/GlideBuilder;)V

    iput-object v0, p0, Lcom/agc/glide/GlideBuilder;->defaultRequestOptionsFactory:Lcom/agc/glide/Glide$RequestOptionsFactory;

    return-void
.end method


# virtual methods
.method public addGlobalRequestListener(Lcom/agc/glide/request/RequestListener;)Lcom/agc/glide/GlideBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/agc/glide/GlideBuilder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/GlideBuilder;->defaultRequestListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/GlideBuilder;->defaultRequestListeners:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/GlideBuilder;->defaultRequestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build(Landroid/content/Context;Ljava/util/List;Lcom/agc/glide/module/AppGlideModule;)Lcom/agc/glide/Glide;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/agc/glide/module/GlideModule;",
            ">;",
            "Lcom/agc/glide/module/AppGlideModule;",
            ")",
            "Lcom/agc/glide/Glide;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    iget-object v1, v0, Lcom/agc/glide/GlideBuilder;->sourceExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/agc/glide/load/engine/executor/GlideExecutor;->newSourceExecutor()Lcom/agc/glide/load/engine/executor/GlideExecutor;

    move-result-object v1

    iput-object v1, v0, Lcom/agc/glide/GlideBuilder;->sourceExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    :cond_0
    iget-object v1, v0, Lcom/agc/glide/GlideBuilder;->diskCacheExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/agc/glide/load/engine/executor/GlideExecutor;->newDiskCacheExecutor()Lcom/agc/glide/load/engine/executor/GlideExecutor;

    move-result-object v1

    iput-object v1, v0, Lcom/agc/glide/GlideBuilder;->diskCacheExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    :cond_1
    iget-object v1, v0, Lcom/agc/glide/GlideBuilder;->animationExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/agc/glide/load/engine/executor/GlideExecutor;->newAnimationExecutor()Lcom/agc/glide/load/engine/executor/GlideExecutor;

    move-result-object v1

    iput-object v1, v0, Lcom/agc/glide/GlideBuilder;->animationExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    :cond_2
    iget-object v1, v0, Lcom/agc/glide/GlideBuilder;->memorySizeCalculator:Lcom/agc/glide/load/engine/cache/MemorySizeCalculator;

    if-nez v1, :cond_3

    new-instance v1, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;

    invoke-direct {v1, v2}, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;->build()Lcom/agc/glide/load/engine/cache/MemorySizeCalculator;

    move-result-object v1

    iput-object v1, v0, Lcom/agc/glide/GlideBuilder;->memorySizeCalculator:Lcom/agc/glide/load/engine/cache/MemorySizeCalculator;

    :cond_3
    iget-object v1, v0, Lcom/agc/glide/GlideBuilder;->connectivityMonitorFactory:Lcom/agc/glide/manager/ConnectivityMonitorFactory;

    if-nez v1, :cond_4

    new-instance v1, Lcom/agc/glide/manager/DefaultConnectivityMonitorFactory;

    invoke-direct {v1}, Lcom/agc/glide/manager/DefaultConnectivityMonitorFactory;-><init>()V

    iput-object v1, v0, Lcom/agc/glide/GlideBuilder;->connectivityMonitorFactory:Lcom/agc/glide/manager/ConnectivityMonitorFactory;

    :cond_4
    iget-object v1, v0, Lcom/agc/glide/GlideBuilder;->bitmapPool:Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/agc/glide/GlideBuilder;->memorySizeCalculator:Lcom/agc/glide/load/engine/cache/MemorySizeCalculator;

    invoke-virtual {v1}, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator;->getBitmapPoolSize()I

    move-result v1

    if-lez v1, :cond_5

    new-instance v3, Lcom/agc/glide/load/engine/bitmap_recycle/LruBitmapPool;

    int-to-long v4, v1

    invoke-direct {v3, v4, v5}, Lcom/agc/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(J)V

    iput-object v3, v0, Lcom/agc/glide/GlideBuilder;->bitmapPool:Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

    goto :goto_0

    :cond_5
    new-instance v1, Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;

    invoke-direct {v1}, Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;-><init>()V

    iput-object v1, v0, Lcom/agc/glide/GlideBuilder;->bitmapPool:Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

    :cond_6
    :goto_0
    iget-object v1, v0, Lcom/agc/glide/GlideBuilder;->arrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

    if-nez v1, :cond_7

    new-instance v1, Lcom/agc/glide/load/engine/bitmap_recycle/LruArrayPool;

    iget-object v3, v0, Lcom/agc/glide/GlideBuilder;->memorySizeCalculator:Lcom/agc/glide/load/engine/cache/MemorySizeCalculator;

    invoke-virtual {v3}, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator;->getArrayPoolSizeInBytes()I

    move-result v3

    invoke-direct {v1, v3}, Lcom/agc/glide/load/engine/bitmap_recycle/LruArrayPool;-><init>(I)V

    iput-object v1, v0, Lcom/agc/glide/GlideBuilder;->arrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

    :cond_7
    iget-object v1, v0, Lcom/agc/glide/GlideBuilder;->memoryCache:Lcom/agc/glide/load/engine/cache/MemoryCache;

    if-nez v1, :cond_8

    new-instance v1, Lcom/agc/glide/load/engine/cache/LruResourceCache;

    iget-object v3, v0, Lcom/agc/glide/GlideBuilder;->memorySizeCalculator:Lcom/agc/glide/load/engine/cache/MemorySizeCalculator;

    invoke-virtual {v3}, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator;->getMemoryCacheSize()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v1, v3, v4}, Lcom/agc/glide/load/engine/cache/LruResourceCache;-><init>(J)V

    iput-object v1, v0, Lcom/agc/glide/GlideBuilder;->memoryCache:Lcom/agc/glide/load/engine/cache/MemoryCache;

    :cond_8
    iget-object v1, v0, Lcom/agc/glide/GlideBuilder;->diskCacheFactory:Lcom/agc/glide/load/engine/cache/DiskCache$Factory;

    if-nez v1, :cond_9

    new-instance v1, Lcom/agc/glide/load/engine/cache/InternalCacheDiskCacheFactory;

    invoke-direct {v1, v2}, Lcom/agc/glide/load/engine/cache/InternalCacheDiskCacheFactory;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/agc/glide/GlideBuilder;->diskCacheFactory:Lcom/agc/glide/load/engine/cache/DiskCache$Factory;

    :cond_9
    iget-object v1, v0, Lcom/agc/glide/GlideBuilder;->engine:Lcom/agc/glide/load/engine/Engine;

    if-nez v1, :cond_a

    new-instance v1, Lcom/agc/glide/load/engine/Engine;

    iget-object v4, v0, Lcom/agc/glide/GlideBuilder;->memoryCache:Lcom/agc/glide/load/engine/cache/MemoryCache;

    iget-object v5, v0, Lcom/agc/glide/GlideBuilder;->diskCacheFactory:Lcom/agc/glide/load/engine/cache/DiskCache$Factory;

    iget-object v6, v0, Lcom/agc/glide/GlideBuilder;->diskCacheExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    iget-object v7, v0, Lcom/agc/glide/GlideBuilder;->sourceExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    invoke-static {}, Lcom/agc/glide/load/engine/executor/GlideExecutor;->newUnlimitedSourceExecutor()Lcom/agc/glide/load/engine/executor/GlideExecutor;

    move-result-object v8

    iget-object v9, v0, Lcom/agc/glide/GlideBuilder;->animationExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    iget-boolean v10, v0, Lcom/agc/glide/GlideBuilder;->isActiveResourceRetentionAllowed:Z

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/agc/glide/load/engine/Engine;-><init>(Lcom/agc/glide/load/engine/cache/MemoryCache;Lcom/agc/glide/load/engine/cache/DiskCache$Factory;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/executor/GlideExecutor;Lcom/agc/glide/load/engine/executor/GlideExecutor;Z)V

    iput-object v1, v0, Lcom/agc/glide/GlideBuilder;->engine:Lcom/agc/glide/load/engine/Engine;

    :cond_a
    iget-object v1, v0, Lcom/agc/glide/GlideBuilder;->defaultRequestListeners:Ljava/util/List;

    if-nez v1, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_b
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Lcom/agc/glide/GlideBuilder;->defaultRequestListeners:Ljava/util/List;

    iget-object v1, v0, Lcom/agc/glide/GlideBuilder;->glideExperimentsBuilder:Lcom/agc/glide/GlideExperiments$Builder;

    invoke-virtual {v1}, Lcom/agc/glide/GlideExperiments$Builder;->build()Lcom/agc/glide/GlideExperiments;

    move-result-object v15

    new-instance v7, Lcom/agc/glide/manager/RequestManagerRetriever;

    iget-object v1, v0, Lcom/agc/glide/GlideBuilder;->requestManagerFactory:Lcom/agc/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    invoke-direct {v7, v1}, Lcom/agc/glide/manager/RequestManagerRetriever;-><init>(Lcom/agc/glide/manager/RequestManagerRetriever$RequestManagerFactory;)V

    new-instance v16, Lcom/agc/glide/Glide;

    iget-object v3, v0, Lcom/agc/glide/GlideBuilder;->engine:Lcom/agc/glide/load/engine/Engine;

    iget-object v4, v0, Lcom/agc/glide/GlideBuilder;->memoryCache:Lcom/agc/glide/load/engine/cache/MemoryCache;

    iget-object v5, v0, Lcom/agc/glide/GlideBuilder;->bitmapPool:Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v6, v0, Lcom/agc/glide/GlideBuilder;->arrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

    iget-object v8, v0, Lcom/agc/glide/GlideBuilder;->connectivityMonitorFactory:Lcom/agc/glide/manager/ConnectivityMonitorFactory;

    iget v9, v0, Lcom/agc/glide/GlideBuilder;->logLevel:I

    iget-object v10, v0, Lcom/agc/glide/GlideBuilder;->defaultRequestOptionsFactory:Lcom/agc/glide/Glide$RequestOptionsFactory;

    iget-object v11, v0, Lcom/agc/glide/GlideBuilder;->defaultTransitionOptions:Ljava/util/Map;

    iget-object v12, v0, Lcom/agc/glide/GlideBuilder;->defaultRequestListeners:Ljava/util/List;

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-direct/range {v1 .. v15}, Lcom/agc/glide/Glide;-><init>(Landroid/content/Context;Lcom/agc/glide/load/engine/Engine;Lcom/agc/glide/load/engine/cache/MemoryCache;Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/agc/glide/manager/RequestManagerRetriever;Lcom/agc/glide/manager/ConnectivityMonitorFactory;ILcom/agc/glide/Glide$RequestOptionsFactory;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lcom/agc/glide/module/AppGlideModule;Lcom/agc/glide/GlideExperiments;)V

    return-object v16
.end method

.method public setAnimationExecutor(Lcom/agc/glide/load/engine/executor/GlideExecutor;)Lcom/agc/glide/GlideBuilder;
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/GlideBuilder;->animationExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    return-object p0
.end method

.method public setArrayPool(Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/agc/glide/GlideBuilder;
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/GlideBuilder;->arrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

    return-object p0
.end method

.method public setBitmapPool(Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/agc/glide/GlideBuilder;
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/GlideBuilder;->bitmapPool:Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

    return-object p0
.end method

.method public setConnectivityMonitorFactory(Lcom/agc/glide/manager/ConnectivityMonitorFactory;)Lcom/agc/glide/GlideBuilder;
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/GlideBuilder;->connectivityMonitorFactory:Lcom/agc/glide/manager/ConnectivityMonitorFactory;

    return-object p0
.end method

.method public setDefaultRequestOptions(Lcom/agc/glide/Glide$RequestOptionsFactory;)Lcom/agc/glide/GlideBuilder;
    .locals 0

    invoke-static {p1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/Glide$RequestOptionsFactory;

    iput-object p1, p0, Lcom/agc/glide/GlideBuilder;->defaultRequestOptionsFactory:Lcom/agc/glide/Glide$RequestOptionsFactory;

    return-object p0
.end method

.method public setDefaultRequestOptions(Lcom/agc/glide/request/RequestOptions;)Lcom/agc/glide/GlideBuilder;
    .locals 1

    new-instance v0, Lcom/agc/glide/GlideBuilder$2;

    invoke-direct {v0, p0, p1}, Lcom/agc/glide/GlideBuilder$2;-><init>(Lcom/agc/glide/GlideBuilder;Lcom/agc/glide/request/RequestOptions;)V

    invoke-virtual {p0, v0}, Lcom/agc/glide/GlideBuilder;->setDefaultRequestOptions(Lcom/agc/glide/Glide$RequestOptionsFactory;)Lcom/agc/glide/GlideBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultTransitionOptions(Ljava/lang/Class;Lcom/agc/glide/TransitionOptions;)Lcom/agc/glide/GlideBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/agc/glide/TransitionOptions<",
            "*TT;>;)",
            "Lcom/agc/glide/GlideBuilder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/GlideBuilder;->defaultTransitionOptions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setDisableHardwareBitmapsOnO(Z)Lcom/agc/glide/GlideBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setDiskCache(Lcom/agc/glide/load/engine/cache/DiskCache$Factory;)Lcom/agc/glide/GlideBuilder;
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/GlideBuilder;->diskCacheFactory:Lcom/agc/glide/load/engine/cache/DiskCache$Factory;

    return-object p0
.end method

.method public setDiskCacheExecutor(Lcom/agc/glide/load/engine/executor/GlideExecutor;)Lcom/agc/glide/GlideBuilder;
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/GlideBuilder;->diskCacheExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    return-object p0
.end method

.method public setEnableHardwareGainmapFixOnU(Z)Lcom/agc/glide/GlideBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setEngine(Lcom/agc/glide/load/engine/Engine;)Lcom/agc/glide/GlideBuilder;
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/GlideBuilder;->engine:Lcom/agc/glide/load/engine/Engine;

    return-object p0
.end method

.method public setImageDecoderEnabledForBitmaps(Z)Lcom/agc/glide/GlideBuilder;
    .locals 3

    iget-object v0, p0, Lcom/agc/glide/GlideBuilder;->glideExperimentsBuilder:Lcom/agc/glide/GlideExperiments$Builder;

    new-instance v1, Lcom/agc/glide/GlideBuilder$EnableImageDecoderForBitmaps;

    invoke-direct {v1}, Lcom/agc/glide/GlideBuilder$EnableImageDecoderForBitmaps;-><init>()V

    if-eqz p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/agc/glide/GlideExperiments$Builder;->update(Lcom/agc/glide/GlideExperiments$Experiment;Z)Lcom/agc/glide/GlideExperiments$Builder;

    return-object p0
.end method

.method public setIsActiveResourceRetentionAllowed(Z)Lcom/agc/glide/GlideBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/agc/glide/GlideBuilder;->isActiveResourceRetentionAllowed:Z

    return-object p0
.end method

.method public setLogLevel(I)Lcom/agc/glide/GlideBuilder;
    .locals 1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x6

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/agc/glide/GlideBuilder;->logLevel:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Log level must be one of Log.VERBOSE, Log.DEBUG, Log.INFO, Log.WARN, or Log.ERROR"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLogRequestOrigins(Z)Lcom/agc/glide/GlideBuilder;
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/GlideBuilder;->glideExperimentsBuilder:Lcom/agc/glide/GlideExperiments$Builder;

    new-instance v1, Lcom/agc/glide/GlideBuilder$LogRequestOrigins;

    invoke-direct {v1}, Lcom/agc/glide/GlideBuilder$LogRequestOrigins;-><init>()V

    invoke-virtual {v0, v1, p1}, Lcom/agc/glide/GlideExperiments$Builder;->update(Lcom/agc/glide/GlideExperiments$Experiment;Z)Lcom/agc/glide/GlideExperiments$Builder;

    return-object p0
.end method

.method public setMemoryCache(Lcom/agc/glide/load/engine/cache/MemoryCache;)Lcom/agc/glide/GlideBuilder;
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/GlideBuilder;->memoryCache:Lcom/agc/glide/load/engine/cache/MemoryCache;

    return-object p0
.end method

.method public setMemorySizeCalculator(Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;)Lcom/agc/glide/GlideBuilder;
    .locals 0

    invoke-virtual {p1}, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;->build()Lcom/agc/glide/load/engine/cache/MemorySizeCalculator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/agc/glide/GlideBuilder;->setMemorySizeCalculator(Lcom/agc/glide/load/engine/cache/MemorySizeCalculator;)Lcom/agc/glide/GlideBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMemorySizeCalculator(Lcom/agc/glide/load/engine/cache/MemorySizeCalculator;)Lcom/agc/glide/GlideBuilder;
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/GlideBuilder;->memorySizeCalculator:Lcom/agc/glide/load/engine/cache/MemorySizeCalculator;

    return-object p0
.end method

.method public setPreserveGainmapAndColorSpaceForTransformations(Z)Lcom/agc/glide/GlideBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setRequestManagerFactory(Lcom/agc/glide/manager/RequestManagerRetriever$RequestManagerFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/GlideBuilder;->requestManagerFactory:Lcom/agc/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    return-void
.end method

.method public setResizeExecutor(Lcom/agc/glide/load/engine/executor/GlideExecutor;)Lcom/agc/glide/GlideBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/agc/glide/GlideBuilder;->setSourceExecutor(Lcom/agc/glide/load/engine/executor/GlideExecutor;)Lcom/agc/glide/GlideBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setSourceExecutor(Lcom/agc/glide/load/engine/executor/GlideExecutor;)Lcom/agc/glide/GlideBuilder;
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/GlideBuilder;->sourceExecutor:Lcom/agc/glide/load/engine/executor/GlideExecutor;

    return-object p0
.end method
