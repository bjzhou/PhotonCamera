.class public final Lkhn;
.super Ljava/lang/Object;

# interfaces
.implements Lkeb;


# instance fields
.field private final a:Lkgs;

.field private final b:Lkad;

.field private c:Z


# direct methods
.method public constructor <init>(Lkgs;Lkad;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkhn;->c:Z

    iput-object p1, p0, Lkhn;->a:Lkgs;

    iput-object p2, p0, Lkhn;->b:Lkad;

    return-void
.end method

.method public static l(Lkgs;)Lkeb;
    .locals 2

    invoke-virtual {p0}, Lkgs;->b()Lkad;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lkhn;

    invoke-direct {v1, p0, v0}, Lkhn;-><init>(Lkgs;Lkad;)V

    return-object v1
.end method


# virtual methods
.method public final declared-synchronized a()Lkeb;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkhn;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lkhn;->a:Lkgs;

    invoke-static {v0}, Lkhn;->l(Lkgs;)Lkeb;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Lkeg;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkhn;->a:Lkgs;

    iget-object v0, v0, Lkgs;->b:Lkeg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Lkou;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkhn;->a:Lkgs;

    invoke-virtual {v0}, Lkgs;->d()Lkou;

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

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkhn;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkhn;->c:Z

    iget-object v0, p0, Lkhn;->b:Lkad;

    invoke-interface {v0}, Lkad;->close()V
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

.method public final declared-synchronized d(Lkfj;)Lkpb;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkhn;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lkhn;->a:Lkgs;

    invoke-virtual {v0, p1}, Lkgs;->e(Lkfj;)Lkpb;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkhn;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkhn;->a:Lkgs;

    invoke-virtual {v0}, Lkgs;->k()Z

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

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lkhn;->a:Lkgs;

    invoke-virtual {v0}, Lkgs;->l()Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized h()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkhn;->a:Lkgs;

    invoke-virtual {v0}, Lkgs;->m()Z

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

.method public final declared-synchronized i()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkhn;->a:Lkgs;

    invoke-virtual {v0}, Lkgs;->n()Z

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

.method public final declared-synchronized j()Lkgq;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkhn;->a:Lkgs;

    iget-object v0, v0, Lkgs;->c:Lkgq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k(Lkfg;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkhn;->a:Lkgs;

    invoke-virtual {v0, p1}, Lkgs;->o(Lkfg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkhn;->a:Lkgs;

    invoke-virtual {v0}, Lkgs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
