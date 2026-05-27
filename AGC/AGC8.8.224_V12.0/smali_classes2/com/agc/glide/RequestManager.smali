.class public Lcom/agc/glide/RequestManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Lcom/agc/glide/manager/LifecycleListener;
.implements Lcom/agc/glide/ModelTypes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/RequestManager$RequestManagerConnectivityListener;,
        Lcom/agc/glide/RequestManager$ClearTarget;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/ComponentCallbacks2;",
        "Lcom/agc/glide/manager/LifecycleListener;",
        "Lcom/agc/glide/ModelTypes<",
        "Lcom/agc/glide/RequestBuilder<",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final DECODE_TYPE_BITMAP:Lcom/agc/glide/request/RequestOptions;

.field private static final DECODE_TYPE_GIF:Lcom/agc/glide/request/RequestOptions;

.field private static final DOWNLOAD_ONLY_OPTIONS:Lcom/agc/glide/request/RequestOptions;


# instance fields
.field private final addSelfToLifecycle:Ljava/lang/Runnable;

.field private clearOnStop:Z

.field private final connectivityMonitor:Lcom/agc/glide/manager/ConnectivityMonitor;

.field protected final context:Landroid/content/Context;

.field private final defaultRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/agc/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final glide:Lcom/agc/glide/Glide;

.field final lifecycle:Lcom/agc/glide/manager/Lifecycle;

.field private pauseAllRequestsOnTrimMemoryModerate:Z

.field private requestOptions:Lcom/agc/glide/request/RequestOptions;

.field private final requestTracker:Lcom/agc/glide/manager/RequestTracker;

.field private final targetTracker:Lcom/agc/glide/manager/TargetTracker;

