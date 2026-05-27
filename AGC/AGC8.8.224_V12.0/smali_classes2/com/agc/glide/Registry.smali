.class public Lcom/agc/glide/Registry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/Registry$NoResultEncoderAvailableException;,
        Lcom/agc/glide/Registry$NoSourceEncoderAvailableException;,
        Lcom/agc/glide/Registry$NoImageHeaderParserException;,
        Lcom/agc/glide/Registry$MissingComponentException;,
        Lcom/agc/glide/Registry$NoModelLoaderAvailableException;
    }
.end annotation


# static fields
.field public static final BUCKET_ANIMATION:Ljava/lang/String; = "Animation"

.field private static final BUCKET_APPEND_ALL:Ljava/lang/String; = "legacy_append"

.field public static final BUCKET_BITMAP:Ljava/lang/String; = "Bitmap"

.field public static final BUCKET_BITMAP_DRAWABLE:Ljava/lang/String; = "BitmapDrawable"

.field public static final BUCKET_GIF:Ljava/lang/String; = "Animation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final BUCKET_PREPEND_ALL:Ljava/lang/String; = "legacy_prepend_all"


# instance fields
.field private final dataRewinderRegistry:Lcom/agc/glide/load/data/DataRewinderRegistry;

.field private final decoderRegistry:Lcom/agc/glide/provider/ResourceDecoderRegistry;

.field private final encoderRegistry:Lcom/agc/glide/provider/EncoderRegistry;

.field private final imageHeaderParserRegistry:Lcom/agc/glide/provider/ImageHeaderParserRegistry;

.field private final loadPathCache:Lcom/agc/glide/provider/LoadPathCache;

.field private final modelLoaderRegistry:Lcom/agc/glide/load/model/ModelLoaderRegistry;

.field private final modelToResourceClassCache:Lcom/agc/glide/provider/ModelToResourceClassCache;

.field private final resourceEncoderRegistry:Lcom/agc/glide/provider/ResourceEncoderRegistry;

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

.field private final transcoderRegistry:Lcom/agc/glide/load/resource/transcode/TranscoderRegistry;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/agc/glide/provider/ModelToResourceClassCache;

    invoke-direct {v0}, Lcom/agc/glide/provider/ModelToResourceClassCache;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/Registry;->modelToResourceClassCache:Lcom/agc/glide/provider/ModelToResourceClassCache;

    new-instance v0, Lcom/agc/glide/provider/LoadPathCache;

    invoke-direct {v0}, Lcom/agc/glide/provider/LoadPathCache;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/Registry;->loadPathCache:Lcom/agc/glide/provider/LoadPathCache;

    invoke-static {}, Lcom/agc/glide/util/pool/FactoryPools;->threadSafeList()Landroidx/core/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/glide/Registry;->throwableListPool:Landroidx/core/util/Pools$Pool;

    new-instance v1, Lcom/agc/glide/load/model/ModelLoaderRegistry;

    invoke-direct {v1, v0}, Lcom/agc/glide/load/model/ModelLoaderRegistry;-><init>(Landroidx/core/util/Pools$Pool;)V

    iput-object v1, p0, Lcom/agc/glide/Registry;->modelLoaderRegistry:Lcom/agc/glide/load/model/ModelLoaderRegistry;

    new-instance v0, Lcom/agc/glide/provider/EncoderRegistry;

    invoke-direct {v0}, Lcom/agc/glide/provider/EncoderRegistry;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/Registry;->encoderRegistry:Lcom/agc/glide/provider/EncoderRegistry;

    new-instance v0, Lcom/agc/glide/provider/ResourceDecoderRegistry;

    invoke-direct {v0}, Lcom/agc/glide/provider/ResourceDecoderRegistry;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/Registry;->decoderRegistry:Lcom/agc/glide/provider/ResourceDecoderRegistry;

    new-instance v0, Lcom/agc/glide/provider/ResourceEncoderRegistry;

    invoke-direct {v0}, Lcom/agc/glide/provider/ResourceEncoderRegistry;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/Registry;->resourceEncoderRegistry:Lcom/agc/glide/provider/ResourceEncoderRegistry;

    new-instance v0, Lcom/agc/glide/load/data/DataRewinderRegistry;

    invoke-direct {v0}, Lcom/agc/glide/load/data/DataRewinderRegistry;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/Registry;->dataRewinderRegistry:Lcom/agc/glide/load/data/DataRewinderRegistry;

    new-instance v0, Lcom/agc/glide/load/resource/transcode/TranscoderRegistry;

    invoke-direct {v0}, Lcom/agc/glide/load/resource/transcode/TranscoderRegistry;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/Registry;->transcoderRegistry:Lcom/agc/glide/load/resource/transcode/TranscoderRegistry;

    new-instance v0, Lcom/agc/glide/provider/ImageHeaderParserRegistry;

    invoke-direct {v0}, Lcom/agc/glide/provider/ImageHeaderParserRegistry;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/Registry;->imageHeaderParserRegistry:Lcom/agc/glide/provider/ImageHeaderParserRegistry;

    const-string v0, "Animation"

    const-string v1, "Bitmap"

    const-string v2, "BitmapDrawable"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/agc/glide/Registry;->setResourceDecoderBucketPriorityList(Ljava/util/List;)Lcom/agc/glide/Registry;

    return-void
