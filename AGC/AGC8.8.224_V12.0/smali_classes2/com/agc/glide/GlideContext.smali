.class public Lcom/agc/glide/GlideContext;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# static fields
.field static final DEFAULT_TRANSITION_OPTIONS:Lcom/agc/glide/TransitionOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/TransitionOptions<",
            "**>;"
        }
    .end annotation
.end field


# instance fields
.field private final arrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final defaultRequestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private defaultRequestOptions:Lcom/agc/glide/request/RequestOptions;

.field private final defaultRequestOptionsFactory:Lcom/agc/glide/Glide$RequestOptionsFactory;

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

.field private final engine:Lcom/agc/glide/load/engine/Engine;

.field private final experiments:Lcom/agc/glide/GlideExperiments;

.field private final imageViewTargetFactory:Lcom/agc/glide/request/target/ImageViewTargetFactory;

.field private final logLevel:I

.field private final registry:Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/util/GlideSuppliers$GlideSupplier<",
            "Lcom/agc/glide/Registry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/agc/glide/GenericTransitionOptions;

    invoke-direct {v0}, Lcom/agc/glide/GenericTransitionOptions;-><init>()V

    sput-object v0, Lcom/agc/glide/GlideContext;->DEFAULT_TRANSITION_OPTIONS:Lcom/agc/glide/TransitionOptions;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;Lcom/agc/glide/request/target/ImageViewTargetFactory;Lcom/agc/glide/Glide$RequestOptionsFactory;Ljava/util/Map;Ljava/util/List;Lcom/agc/glide/load/engine/Engine;Lcom/agc/glide/GlideExperiments;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;",
            "Lcom/agc/glide/util/GlideSuppliers$GlideSupplier<",
            "Lcom/agc/glide/Registry;",
            ">;",
            "Lcom/agc/glide/request/target/ImageViewTargetFactory;",
            "Lcom/agc/glide/Glide$RequestOptionsFactory;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/agc/glide/TransitionOptions<",
            "**>;>;",
            "Ljava/util/List<",
            "Lcom/agc/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/agc/glide/load/engine/Engine;",
            "Lcom/agc/glide/GlideExperiments;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/agc/glide/GlideContext;->arrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

    iput-object p4, p0, Lcom/agc/glide/GlideContext;->imageViewTargetFactory:Lcom/agc/glide/request/target/ImageViewTargetFactory;

    iput-object p5, p0, Lcom/agc/glide/GlideContext;->defaultRequestOptionsFactory:Lcom/agc/glide/Glide$RequestOptionsFactory;

    iput-object p7, p0, Lcom/agc/glide/GlideContext;->defaultRequestListeners:Ljava/util/List;

    iput-object p6, p0, Lcom/agc/glide/GlideContext;->defaultTransitionOptions:Ljava/util/Map;

    iput-object p8, p0, Lcom/agc/glide/GlideContext;->engine:Lcom/agc/glide/load/engine/Engine;

    iput-object p9, p0, Lcom/agc/glide/GlideContext;->experiments:Lcom/agc/glide/GlideExperiments;

    iput p10, p0, Lcom/agc/glide/GlideContext;->logLevel:I

    invoke-static {p3}, Lcom/agc/glide/util/GlideSuppliers;->memorize(Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;)Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/glide/GlideContext;->registry:Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;

    return-void
.end method


# virtual methods
.method public buildImageViewTarget(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/agc/glide/request/target/ViewTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Class<",
            "TX;>;)",
            "Lcom/agc/glide/request/target/ViewTarget<",
            "Landroid/widget/ImageView;",
            "TX;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/GlideContext;->imageViewTargetFactory:Lcom/agc/glide/request/target/ImageViewTargetFactory;

    invoke-virtual {v0, p1, p2}, Lcom/agc/glide/request/target/ImageViewTargetFactory;->buildTarget(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/agc/glide/request/target/ViewTarget;

    move-result-object p1

    return-object p1
.end method

.method public getArrayPool()Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/GlideContext;->arrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

    return-object v0
.end method

.method public getDefaultRequestListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/agc/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/GlideContext;->defaultRequestListeners:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized getDefaultRequestOptions()Lcom/agc/glide/request/RequestOptions;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/GlideContext;->defaultRequestOptions:Lcom/agc/glide/request/RequestOptions;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/GlideContext;->defaultRequestOptionsFactory:Lcom/agc/glide/Glide$RequestOptionsFactory;

    invoke-interface {v0}, Lcom/agc/glide/Glide$RequestOptionsFactory;->build()Lcom/agc/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->lock()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/request/RequestOptions;

    iput-object v0, p0, Lcom/agc/glide/GlideContext;->defaultRequestOptions:Lcom/agc/glide/request/RequestOptions;

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/GlideContext;->defaultRequestOptions:Lcom/agc/glide/request/RequestOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultTransitionOptions(Ljava/lang/Class;)Lcom/agc/glide/TransitionOptions;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/agc/glide/TransitionOptions<",
            "*TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/GlideContext;->defaultTransitionOptions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/TransitionOptions;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/agc/glide/GlideContext;->defaultTransitionOptions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
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

    check-cast v0, Lcom/agc/glide/TransitionOptions;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Lcom/agc/glide/GlideContext;->DEFAULT_TRANSITION_OPTIONS:Lcom/agc/glide/TransitionOptions;

    :cond_2
    return-object v0
.end method

.method public getEngine()Lcom/agc/glide/load/engine/Engine;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/GlideContext;->engine:Lcom/agc/glide/load/engine/Engine;

    return-object v0
.end method

.method public getExperiments()Lcom/agc/glide/GlideExperiments;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/GlideContext;->experiments:Lcom/agc/glide/GlideExperiments;

    return-object v0
.end method

.method public getLogLevel()I
    .locals 1

    iget v0, p0, Lcom/agc/glide/GlideContext;->logLevel:I

    return v0
.end method

.method public getRegistry()Lcom/agc/glide/Registry;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/GlideContext;->registry:Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;

    invoke-interface {v0}, Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/Registry;

    return-object v0
.end method
