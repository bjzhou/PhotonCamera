.class public final Lcsd;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public final a:Lgft;

.field public final b:Ljvk;

.field public final c:Ljvk;

.field public final d:Ljava/lang/Object;

.field public e:Z

.field private final f:Limq;

.field private final g:Ldhi;

.field private final h:Ljvs;

.field private final i:Ljvs;

.field private j:Ljuf;

.field private final k:Lknx;


# direct methods
.method public constructor <init>(Ljvs;Lgft;Limq;Ldhi;Ljvs;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljvk;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcsd;->b:Ljvk;

    new-instance v0, Ljvk;

    sget-object v2, Lkab;->a:Lkab;

    invoke-direct {v0, v2}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcsd;->c:Ljvk;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcsd;->d:Ljava/lang/Object;

    iput-boolean v1, p0, Lcsd;->e:Z

    new-instance v0, Ldag;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ldag;-><init>(Lcsd;I)V

    iput-object v0, p0, Lcsd;->k:Lknx;

    iput-object p1, p0, Lcsd;->h:Ljvs;

    iput-object p2, p0, Lcsd;->a:Lgft;

    iput-object p3, p0, Lcsd;->f:Limq;

    iput-object p4, p0, Lcsd;->g:Ldhi;

    iput-object p5, p0, Lcsd;->i:Ljvs;

    return-void
.end method


# virtual methods
.method public final a()Ljvs;
    .locals 1

    invoke-virtual {p0}, Lcsd;->e()V

    iget-object v0, p0, Lcsd;->c:Ljvk;

    return-object v0
.end method

.method public final b(Lkab;)Ljava/lang/Integer;
    .locals 4

    iget-object v0, p0, Lcsd;->h:Ljvs;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbw;

    invoke-virtual {v0}, Ldbw;->a()Lklv;

    iget-object v1, p0, Lcsd;->g:Ldhi;

    sget-object v2, Ldho;->bU:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcsd;->i:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Ldbw;->c:Lfuz;

    invoke-virtual {v1}, Lklw;->f()I

    move-result v1

    :goto_0
    iget p1, p1, Lkab;->e:I

    iget-object v2, p0, Lcsd;->f:Limq;

    invoke-virtual {v0}, Ldbw;->b()Z

    move-result v0

    iget-object v3, p0, Lcsd;->g:Ldhi;

    invoke-static {v1, p1, v2, v0, v3}, Lcea;->a(IILimq;ZLdhi;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcsd;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcsd;->e()V

    iget-boolean v1, p0, Lcsd;->e:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcsd;->b:Ljvk;

    iget-object v2, p0, Lcsd;->a:Lgft;

    invoke-interface {v2}, Lgft;->c()Lkab;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcsd;->b(Lkab;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljvk;->bn(Ljava/lang/Object;)V

    iget-object v1, p0, Lcsd;->c:Ljvk;

    iget-object v2, p0, Lcsd;->a:Lgft;

    invoke-interface {v2}, Lgft;->c()Lkab;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcsd;->b(Lkab;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lkab;->b(I)Lkab;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljvk;->bn(Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcsd;->e:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final close()V
    .locals 4

    iget-object v0, p0, Lcsd;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcsd;->j:Ljuf;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljuf;->b()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcsd;->a:Lgft;

    iget-object v3, p0, Lcsd;->k:Lknx;

    invoke-interface {v2, v3}, Lgft;->h(Lknx;)V

    invoke-virtual {v1}, Ljuf;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcsd;->j:Ljuf;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcsd;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcsd;->e()V

    iget-boolean v1, p0, Lcsd;->e:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcsd;->e:Z

    iget-object v1, p0, Lcsd;->b:Ljvk;

    iget-object v2, p0, Lcsd;->a:Lgft;

    invoke-interface {v2}, Lgft;->c()Lkab;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcsd;->b(Lkab;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljvk;->bn(Ljava/lang/Object;)V

    iget-object v1, p0, Lcsd;->c:Ljvk;

    iget-object v2, p0, Lcsd;->a:Lgft;

    invoke-interface {v2}, Lgft;->c()Lkab;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcsd;->b(Lkab;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lkab;->b(I)Lkab;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljvk;->bn(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, Lcsd;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcsd;->j:Ljuf;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljuf;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljuf;

    invoke-direct {v1}, Ljuf;-><init>()V

    iget-object v2, p0, Lcsd;->b:Ljvk;

    iget-object v3, p0, Lcsd;->a:Lgft;

    invoke-interface {v3}, Lgft;->c()Lkab;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcsd;->b(Lkab;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljvk;->bn(Ljava/lang/Object;)V

    iget-object v2, p0, Lcsd;->c:Ljvk;

    iget-object v3, p0, Lcsd;->a:Lgft;

    invoke-interface {v3}, Lgft;->c()Lkab;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcsd;->b(Lkab;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lkab;->b(I)Lkab;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljvk;->bn(Ljava/lang/Object;)V

    iget-object v2, p0, Lcsd;->a:Lgft;

    iget-object v3, p0, Lcsd;->k:Lknx;

    invoke-interface {v2, v3}, Lgft;->g(Lknx;)V

    iget-object v2, p0, Lcsd;->h:Ljvs;

    new-instance v3, Lckj;

    const/16 v4, 0xc

    invoke-direct {v3, p0, v4}, Lckj;-><init>(Lcsd;I)V

    sget-object v4, Lnnv;->a:Lnnv;

    invoke-interface {v2, v3, v4}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    iput-object v1, p0, Lcsd;->j:Ljuf;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
