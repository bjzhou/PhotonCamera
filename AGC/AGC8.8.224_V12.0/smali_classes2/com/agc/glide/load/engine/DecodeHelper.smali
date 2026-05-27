.class final Lcom/agc/glide/load/engine/DecodeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final cacheKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/glide/load/Key;",
            ">;"
        }
    .end annotation
.end field

.field private diskCacheProvider:Lcom/agc/glide/load/engine/DecodeJob$DiskCacheProvider;

.field private diskCacheStrategy:Lcom/agc/glide/load/engine/DiskCacheStrategy;

.field private glideContext:Lcom/agc/glide/GlideContext;

.field private height:I

.field private isCacheKeysSet:Z

.field private isLoadDataSet:Z

.field private isScaleOnlyOrNoTransform:Z

.field private isTransformationRequired:Z

.field private final loadData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/glide/load/model/ModelLoader$LoadData<",
            "*>;>;"
        }
    .end annotation
.end field

.field private model:Ljava/lang/Object;

.field private options:Lcom/agc/glide/load/Options;

.field private priority:Lcom/agc/glide/Priority;

.field private resourceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private signature:Lcom/agc/glide/load/Key;

.field private transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscode;>;"
        }
    .end annotation
.end field

.field private transformations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/agc/glide/load/Transformation<",
            "*>;>;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->loadData:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->glideContext:Lcom/agc/glide/GlideContext;

    iput-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->model:Ljava/lang/Object;

    iput-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->signature:Lcom/agc/glide/load/Key;

    iput-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->resourceClass:Ljava/lang/Class;

    iput-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->transcodeClass:Ljava/lang/Class;

    iput-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->options:Lcom/agc/glide/load/Options;

    iput-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->priority:Lcom/agc/glide/Priority;

    iput-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->transformations:Ljava/util/Map;

    iput-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->diskCacheStrategy:Lcom/agc/glide/load/engine/DiskCacheStrategy;

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->loadData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->isLoadDataSet:Z

    iget-object v1, p0, Lcom/agc/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-boolean v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->isCacheKeysSet:Z

    return-void
.end method

.method public getArrayPool()Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->glideContext:Lcom/agc/glide/GlideContext;

    invoke-virtual {v0}, Lcom/agc/glide/GlideContext;->getArrayPool()Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKeys()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/agc/glide/load/Key;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->isCacheKeysSet:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->isCacheKeysSet:Z

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/agc/glide/load/engine/DecodeHelper;->getLoadData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/agc/glide/load/model/ModelLoader$LoadData;

    iget-object v5, p0, Lcom/agc/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    iget-object v6, v4, Lcom/agc/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/agc/glide/load/Key;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/agc/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    iget-object v6, v4, Lcom/agc/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/agc/glide/load/Key;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move v5, v2

    :goto_1
    iget-object v6, v4, Lcom/agc/glide/load/model/ModelLoader$LoadData;->alternateKeys:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v6, p0, Lcom/agc/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    iget-object v7, v4, Lcom/agc/glide/load/model/ModelLoader$LoadData;->alternateKeys:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/agc/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    iget-object v7, v4, Lcom/agc/glide/load/model/ModelLoader$LoadData;->alternateKeys:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/agc/glide/load/Key;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    return-object v0
.end method

.method public getDiskCache()Lcom/agc/glide/load/engine/cache/DiskCache;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->diskCacheProvider:Lcom/agc/glide/load/engine/DecodeJob$DiskCacheProvider;

    invoke-interface {v0}, Lcom/agc/glide/load/engine/DecodeJob$DiskCacheProvider;->getDiskCache()Lcom/agc/glide/load/engine/cache/DiskCache;

    move-result-object v0

    return-object v0
.end method

.method public getDiskCacheStrategy()Lcom/agc/glide/load/engine/DiskCacheStrategy;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->diskCacheStrategy:Lcom/agc/glide/load/engine/DiskCacheStrategy;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->height:I

    return v0
.end method

