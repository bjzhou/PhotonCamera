.class public final Lhmb;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljvk;

.field public b:Z

.field private final c:Ldhi;

.field private final d:Lgzn;

.field private final e:Ljuh;

.field private final f:Ljvs;

.field private g:Lkad;

.field private final h:Lchl;


# direct methods
.method public constructor <init>(Ldhi;Lgzn;Ljwb;Lhna;Lhnb;Lchl;Ljuh;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljvk;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lhmb;->a:Ljvk;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lhmb;->b:Z

    iput-object p1, p0, Lhmb;->c:Ldhi;

    iput-object p2, p0, Lhmb;->d:Lgzn;

    iput-object p6, p0, Lhmb;->h:Lchl;

    iput-object p7, p0, Lhmb;->e:Ljuh;

    sget-object p2, Ldij;->a:Ldhk;

    invoke-interface {p1}, Ldhi;->g()V

    iget-object p2, p6, Lchl;->b:Ljuf;

    invoke-static {}, Lhne;->a()Lhnd;

    move-result-object p6

    const-string v3, "Swiss"

    invoke-virtual {p6, v3}, Lhnd;->d(Ljava/lang/String;)V

    invoke-virtual {p6, p7}, Lhnd;->c(Ljava/util/concurrent/Executor;)V

    invoke-virtual {p6, p4}, Lhnd;->g(Lhna;)V

    new-instance p4, Lhma;

    invoke-direct {p4, p0, v2}, Lhma;-><init>(Lhmb;I)V

    invoke-virtual {p6, p4}, Lhnd;->f(Ljava/lang/Runnable;)V

    new-instance p4, Lhma;

    const/4 p7, 0x2

    invoke-direct {p4, p0, p7}, Lhma;-><init>(Lhmb;I)V

    invoke-virtual {p6, p4}, Lhnd;->e(Ljava/lang/Runnable;)V

    invoke-virtual {p6}, Lhnd;->a()Lhne;

    move-result-object p4

    invoke-interface {p5, p4}, Lhnb;->f(Lhmz;)Lkad;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljuf;->d(Lkad;)V

    new-array p2, p7, [Ljvs;

    aput-object p3, p2, v2

    aput-object v0, p2, v1

    invoke-static {p2}, Ljvw;->b([Ljvs;)Ljvs;

    move-result-object p2

    new-instance p3, Lhga;

    invoke-direct {p3, p1, p7}, Lhga;-><init>(Ldhi;I)V

    invoke-static {p2, p3}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object p1

    iput-object p1, p0, Lhmb;->f:Ljvs;

    return-void
.end method


# virtual methods
.method public final a()Ljvs;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljvs;

    const/4 v1, 0x0

    iget-object v2, p0, Lhmb;->f:Ljvs;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lhmb;->b()Ljwb;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljvw;->b([Ljvs;)Ljvs;

    move-result-object v0

    sget-object v1, Lfnq;->r:Lfnq;

    invoke-static {v0, v1}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljwb;
    .locals 2

    iget-object v0, p0, Lhmb;->c:Ldhi;

    sget-object v1, Ldij;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->g()V

    iget-object v0, p0, Lhmb;->d:Lgzn;

    sget-object v1, Lgzd;->ap:Lgzs;

    invoke-interface {v0, v1}, Lgzn;->b(Lgzb;)Ljwb;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhmb;->f:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lhmb;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lhmb;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhmb;->b:Z

    iget-object v0, p0, Lhmb;->g:Lkad;

    if-nez v0, :cond_1

    iget-object v0, p0, Lhmb;->f:Ljvs;

    new-instance v1, Lguy;

    const/16 v2, 0x14

    invoke-direct {v1, p0, v2}, Lguy;-><init>(Lhmb;I)V

    iget-object v2, p0, Lhmb;->e:Ljuh;

    invoke-interface {v0, v1, v2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    iput-object v0, p0, Lhmb;->g:Lkad;

    iget-object v1, p0, Lhmb;->h:Lchl;

    iget-object v1, v1, Lchl;->b:Ljuf;

    invoke-virtual {v1, v0}, Ljuf;->d(Lkad;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lhmb;->b()Ljwb;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljfc;->i(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhmb;->b:Z

    iget-object v0, p0, Lhmb;->g:Lkad;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkad;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lhmb;->g:Lkad;
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
