.class public final Lkgz;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lkaq;

.field private final b:Lkbc;

.field private final c:Ljava/util/Deque;

.field private final d:Ljava/util/Deque;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Runnable;

.field private final h:Lkpo;

.field private final i:Lkgd;

.field private final j:Ldja;


# direct methods
.method public constructor <init>(Ldja;Lkpo;Lkgd;Ljuf;Lkaq;Lkbc;[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p7, Ljava/util/ArrayDeque;

    invoke-direct {p7}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p7, p0, Lkgz;->c:Ljava/util/Deque;

    new-instance p7, Ljava/util/ArrayDeque;

    invoke-direct {p7}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p7, p0, Lkgz;->d:Ljava/util/Deque;

    const/4 p7, 0x0

    iput-boolean p7, p0, Lkgz;->e:Z

    iput-boolean p7, p0, Lkgz;->f:Z

    iput-object p1, p0, Lkgz;->j:Ldja;

    iput-object p2, p0, Lkgz;->h:Lkpo;

    iput-object p3, p0, Lkgz;->i:Lkgd;

    iput-object p6, p0, Lkgz;->b:Lkbc;

    const-string p1, "PendingFrameQueue"

    invoke-interface {p5, p1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lkgz;->a:Lkaq;

    new-instance p1, Lirx;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Lirx;-><init>(Lkgz;I)V

    invoke-virtual {p4, p1}, Ljuf;->d(Lkad;)V

    return-void
.end method

.method public static bridge synthetic g(Lkgz;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkgz;->e:Z

    return-void
.end method

.method private final h(Lkgq;)Lkgs;
    .locals 4

    iget-object v0, p0, Lkgz;->i:Lkgd;

    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v1

    iget-object v2, p1, Lkgq;->c:Lmwn;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkfj;

    invoke-static {v3}, Lkjv;->f(Lkfj;)Lkkf;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmwl;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lmwl;->f()Lmwn;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lkgs;->p(Lkgd;Lkgq;Ljava/util/Set;)Lkgs;

    move-result-object p1

    invoke-virtual {p1}, Lkgs;->f()V

    return-object p1
.end method


# virtual methods
.method final declared-synchronized a()Ljava/util/Set;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkgz;->d:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lkgz;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkgz;->d:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-virtual {p0}, Lkgz;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/util/Set;Ljava/util/Set;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkgz;->f:Z

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkgs;

    invoke-virtual {v1}, Lkgs;->f()V

    invoke-virtual {v1}, Lkgs;->g()V

    goto :goto_0

    :cond_0
    check-cast p1, Lmzg;

    invoke-virtual {p1}, Lmzg;->cz()Lnac;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkgy;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkgs;

    iget-object v3, v2, Lkgs;->c:Lkgq;

    iget-object v4, v0, Lkgy;->a:Lkgq;

    if-ne v3, v4, :cond_2

    invoke-virtual {v0, v2}, Lkgy;->l(Lkgs;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    iget-object v0, p0, Lkgz;->b:Lkbc;

    const-string v1, "onRequestAllocated"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    check-cast p1, Lmzg;

    invoke-virtual {p1}, Lmzg;->cz()Lnac;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkgy;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkgs;

    iget-object v3, v2, Lkgs;->c:Lkgq;

    iget-object v4, v0, Lkgy;->a:Lkgq;

    if-ne v3, v4, :cond_6

    invoke-virtual {v0, v2}, Lkgy;->l(Lkgs;)V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lkgz;->d:Ljava/util/Deque;

    invoke-interface {p1, p2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lkgz;->b:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    iget-object p1, p0, Lkgz;->d:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lkgz;->f:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lkgz;->g:Ljava/lang/Runnable;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lkgz;->b:Lkbc;

    const-string p2, "invokeSubmitListener"

    invoke-interface {p1, p2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lkgz;->g:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lkgz;->b:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final declared-synchronized c(Ljava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkgz;->g:Ljava/lang/Runnable;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, p0, Lkgz;->d:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-boolean v0, p0, Lkgz;->f:Z

    xor-int/2addr v0, v1

    invoke-static {v0}, Lmoz;->p(Z)V

    iput-object p1, p0, Lkgz;->g:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkgz;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lkgz;->f:Z

    iget-object v0, p0, Lkgz;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkgz;->d:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lkgz;->a:Lkaq;

    const-string v1, "Aborting pending frames on shutdown."

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lkgz;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkgy;

    iget-object v2, v1, Lkgy;->a:Lkgq;

    invoke-direct {p0, v2}, Lkgz;->h(Lkgq;)Lkgs;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkgy;->l(Lkgs;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lkgz;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    iget-object v0, p0, Lkgz;->d:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkgs;

    invoke-virtual {v2}, Lkgs;->f()V

    invoke-virtual {v2}, Lkgs;->g()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lkgz;->d:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final declared-synchronized e()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkgz;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lkgz;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lkgz;->d:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lkgz;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkgz;->b:Lkbc;

    const-string v1, "allocate#FrameStream(s)"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lkgz;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkgy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v1

    iget-object v0, v0, Lkgy;->a:Lkgq;

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lkgz;->e:Z

    iget-object v2, p0, Lkgz;->j:Ldja;

    invoke-virtual {v2, v0}, Ldja;->v(Ljava/util/Set;)Lnou;

    move-result-object v2

    new-instance v3, Lcwk;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v1, v0, v4}, Lcwk;-><init>(Lkgz;Ljava/util/Set;Ljava/util/Set;I)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-static {v2, v3, v0}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lkgz;->b:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f(Lkgq;)Lkeb;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkgz;->b:Lkbc;

    const-string v1, "submit#FrameStream"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lkgz;->h:Lkpo;

    instance-of v1, p1, Lkgq;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, Lkpo;->c:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    invoke-static {v2}, Lmoz;->e(Z)V

    new-instance v0, Lkgy;

    invoke-direct {v0, p1}, Lkgy;-><init>(Lkgq;)V

    iget-boolean v1, p0, Lkgz;->f:Z

    if-nez v1, :cond_1

    iget-object p1, p0, Lkgz;->c:Ljava/util/Deque;

    invoke-interface {p1, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkgz;->e()V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lkgz;->h(Lkgq;)Lkgs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkgy;->l(Lkgs;)V

    :goto_1
    iget-object p1, p0, Lkgz;->b:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
