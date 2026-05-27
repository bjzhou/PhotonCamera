.class public final Lkhr;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lkgs;

.field public final b:Lkgq;

.field private c:Lkad;


# direct methods
.method public constructor <init>(Lkgq;Lkgs;Lkad;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkhr;->a:Lkgs;

    iput-object p1, p0, Lkhr;->b:Lkgq;

    iput-object p3, p0, Lkhr;->c:Lkad;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lkeb;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkhr;->a:Lkgs;

    invoke-static {v0}, Lkhn;->l(Lkgs;)Lkeb;

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

.method public final b()Lkeg;
    .locals 1

    iget-object v0, p0, Lkhr;->a:Lkgs;

    iget-object v0, v0, Lkgs;->b:Lkeg;

    return-object v0
.end method

.method final c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkhr;->c:Lkad;

    const/4 v1, 0x0

    iput-object v1, p0, Lkhr;->c:Lkad;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkad;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final declared-synchronized d()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkhr;->c:Lkad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lkhr;->a:Lkgs;

    invoke-virtual {v0}, Lkgs;->k()Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lkhr;->a:Lkgs;

    invoke-virtual {v0}, Lkgs;->m()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkhr;->a:Lkgs;

    invoke-virtual {v0}, Lkgs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
