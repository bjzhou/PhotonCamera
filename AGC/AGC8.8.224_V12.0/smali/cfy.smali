.class public final Lcfy;
.super Ljava/lang/Object;

# interfaces
.implements Lioq;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcgf;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcfy;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lios;)Lioo;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcfy;->b:Lcgf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcgf;->close()V

    :cond_0
    sget-object v0, Lnbk;->a:Lnbc;

    new-instance v0, Lcgf;

    invoke-interface {p1}, Lios;->b()Llbd;

    move-result-object p1

    iget-object v1, p0, Lcfy;->a:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcgf;-><init>(Llbd;Landroid/content/Context;)V

    iput-object v0, p0, Lcfy;->b:Lcgf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcfy;->b:Lcgf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcgf;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcfy;->b:Lcgf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcgf;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcfy;->b:Lcgf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcgf;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e(Lkpb;Landroid/graphics/RectF;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcfy;->b:Lcgf;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcgf;->h(Lkpb;Landroid/graphics/RectF;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object p1, Lnbk;->a:Lnbc;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f(Lcge;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcfy;->b:Lcgf;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcgf;->i(Lcge;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized g(Lcgh;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcfy;->b:Lcgf;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcgf;->j(Lcgh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