.end method

.method private getDecodePaths(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Ljava/util/List<",
            "Lcom/agc/glide/load/engine/DecodePath<",
            "TData;TTResource;TTranscode;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/agc/glide/Registry;->decoderRegistry:Lcom/agc/glide/provider/ResourceDecoderRegistry;

    invoke-virtual {v1, p1, p2}, Lcom/agc/glide/provider/ResourceDecoderRegistry;->getResourceClasses(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iget-object v2, p0, Lcom/agc/glide/Registry;->transcoderRegistry:Lcom/agc/glide/load/resource/transcode/TranscoderRegistry;

    invoke-virtual {v2, v1, p3}, Lcom/agc/glide/load/resource/transcode/TranscoderRegistry;->getTranscodeClasses(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/Class;

    iget-object v2, p0, Lcom/agc/glide/Registry;->decoderRegistry:Lcom/agc/glide/provider/ResourceDecoderRegistry;

    invoke-virtual {v2, p1, v1}, Lcom/agc/glide/provider/ResourceDecoderRegistry;->getDecoders(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    iget-object v2, p0, Lcom/agc/glide/Registry;->transcoderRegistry:Lcom/agc/glide/load/resource/transcode/TranscoderRegistry;

    invoke-virtual {v2, v1, v5}, Lcom/agc/glide/load/resource/transcode/TranscoderRegistry;->get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/agc/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v7

    new-instance v10, Lcom/agc/glide/load/engine/DecodePath;

    iget-object v8, p0, Lcom/agc/glide/Registry;->throwableListPool:Landroidx/core/util/Pools$Pool;

    move-object v2, v10

    move-object v3, p1

    move-object v4, v1

    invoke-direct/range {v2 .. v8}, Lcom/agc/glide/load/engine/DecodePath;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lcom/agc/glide/load/resource/transcode/ResourceTranscoder;Landroidx/core/util/Pools$Pool;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/Class;Lcom/agc/glide/load/Encoder;)Lcom/agc/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/agc/glide/load/Encoder<",
            "TData;>;)",
            "Lcom/agc/glide/Registry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/Registry;->encoderRegistry:Lcom/agc/glide/provider/EncoderRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/agc/glide/provider/EncoderRegistry;->append(Ljava/lang/Class;Lcom/agc/glide/load/Encoder;)V

    return-object p0
.end method

.method public append(Ljava/lang/Class;Lcom/agc/glide/load/ResourceEncoder;)Lcom/agc/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/agc/glide/load/ResourceEncoder<",
            "TTResource;>;)",
            "Lcom/agc/glide/Registry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/Registry;->resourceEncoderRegistry:Lcom/agc/glide/provider/ResourceEncoderRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/agc/glide/provider/ResourceEncoderRegistry;->append(Ljava/lang/Class;Lcom/agc/glide/load/ResourceEncoder;)V

    return-object p0
.end method

.method public append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/ResourceDecoder;)Lcom/agc/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/agc/glide/load/ResourceDecoder<",
            "TData;TTResource;>;)",
            "Lcom/agc/glide/Registry;"
        }
    .end annotation

    const-string v0, "legacy_append"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/agc/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/ResourceDecoder;)Lcom/agc/glide/Registry;

    return-object p0
