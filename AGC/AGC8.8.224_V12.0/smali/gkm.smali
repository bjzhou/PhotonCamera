.class public final Lgkm;
.super Ljava/lang/Object;

# interfaces
.implements Lkef;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lkef;

.field public final c:Ljava/util/concurrent/Executor;

.field public d:Lkef;

.field public e:Z

.field public final f:Lkee;

.field private final g:Lken;

.field private final h:I

.field private final i:Lkgq;


# direct methods
.method public constructor <init>(Lken;Ljuf;Ljava/util/concurrent/Executor;Lkgq;Ljvs;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgkm;->a:Ljava/util/List;

    new-instance v0, Ldsp;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Ldsp;-><init>(Lgkm;I)V

    iput-object v0, p0, Lgkm;->f:Lkee;

    iput-object p1, p0, Lgkm;->g:Lken;

    iput-object p3, p0, Lgkm;->c:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lgkm;->i:Lkgq;

    const/4 p3, 0x3

    iput p3, p0, Lgkm;->h:I

    new-instance v0, Lgkl;

    invoke-direct {v0, p4, p3}, Lgkl;-><init>(Lkgq;I)V

    iput-object v0, p0, Lgkm;->b:Lkef;

    invoke-interface {p5}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lgkm;->r()Lkef;

    move-result-object p3

    iput-object p3, p0, Lgkm;->d:Lkef;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lgkm;->d:Lkef;

    :goto_0
    new-instance p3, Lglh;

    const/4 p4, 0x1

    invoke-direct {p3, p0, p1, p4}, Lglh;-><init>(Lgkm;Lken;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-interface {p5, p3, p1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljuf;->d(Lkad;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgkm;->d:Lkef;

    invoke-interface {v0}, Lkef;->a()I

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

.method public final declared-synchronized b()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgkm;->d:Lkef;

    invoke-interface {v0}, Lkef;->b()I

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

.method public final declared-synchronized c()Lkeb;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgkm;->d:Lkef;

    invoke-interface {v0}, Lkef;->c()Lkeb;

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
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lgkm;->e:Z

    iget-object v0, p0, Lgkm;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lgkm;->d:Lkef;

    iget-object v1, p0, Lgkm;->f:Lkee;

    invoke-interface {v0, v1}, Lkef;->l(Lkee;)V

    iget-object v0, p0, Lgkm;->g:Lken;

    iget-object v1, p0, Lgkm;->d:Lkef;

    invoke-static {v0, v1}, Lgky;->e(Lken;Lkef;)V

    iget-object v0, p0, Lgkm;->d:Lkef;

    invoke-interface {v0}, Lkef;->close()V

    iget-object v0, p0, Lgkm;->b:Lkef;

    iput-object v0, p0, Lgkm;->d:Lkef;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(Lmqs;)Lkeb;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgkm;->d:Lkef;

    invoke-interface {v0, p1}, Lkef;->d(Lmqs;)Lkeb;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e()Lkeb;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgkm;->d:Lkef;

    invoke-interface {v0}, Lkef;->e()Lkeb;

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

.method public final declared-synchronized f(Lmqs;)Lkeb;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgkm;->d:Lkef;

    invoke-interface {v0, p1}, Lkef;->f(Lmqs;)Lkeb;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized g()Lkeb;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgkm;->d:Lkef;

    invoke-interface {v0}, Lkef;->g()Lkeb;

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

.method public final declared-synchronized h()Lkeb;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgkm;->d:Lkef;

    invoke-interface {v0}, Lkef;->h()Lkeb;

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

.method public final declared-synchronized i()Ljava/util/List;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgkm;->d:Lkef;

    invoke-interface {v0}, Lkef;->i()Ljava/util/List;

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

.method public final declared-synchronized j()Ljava/util/List;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgkm;->d:Lkef;

    invoke-interface {v0}, Lkef;->j()Ljava/util/List;

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

.method public final declared-synchronized k(Lkee;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgkm;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized l(Lkee;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgkm;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized m(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgkm;->d:Lkef;

    invoke-interface {v0, p1}, Lkef;->m(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized n(Lked;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgkm;->d:Lkef;

    invoke-interface {v0, p1}, Lkef;->n(Lked;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized o(Lkeg;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgkm;->d:Lkef;

    invoke-interface {v0, p1}, Lkef;->o(Lkeg;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized p()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgkm;->d:Lkef;

    invoke-interface {v0}, Lkef;->p()Z

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

.method public final declared-synchronized q()Lkgq;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgkm;->i:Lkgq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final r()Lkef;
    .locals 3

    iget-object v0, p0, Lgkm;->g:Lken;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lgkm;->i:Lkgq;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, Lgkm;->h:I

    invoke-interface {v0, v1, v2}, Lken;->r(Lkgq;I)Lkef;

    move-result-object v0

    iget-object v1, p0, Lgkm;->f:Lkee;

    invoke-interface {v0, v1}, Lkef;->k(Lkee;)V

    return-object v0
.end method
