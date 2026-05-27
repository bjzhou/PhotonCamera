.class public final Lbza;
.super Ljava/lang/Object;


# static fields
.field private static volatile d:Lbza;


# instance fields
.field public a:Z

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbza;->b:Ljava/lang/Object;

    new-instance v0, Lbyx;

    invoke-direct {v0, p1}, Lbyx;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lbze;->e(Lcaq;)Lcaq;

    move-result-object p1

    new-instance v0, Lbyy;

    invoke-direct {v0, p0}, Lbyy;-><init>(Lbza;)V

    new-instance v1, Ljvq;

    invoke-direct {v1, p1, v0}, Ljvq;-><init>(Lcaq;Lbyk;)V

    iput-object v1, p0, Lbza;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Laqn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbza;->c:Ljava/lang/Object;

    new-instance p1, Laqm;

    invoke-direct {p1}, Laqm;-><init>()V

    iput-object p1, p0, Lbza;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbza;->b:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbza;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmjp;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbza;->c:Ljava/lang/Object;

    iput-object p1, p0, Lbza;->b:Ljava/lang/Object;

    return-void
.end method

.method static a(Landroid/content/Context;)Lbza;
    .locals 2

    sget-object v0, Lbza;->d:Lbza;

    if-nez v0, :cond_1

    const-class v0, Lbza;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbza;->d:Lbza;

    if-nez v1, :cond_0

    new-instance v1, Lbza;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lbza;-><init>(Landroid/content/Context;)V

    sput-object v1, Lbza;->d:Lbza;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lbza;->d:Lbza;

    return-object p0
.end method


# virtual methods
.method final declared-synchronized b(Lbyk;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbza;->b:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lbza;->a:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lbza;->b:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lbza;->c:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljvq;

    iget-object v0, v0, Ljvq;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lcaq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v3, p1

    check-cast v3, Ljvq;

    iput-boolean v0, v3, Ljvq;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object v0, p1

    check-cast v0, Ljvq;

    iget-object v0, v0, Ljvq;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lcaq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    check-cast p1, Ljvq;

    iget-object p1, p1, Ljvq;->d:Ljava/lang/Object;

    check-cast p1, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "ConnectivityMonitor"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ConnectivityMonitor"

    const-string v1, "Failed to register callback"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lbza;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized c(Lbyk;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbza;->b:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lbza;->a:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lbza;->b:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lbza;->c:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljvq;

    iget-object v0, v0, Ljvq;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lcaq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    check-cast p1, Ljvq;

    iget-object p1, p1, Ljvq;->d:Ljava/lang/Object;

    check-cast p1, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lbza;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbza;->a:Z

    return-void
.end method

.method public final e(Landroid/graphics/Typeface;)V
    .locals 1

    iget-boolean v0, p0, Lbza;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbza;->b:Ljava/lang/Object;

    invoke-interface {v0, p1}, Lmjp;->a(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lbza;->c:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lbza;->e(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lbza;->c:Ljava/lang/Object;

    invoke-interface {v0}, Laqn;->getLifecycle()Laks;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Laks;->a:Lakr;

    sget-object v2, Lakr;->b:Lakr;

    if-ne v1, v2, :cond_1

    new-instance v1, Landroidx/savedstate/Recreator;

    iget-object v2, p0, Lbza;->c:Ljava/lang/Object;

    invoke-direct {v1, v2}, Landroidx/savedstate/Recreator;-><init>(Laqn;)V

    invoke-virtual {v0, v1}, Laks;->a(Laku;)V

    iget-object v1, p0, Lbza;->b:Ljava/lang/Object;

    check-cast v1, Laqm;

    iget-boolean v2, v1, Laqm;->b:Z

    if-nez v2, :cond_0

    new-instance v2, Landroidx/savedstate/SavedStateRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroidx/savedstate/SavedStateRegistry$$ExternalSyntheticLambda0;-><init>(Laqm;)V

    invoke-virtual {v0, v2}, Laks;->a(Laku;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Laqm;->b:Z

    iput-boolean v0, p0, Lbza;->a:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SavedStateRegistry was already attached."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restarter must be created only during owner\'s initialization stage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 3

    iget-boolean v0, p0, Lbza;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbza;->g()V

    :cond_0
    iget-object v0, p0, Lbza;->c:Ljava/lang/Object;

    invoke-interface {v0}, Laqn;->getLifecycle()Laks;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Laks;->a:Lakr;

    sget-object v2, Lakr;->d:Lakr;

    invoke-virtual {v1, v2}, Lakr;->a(Lakr;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lbza;->b:Ljava/lang/Object;

    check-cast v0, Laqm;

    iget-boolean v1, v0, Laqm;->b:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Laqm;->d:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    const-string v1, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, v0, Laqm;->c:Landroid/os/Bundle;

    const/4 p1, 0x1

    iput-boolean p1, v0, Laqm;->d:Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SavedStateRegistry was already restored."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must call performAttach() before calling performRestore(Bundle)."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performRestore cannot be called when owner is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Laks;->a:Lakr;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lbza;->b:Ljava/lang/Object;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    check-cast v0, Laqm;

    iget-object v2, v0, Laqm;->c:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, v0, Laqm;->a:Lqu;

    invoke-virtual {v0}, Lqu;->e()Lqr;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lqr;->a()Ljava/util/Map$Entry;

    move-result-object v2

    check-cast v2, Lqq;

    iget-object v3, v2, Lqq;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v2, v2, Lqq;->b:Ljava/lang/Object;

    check-cast v2, Laql;

    invoke-interface {v2}, Laql;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method
