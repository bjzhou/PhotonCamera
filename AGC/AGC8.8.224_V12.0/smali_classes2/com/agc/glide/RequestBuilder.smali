.class public Lcom/agc/glide/RequestBuilder;
.super Lcom/agc/glide/request/BaseRequestOptions;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/agc/glide/ModelTypes;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/agc/glide/request/BaseRequestOptions<",
        "Lcom/agc/glide/RequestBuilder<",
        "TTranscodeType;>;>;",
        "Ljava/lang/Cloneable;",
        "Lcom/agc/glide/ModelTypes<",
        "Lcom/agc/glide/RequestBuilder<",
        "TTranscodeType;>;>;"
    }
.end annotation


# static fields
.field protected static final DOWNLOAD_ONLY_OPTIONS:Lcom/agc/glide/request/RequestOptions;


# instance fields
.field private final context:Landroid/content/Context;

.field private errorBuilder:Lcom/agc/glide/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final glide:Lcom/agc/glide/Glide;

.field private final glideContext:Lcom/agc/glide/GlideContext;

.field private isDefaultTransitionOptionsSet:Z

.field private isModelSet:Z

.field private isThumbnailBuilt:Z

.field private model:Ljava/lang/Object;

.field private requestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/glide/request/RequestListener<",
            "TTranscodeType;>;>;"
        }
    .end annotation
.end field

.field private final requestManager:Lcom/agc/glide/RequestManager;

.field private thumbSizeMultiplier:Ljava/lang/Float;

