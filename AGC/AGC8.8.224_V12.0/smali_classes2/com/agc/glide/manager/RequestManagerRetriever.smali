.class public Lcom/agc/glide/manager/RequestManagerRetriever;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/manager/RequestManagerRetriever$RequestManagerFactory;
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lcom/agc/glide/manager/RequestManagerRetriever$RequestManagerFactory;

.field static final FRAGMENT_TAG:Ljava/lang/String; = "com.agc.glide.manager"


# instance fields
.field private volatile applicationManager:Lcom/agc/glide/RequestManager;

.field private final factory:Lcom/agc/glide/manager/RequestManagerRetriever$RequestManagerFactory;

.field private final frameWaiter:Lcom/agc/glide/manager/FrameWaiter;

.field private final lifecycleRequestManagerRetriever:Lcom/agc/glide/manager/LifecycleRequestManagerRetriever;

.field private final tempViewToSupportFragment:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/agc/glide/manager/RequestManagerRetriever$1;

    invoke-direct {v0}, Lcom/agc/glide/manager/RequestManagerRetriever$1;-><init>()V

    sput-object v0, Lcom/agc/glide/manager/RequestManagerRetriever;->DEFAULT_FACTORY:Lcom/agc/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    return-void
.end method

.method public constructor <init>(Lcom/agc/glide/manager/RequestManagerRetriever$RequestManagerFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/manager/RequestManagerRetriever;->tempViewToSupportFragment:Landroidx/collection/ArrayMap;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/agc/glide/manager/RequestManagerRetriever;->DEFAULT_FACTORY:Lcom/agc/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    :goto_0
    iput-object p1, p0, Lcom/agc/glide/manager/RequestManagerRetriever;->factory:Lcom/agc/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    new-instance v0, Lcom/agc/glide/manager/LifecycleRequestManagerRetriever;

    invoke-direct {v0, p1}, Lcom/agc/glide/manager/LifecycleRequestManagerRetriever;-><init>(Lcom/agc/glide/manager/RequestManagerRetriever$RequestManagerFactory;)V

    iput-object v0, p0, Lcom/agc/glide/manager/RequestManagerRetriever;->lifecycleRequestManagerRetriever:Lcom/agc/glide/manager/LifecycleRequestManagerRetriever;

    invoke-static {}, Lcom/agc/glide/manager/RequestManagerRetriever;->buildFrameWaiter()Lcom/agc/glide/manager/FrameWaiter;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/glide/manager/RequestManagerRetriever;->frameWaiter:Lcom/agc/glide/manager/FrameWaiter;

    return-void
.end method

.method private static assertNotDestroyed(Landroid/app/Activity;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load for a destroyed activity"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static buildFrameWaiter()Lcom/agc/glide/manager/FrameWaiter;
    .locals 1

    sget-boolean v0, Lcom/agc/glide/load/resource/bitmap/HardwareConfigState;->HARDWARE_BITMAPS_SUPPORTED:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/agc/glide/load/resource/bitmap/HardwareConfigState;->BLOCK_HARDWARE_BITMAPS_WHEN_GL_CONTEXT_MIGHT_NOT_BE_INITIALIZED:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/agc/glide/manager/FirstFrameWaiter;

    invoke-direct {v0}, Lcom/agc/glide/manager/FirstFrameWaiter;-><init>()V

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Lcom/agc/glide/manager/DoNothingFirstFrameWaiter;

    invoke-direct {v0}, Lcom/agc/glide/manager/DoNothingFirstFrameWaiter;-><init>()V

    return-object v0
.end method

.method private static findActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/glide/manager/RequestManagerRetriever;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findAllSupportFragmentsWithViews(Ljava/util/Collection;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/agc/glide/manager/RequestManagerRetriever;->findAllSupportFragmentsWithViews(Ljava/util/Collection;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private findSupportFragment(Landroid/view/View;Landroidx/fragment/app/FragmentActivity;)Landroidx/fragment/app/Fragment;
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/manager/RequestManagerRetriever;->tempViewToSupportFragment:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/glide/manager/RequestManagerRetriever;->tempViewToSupportFragment:Landroidx/collection/ArrayMap;

    invoke-static {v0, v1}, Lcom/agc/glide/manager/RequestManagerRetriever;->findAllSupportFragmentsWithViews(Ljava/util/Collection;Ljava/util/Map;)V

    const v0, 0x1020002

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/agc/glide/manager/RequestManagerRetriever;->tempViewToSupportFragment:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/agc/glide/manager/RequestManagerRetriever;->tempViewToSupportFragment:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->clear()V

    return-object v0
.end method

.method private getApplicationManager(Landroid/content/Context;)Lcom/agc/glide/RequestManager;
    .locals 4

    iget-object v0, p0, Lcom/agc/glide/manager/RequestManagerRetriever;->applicationManager:Lcom/agc/glide/RequestManager;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/manager/RequestManagerRetriever;->applicationManager:Lcom/agc/glide/RequestManager;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/glide/Glide;->get(Landroid/content/Context;)Lcom/agc/glide/Glide;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/glide/manager/RequestManagerRetriever;->factory:Lcom/agc/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    new-instance v2, Lcom/agc/glide/manager/ApplicationLifecycle;

    invoke-direct {v2}, Lcom/agc/glide/manager/ApplicationLifecycle;-><init>()V

    new-instance v3, Lcom/agc/glide/manager/EmptyRequestManagerTreeNode;

    invoke-direct {v3}, Lcom/agc/glide/manager/EmptyRequestManagerTreeNode;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {v1, v0, v2, v3, p1}, Lcom/agc/glide/manager/RequestManagerRetriever$RequestManagerFactory;->build(Lcom/agc/glide/Glide;Lcom/agc/glide/manager/Lifecycle;Lcom/agc/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)Lcom/agc/glide/RequestManager;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/glide/manager/RequestManagerRetriever;->applicationManager:Lcom/agc/glide/RequestManager;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/agc/glide/manager/RequestManagerRetriever;->applicationManager:Lcom/agc/glide/RequestManager;

    return-object p1
.end method

.method private static isActivityVisible(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/agc/glide/manager/RequestManagerRetriever;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public get(Landroid/app/Activity;)Lcom/agc/glide/RequestManager;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/agc/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/agc/glide/RequestManager;

    move-result-object p1

    return-object p1
.end method

.method public get(Landroid/app/Fragment;)Lcom/agc/glide/RequestManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/agc/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/agc/glide/RequestManager;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load on a fragment before it is attached"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(Landroid/content/Context;)Lcom/agc/glide/RequestManager;
    .locals 2

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/agc/glide/util/Util;->isOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, p1}, Lcom/agc/glide/manager/RequestManagerRetriever;->get(Landroidx/fragment/app/FragmentActivity;)Lcom/agc/glide/RequestManager;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/agc/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/agc/glide/RequestManager;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/agc/glide/manager/RequestManagerRetriever;->getApplicationManager(Landroid/content/Context;)Lcom/agc/glide/RequestManager;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load on a null Context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(Landroid/view/View;)Lcom/agc/glide/RequestManager;
    .locals 2

    invoke-static {}, Lcom/agc/glide/util/Util;->isOnBackgroundThread()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/agc/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/agc/glide/RequestManager;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Unable to obtain a request manager for a view without a Context"

    invoke-static {v0, v1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/glide/manager/RequestManagerRetriever;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0, p1, v0}, Lcom/agc/glide/manager/RequestManagerRetriever;->findSupportFragment(Landroid/view/View;Landroidx/fragment/app/FragmentActivity;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/agc/glide/manager/RequestManagerRetriever;->get(Landroidx/fragment/app/Fragment;)Lcom/agc/glide/RequestManager;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/agc/glide/manager/RequestManagerRetriever;->get(Landroidx/fragment/app/FragmentActivity;)Lcom/agc/glide/RequestManager;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public get(Landroidx/fragment/app/Fragment;)Lcom/agc/glide/RequestManager;
    .locals 8

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "You cannot start a load on a fragment before it is attached or after it is destroyed"

    invoke-static {v0, v1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/agc/glide/util/Util;->isOnBackgroundThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/agc/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/agc/glide/RequestManager;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/glide/manager/RequestManagerRetriever;->frameWaiter:Lcom/agc/glide/manager/FrameWaiter;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/agc/glide/manager/FrameWaiter;->registerSelf(Landroid/app/Activity;)V

    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/glide/Glide;->get(Landroid/content/Context;)Lcom/agc/glide/Glide;

    move-result-object v4

    iget-object v2, p0, Lcom/agc/glide/manager/RequestManagerRetriever;->lifecycleRequestManagerRetriever:Lcom/agc/glide/manager/LifecycleRequestManagerRetriever;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v5

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/agc/glide/manager/LifecycleRequestManagerRetriever;->getOrCreate(Landroid/content/Context;Lcom/agc/glide/Glide;Landroidx/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;Z)Lcom/agc/glide/RequestManager;

    move-result-object p1

    return-object p1
.end method

.method public get(Landroidx/fragment/app/FragmentActivity;)Lcom/agc/glide/RequestManager;
    .locals 7

    invoke-static {}, Lcom/agc/glide/util/Util;->isOnBackgroundThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/agc/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/agc/glide/RequestManager;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/agc/glide/manager/RequestManagerRetriever;->assertNotDestroyed(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/agc/glide/manager/RequestManagerRetriever;->frameWaiter:Lcom/agc/glide/manager/FrameWaiter;

    invoke-interface {v0, p1}, Lcom/agc/glide/manager/FrameWaiter;->registerSelf(Landroid/app/Activity;)V

    invoke-static {p1}, Lcom/agc/glide/manager/RequestManagerRetriever;->isActivityVisible(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/glide/Glide;->get(Landroid/content/Context;)Lcom/agc/glide/Glide;

    move-result-object v3

    iget-object v1, p0, Lcom/agc/glide/manager/RequestManagerRetriever;->lifecycleRequestManagerRetriever:Lcom/agc/glide/manager/LifecycleRequestManagerRetriever;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/agc/glide/manager/LifecycleRequestManagerRetriever;->getOrCreate(Landroid/content/Context;Lcom/agc/glide/Glide;Landroidx/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;Z)Lcom/agc/glide/RequestManager;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
