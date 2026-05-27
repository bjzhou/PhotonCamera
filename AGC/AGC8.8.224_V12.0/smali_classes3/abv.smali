.class public final Labv;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static c(Landroid/content/Context;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result p0

    return p0
.end method

.method public static d(Lalr;Laqm;Laks;)V
    .locals 2

    iget-object v0, p0, Lalr;->h:Ljava/util/Map;

    const-string v1, "androidx.lifecycle.savedstate.vm.tag"

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lalr;->h:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p0, Landroidx/lifecycle/SavedStateHandleController;

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/SavedStateHandleController;->b(Laqm;Laks;)V

    invoke-static {p1, p2}, Labv;->e(Laqm;Laks;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static e(Laqm;Laks;)V
    .locals 2

    iget-object v0, p1, Laks;->a:Lakr;

    sget-object v1, Lakr;->b:Lakr;

    if-eq v0, v1, :cond_1

    sget-object v1, Lakr;->d:Lakr;

    invoke-virtual {v0, v1}, Lakr;->a(Lakr;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/lifecycle/LegacySavedStateHandleController$1;

    invoke-direct {v0, p1, p0}, Landroidx/lifecycle/LegacySavedStateHandleController$1;-><init>(Laks;Laqm;)V

    invoke-virtual {p1, v0}, Laks;->a(Laku;)V

    return-void

    :cond_1
    :goto_0
    const-class p1, Lako;

    invoke-virtual {p0, p1}, Laqm;->c(Ljava/lang/Class;)V

    return-void
.end method