.field private thumbnailBuilder:Lcom/agc/glide/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private transitionOptions:Lcom/agc/glide/TransitionOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/TransitionOptions<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/agc/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/agc/glide/request/RequestOptions;-><init>()V

    sget-object v1, Lcom/agc/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/agc/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/agc/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/agc/glide/load/engine/DiskCacheStrategy;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/request/RequestOptions;

    sget-object v1, Lcom/agc/glide/Priority;->LOW:Lcom/agc/glide/Priority;

    invoke-virtual {v0, v1}, Lcom/agc/glide/request/BaseRequestOptions;->priority(Lcom/agc/glide/Priority;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/request/RequestOptions;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/agc/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/request/RequestOptions;

    sput-object v0, Lcom/agc/glide/RequestBuilder;->DOWNLOAD_ONLY_OPTIONS:Lcom/agc/glide/request/RequestOptions;

    return-void
.end method

.method public constructor <init>(Lcom/agc/glide/Glide;Lcom/agc/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/Glide;",
            "Lcom/agc/glide/RequestManager;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/agc/glide/request/BaseRequestOptions;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/glide/RequestBuilder;->isDefaultTransitionOptionsSet:Z

    iput-object p1, p0, Lcom/agc/glide/RequestBuilder;->glide:Lcom/agc/glide/Glide;

    iput-object p2, p0, Lcom/agc/glide/RequestBuilder;->requestManager:Lcom/agc/glide/RequestManager;

    iput-object p3, p0, Lcom/agc/glide/RequestBuilder;->transcodeClass:Ljava/lang/Class;

    iput-object p4, p0, Lcom/agc/glide/RequestBuilder;->context:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/agc/glide/RequestManager;->getDefaultTransitionOptions(Ljava/lang/Class;)Lcom/agc/glide/TransitionOptions;

    move-result-object p3

    iput-object p3, p0, Lcom/agc/glide/RequestBuilder;->transitionOptions:Lcom/agc/glide/TransitionOptions;

    invoke-virtual {p1}, Lcom/agc/glide/Glide;->getGlideContext()Lcom/agc/glide/GlideContext;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/glide/RequestBuilder;->glideContext:Lcom/agc/glide/GlideContext;

    invoke-virtual {p2}, Lcom/agc/glide/RequestManager;->getDefaultRequestListeners()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/agc/glide/RequestBuilder;->initRequestListeners(Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/agc/glide/RequestManager;->getDefaultRequestOptions()Lcom/agc/glide/request/RequestOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/agc/glide/RequestBuilder;->apply(Lcom/agc/glide/request/BaseRequestOptions;)Lcom/agc/glide/RequestBuilder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/agc/glide/RequestBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lcom/agc/glide/RequestBuilder<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p2, Lcom/agc/glide/RequestBuilder;->glide:Lcom/agc/glide/Glide;

    iget-object v1, p2, Lcom/agc/glide/RequestBuilder;->requestManager:Lcom/agc/glide/RequestManager;

    iget-object v2, p2, Lcom/agc/glide/RequestBuilder;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/agc/glide/RequestBuilder;-><init>(Lcom/agc/glide/Glide;Lcom/agc/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V

    iget-object p1, p2, Lcom/agc/glide/RequestBuilder;->model:Ljava/lang/Object;

    iput-object p1, p0, Lcom/agc/glide/RequestBuilder;->model:Ljava/lang/Object;

    iget-boolean p1, p2, Lcom/agc/glide/RequestBuilder;->isModelSet:Z

    iput-boolean p1, p0, Lcom/agc/glide/RequestBuilder;->isModelSet:Z

    invoke-virtual {p0, p2}, Lcom/agc/glide/RequestBuilder;->apply(Lcom/agc/glide/request/BaseRequestOptions;)Lcom/agc/glide/RequestBuilder;

    return-void
.end method

.method private applyResourceThemeAndSignature(Lcom/agc/glide/RequestBuilder;)Lcom/agc/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;)",
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/RequestBuilder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/agc/glide/request/BaseRequestOptions;->theme(Landroid/content/res/Resources$Theme;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/RequestBuilder;

    iget-object v0, p0, Lcom/agc/glide/RequestBuilder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/agc/glide/signature/AndroidResourceSignature;->obtain(Landroid/content/Context;)Lcom/agc/glide/load/Key;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/agc/glide/request/BaseRequestOptions;->signature(Lcom/agc/glide/load/Key;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/RequestBuilder;

    return-object p1
.end method

.method private buildRequest(Lcom/agc/glide/request/target/Target;Lcom/agc/glide/request/RequestListener;Lcom/agc/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/agc/glide/request/Request;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/request/target/Target<",
            "TTranscodeType;>;",
            "Lcom/agc/glide/request/RequestListener<",
            "TTranscodeType;>;",
            "Lcom/agc/glide/request/BaseRequestOptions<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/agc/glide/request/Request;"
        }
    .end annotation

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v5, p0, Lcom/agc/glide/RequestBuilder;->transitionOptions:Lcom/agc/glide/TransitionOptions;

    invoke-virtual {p3}, Lcom/agc/glide/request/BaseRequestOptions;->getPriority()Lcom/agc/glide/Priority;

    move-result-object v6

    invoke-virtual {p3}, Lcom/agc/glide/request/BaseRequestOptions;->getOverrideWidth()I

    move-result v7

    invoke-virtual {p3}, Lcom/agc/glide/request/BaseRequestOptions;->getOverrideHeight()I

    move-result v8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/agc/glide/RequestBuilder;->buildRequestRecursive(Ljava/lang/Object;Lcom/agc/glide/request/target/Target;Lcom/agc/glide/request/RequestListener;Lcom/agc/glide/request/RequestCoordinator;Lcom/agc/glide/TransitionOptions;Lcom/agc/glide/Priority;IILcom/agc/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/agc/glide/request/Request;

    move-result-object p1

    return-object p1
.end method

.method private buildRequestRecursive(Ljava/lang/Object;Lcom/agc/glide/request/target/Target;Lcom/agc/glide/request/RequestListener;Lcom/agc/glide/request/RequestCoordinator;Lcom/agc/glide/TransitionOptions;Lcom/agc/glide/Priority;IILcom/agc/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/agc/glide/request/Request;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/agc/glide/request/target/Target<",
            "TTranscodeType;>;",
            "Lcom/agc/glide/request/RequestListener<",
            "TTranscodeType;>;",
            "Lcom/agc/glide/request/RequestCoordinator;",
            "Lcom/agc/glide/TransitionOptions<",
            "*-TTranscodeType;>;",
            "Lcom/agc/glide/Priority;",
            "II",
            "Lcom/agc/glide/request/BaseRequestOptions<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/agc/glide/request/Request;"
        }
    .end annotation

    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/agc/glide/RequestBuilder;->errorBuilder:Lcom/agc/glide/RequestBuilder;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/agc/glide/request/ErrorRequestCoordinator;

    move-object/from16 v13, p1

    move-object/from16 v1, p4

    invoke-direct {v0, v13, v1}, Lcom/agc/glide/request/ErrorRequestCoordinator;-><init>(Ljava/lang/Object;Lcom/agc/glide/request/RequestCoordinator;)V

    move-object v4, v0

    move-object v15, v4

    goto :goto_0

    :cond_0
    move-object/from16 v13, p1

    move-object/from16 v1, p4

    const/4 v0, 0x0

    move-object v15, v0

    move-object v4, v1

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/agc/glide/RequestBuilder;->buildThumbnailRequestRecursive(Ljava/lang/Object;Lcom/agc/glide/request/target/Target;Lcom/agc/glide/request/RequestListener;Lcom/agc/glide/request/RequestCoordinator;Lcom/agc/glide/TransitionOptions;Lcom/agc/glide/Priority;IILcom/agc/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/agc/glide/request/Request;

    move-result-object v0

    if-nez v15, :cond_1

    return-object v0

    :cond_1
    iget-object v1, v11, Lcom/agc/glide/RequestBuilder;->errorBuilder:Lcom/agc/glide/RequestBuilder;

    invoke-virtual {v1}, Lcom/agc/glide/request/BaseRequestOptions;->getOverrideWidth()I

    move-result v1

    iget-object v2, v11, Lcom/agc/glide/RequestBuilder;->errorBuilder:Lcom/agc/glide/RequestBuilder;

    invoke-virtual {v2}, Lcom/agc/glide/request/BaseRequestOptions;->getOverrideHeight()I

    move-result v2

    invoke-static/range {p7 .. p8}, Lcom/agc/glide/util/Util;->isValidDimensions(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v11, Lcom/agc/glide/RequestBuilder;->errorBuilder:Lcom/agc/glide/RequestBuilder;

    invoke-virtual {v3}, Lcom/agc/glide/request/BaseRequestOptions;->isValidOverride()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p9 .. p9}, Lcom/agc/glide/request/BaseRequestOptions;->getOverrideWidth()I

    move-result v1

    invoke-virtual/range {p9 .. p9}, Lcom/agc/glide/request/BaseRequestOptions;->getOverrideHeight()I

    move-result v2

    :cond_2
    move/from16 v19, v1

    move/from16 v20, v2

    iget-object v12, v11, Lcom/agc/glide/RequestBuilder;->errorBuilder:Lcom/agc/glide/RequestBuilder;

    iget-object v1, v12, Lcom/agc/glide/RequestBuilder;->transitionOptions:Lcom/agc/glide/TransitionOptions;

    invoke-virtual {v12}, Lcom/agc/glide/request/BaseRequestOptions;->getPriority()Lcom/agc/glide/Priority;

    move-result-object v18

    iget-object v2, v11, Lcom/agc/glide/RequestBuilder;->errorBuilder:Lcom/agc/glide/RequestBuilder;

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object v3, v15

    move-object/from16 v15, p3

    move-object/from16 v16, v3

    move-object/from16 v17, v1

    move-object/from16 v21, v2

    move-object/from16 v22, p10

    invoke-direct/range {v12 .. v22}, Lcom/agc/glide/RequestBuilder;->buildRequestRecursive(Ljava/lang/Object;Lcom/agc/glide/request/target/Target;Lcom/agc/glide/request/RequestListener;Lcom/agc/glide/request/RequestCoordinator;Lcom/agc/glide/TransitionOptions;Lcom/agc/glide/Priority;IILcom/agc/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/agc/glide/request/Request;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/agc/glide/request/ErrorRequestCoordinator;->setRequests(Lcom/agc/glide/request/Request;Lcom/agc/glide/request/Request;)V

    return-object v3
.end method

.method private buildThumbnailRequestRecursive(Ljava/lang/Object;Lcom/agc/glide/request/target/Target;Lcom/agc/glide/request/RequestListener;Lcom/agc/glide/request/RequestCoordinator;Lcom/agc/glide/TransitionOptions;Lcom/agc/glide/Priority;IILcom/agc/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/agc/glide/request/Request;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/agc/glide/request/target/Target<",
            "TTranscodeType;>;",
            "Lcom/agc/glide/request/RequestListener<",
            "TTranscodeType;>;",
            "Lcom/agc/glide/request/RequestCoordinator;",
            "Lcom/agc/glide/TransitionOptions<",
            "*-TTranscodeType;>;",
            "Lcom/agc/glide/Priority;",
            "II",
            "Lcom/agc/glide/request/BaseRequestOptions<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/agc/glide/request/Request;"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v5, p4

    move-object/from16 v13, p6

    iget-object v0, v11, Lcom/agc/glide/RequestBuilder;->thumbnailBuilder:Lcom/agc/glide/RequestBuilder;

    if-eqz v0, :cond_4

    iget-boolean v1, v11, Lcom/agc/glide/RequestBuilder;->isThumbnailBuilt:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/agc/glide/RequestBuilder;->transitionOptions:Lcom/agc/glide/TransitionOptions;

    iget-boolean v2, v0, Lcom/agc/glide/RequestBuilder;->isDefaultTransitionOptionsSet:Z

    if-eqz v2, :cond_0

    move-object/from16 v14, p5

    goto :goto_0

    :cond_0
    move-object v14, v1

    :goto_0
    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->isPrioritySet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v11, Lcom/agc/glide/RequestBuilder;->thumbnailBuilder:Lcom/agc/glide/RequestBuilder;

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->getPriority()Lcom/agc/glide/Priority;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-direct {v11, v13}, Lcom/agc/glide/RequestBuilder;->getThumbnailPriority(Lcom/agc/glide/Priority;)Lcom/agc/glide/Priority;

    move-result-object v0

    :goto_1
    move-object v15, v0

    iget-object v0, v11, Lcom/agc/glide/RequestBuilder;->thumbnailBuilder:Lcom/agc/glide/RequestBuilder;

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->getOverrideWidth()I

    move-result v0

    iget-object v1, v11, Lcom/agc/glide/RequestBuilder;->thumbnailBuilder:Lcom/agc/glide/RequestBuilder;

    invoke-virtual {v1}, Lcom/agc/glide/request/BaseRequestOptions;->getOverrideHeight()I

    move-result v1

    invoke-static/range {p7 .. p8}, Lcom/agc/glide/util/Util;->isValidDimensions(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v11, Lcom/agc/glide/RequestBuilder;->thumbnailBuilder:Lcom/agc/glide/RequestBuilder;

    invoke-virtual {v2}, Lcom/agc/glide/request/BaseRequestOptions;->isValidOverride()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p9 .. p9}, Lcom/agc/glide/request/BaseRequestOptions;->getOverrideWidth()I

    move-result v0

    invoke-virtual/range {p9 .. p9}, Lcom/agc/glide/request/BaseRequestOptions;->getOverrideHeight()I

    move-result v1

    :cond_2
    move/from16 v16, v0

    move/from16 v17, v1

    new-instance v10, Lcom/agc/glide/request/ThumbnailRequestCoordinator;

    invoke-direct {v10, v12, v5}, Lcom/agc/glide/request/ThumbnailRequestCoordinator;-><init>(Ljava/lang/Object;Lcom/agc/glide/request/RequestCoordinator;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object v5, v10

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object v13, v10

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/agc/glide/RequestBuilder;->obtainRequest(Ljava/lang/Object;Lcom/agc/glide/request/target/Target;Lcom/agc/glide/request/RequestListener;Lcom/agc/glide/request/BaseRequestOptions;Lcom/agc/glide/request/RequestCoordinator;Lcom/agc/glide/TransitionOptions;Lcom/agc/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/agc/glide/request/Request;

    move-result-object v10

    const/4 v0, 0x1

    iput-boolean v0, v11, Lcom/agc/glide/RequestBuilder;->isThumbnailBuilt:Z

    iget-object v9, v11, Lcom/agc/glide/RequestBuilder;->thumbnailBuilder:Lcom/agc/glide/RequestBuilder;

    move-object v0, v9

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move-object v12, v10

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/agc/glide/RequestBuilder;->buildRequestRecursive(Ljava/lang/Object;Lcom/agc/glide/request/target/Target;Lcom/agc/glide/request/RequestListener;Lcom/agc/glide/request/RequestCoordinator;Lcom/agc/glide/TransitionOptions;Lcom/agc/glide/Priority;IILcom/agc/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/agc/glide/request/Request;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v11, Lcom/agc/glide/RequestBuilder;->isThumbnailBuilt:Z

    invoke-virtual {v13, v12, v0}, Lcom/agc/glide/request/ThumbnailRequestCoordinator;->setRequests(Lcom/agc/glide/request/Request;Lcom/agc/glide/request/Request;)V

    return-object v13

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, v11, Lcom/agc/glide/RequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    if-eqz v0, :cond_5

    new-instance v14, Lcom/agc/glide/request/ThumbnailRequestCoordinator;

    invoke-direct {v14, v12, v5}, Lcom/agc/glide/request/ThumbnailRequestCoordinator;-><init>(Ljava/lang/Object;Lcom/agc/glide/request/RequestCoordinator;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object v5, v14

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/agc/glide/RequestBuilder;->obtainRequest(Ljava/lang/Object;Lcom/agc/glide/request/target/Target;Lcom/agc/glide/request/RequestListener;Lcom/agc/glide/request/BaseRequestOptions;Lcom/agc/glide/request/RequestCoordinator;Lcom/agc/glide/TransitionOptions;Lcom/agc/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/agc/glide/request/Request;

    move-result-object v15

    invoke-virtual/range {p9 .. p9}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    iget-object v1, v11, Lcom/agc/glide/RequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/agc/glide/request/BaseRequestOptions;->sizeMultiplier(F)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v4

    invoke-direct {v11, v13}, Lcom/agc/glide/RequestBuilder;->getThumbnailPriority(Lcom/agc/glide/Priority;)Lcom/agc/glide/Priority;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/agc/glide/RequestBuilder;->obtainRequest(Ljava/lang/Object;Lcom/agc/glide/request/target/Target;Lcom/agc/glide/request/RequestListener;Lcom/agc/glide/request/BaseRequestOptions;Lcom/agc/glide/request/RequestCoordinator;Lcom/agc/glide/TransitionOptions;Lcom/agc/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/agc/glide/request/Request;

    move-result-object v0

    invoke-virtual {v14, v15, v0}, Lcom/agc/glide/request/ThumbnailRequestCoordinator;->setRequests(Lcom/agc/glide/request/Request;Lcom/agc/glide/request/Request;)V

    return-object v14

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/agc/glide/RequestBuilder;->obtainRequest(Ljava/lang/Object;Lcom/agc/glide/request/target/Target;Lcom/agc/glide/request/RequestListener;Lcom/agc/glide/request/BaseRequestOptions;Lcom/agc/glide/request/RequestCoordinator;Lcom/agc/glide/TransitionOptions;Lcom/agc/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/agc/glide/request/Request;

    move-result-object v0

    return-object v0
.end method

.method private cloneWithNullErrorAndThumbnail()Lcom/agc/glide/RequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/agc/glide/RequestBuilder;->clone()Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/agc/glide/RequestBuilder;->error(Lcom/agc/glide/RequestBuilder;)Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/agc/glide/RequestBuilder;->thumbnail(Lcom/agc/glide/RequestBuilder;)Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method private getThumbnailPriority(Lcom/agc/glide/Priority;)Lcom/agc/glide/Priority;
    .locals 2

    sget-object v0, Lcom/agc/glide/RequestBuilder$1;->$SwitchMap$com$agc$glide$Priority:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->getPriority()Lcom/agc/glide/Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/agc/glide/Priority;->IMMEDIATE:Lcom/agc/glide/Priority;

    return-object p1

    :pswitch_1
    sget-object p1, Lcom/agc/glide/Priority;->HIGH:Lcom/agc/glide/Priority;

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/agc/glide/Priority;->NORMAL:Lcom/agc/glide/Priority;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private initRequestListeners(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/agc/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;>;)V"
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

    check-cast v0, Lcom/agc/glide/request/RequestListener;

    invoke-virtual {p0, v0}, Lcom/agc/glide/RequestBuilder;->addListener(Lcom/agc/glide/request/RequestListener;)Lcom/agc/glide/RequestBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private into(Lcom/agc/glide/request/target/Target;Lcom/agc/glide/request/RequestListener;Lcom/agc/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/agc/glide/request/target/Target;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/agc/glide/request/target/Target<",
            "TTranscodeType;>;>(TY;",
            "Lcom/agc/glide/request/RequestListener<",
            "TTranscodeType;>;",
            "Lcom/agc/glide/request/BaseRequestOptions<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    invoke-static {p1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/agc/glide/RequestBuilder;->isModelSet:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/agc/glide/RequestBuilder;->buildRequest(Lcom/agc/glide/request/target/Target;Lcom/agc/glide/request/RequestListener;Lcom/agc/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/agc/glide/request/Request;

    move-result-object p2

    invoke-interface {p1}, Lcom/agc/glide/request/target/Target;->getRequest()Lcom/agc/glide/request/Request;

    move-result-object p4

    invoke-interface {p2, p4}, Lcom/agc/glide/request/Request;->isEquivalentTo(Lcom/agc/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p3, p4}, Lcom/agc/glide/RequestBuilder;->isSkipMemoryCacheWithCompletePreviousRequest(Lcom/agc/glide/request/BaseRequestOptions;Lcom/agc/glide/request/Request;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-static {p4}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/agc/glide/request/Request;

    invoke-interface {p2}, Lcom/agc/glide/request/Request;->isRunning()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {p4}, Lcom/agc/glide/request/Request;->begin()V

    :cond_0
    return-object p1

    :cond_1
    iget-object p3, p0, Lcom/agc/glide/RequestBuilder;->requestManager:Lcom/agc/glide/RequestManager;

    invoke-virtual {p3, p1}, Lcom/agc/glide/RequestManager;->clear(Lcom/agc/glide/request/target/Target;)V

    invoke-interface {p1, p2}, Lcom/agc/glide/request/target/Target;->setRequest(Lcom/agc/glide/request/Request;)V

    iget-object p3, p0, Lcom/agc/glide/RequestBuilder;->requestManager:Lcom/agc/glide/RequestManager;

    invoke-virtual {p3, p1, p2}, Lcom/agc/glide/RequestManager;->track(Lcom/agc/glide/request/target/Target;Lcom/agc/glide/request/Request;)V

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must call #load() before calling #into()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isSkipMemoryCacheWithCompletePreviousRequest(Lcom/agc/glide/request/BaseRequestOptions;Lcom/agc/glide/request/Request;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/request/BaseRequestOptions<",
            "*>;",
            "Lcom/agc/glide/request/Request;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/agc/glide/request/BaseRequestOptions;->isMemoryCacheable()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2}, Lcom/agc/glide/request/Request;->isComplete()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private loadGeneric(Ljava/lang/Object;)Lcom/agc/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/RequestBuilder;->clone()Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    invoke-direct {v0, p1}, Lcom/agc/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, Lcom/agc/glide/RequestBuilder;->model:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/agc/glide/RequestBuilder;->isModelSet:Z

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/RequestBuilder;

    return-object p1
.end method

.method private maybeApplyOptionsResourceUri(Landroid/net/Uri;Lcom/agc/glide/RequestBuilder;)Lcom/agc/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;)",
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.resource"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/agc/glide/RequestBuilder;->applyResourceThemeAndSignature(Lcom/agc/glide/RequestBuilder;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method private obtainRequest(Ljava/lang/Object;Lcom/agc/glide/request/target/Target;Lcom/agc/glide/request/RequestListener;Lcom/agc/glide/request/BaseRequestOptions;Lcom/agc/glide/request/RequestCoordinator;Lcom/agc/glide/TransitionOptions;Lcom/agc/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/agc/glide/request/Request;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/agc/glide/request/target/Target<",
            "TTranscodeType;>;",
            "Lcom/agc/glide/request/RequestListener<",
            "TTranscodeType;>;",
            "Lcom/agc/glide/request/BaseRequestOptions<",
            "*>;",
            "Lcom/agc/glide/request/RequestCoordinator;",
            "Lcom/agc/glide/TransitionOptions<",
            "*-TTranscodeType;>;",
            "Lcom/agc/glide/Priority;",
            "II",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/agc/glide/request/Request;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/agc/glide/RequestBuilder;->context:Landroid/content/Context;

    iget-object v2, v0, Lcom/agc/glide/RequestBuilder;->glideContext:Lcom/agc/glide/GlideContext;

    iget-object v4, v0, Lcom/agc/glide/RequestBuilder;->model:Ljava/lang/Object;

    iget-object v5, v0, Lcom/agc/glide/RequestBuilder;->transcodeClass:Ljava/lang/Class;

    iget-object v12, v0, Lcom/agc/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    invoke-virtual {v2}, Lcom/agc/glide/GlideContext;->getEngine()Lcom/agc/glide/load/engine/Engine;

    move-result-object v14

    invoke-virtual/range {p6 .. p6}, Lcom/agc/glide/TransitionOptions;->getTransitionFactory()Lcom/agc/glide/request/transition/TransitionFactory;

    move-result-object v15

    move-object/from16 v3, p1

    move-object/from16 v6, p4

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p7

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p5

    move-object/from16 v16, p10

    invoke-static/range {v1 .. v16}, Lcom/agc/glide/request/SingleRequest;->obtain(Landroid/content/Context;Lcom/agc/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/agc/glide/request/BaseRequestOptions;IILcom/agc/glide/Priority;Lcom/agc/glide/request/target/Target;Lcom/agc/glide/request/RequestListener;Ljava/util/List;Lcom/agc/glide/request/RequestCoordinator;Lcom/agc/glide/load/engine/Engine;Lcom/agc/glide/request/transition/TransitionFactory;Ljava/util/concurrent/Executor;)Lcom/agc/glide/request/SingleRequest;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addListener(Lcom/agc/glide/request/RequestListener;)Lcom/agc/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/request/RequestListener<",
            "TTranscodeType;>;)",
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/RequestBuilder;->clone()Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/RequestBuilder;->addListener(Lcom/agc/glide/request/RequestListener;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/agc/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/agc/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/RequestBuilder;

    return-object p1
.end method

.method public apply(Lcom/agc/glide/request/BaseRequestOptions;)Lcom/agc/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/request/BaseRequestOptions<",
            "*>;)",
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->apply(Lcom/agc/glide/request/BaseRequestOptions;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/RequestBuilder;

    return-object p1
.end method

.method public bridge synthetic apply(Lcom/agc/glide/request/BaseRequestOptions;)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/glide/RequestBuilder;->apply(Lcom/agc/glide/request/BaseRequestOptions;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public clone()Lcom/agc/glide/RequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/RequestBuilder;

    iget-object v1, v0, Lcom/agc/glide/RequestBuilder;->transitionOptions:Lcom/agc/glide/TransitionOptions;

    invoke-virtual {v1}, Lcom/agc/glide/TransitionOptions;->clone()Lcom/agc/glide/TransitionOptions;

    move-result-object v1

    iput-object v1, v0, Lcom/agc/glide/RequestBuilder;->transitionOptions:Lcom/agc/glide/TransitionOptions;

    iget-object v1, v0, Lcom/agc/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/agc/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/agc/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    :cond_0
    iget-object v1, v0, Lcom/agc/glide/RequestBuilder;->thumbnailBuilder:Lcom/agc/glide/RequestBuilder;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/agc/glide/RequestBuilder;->clone()Lcom/agc/glide/RequestBuilder;

    move-result-object v1

    iput-object v1, v0, Lcom/agc/glide/RequestBuilder;->thumbnailBuilder:Lcom/agc/glide/RequestBuilder;

    :cond_1
    iget-object v1, v0, Lcom/agc/glide/RequestBuilder;->errorBuilder:Lcom/agc/glide/RequestBuilder;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/agc/glide/RequestBuilder;->clone()Lcom/agc/glide/RequestBuilder;

    move-result-object v1

    iput-object v1, v0, Lcom/agc/glide/RequestBuilder;->errorBuilder:Lcom/agc/glide/RequestBuilder;

    :cond_2
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1

    invoke-virtual {p0}, Lcom/agc/glide/RequestBuilder;->clone()Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/agc/glide/RequestBuilder;->clone()Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public downloadOnly(II)Lcom/agc/glide/request/FutureTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/agc/glide/request/FutureTarget<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/agc/glide/RequestBuilder;->getDownloadOnlyRequest()Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/agc/glide/RequestBuilder;->submit(II)Lcom/agc/glide/request/FutureTarget;

    move-result-object p1

    return-object p1
.end method

.method public downloadOnly(Lcom/agc/glide/request/target/Target;)Lcom/agc/glide/request/target/Target;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/agc/glide/request/target/Target<",
            "Ljava/io/File;",
            ">;>(TY;)TY;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/agc/glide/RequestBuilder;->getDownloadOnlyRequest()Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/RequestBuilder;->into(Lcom/agc/glide/request/target/Target;)Lcom/agc/glide/request/target/Target;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/agc/glide/RequestBuilder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/agc/glide/RequestBuilder;

    invoke-super {p0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/RequestBuilder;->transcodeClass:Ljava/lang/Class;

    iget-object v2, p1, Lcom/agc/glide/RequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/RequestBuilder;->transitionOptions:Lcom/agc/glide/TransitionOptions;

    iget-object v2, p1, Lcom/agc/glide/RequestBuilder;->transitionOptions:Lcom/agc/glide/TransitionOptions;

    invoke-virtual {v0, v2}, Lcom/agc/glide/TransitionOptions;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/RequestBuilder;->model:Ljava/lang/Object;

    iget-object v2, p1, Lcom/agc/glide/RequestBuilder;->model:Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    iget-object v2, p1, Lcom/agc/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/RequestBuilder;->thumbnailBuilder:Lcom/agc/glide/RequestBuilder;

    iget-object v2, p1, Lcom/agc/glide/RequestBuilder;->thumbnailBuilder:Lcom/agc/glide/RequestBuilder;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/RequestBuilder;->errorBuilder:Lcom/agc/glide/RequestBuilder;

    iget-object v2, p1, Lcom/agc/glide/RequestBuilder;->errorBuilder:Lcom/agc/glide/RequestBuilder;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/RequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    iget-object v2, p1, Lcom/agc/glide/RequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/agc/glide/RequestBuilder;->isDefaultTransitionOptionsSet:Z

    iget-boolean v2, p1, Lcom/agc/glide/RequestBuilder;->isDefaultTransitionOptionsSet:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/agc/glide/RequestBuilder;->isModelSet:Z

    iget-boolean p1, p1, Lcom/agc/glide/RequestBuilder;->isModelSet:Z

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public error(Lcom/agc/glide/RequestBuilder;)Lcom/agc/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;)",
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/RequestBuilder;->clone()Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/RequestBuilder;->error(Lcom/agc/glide/RequestBuilder;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, Lcom/agc/glide/RequestBuilder;->errorBuilder:Lcom/agc/glide/RequestBuilder;

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/RequestBuilder;

    return-object p1
.end method

.method public error(Ljava/lang/Object;)Lcom/agc/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/agc/glide/RequestBuilder;->error(Lcom/agc/glide/RequestBuilder;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/agc/glide/RequestBuilder;->cloneWithNullErrorAndThumbnail()Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getDownloadOnlyRequest()Lcom/agc/glide/RequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/agc/glide/RequestBuilder<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/RequestBuilder;

    const-class v1, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Lcom/agc/glide/RequestBuilder;-><init>(Ljava/lang/Class;Lcom/agc/glide/RequestBuilder;)V

    sget-object v1, Lcom/agc/glide/RequestBuilder;->DOWNLOAD_ONLY_OPTIONS:Lcom/agc/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lcom/agc/glide/RequestBuilder;->apply(Lcom/agc/glide/request/BaseRequestOptions;)Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/RequestBuilder;->model:Ljava/lang/Object;

    return-object v0
.end method

.method public getRequestManager()Lcom/agc/glide/RequestManager;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/RequestBuilder;->requestManager:Lcom/agc/glide/RequestManager;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lcom/agc/glide/request/BaseRequestOptions;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/agc/glide/RequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/agc/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/agc/glide/RequestBuilder;->transitionOptions:Lcom/agc/glide/TransitionOptions;

    invoke-static {v1, v0}, Lcom/agc/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/agc/glide/RequestBuilder;->model:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/agc/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/agc/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/agc/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/agc/glide/RequestBuilder;->thumbnailBuilder:Lcom/agc/glide/RequestBuilder;

    invoke-static {v1, v0}, Lcom/agc/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/agc/glide/RequestBuilder;->errorBuilder:Lcom/agc/glide/RequestBuilder;

    invoke-static {v1, v0}, Lcom/agc/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/agc/glide/RequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    invoke-static {v1, v0}, Lcom/agc/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    iget-boolean v1, p0, Lcom/agc/glide/RequestBuilder;->isDefaultTransitionOptionsSet:Z

    invoke-static {v1, v0}, Lcom/agc/glide/util/Util;->hashCode(ZI)I

    move-result v0

    iget-boolean v1, p0, Lcom/agc/glide/RequestBuilder;->isModelSet:Z

    invoke-static {v1, v0}, Lcom/agc/glide/util/Util;->hashCode(ZI)I

    move-result v0

    return v0
.end method

.method public into(II)Lcom/agc/glide/request/FutureTarget;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/agc/glide/request/FutureTarget<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/agc/glide/RequestBuilder;->submit(II)Lcom/agc/glide/request/FutureTarget;

    move-result-object p1

    return-object p1
.end method

.method public into(Lcom/agc/glide/request/target/Target;)Lcom/agc/glide/request/target/Target;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/agc/glide/request/target/Target<",
            "TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    invoke-static {}, Lcom/agc/glide/util/Executors;->mainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/agc/glide/RequestBuilder;->into(Lcom/agc/glide/request/target/Target;Lcom/agc/glide/request/RequestListener;Ljava/util/concurrent/Executor;)Lcom/agc/glide/request/target/Target;

    move-result-object p1

    return-object p1
.end method

.method public into(Lcom/agc/glide/request/target/Target;Lcom/agc/glide/request/RequestListener;Ljava/util/concurrent/Executor;)Lcom/agc/glide/request/target/Target;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/agc/glide/request/target/Target<",
            "TTranscodeType;>;>(TY;",
            "Lcom/agc/glide/request/RequestListener<",
            "TTranscodeType;>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p0, p3}, Lcom/agc/glide/RequestBuilder;->into(Lcom/agc/glide/request/target/Target;Lcom/agc/glide/request/RequestListener;Lcom/agc/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/agc/glide/request/target/Target;

    move-result-object p1

    return-object p1
.end method

.method public into(Landroid/widget/ImageView;)Lcom/agc/glide/request/target/ViewTarget;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/agc/glide/request/target/ViewTarget<",
            "Landroid/widget/ImageView;",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-static {}, Lcom/agc/glide/util/Util;->assertMainThread()V

    invoke-static {p1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->isTransformationSet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->isTransformationAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/agc/glide/RequestBuilder$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->optionalFitCenter()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->optionalCenterInside()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->optionalCenterCrop()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, p0

    :goto_1
    iget-object v1, p0, Lcom/agc/glide/RequestBuilder;->glideContext:Lcom/agc/glide/GlideContext;

    iget-object v2, p0, Lcom/agc/glide/RequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Lcom/agc/glide/GlideContext;->buildImageViewTarget(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/agc/glide/request/target/ViewTarget;

    move-result-object p1

    invoke-static {}, Lcom/agc/glide/util/Executors;->mainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/agc/glide/RequestBuilder;->into(Lcom/agc/glide/request/target/Target;Lcom/agc/glide/request/RequestListener;Lcom/agc/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/agc/glide/request/target/Target;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/request/target/ViewTarget;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public listener(Lcom/agc/glide/request/RequestListener;)Lcom/agc/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/request/RequestListener<",
            "TTranscodeType;>;)",
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/RequestBuilder;->clone()Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/RequestBuilder;->listener(Lcom/agc/glide/request/RequestListener;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/agc/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/agc/glide/RequestBuilder;->addListener(Lcom/agc/glide/request/RequestListener;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Landroid/graphics/Bitmap;)Lcom/agc/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/agc/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    sget-object v0, Lcom/agc/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/agc/glide/load/engine/DiskCacheStrategy;

    invoke-static {v0}, Lcom/agc/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/agc/glide/load/engine/DiskCacheStrategy;)Lcom/agc/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/agc/glide/RequestBuilder;->apply(Lcom/agc/glide/request/BaseRequestOptions;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Landroid/graphics/drawable/Drawable;)Lcom/agc/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/agc/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    sget-object v0, Lcom/agc/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/agc/glide/load/engine/DiskCacheStrategy;

    invoke-static {v0}, Lcom/agc/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/agc/glide/load/engine/DiskCacheStrategy;)Lcom/agc/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/agc/glide/RequestBuilder;->apply(Lcom/agc/glide/request/BaseRequestOptions;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Landroid/net/Uri;)Lcom/agc/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/agc/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/agc/glide/RequestBuilder;->maybeApplyOptionsResourceUri(Landroid/net/Uri;Lcom/agc/glide/RequestBuilder;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/io/File;)Lcom/agc/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/agc/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/Integer;)Lcom/agc/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/agc/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/agc/glide/RequestBuilder;->applyResourceThemeAndSignature(Lcom/agc/glide/RequestBuilder;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/Object;)Lcom/agc/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/agc/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/String;)Lcom/agc/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/agc/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/net/URL;)Lcom/agc/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Lcom/agc/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load([B)Lcom/agc/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/agc/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/agc/glide/request/BaseRequestOptions;->isDiskCacheStrategySet()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/agc/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/agc/glide/load/engine/DiskCacheStrategy;

    invoke-static {v0}, Lcom/agc/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/agc/glide/load/engine/DiskCacheStrategy;)Lcom/agc/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/agc/glide/RequestBuilder;->apply(Lcom/agc/glide/request/BaseRequestOptions;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/agc/glide/request/BaseRequestOptions;->isSkipMemoryCacheSet()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/agc/glide/request/RequestOptions;->skipMemoryCacheOf(Z)Lcom/agc/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/agc/glide/RequestBuilder;->apply(Lcom/agc/glide/request/BaseRequestOptions;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/glide/RequestBuilder;->load(Landroid/graphics/Bitmap;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/glide/RequestBuilder;->load(Landroid/graphics/drawable/Drawable;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/io/File;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/glide/RequestBuilder;->load(Ljava/io/File;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/net/URL;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/agc/glide/RequestBuilder;->load(Ljava/net/URL;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load([B)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/glide/RequestBuilder;->load([B)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public preload()Lcom/agc/glide/request/target/Target;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/agc/glide/request/target/Target<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, v0}, Lcom/agc/glide/RequestBuilder;->preload(II)Lcom/agc/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method

.method public preload(II)Lcom/agc/glide/request/target/Target;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/agc/glide/request/target/Target<",
            "TTranscodeType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/RequestBuilder;->requestManager:Lcom/agc/glide/RequestManager;

    invoke-static {v0, p1, p2}, Lcom/agc/glide/request/target/PreloadTarget;->obtain(Lcom/agc/glide/RequestManager;II)Lcom/agc/glide/request/target/PreloadTarget;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/agc/glide/RequestBuilder;->into(Lcom/agc/glide/request/target/Target;)Lcom/agc/glide/request/target/Target;

    move-result-object p1

    return-object p1
.end method

.method public submit()Lcom/agc/glide/request/FutureTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/agc/glide/request/FutureTarget<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, v0}, Lcom/agc/glide/RequestBuilder;->submit(II)Lcom/agc/glide/request/FutureTarget;

    move-result-object v0

    return-object v0
.end method

.method public submit(II)Lcom/agc/glide/request/FutureTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/agc/glide/request/FutureTarget<",
            "TTranscodeType;>;"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/request/RequestFutureTarget;

    invoke-direct {v0, p1, p2}, Lcom/agc/glide/request/RequestFutureTarget;-><init>(II)V

    invoke-static {}, Lcom/agc/glide/util/Executors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p0, v0, v0, p1}, Lcom/agc/glide/RequestBuilder;->into(Lcom/agc/glide/request/target/Target;Lcom/agc/glide/request/RequestListener;Ljava/util/concurrent/Executor;)Lcom/agc/glide/request/target/Target;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/request/FutureTarget;

    return-object p1
.end method

.method public thumbnail(F)Lcom/agc/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/RequestBuilder;->clone()Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/RequestBuilder;->thumbnail(F)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/glide/RequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/RequestBuilder;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sizeMultiplier must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public thumbnail(Lcom/agc/glide/RequestBuilder;)Lcom/agc/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;)",
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/RequestBuilder;->clone()Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/RequestBuilder;->thumbnail(Lcom/agc/glide/RequestBuilder;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, Lcom/agc/glide/RequestBuilder;->thumbnailBuilder:Lcom/agc/glide/RequestBuilder;

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/RequestBuilder;

    return-object p1
.end method

.method public thumbnail(Ljava/util/List;)Lcom/agc/glide/RequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;>;)",
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/glide/RequestBuilder;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v0}, Lcom/agc/glide/RequestBuilder;->thumbnail(Lcom/agc/glide/RequestBuilder;)Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/agc/glide/RequestBuilder;->thumbnail(Lcom/agc/glide/RequestBuilder;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lcom/agc/glide/RequestBuilder;->thumbnail(Lcom/agc/glide/RequestBuilder;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs thumbnail([Lcom/agc/glide/RequestBuilder;)Lcom/agc/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;)",
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/agc/glide/RequestBuilder;->thumbnail(Ljava/util/List;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/agc/glide/RequestBuilder;->thumbnail(Lcom/agc/glide/RequestBuilder;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public transition(Lcom/agc/glide/TransitionOptions;)Lcom/agc/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/TransitionOptions<",
            "*-TTranscodeType;>;)",
            "Lcom/agc/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/RequestBuilder;->clone()Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/RequestBuilder;->transition(Lcom/agc/glide/TransitionOptions;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/TransitionOptions;

    iput-object p1, p0, Lcom/agc/glide/RequestBuilder;->transitionOptions:Lcom/agc/glide/TransitionOptions;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/agc/glide/RequestBuilder;->isDefaultTransitionOptionsSet:Z

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/RequestBuilder;

    return-object p1
.end method