.end method

.method public append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;
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
            "TModel;TData;>;)",
            "Lcom/agc/glide/Registry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/Registry;->modelLoaderRegistry:Lcom/agc/glide/load/model/ModelLoaderRegistry;

    invoke-virtual {v0, p1, p2, p3}, Lcom/agc/glide/load/model/ModelLoaderRegistry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/ResourceDecoder;)Lcom/agc/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/agc/glide/load/ResourceDecoder<",
            "TData;TTResource;>;)",
            "Lcom/agc/glide/Registry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/Registry;->decoderRegistry:Lcom/agc/glide/provider/ResourceDecoderRegistry;

    invoke-virtual {v0, p1, p4, p2, p3}, Lcom/agc/glide/provider/ResourceDecoderRegistry;->append(Ljava/lang/String;Lcom/agc/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public getImageHeaderParsers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/agc/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/Registry;->imageHeaderParserRegistry:Lcom/agc/glide/provider/ImageHeaderParserRegistry;

    invoke-virtual {v0}, Lcom/agc/glide/provider/ImageHeaderParserRegistry;->getParsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/agc/glide/Registry$NoImageHeaderParserException;

    invoke-direct {v0}, Lcom/agc/glide/Registry$NoImageHeaderParserException;-><init>()V

    throw v0
.end method

.method public getLoadPath(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/agc/glide/load/engine/LoadPath;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Lcom/agc/glide/load/engine/LoadPath<",
            "TData;TTResource;TTranscode;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/Registry;->loadPathCache:Lcom/agc/glide/provider/LoadPathCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/agc/glide/provider/LoadPathCache;->get(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/agc/glide/load/engine/LoadPath;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/glide/Registry;->loadPathCache:Lcom/agc/glide/provider/LoadPathCache;

    invoke-virtual {v1, v0}, Lcom/agc/glide/provider/LoadPathCache;->isEmptyLoadPath(Lcom/agc/glide/load/engine/LoadPath;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/agc/glide/Registry;->getDecodePaths(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/agc/glide/load/engine/LoadPath;

    iget-object v8, p0, Lcom/agc/glide/Registry;->throwableListPool:Landroidx/core/util/Pools$Pool;

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/agc/glide/load/engine/LoadPath;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Landroidx/core/util/Pools$Pool;)V

    :goto_0
    iget-object v1, p0, Lcom/agc/glide/Registry;->loadPathCache:Lcom/agc/glide/provider/LoadPathCache;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/agc/glide/provider/LoadPathCache;->put(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/engine/LoadPath;)V

    :cond_2
    return-object v0
.end method

.method public getModelLoaders(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(TModel;)",
            "Ljava/util/List<",
            "Lcom/agc/glide/load/model/ModelLoader<",
            "TModel;*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/Registry;->modelLoaderRegistry:Lcom/agc/glide/load/model/ModelLoaderRegistry;

    invoke-virtual {v0, p1}, Lcom/agc/glide/load/model/ModelLoaderRegistry;->getModelLoaders(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getRegisteredResourceClasses(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/Registry;->modelToResourceClassCache:Lcom/agc/glide/provider/ModelToResourceClassCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/agc/glide/provider/ModelToResourceClassCache;->get(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/agc/glide/Registry;->modelLoaderRegistry:Lcom/agc/glide/load/model/ModelLoaderRegistry;

    invoke-virtual {v1, p1}, Lcom/agc/glide/load/model/ModelLoaderRegistry;->getDataClasses(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    iget-object v3, p0, Lcom/agc/glide/Registry;->decoderRegistry:Lcom/agc/glide/provider/ResourceDecoderRegistry;

    invoke-virtual {v3, v2, p2}, Lcom/agc/glide/provider/ResourceDecoderRegistry;->getResourceClasses(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    iget-object v4, p0, Lcom/agc/glide/Registry;->transcoderRegistry:Lcom/agc/glide/load/resource/transcode/TranscoderRegistry;

    invoke-virtual {v4, v3, p3}, Lcom/agc/glide/load/resource/transcode/TranscoderRegistry;->getTranscodeClasses(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/agc/glide/Registry;->modelToResourceClassCache:Lcom/agc/glide/provider/ModelToResourceClassCache;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/agc/glide/provider/ModelToResourceClassCache;->put(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)V

    :cond_3
    return-object v0
.end method

.method public getResultEncoder(Lcom/agc/glide/load/engine/Resource;)Lcom/agc/glide/load/ResourceEncoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/agc/glide/load/engine/Resource<",
            "TX;>;)",
            "Lcom/agc/glide/load/ResourceEncoder<",
            "TX;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/agc/glide/Registry$NoResultEncoderAvailableException;
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/Registry;->resourceEncoderRegistry:Lcom/agc/glide/provider/ResourceEncoderRegistry;

    invoke-interface {p1}, Lcom/agc/glide/load/engine/Resource;->getResourceClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/agc/glide/provider/ResourceEncoderRegistry;->get(Ljava/lang/Class;)Lcom/agc/glide/load/ResourceEncoder;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/agc/glide/Registry$NoResultEncoderAvailableException;

    invoke-interface {p1}, Lcom/agc/glide/load/engine/Resource;->getResourceClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/agc/glide/Registry$NoResultEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw v0
.end method

.method public getRewinder(Ljava/lang/Object;)Lcom/agc/glide/load/data/DataRewinder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lcom/agc/glide/load/data/DataRewinder<",
            "TX;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/Registry;->dataRewinderRegistry:Lcom/agc/glide/load/data/DataRewinderRegistry;

    invoke-virtual {v0, p1}, Lcom/agc/glide/load/data/DataRewinderRegistry;->build(Ljava/lang/Object;)Lcom/agc/glide/load/data/DataRewinder;

    move-result-object p1

    return-object p1
.end method

.method public getSourceEncoder(Ljava/lang/Object;)Lcom/agc/glide/load/Encoder;
    .locals 2
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

    iget-object v0, p0, Lcom/agc/glide/Registry;->encoderRegistry:Lcom/agc/glide/provider/EncoderRegistry;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/agc/glide/provider/EncoderRegistry;->getEncoder(Ljava/lang/Class;)Lcom/agc/glide/load/Encoder;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/agc/glide/Registry$NoSourceEncoderAvailableException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/agc/glide/Registry$NoSourceEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw v0
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

    iget-object v0, p0, Lcom/agc/glide/Registry;->resourceEncoderRegistry:Lcom/agc/glide/provider/ResourceEncoderRegistry;

    invoke-interface {p1}, Lcom/agc/glide/load/engine/Resource;->getResourceClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/agc/glide/provider/ResourceEncoderRegistry;->get(Ljava/lang/Class;)Lcom/agc/glide/load/ResourceEncoder;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public prepend(Ljava/lang/Class;Lcom/agc/glide/load/Encoder;)Lcom/agc/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/agc/glide/load/Encoder<",
            "TData;>;)",
            "Lcom/agc/glide/Registry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/Registry;->encoderRegistry:Lcom/agc/glide/provider/EncoderRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/agc/glide/provider/EncoderRegistry;->prepend(Ljava/lang/Class;Lcom/agc/glide/load/Encoder;)V

    return-object p0
.end method

.method public prepend(Ljava/lang/Class;Lcom/agc/glide/load/ResourceEncoder;)Lcom/agc/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/agc/glide/load/ResourceEncoder<",
            "TTResource;>;)",
            "Lcom/agc/glide/Registry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/Registry;->resourceEncoderRegistry:Lcom/agc/glide/provider/ResourceEncoderRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/agc/glide/provider/ResourceEncoderRegistry;->prepend(Ljava/lang/Class;Lcom/agc/glide/load/ResourceEncoder;)V

    return-object p0
.end method

.method public prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/ResourceDecoder;)Lcom/agc/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/agc/glide/load/ResourceDecoder<",
            "TData;TTResource;>;)",
            "Lcom/agc/glide/Registry;"
        }
    .end annotation

    const-string v0, "legacy_prepend_all"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/agc/glide/Registry;->prepend(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/ResourceDecoder;)Lcom/agc/glide/Registry;

    return-object p0
.end method

.method public prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;
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
            "TModel;TData;>;)",
            "Lcom/agc/glide/Registry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/Registry;->modelLoaderRegistry:Lcom/agc/glide/load/model/ModelLoaderRegistry;

    invoke-virtual {v0, p1, p2, p3}, Lcom/agc/glide/load/model/ModelLoaderRegistry;->prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)V

    return-object p0
.end method

.method public prepend(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/ResourceDecoder;)Lcom/agc/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/agc/glide/load/ResourceDecoder<",
            "TData;TTResource;>;)",
            "Lcom/agc/glide/Registry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/Registry;->decoderRegistry:Lcom/agc/glide/provider/ResourceDecoderRegistry;

    invoke-virtual {v0, p1, p4, p2, p3}, Lcom/agc/glide/provider/ResourceDecoderRegistry;->prepend(Ljava/lang/String;Lcom/agc/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public register(Lcom/agc/glide/load/ImageHeaderParser;)Lcom/agc/glide/Registry;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/Registry;->imageHeaderParserRegistry:Lcom/agc/glide/provider/ImageHeaderParserRegistry;

    invoke-virtual {v0, p1}, Lcom/agc/glide/provider/ImageHeaderParserRegistry;->add(Lcom/agc/glide/load/ImageHeaderParser;)V

    return-object p0
.end method

.method public register(Lcom/agc/glide/load/data/DataRewinder$Factory;)Lcom/agc/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/data/DataRewinder$Factory<",
            "*>;)",
            "Lcom/agc/glide/Registry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/Registry;->dataRewinderRegistry:Lcom/agc/glide/load/data/DataRewinderRegistry;

    invoke-virtual {v0, p1}, Lcom/agc/glide/load/data/DataRewinderRegistry;->register(Lcom/agc/glide/load/data/DataRewinder$Factory;)V

    return-object p0
.end method

.method public register(Ljava/lang/Class;Lcom/agc/glide/load/Encoder;)Lcom/agc/glide/Registry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/agc/glide/load/Encoder<",
            "TData;>;)",
            "Lcom/agc/glide/Registry;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Lcom/agc/glide/load/Encoder;)Lcom/agc/glide/Registry;

    move-result-object p1

    return-object p1
.end method

.method public register(Ljava/lang/Class;Lcom/agc/glide/load/ResourceEncoder;)Lcom/agc/glide/Registry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lcom/agc/glide/load/ResourceEncoder<",
            "TTResource;>;)",
            "Lcom/agc/glide/Registry;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/agc/glide/Registry;->append(Ljava/lang/Class;Lcom/agc/glide/load/ResourceEncoder;)Lcom/agc/glide/Registry;

    move-result-object p1

    return-object p1
.end method

.method public register(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/resource/transcode/ResourceTranscoder;)Lcom/agc/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;",
            "Lcom/agc/glide/load/resource/transcode/ResourceTranscoder<",
            "TTResource;TTranscode;>;)",
            "Lcom/agc/glide/Registry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/Registry;->transcoderRegistry:Lcom/agc/glide/load/resource/transcode/TranscoderRegistry;

    invoke-virtual {v0, p1, p2, p3}, Lcom/agc/glide/load/resource/transcode/TranscoderRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/resource/transcode/ResourceTranscoder;)V

    return-object p0
.end method

.method public replace(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)Lcom/agc/glide/Registry;
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
            "+TModel;+TData;>;)",
            "Lcom/agc/glide/Registry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/Registry;->modelLoaderRegistry:Lcom/agc/glide/load/model/ModelLoaderRegistry;

    invoke-virtual {v0, p1, p2, p3}, Lcom/agc/glide/load/model/ModelLoaderRegistry;->replace(Ljava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/load/model/ModelLoaderFactory;)V

    return-object p0
.end method

.method public final setResourceDecoderBucketPriorityList(Ljava/util/List;)Lcom/agc/glide/Registry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/agc/glide/Registry;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "legacy_prepend_all"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "legacy_append"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/agc/glide/Registry;->decoderRegistry:Lcom/agc/glide/provider/ResourceDecoderRegistry;

    invoke-virtual {p1, v0}, Lcom/agc/glide/provider/ResourceDecoderRegistry;->setBucketPriorityList(Ljava/util/List;)V

    return-object p0
.end method
