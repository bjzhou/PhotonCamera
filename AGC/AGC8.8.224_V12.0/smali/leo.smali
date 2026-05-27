.class public final Lleo;
.super Ljava/lang/Object;

# interfaces
.implements Llen;


# instance fields
.field public final a:Lnou;

.field public final b:Lnou;

.field public final c:Lnou;

.field public final d:Lnou;

.field public final e:Lnph;

.field public final f:Lnph;

.field public final g:Lnph;

.field public final h:Ljava/util/List;

.field public i:Z

.field private final j:Lles;

.field private final k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Lnou;Lnou;Lnou;Lnou;ZLjava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lleo;->h:Ljava/util/List;

    iput-object p1, p0, Lleo;->a:Lnou;

    iput-object p2, p0, Lleo;->b:Lnou;

    iput-object p3, p0, Lleo;->c:Lnou;

    iput-object p4, p0, Lleo;->d:Lnou;

    iput-boolean p5, p0, Lleo;->k:Z

    new-instance p1, Lles;

    invoke-direct {p1, p6}, Lles;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lleo;->j:Lles;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    iput-object p1, p0, Lleo;->e:Lnph;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    iput-object p1, p0, Lleo;->f:Lnph;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    iput-object p1, p0, Lleo;->g:Lnph;

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 1

    iget-object v0, p0, Lleo;->g:Lnph;

    return-object v0
.end method

.method public final declared-synchronized b()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lleo;->l:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lleo;->l:Z

    iget-object v1, p0, Lleo;->g:Lnph;

    new-instance v2, Lkxc;

    const/16 v3, 0xa

    invoke-direct {v2, p0, v3}, Lkxc;-><init>(Lleo;I)V

    iget-object v4, p0, Lleo;->j:Lles;

    invoke-virtual {v1, v2, v4}, Lnph;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Lleo;->e:Lnph;

    const/4 v2, 0x4

    new-array v2, v2, [Lnou;

    iget-object v4, p0, Lleo;->a:Lnou;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    iget-object v4, p0, Lleo;->b:Lnou;

    aput-object v4, v2, v0

    iget-object v0, p0, Lleo;->c:Lnou;

    const/4 v4, 0x2

    aput-object v0, v2, v4

    iget-object v0, p0, Lleo;->d:Lnou;

    const/4 v4, 0x3

    aput-object v0, v2, v4

    invoke-static {v2}, Lnsy;->y([Lnou;)Lnou;

    move-result-object v0

    new-instance v2, Lcmq;

    invoke-direct {v2, p0, v3}, Lcmq;-><init>(Lleo;I)V

    iget-object v3, p0, Lleo;->j:Lles;

    invoke-static {v0, v2, v3}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnph;->f(Lnou;)Z

    invoke-static {}, Llyh;->B()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lleo;->e:Lnph;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lleo;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lleq;

    iget-object v2, v2, Lleq;->b:Lnph;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lnsy;->x(Ljava/lang/Iterable;)Lnou;

    move-result-object v0

    new-instance v1, Lkxc;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Lkxc;-><init>(Lleo;I)V

    iget-object v2, p0, Lleo;->j:Lles;

    invoke-interface {v0, v1, v2}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-static {}, Llyh;->B()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lleo;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lleq;

    iget-object v2, v2, Lleq;->e:Lnph;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lnsy;->x(Ljava/lang/Iterable;)Lnou;

    move-result-object v0

    new-instance v1, Lkxc;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Lkxc;-><init>(Lleo;I)V

    iget-object v2, p0, Lleo;->j:Lles;

    invoke-interface {v0, v1, v2}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Muxer already started. Cannot call start twice."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final declared-synchronized c(Llhe;)Llep;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lleo;->l:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lleo;->j:Lles;

    new-instance v1, Lleq;

    iget-object p1, p1, Llhe;->a:Ljava/lang/Object;

    new-instance v2, Lles;

    invoke-direct {v2, v0}, Lles;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-direct {v1, p1, v2}, Lleq;-><init>(Lnou;Lles;)V

    iget-object p1, p0, Lleo;->h:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lleo;->k:Z

    if-eqz p1, :cond_0

    new-instance p1, Llem;

    invoke-direct {p1, v1}, Llem;-><init>(Llep;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Muxer already started. No tracks can be added now."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
