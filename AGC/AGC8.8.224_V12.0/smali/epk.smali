.class public final Lepk;
.super Ljava/lang/Object;

# interfaces
.implements Lfwu;


# instance fields
.field public final a:Lnph;

.field public final b:Ljava/lang/Runnable;

.field public final c:Lnph;

.field public final d:I

.field public e:Lkbf;

.field public f:Z

.field public final synthetic g:Lepl;


# direct methods
.method public constructor <init>(Lepl;ILjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lepk;->g:Lepl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    iput-object p1, p0, Lepk;->a:Lnph;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    iput-object p1, p0, Lepk;->c:Lnph;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lepk;->f:Z

    iput p2, p0, Lepk;->d:I

    iput-object p3, p0, Lepk;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lnou;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lepk;->g:Lepl;

    iget-object v0, v0, Lepl;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Leli;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Leli;-><init>(Lepk;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lepk;->a:Lnph;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Lnou;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized c(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lepk;->e()V

    iget-object v0, p0, Lepk;->a:Lnph;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lepk;->g:Lepl;

    iget-object p1, p1, Lepl;->d:Ljava/util/concurrent/Executor;

    new-instance v0, Leli;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Leli;-><init>(Lepk;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lepk;->c:Lnph;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lnph;->cancel(Z)Z
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

.method public final declared-synchronized d(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lepk;->c:Lnph;

    invoke-virtual {v0}, Lnph;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lepk;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lepk;->c:Lnph;

    new-instance v1, Lcwk;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, p2, v2}, Lcwk;-><init>(Lepk;Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-static {v0, v1, p1}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    sget-object p1, Lepl;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 p2, 0x6e4

    invoke-interface {p1, p2}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    iget p2, p0, Lepk;->d:I

    const-string v0, "Cannot execute, already cancelled %s"

    invoke-interface {p1, v0, p2}, Lnah;->p(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lepk;->e:Lkbf;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkbf;->a()V

    :cond_0
    return-void
.end method
