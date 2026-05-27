.class final Lcom/agc/glide/manager/LifecycleRequestManagerRetriever;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/manager/LifecycleRequestManagerRetriever$SupportRequestManagerTreeNode;
    }
.end annotation


# instance fields
.field private final factory:Lcom/agc/glide/manager/RequestManagerRetriever$RequestManagerFactory;

.field final lifecycleToRequestManager:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/lifecycle/Lifecycle;",
            "Lcom/agc/glide/RequestManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/agc/glide/manager/RequestManagerRetriever$RequestManagerFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/manager/LifecycleRequestManagerRetriever;->lifecycleToRequestManager:Ljava/util/Map;

    iput-object p1, p0, Lcom/agc/glide/manager/LifecycleRequestManagerRetriever;->factory:Lcom/agc/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    return-void
.end method


# virtual methods
.method public getOnly(Landroidx/lifecycle/Lifecycle;)Lcom/agc/glide/RequestManager;
    .locals 1

    invoke-static {}, Lcom/agc/glide/util/Util;->assertMainThread()V

    iget-object v0, p0, Lcom/agc/glide/manager/LifecycleRequestManagerRetriever;->lifecycleToRequestManager:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/RequestManager;

    return-object p1
.end method

.method public getOrCreate(Landroid/content/Context;Lcom/agc/glide/Glide;Landroidx/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;Z)Lcom/agc/glide/RequestManager;
    .locals 3

    invoke-static {}, Lcom/agc/glide/util/Util;->assertMainThread()V

    invoke-virtual {p0, p3}, Lcom/agc/glide/manager/LifecycleRequestManagerRetriever;->getOnly(Landroidx/lifecycle/Lifecycle;)Lcom/agc/glide/RequestManager;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/agc/glide/manager/LifecycleLifecycle;

    invoke-direct {v0, p3}, Lcom/agc/glide/manager/LifecycleLifecycle;-><init>(Landroidx/lifecycle/Lifecycle;)V

    iget-object v1, p0, Lcom/agc/glide/manager/LifecycleRequestManagerRetriever;->factory:Lcom/agc/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    new-instance v2, Lcom/agc/glide/manager/LifecycleRequestManagerRetriever$SupportRequestManagerTreeNode;

    invoke-direct {v2, p0, p4}, Lcom/agc/glide/manager/LifecycleRequestManagerRetriever$SupportRequestManagerTreeNode;-><init>(Lcom/agc/glide/manager/LifecycleRequestManagerRetriever;Landroidx/fragment/app/FragmentManager;)V

    invoke-interface {v1, p2, v0, v2, p1}, Lcom/agc/glide/manager/RequestManagerRetriever$RequestManagerFactory;->build(Lcom/agc/glide/Glide;Lcom/agc/glide/manager/Lifecycle;Lcom/agc/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)Lcom/agc/glide/RequestManager;

    move-result-object p1

    iget-object p2, p0, Lcom/agc/glide/manager/LifecycleRequestManagerRetriever;->lifecycleToRequestManager:Ljava/util/Map;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/agc/glide/manager/LifecycleRequestManagerRetriever$1;

    invoke-direct {p2, p0, p3}, Lcom/agc/glide/manager/LifecycleRequestManagerRetriever$1;-><init>(Lcom/agc/glide/manager/LifecycleRequestManagerRetriever;Landroidx/lifecycle/Lifecycle;)V

    invoke-virtual {v0, p2}, Lcom/agc/glide/manager/LifecycleLifecycle;->addListener(Lcom/agc/glide/manager/LifecycleListener;)V

    if-eqz p5, :cond_0

    invoke-virtual {p1}, Lcom/agc/glide/RequestManager;->onStart()V

    :cond_0
    move-object v0, p1

    :cond_1
    return-object v0
.end method
