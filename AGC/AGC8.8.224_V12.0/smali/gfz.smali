.class public final Lgfz;
.super Lkfg;


# instance fields
.field private final a:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lkfg;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lgfz;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final declared-synchronized bC(Lkou;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgfz;->a:Ljava/util/Set;

    invoke-static {v0}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object v0

    invoke-virtual {v0}, Lmwn;->cz()Lnac;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfg;

    invoke-virtual {v1, p1}, Lkfg;->bC(Lkou;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized bD(JI)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgfz;->a:Ljava/util/Set;

    invoke-static {v0}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object v0

    invoke-virtual {v0}, Lmwn;->cz()Lnac;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfg;

    invoke-virtual {v1, p1, p2, p3}, Lkfg;->bD(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized bh(Lkfj;J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgfz;->a:Ljava/util/Set;

    invoke-static {v0}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object v0

    invoke-virtual {v0}, Lmwn;->cz()Lnac;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfg;

    invoke-virtual {v1, p1, p2, p3}, Lkfg;->bh(Lkfj;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized bi(Lkkp;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgfz;->a:Ljava/util/Set;

    invoke-static {v0}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object v0

    invoke-virtual {v0}, Lmwn;->cz()Lnac;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfg;

    invoke-virtual {v1, p1}, Lkfg;->bi(Lkkp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized br(Lkoq;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgfz;->a:Ljava/util/Set;

    invoke-static {v0}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object v0

    invoke-virtual {v0}, Lmwn;->cz()Lnac;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfg;

    invoke-virtual {v1, p1}, Lkfg;->br(Lkoq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized bs(JI)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgfz;->a:Ljava/util/Set;

    invoke-static {v0}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object v0

    invoke-virtual {v0}, Lmwn;->cz()Lnac;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfg;

    invoke-virtual {v1, p1, p2, p3}, Lkfg;->bs(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized bt(JIJ)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgfz;->a:Ljava/util/Set;

    invoke-static {v0}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object v0

    invoke-virtual {v0}, Lmwn;->cz()Lnac;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkfg;

    move-wide v3, p1

    move v5, p3

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lkfg;->bt(JIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized bu(JLjava/util/Set;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgfz;->a:Ljava/util/Set;

    invoke-static {v0}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object v0

    invoke-virtual {v0}, Lmwn;->cz()Lnac;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfg;

    invoke-virtual {v1, p1, p2, p3}, Lkfg;->bu(JLjava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized bv(Lkeg;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgfz;->a:Ljava/util/Set;

    invoke-static {v0}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object v0

    invoke-virtual {v0}, Lmwn;->cz()Lnac;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfg;

    invoke-virtual {v1, p1}, Lkfg;->bv(Lkeg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized n(Lkfg;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgfz;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized o(Lkfg;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgfz;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
