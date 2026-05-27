.class public final Lfls;
.super Ljava/lang/Object;

# interfaces
.implements Lftf;
.implements Lkad;


# instance fields
.field private a:Lftf;


# direct methods
.method public constructor <init>(Lftf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfls;->a:Lftf;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfls;->a:Lftf;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lftf;->a()V
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

.method public final declared-synchronized b(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfls;->a:Lftf;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lftf;->b(J)V
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

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfls;->a:Lftf;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lftf;->c()V
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

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lfls;->a:Lftf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfls;->a:Lftf;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lftf;->d(F)V
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

.method public final declared-synchronized e(FI)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized f(FJ)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfls;->a:Lftf;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lftf;->f(FJ)V
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