.field private final treeNode:Lcom/agc/glide/manager/RequestManagerTreeNode;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/agc/glide/request/RequestOptions;->decodeTypeOf(Ljava/lang/Class;)Lcom/agc/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->lock()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/request/RequestOptions;

    sput-object v0, Lcom/agc/glide/RequestManager;->DECODE_TYPE_BITMAP:Lcom/agc/glide/request/RequestOptions;

    const-class v0, Lcom/agc/glide/load/resource/gif/GifDrawable;

    invoke-static {v0}, Lcom/agc/glide/request/RequestOptions;->decodeTypeOf(Ljava/lang/Class;)Lcom/agc/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->lock()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/request/RequestOptions;

    sput-object v0, Lcom/agc/glide/RequestManager;->DECODE_TYPE_GIF:Lcom/agc/glide/request/RequestOptions;

    sget-object v0, Lcom/agc/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/agc/glide/load/engine/DiskCacheStrategy;

    invoke-static {v0}, Lcom/agc/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/agc/glide/load/engine/DiskCacheStrategy;)Lcom/agc/glide/request/RequestOptions;

    move-result-object v0

    sget-object v1, Lcom/agc/glide/Priority;->LOW:Lcom/agc/glide/Priority;

    invoke-virtual {v0, v1}, Lcom/agc/glide/request/BaseRequestOptions;->priority(Lcom/agc/glide/Priority;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/request/RequestOptions;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/agc/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/request/RequestOptions;

    sput-object v0, Lcom/agc/glide/RequestManager;->DOWNLOAD_ONLY_OPTIONS:Lcom/agc/glide/request/RequestOptions;

    return-void
.end method

.method public constructor <init>(Lcom/agc/glide/Glide;Lcom/agc/glide/manager/Lifecycle;Lcom/agc/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V
    .locals 7

    new-instance v4, Lcom/agc/glide/manager/RequestTracker;

    invoke-direct {v4}, Lcom/agc/glide/manager/RequestTracker;-><init>()V

    invoke-virtual {p1}, Lcom/agc/glide/Glide;->getConnectivityMonitorFactory()Lcom/agc/glide/manager/ConnectivityMonitorFactory;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/agc/glide/RequestManager;-><init>(Lcom/agc/glide/Glide;Lcom/agc/glide/manager/Lifecycle;Lcom/agc/glide/manager/RequestManagerTreeNode;Lcom/agc/glide/manager/RequestTracker;Lcom/agc/glide/manager/ConnectivityMonitorFactory;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/agc/glide/Glide;Lcom/agc/glide/manager/Lifecycle;Lcom/agc/glide/manager/RequestManagerTreeNode;Lcom/agc/glide/manager/RequestTracker;Lcom/agc/glide/manager/ConnectivityMonitorFactory;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/agc/glide/manager/TargetTracker;

    invoke-direct {v0}, Lcom/agc/glide/manager/TargetTracker;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/RequestManager;->targetTracker:Lcom/agc/glide/manager/TargetTracker;

    new-instance v0, Lcom/agc/glide/RequestManager$1;

    invoke-direct {v0, p0}, Lcom/agc/glide/RequestManager$1;-><init>(Lcom/agc/glide/RequestManager;)V

    iput-object v0, p0, Lcom/agc/glide/RequestManager;->addSelfToLifecycle:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/agc/glide/RequestManager;->glide:Lcom/agc/glide/Glide;

    iput-object p2, p0, Lcom/agc/glide/RequestManager;->lifecycle:Lcom/agc/glide/manager/Lifecycle;

    iput-object p3, p0, Lcom/agc/glide/RequestManager;->treeNode:Lcom/agc/glide/manager/RequestManagerTreeNode;

    iput-object p4, p0, Lcom/agc/glide/RequestManager;->requestTracker:Lcom/agc/glide/manager/RequestTracker;

    iput-object p6, p0, Lcom/agc/glide/RequestManager;->context:Landroid/content/Context;

    invoke-virtual {p6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p6, Lcom/agc/glide/RequestManager$RequestManagerConnectivityListener;

    invoke-direct {p6, p0, p4}, Lcom/agc/glide/RequestManager$RequestManagerConnectivityListener;-><init>(Lcom/agc/glide/RequestManager;Lcom/agc/glide/manager/RequestTracker;)V

    invoke-interface {p5, p3, p6}, Lcom/agc/glide/manager/ConnectivityMonitorFactory;->build(Landroid/content/Context;Lcom/agc/glide/manager/ConnectivityMonitor$ConnectivityListener;)Lcom/agc/glide/manager/ConnectivityMonitor;

    move-result-object p3

    iput-object p3, p0, Lcom/agc/glide/RequestManager;->connectivityMonitor:Lcom/agc/glide/manager/ConnectivityMonitor;

    invoke-virtual {p1, p0}, Lcom/agc/glide/Glide;->registerRequestManager(Lcom/agc/glide/RequestManager;)V

    invoke-static {}, Lcom/agc/glide/util/Util;->isOnBackgroundThread()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-static {v0}, Lcom/agc/glide/util/Util;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2, p0}, Lcom/agc/glide/manager/Lifecycle;->addListener(Lcom/agc/glide/manager/LifecycleListener;)V

    :goto_0
    invoke-interface {p2, p3}, Lcom/agc/glide/manager/Lifecycle;->addListener(Lcom/agc/glide/manager/LifecycleListener;)V

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Lcom/agc/glide/Glide;->getGlideContext()Lcom/agc/glide/GlideContext;

    move-result-object p3

    invoke-virtual {p3}, Lcom/agc/glide/GlideContext;->getDefaultRequestListeners()Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/agc/glide/RequestManager;->defaultRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Lcom/agc/glide/Glide;->getGlideContext()Lcom/agc/glide/GlideContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/agc/glide/GlideContext;->getDefaultRequestOptions()Lcom/agc/glide/request/RequestOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/agc/glide/RequestManager;->setRequestOptions(Lcom/agc/glide/request/RequestOptions;)V

    return-void
.end method

.method private declared-synchronized clearRequests()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/RequestManager;->targetTracker:Lcom/agc/glide/manager/TargetTracker;

    invoke-virtual {v0}, Lcom/agc/glide/manager/TargetTracker;->getAll()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/glide/request/target/Target;

    invoke-virtual {p0, v1}, Lcom/agc/glide/RequestManager;->clear(Lcom/agc/glide/request/target/Target;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/RequestManager;->targetTracker:Lcom/agc/glide/manager/TargetTracker;

    invoke-virtual {v0}, Lcom/agc/glide/manager/TargetTracker;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private untrackOrDelegate(Lcom/agc/glide/request/target/Target;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/request/target/Target<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/agc/glide/RequestManager;->untrack(Lcom/agc/glide/request/target/Target;)Z

    move-result v0

    invoke-interface {p1}, Lcom/agc/glide/request/target/Target;->getRequest()Lcom/agc/glide/request/Request;

    move-result-object v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/RequestManager;->glide:Lcom/agc/glide/Glide;

    invoke-virtual {v0, p1}, Lcom/agc/glide/Glide;->removeFromManagers(Lcom/agc/glide/request/target/Target;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/agc/glide/request/target/Target;->setRequest(Lcom/agc/glide/request/Request;)V

    invoke-interface {v1}, Lcom/agc/glide/request/Request;->clear()V

    :cond_0
    return-void
.end method

.method private declared-synchronized updateRequestOptions(Lcom/agc/glide/request/RequestOptions;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/RequestManager;->requestOptions:Lcom/agc/glide/request/RequestOptions;

    invoke-virtual {v0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->apply(Lcom/agc/glide/request/BaseRequestOptions;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/request/RequestOptions;

    iput-object p1, p0, Lcom/agc/glide/RequestManager;->requestOptions:Lcom/agc/glide/request/RequestOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addDefaultRequestListener(Lcom/agc/glide/request/RequestListener;)Lcom/agc/glide/RequestManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/agc/glide/RequestManager;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/RequestManager;->defaultRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public declared-synchronized applyDefaultRequestOptions(Lcom/agc/glide/request/RequestOptions;)Lcom/agc/glide/RequestManager;
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/agc/glide/RequestManager;->updateRequestOptions(Lcom/agc/glide/request/RequestOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public as(Ljava/lang/Class;)Lcom/agc/glide/RequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lcom/agc/glide/RequestBuilder<",
            "TResourceType;>;"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/RequestBuilder;

    iget-object v1, p0, Lcom/agc/glide/RequestManager;->glide:Lcom/agc/glide/Glide;

    iget-object v2, p0, Lcom/agc/glide/RequestManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/agc/glide/RequestBuilder;-><init>(Lcom/agc/glide/Glide;Lcom/agc/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public asBitmap()Lcom/agc/glide/RequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/agc/glide/RequestBuilder<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/agc/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/agc/glide/RequestManager;->DECODE_TYPE_BITMAP:Lcom/agc/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lcom/agc/glide/RequestBuilder;->apply(Lcom/agc/glide/request/BaseRequestOptions;)Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public asDrawable()Lcom/agc/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/agc/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/agc/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public asFile()Lcom/agc/glide/RequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/agc/glide/RequestBuilder<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/agc/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/agc/glide/request/RequestOptions;->skipMemoryCacheOf(Z)Lcom/agc/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/agc/glide/RequestBuilder;->apply(Lcom/agc/glide/request/BaseRequestOptions;)Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public asGif()Lcom/agc/glide/RequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/agc/glide/RequestBuilder<",
            "Lcom/agc/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/agc/glide/load/resource/gif/GifDrawable;

    invoke-virtual {p0, v0}, Lcom/agc/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/agc/glide/RequestManager;->DECODE_TYPE_GIF:Lcom/agc/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lcom/agc/glide/RequestBuilder;->apply(Lcom/agc/glide/request/BaseRequestOptions;)Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clear(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/agc/glide/RequestManager$ClearTarget;

    invoke-direct {v0, p1}, Lcom/agc/glide/RequestManager$ClearTarget;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/agc/glide/RequestManager;->clear(Lcom/agc/glide/request/target/Target;)V

    return-void
.end method

.method public clear(Lcom/agc/glide/request/target/Target;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/request/target/Target<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/agc/glide/RequestManager;->untrackOrDelegate(Lcom/agc/glide/request/target/Target;)V

    return-void
.end method

.method public declared-synchronized clearOnStop()Lcom/agc/glide/RequestManager;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/agc/glide/RequestManager;->clearOnStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public download(Ljava/lang/Object;)Lcom/agc/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/agc/glide/RequestBuilder<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/agc/glide/RequestManager;->downloadOnly()Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public downloadOnly()Lcom/agc/glide/RequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/agc/glide/RequestBuilder<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/agc/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/agc/glide/RequestManager;->DOWNLOAD_ONLY_OPTIONS:Lcom/agc/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lcom/agc/glide/RequestBuilder;->apply(Lcom/agc/glide/request/BaseRequestOptions;)Lcom/agc/glide/RequestBuilder;

    move-result-object v0

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

    iget-object v0, p0, Lcom/agc/glide/RequestManager;->defaultRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public declared-synchronized getDefaultRequestOptions()Lcom/agc/glide/request/RequestOptions;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/RequestManager;->requestOptions:Lcom/agc/glide/request/RequestOptions;
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
    .locals 1
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

    iget-object v0, p0, Lcom/agc/glide/RequestManager;->glide:Lcom/agc/glide/Glide;

    invoke-virtual {v0}, Lcom/agc/glide/Glide;->getGlideContext()Lcom/agc/glide/GlideContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/GlideContext;->getDefaultTransitionOptions(Ljava/lang/Class;)Lcom/agc/glide/TransitionOptions;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized isPaused()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/RequestManager;->requestTracker:Lcom/agc/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lcom/agc/glide/manager/RequestTracker;->isPaused()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public load(Landroid/graphics/Bitmap;)Lcom/agc/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/agc/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/agc/glide/RequestManager;->asDrawable()Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/RequestBuilder;->load(Landroid/graphics/Bitmap;)Lcom/agc/glide/RequestBuilder;

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
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/agc/glide/RequestManager;->asDrawable()Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/RequestBuilder;->load(Landroid/graphics/drawable/Drawable;)Lcom/agc/glide/RequestBuilder;

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
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/agc/glide/RequestManager;->asDrawable()Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/io/File;)Lcom/agc/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/agc/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/agc/glide/RequestManager;->asDrawable()Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/RequestBuilder;->load(Ljava/io/File;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/Integer;)Lcom/agc/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/agc/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/agc/glide/RequestManager;->asDrawable()Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/Object;)Lcom/agc/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/agc/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/agc/glide/RequestManager;->asDrawable()Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/String;)Lcom/agc/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/agc/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/agc/glide/RequestManager;->asDrawable()Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/net/URL;)Lcom/agc/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/agc/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/agc/glide/RequestManager;->asDrawable()Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/RequestBuilder;->load(Ljava/net/URL;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load([B)Lcom/agc/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/agc/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/agc/glide/RequestManager;->asDrawable()Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/RequestBuilder;->load([B)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/glide/RequestManager;->load(Landroid/graphics/Bitmap;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/glide/RequestManager;->load(Landroid/graphics/drawable/Drawable;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/io/File;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/glide/RequestManager;->load(Ljava/io/File;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/glide/RequestManager;->load(Ljava/lang/String;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/net/URL;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/agc/glide/RequestManager;->load(Ljava/net/URL;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load([B)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/glide/RequestManager;->load([B)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onDestroy()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/RequestManager;->targetTracker:Lcom/agc/glide/manager/TargetTracker;

    invoke-virtual {v0}, Lcom/agc/glide/manager/TargetTracker;->onDestroy()V

    invoke-direct {p0}, Lcom/agc/glide/RequestManager;->clearRequests()V

    iget-object v0, p0, Lcom/agc/glide/RequestManager;->requestTracker:Lcom/agc/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lcom/agc/glide/manager/RequestTracker;->clearRequests()V

    iget-object v0, p0, Lcom/agc/glide/RequestManager;->lifecycle:Lcom/agc/glide/manager/Lifecycle;

    invoke-interface {v0, p0}, Lcom/agc/glide/manager/Lifecycle;->removeListener(Lcom/agc/glide/manager/LifecycleListener;)V

    iget-object v0, p0, Lcom/agc/glide/RequestManager;->lifecycle:Lcom/agc/glide/manager/Lifecycle;

    iget-object v1, p0, Lcom/agc/glide/RequestManager;->connectivityMonitor:Lcom/agc/glide/manager/ConnectivityMonitor;

    invoke-interface {v0, v1}, Lcom/agc/glide/manager/Lifecycle;->removeListener(Lcom/agc/glide/manager/LifecycleListener;)V

    iget-object v0, p0, Lcom/agc/glide/RequestManager;->addSelfToLifecycle:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/agc/glide/util/Util;->removeCallbacksOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/agc/glide/RequestManager;->glide:Lcom/agc/glide/Glide;

    invoke-virtual {v0, p0}, Lcom/agc/glide/Glide;->unregisterRequestManager(Lcom/agc/glide/RequestManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public declared-synchronized onStart()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/agc/glide/RequestManager;->resumeRequests()V

    iget-object v0, p0, Lcom/agc/glide/RequestManager;->targetTracker:Lcom/agc/glide/manager/TargetTracker;

    invoke-virtual {v0}, Lcom/agc/glide/manager/TargetTracker;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStop()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/RequestManager;->targetTracker:Lcom/agc/glide/manager/TargetTracker;

    invoke-virtual {v0}, Lcom/agc/glide/manager/TargetTracker;->onStop()V

    iget-boolean v0, p0, Lcom/agc/glide/RequestManager;->clearOnStop:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/agc/glide/RequestManager;->clearRequests()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/agc/glide/RequestManager;->pauseRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/agc/glide/RequestManager;->pauseAllRequestsOnTrimMemoryModerate:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/RequestManager;->pauseAllRequestsRecursive()V

    :cond_0
    return-void
.end method

.method public declared-synchronized pauseAllRequests()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/RequestManager;->requestTracker:Lcom/agc/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lcom/agc/glide/manager/RequestTracker;->pauseAllRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pauseAllRequestsRecursive()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/agc/glide/RequestManager;->pauseAllRequests()V

    iget-object v0, p0, Lcom/agc/glide/RequestManager;->treeNode:Lcom/agc/glide/manager/RequestManagerTreeNode;

    invoke-interface {v0}, Lcom/agc/glide/manager/RequestManagerTreeNode;->getDescendants()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/glide/RequestManager;

    invoke-virtual {v1}, Lcom/agc/glide/RequestManager;->pauseAllRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pauseRequests()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/RequestManager;->requestTracker:Lcom/agc/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lcom/agc/glide/manager/RequestTracker;->pauseRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pauseRequestsRecursive()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/agc/glide/RequestManager;->pauseRequests()V

    iget-object v0, p0, Lcom/agc/glide/RequestManager;->treeNode:Lcom/agc/glide/manager/RequestManagerTreeNode;

    invoke-interface {v0}, Lcom/agc/glide/manager/RequestManagerTreeNode;->getDescendants()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/glide/RequestManager;

    invoke-virtual {v1}, Lcom/agc/glide/RequestManager;->pauseRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resumeRequests()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/RequestManager;->requestTracker:Lcom/agc/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lcom/agc/glide/manager/RequestTracker;->resumeRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resumeRequestsRecursive()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/agc/glide/util/Util;->assertMainThread()V

    invoke-virtual {p0}, Lcom/agc/glide/RequestManager;->resumeRequests()V

    iget-object v0, p0, Lcom/agc/glide/RequestManager;->treeNode:Lcom/agc/glide/manager/RequestManagerTreeNode;

    invoke-interface {v0}, Lcom/agc/glide/manager/RequestManagerTreeNode;->getDescendants()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/glide/RequestManager;

    invoke-virtual {v1}, Lcom/agc/glide/RequestManager;->resumeRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultRequestOptions(Lcom/agc/glide/request/RequestOptions;)Lcom/agc/glide/RequestManager;
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/agc/glide/RequestManager;->setRequestOptions(Lcom/agc/glide/request/RequestOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPauseAllRequestsOnTrimMemoryModerate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/agc/glide/RequestManager;->pauseAllRequestsOnTrimMemoryModerate:Z

    return-void
.end method

.method public declared-synchronized setRequestOptions(Lcom/agc/glide/request/RequestOptions;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/request/RequestOptions;

    invoke-virtual {p1}, Lcom/agc/glide/request/BaseRequestOptions;->autoClone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/request/RequestOptions;

    iput-object p1, p0, Lcom/agc/glide/RequestManager;->requestOptions:Lcom/agc/glide/request/RequestOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/glide/RequestManager;->requestTracker:Lcom/agc/glide/manager/RequestTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/glide/RequestManager;->treeNode:Lcom/agc/glide/manager/RequestManagerTreeNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized track(Lcom/agc/glide/request/target/Target;Lcom/agc/glide/request/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/request/target/Target<",
            "*>;",
            "Lcom/agc/glide/request/Request;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/RequestManager;->targetTracker:Lcom/agc/glide/manager/TargetTracker;

    invoke-virtual {v0, p1}, Lcom/agc/glide/manager/TargetTracker;->track(Lcom/agc/glide/request/target/Target;)V

    iget-object p1, p0, Lcom/agc/glide/RequestManager;->requestTracker:Lcom/agc/glide/manager/RequestTracker;

    invoke-virtual {p1, p2}, Lcom/agc/glide/manager/RequestTracker;->runRequest(Lcom/agc/glide/request/Request;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized untrack(Lcom/agc/glide/request/target/Target;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/request/target/Target<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/agc/glide/request/target/Target;->getRequest()Lcom/agc/glide/request/Request;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/agc/glide/RequestManager;->requestTracker:Lcom/agc/glide/manager/RequestTracker;

    invoke-virtual {v2, v0}, Lcom/agc/glide/manager/RequestTracker;->clearAndRemove(Lcom/agc/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/glide/RequestManager;->targetTracker:Lcom/agc/glide/manager/TargetTracker;

    invoke-virtual {v0, p1}, Lcom/agc/glide/manager/TargetTracker;->untrack(Lcom/agc/glide/request/target/Target;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/agc/glide/request/target/Target;->setRequest(Lcom/agc/glide/request/Request;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_1
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