.method public getLoadData()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/agc/glide/load/model/ModelLoader$LoadData<",
            "*>;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->isLoadDataSet:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->isLoadDataSet:Z

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->loadData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->glideContext:Lcom/agc/glide/GlideContext;

    invoke-virtual {v0}, Lcom/agc/glide/GlideContext;->getRegistry()Lcom/agc/glide/Registry;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/glide/load/engine/DecodeHelper;->model:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/agc/glide/Registry;->getModelLoaders(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/agc/glide/load/model/ModelLoader;

    iget-object v4, p0, Lcom/agc/glide/load/engine/DecodeHelper;->model:Ljava/lang/Object;

    iget v5, p0, Lcom/agc/glide/load/engine/DecodeHelper;->width:I

    iget v6, p0, Lcom/agc/glide/load/engine/DecodeHelper;->height:I

    iget-object v7, p0, Lcom/agc/glide/load/engine/DecodeHelper;->options:Lcom/agc/glide/load/Options;

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/agc/glide/load/model/ModelLoader;->buildLoadData(Ljava/lang/Object;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/model/ModelLoader$LoadData;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/agc/glide/load/engine/DecodeHelper;->loadData:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->loadData:Ljava/util/List;

    return-object v0
.end method

.method public getLoadPath(Ljava/lang/Class;)Lcom/agc/glide/load/engine/LoadPath;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;)",
            "Lcom/agc/glide/load/engine/LoadPath<",
            "TData;*TTranscode;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->glideContext:Lcom/agc/glide/GlideContext;

    invoke-virtual {v0}, Lcom/agc/glide/GlideContext;->getRegistry()Lcom/agc/glide/Registry;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/glide/load/engine/DecodeHelper;->resourceClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/agc/glide/load/engine/DecodeHelper;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1, v2}, Lcom/agc/glide/Registry;->getLoadPath(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/agc/glide/load/engine/LoadPath;

    move-result-object p1

    return-object p1
.end method

.method public getModelClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->model:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getModelLoaders(Ljava/io/File;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/agc/glide/load/model/ModelLoader<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/agc/glide/Registry$NoModelLoaderAvailableException;
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->glideContext:Lcom/agc/glide/GlideContext;

    invoke-virtual {v0}, Lcom/agc/glide/GlideContext;->getRegistry()Lcom/agc/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/Registry;->getModelLoaders(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getOptions()Lcom/agc/glide/load/Options;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->options:Lcom/agc/glide/load/Options;

    return-object v0
.end method

.method public getPriority()Lcom/agc/glide/Priority;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->priority:Lcom/agc/glide/Priority;

    return-object v0
.end method

.method public getRegisteredResourceClasses()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->glideContext:Lcom/agc/glide/GlideContext;

    invoke-virtual {v0}, Lcom/agc/glide/GlideContext;->getRegistry()Lcom/agc/glide/Registry;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/glide/load/engine/DecodeHelper;->model:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/agc/glide/load/engine/DecodeHelper;->resourceClass:Ljava/lang/Class;

    iget-object v3, p0, Lcom/agc/glide/load/engine/DecodeHelper;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, v3}, Lcom/agc/glide/Registry;->getRegisteredResourceClasses(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResultEncoder(Lcom/agc/glide/load/engine/Resource;)Lcom/agc/glide/load/ResourceEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/agc/glide/load/engine/Resource<",
            "TZ;>;)",
            "Lcom/agc/glide/load/ResourceEncoder<",
            "TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->glideContext:Lcom/agc/glide/GlideContext;

    invoke-virtual {v0}, Lcom/agc/glide/GlideContext;->getRegistry()Lcom/agc/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/Registry;->getResultEncoder(Lcom/agc/glide/load/engine/Resource;)Lcom/agc/glide/load/ResourceEncoder;

    move-result-object p1

    return-object p1
.end method

.method public getRewinder(Ljava/lang/Object;)Lcom/agc/glide/load/data/DataRewinder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/agc/glide/load/data/DataRewinder<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->glideContext:Lcom/agc/glide/GlideContext;

    invoke-virtual {v0}, Lcom/agc/glide/GlideContext;->getRegistry()Lcom/agc/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/Registry;->getRewinder(Ljava/lang/Object;)Lcom/agc/glide/load/data/DataRewinder;

    move-result-object p1

    return-object p1
.end method

.method public getSignature()Lcom/agc/glide/load/Key;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->signature:Lcom/agc/glide/load/Key;

    return-object v0
.end method

.method public getSourceEncoder(Ljava/lang/Object;)Lcom/agc/glide/load/Encoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lcom/agc/glide/load/Encoder<",
            "TX;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/agc/glide/Registry$NoSourceEncoderAvailableException;
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->glideContext:Lcom/agc/glide/GlideContext;

    invoke-virtual {v0}, Lcom/agc/glide/GlideContext;->getRegistry()Lcom/agc/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/Registry;->getSourceEncoder(Ljava/lang/Object;)Lcom/agc/glide/load/Encoder;

    move-result-object p1

    return-object p1
.end method

.method public getTranscodeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->transcodeClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getTransformation(Ljava/lang/Class;)Lcom/agc/glide/load/Transformation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;)",
            "Lcom/agc/glide/load/Transformation<",
            "TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->transformations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/load/Transformation;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/agc/glide/load/engine/DecodeHelper;->transformations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/load/Transformation;

    :cond_1
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->transformations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->isTransformationRequired:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing transformation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ". If you wish to ignore unknown resource types, use the optional transformation methods."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    invoke-static {}, Lcom/agc/glide/load/resource/UnitTransformation;->get()Lcom/agc/glide/load/resource/UnitTransformation;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->width:I

    return v0
.end method

.method public hasLoadPath(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/agc/glide/load/engine/DecodeHelper;->getLoadPath(Ljava/lang/Class;)Lcom/agc/glide/load/engine/LoadPath;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public init(Lcom/agc/glide/GlideContext;Ljava/lang/Object;Lcom/agc/glide/load/Key;IILcom/agc/glide/load/engine/DiskCacheStrategy;Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/Priority;Lcom/agc/glide/load/Options;Ljava/util/Map;ZZLcom/agc/glide/load/engine/DecodeJob$DiskCacheProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/agc/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Lcom/agc/glide/load/Key;",
            "II",
            "Lcom/agc/glide/load/engine/DiskCacheStrategy;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/agc/glide/Priority;",
            "Lcom/agc/glide/load/Options;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/agc/glide/load/Transformation<",
            "*>;>;ZZ",
            "Lcom/agc/glide/load/engine/DecodeJob$DiskCacheProvider;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/glide/load/engine/DecodeHelper;->glideContext:Lcom/agc/glide/GlideContext;

    iput-object p2, p0, Lcom/agc/glide/load/engine/DecodeHelper;->model:Ljava/lang/Object;

    iput-object p3, p0, Lcom/agc/glide/load/engine/DecodeHelper;->signature:Lcom/agc/glide/load/Key;

    iput p4, p0, Lcom/agc/glide/load/engine/DecodeHelper;->width:I

    iput p5, p0, Lcom/agc/glide/load/engine/DecodeHelper;->height:I

    iput-object p6, p0, Lcom/agc/glide/load/engine/DecodeHelper;->diskCacheStrategy:Lcom/agc/glide/load/engine/DiskCacheStrategy;

    iput-object p7, p0, Lcom/agc/glide/load/engine/DecodeHelper;->resourceClass:Ljava/lang/Class;

    iput-object p14, p0, Lcom/agc/glide/load/engine/DecodeHelper;->diskCacheProvider:Lcom/agc/glide/load/engine/DecodeJob$DiskCacheProvider;

    iput-object p8, p0, Lcom/agc/glide/load/engine/DecodeHelper;->transcodeClass:Ljava/lang/Class;

    iput-object p9, p0, Lcom/agc/glide/load/engine/DecodeHelper;->priority:Lcom/agc/glide/Priority;

    iput-object p10, p0, Lcom/agc/glide/load/engine/DecodeHelper;->options:Lcom/agc/glide/load/Options;

    iput-object p11, p0, Lcom/agc/glide/load/engine/DecodeHelper;->transformations:Ljava/util/Map;

    iput-boolean p12, p0, Lcom/agc/glide/load/engine/DecodeHelper;->isTransformationRequired:Z

    iput-boolean p13, p0, Lcom/agc/glide/load/engine/DecodeHelper;->isScaleOnlyOrNoTransform:Z

    return-void
.end method

.method public isResourceEncoderAvailable(Lcom/agc/glide/load/engine/Resource;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/Resource<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->glideContext:Lcom/agc/glide/GlideContext;

    invoke-virtual {v0}, Lcom/agc/glide/GlideContext;->getRegistry()Lcom/agc/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/Registry;->isResourceEncoderAvailable(Lcom/agc/glide/load/engine/Resource;)Z

    move-result p1

    return p1
.end method

.method public isScaleOnlyOrNoTransform()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/glide/load/engine/DecodeHelper;->isScaleOnlyOrNoTransform:Z

    return v0
.end method

.method public isSourceKey(Lcom/agc/glide/load/Key;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/agc/glide/load/engine/DecodeHelper;->getLoadData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/agc/glide/load/model/ModelLoader$LoadData;

    iget-object v4, v4, Lcom/agc/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/agc/glide/load/Key;

    invoke-interface {v4, p1}, Lcom/agc/glide/load/Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
