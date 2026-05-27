.class public final Lebl;
.super Ljava/lang/Object;

# interfaces
.implements Lebk;


# instance fields
.field public final a:Ljwb;

.field public final b:Ljvs;

.field public final c:Ljvk;

.field public d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private final h:Ljava/util/List;

.field private final i:Ljvs;


# direct methods
.method public constructor <init>(Ldhi;Ljvs;Ljvs;Ljvs;Lchl;Ljuh;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lebl;->e:Z

    iput-boolean v0, p0, Lebl;->f:Z

    iput-boolean v0, p0, Lebl;->g:Z

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lebl;->h:Ljava/util/List;

    new-instance v1, Ljvk;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lebl;->a:Ljwb;

    new-instance v3, Ljvk;

    invoke-direct {v3, v2}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lebl;->c:Ljvk;

    iput-object p3, p0, Lebl;->i:Ljvs;

    const/4 p3, 0x3

    new-array p3, p3, [Ljvs;

    aput-object p2, p3, v0

    const/4 p2, 0x1

    aput-object v1, p3, p2

    const/4 p2, 0x2

    aput-object v3, p3, p2

    invoke-static {p3}, Ljvw;->d([Ljvs;)Ljvs;

    move-result-object p3

    invoke-static {p3}, Ljvo;->c(Ljvs;)Ljvs;

    move-result-object p3

    iput-object p3, p0, Lebl;->b:Ljvs;

    sget-object p3, Ldhq;->ac:Ldhj;

    invoke-interface {p1, p3}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p5, Lchl;->b:Ljuf;

    new-instance p3, Ldsk;

    invoke-direct {p3, p0, p2}, Ldsk;-><init>(Lebl;I)V

    invoke-interface {p4, p3, p6}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljuf;->d(Lkad;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(ZZZZ)V
    .locals 2

    iput-boolean p1, p0, Lebl;->f:Z

    if-nez p4, :cond_0

    iput-boolean p1, p0, Lebl;->g:Z

    :cond_0
    iget-object v0, p0, Lebl;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lebk;

    invoke-interface {v1, p1, p2, p3, p4}, Lebk;->a(ZZZZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(Z)V
    .locals 2

    iget-object v0, p0, Lebl;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lebk;

    invoke-interface {v1, p1}, Lebk;->b(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lebl;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lebk;

    invoke-interface {v1}, Lebk;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d()Ljvs;
    .locals 1

    iget-object v0, p0, Lebl;->a:Ljwb;

    invoke-static {v0}, Ljvo;->c(Ljvs;)Ljvs;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized e(Lebk;)Lkad;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lebl;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lebl;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Leid;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Leid;-><init>(Lebl;Lebk;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance p1, Lgnl;

    const/16 v0, 0xe

    invoke-direct {p1, v0}, Lgnl;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lebl;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g(Lebk;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lebl;->h:Ljava/util/List;

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

.method public final declared-synchronized h(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lebl;->c:Ljvk;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljvk;->bn(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized i(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lebl;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized j()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lebl;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lebl;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized l()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lebl;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized m()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lebl;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized n()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lebl;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final o(Lgkr;)V
    .locals 4

    iget-object v0, p0, Lebl;->c:Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p1}, Lgxl;->k()Lhjc;

    move-result-object p1

    sget-object v0, Lngj;->e:Lngj;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, p0, Lebl;->b:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngj;

    iget v3, v2, Lngj;->a:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Lngj;->a:I

    iput-boolean v1, v2, Lngj;->b:Z

    invoke-virtual {p0}, Lebl;->d()Ljvs;

    move-result-object v1

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngj;

    iget v3, v2, Lngj;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lngj;->a:I

    iput-boolean v1, v2, Lngj;->c:Z

    iget-object v1, p0, Lebl;->i:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lngj;

    iget v3, v2, Lngj;->a:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Lngj;->a:I

    iput v1, v2, Lngj;->d:F

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lngj;

    check-cast p1, Lhjd;

    iput-object v0, p1, Lhjd;->o:Lngj;

    :cond_3
    return-void
.end method
