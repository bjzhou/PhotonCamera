.class public final Lkfw;
.super Lkfg;

# interfaces
.implements Lkad;


# instance fields
.field private final a:Lkfv;

.field private final b:Lkgw;

.field private final c:Ljava/util/Set;

.field private d:Ljava/util/Set;

.field private e:Ljava/util/Set;

.field private f:Z

.field private g:Z

.field private final h:Z

.field private final i:Ldja;


# direct methods
.method public constructor <init>(Ldja;Lkfv;Lkgw;Lmwn;Ljava/util/Set;Ljava/util/Set;[B[B)V
    .locals 0

    invoke-direct {p0}, Lkfg;-><init>()V

    const/4 p7, 0x0

    iput-object p7, p0, Lkfw;->e:Ljava/util/Set;

    const/4 p7, 0x0

    iput-boolean p7, p0, Lkfw;->f:Z

    iput-boolean p7, p0, Lkfw;->g:Z

    iput-object p1, p0, Lkfw;->i:Ldja;

    iput-object p2, p0, Lkfw;->a:Lkfv;

    iput-object p3, p0, Lkfw;->b:Lkgw;

    iput-object p5, p0, Lkfw;->c:Ljava/util/Set;

    invoke-static {p6}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object p1

    iput-object p1, p0, Lkfw;->d:Ljava/util/Set;

    sget-object p1, Lkfc;->b:Lkfc;

    invoke-virtual {p4, p1}, Lmwn;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lkfw;->h:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized bh(Lkfj;J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkfw;->e:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfj;

    if-ne p1, v1, :cond_0

    instance-of v2, v1, Lkjt;

    if-eqz v2, :cond_0

    check-cast v1, Lkjt;

    iget-object v1, v1, Lkjt;->a:Lkjz;

    invoke-virtual {v1, p1, p2, p3}, Lkjz;->c(Lkfj;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
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
    iget-object v0, p0, Lkfw;->d:Ljava/util/Set;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lkkp;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    iget-boolean p1, p0, Lkfw;->h:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lkfw;->g:Z

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkgs;

    invoke-virtual {v0}, Lkgs;->g()V

    invoke-virtual {v0}, Lkgs;->f()V

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lkfw;->d:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public final declared-synchronized bu(JLjava/util/Set;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p3, p0, Lkfw;->e:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized bv(Lkeg;)V
    .locals 16

    move-object/from16 v1, p0

    monitor-enter p0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v1, Lkfw;->g:Z

    iget-object v0, v1, Lkfw;->e:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v3, v1, Lkfw;->f:Z

    xor-int/2addr v3, v2

    const-string v4, "on started invoked after FrameDistributor was closed!"

    invoke-static {v3, v4}, Lmoz;->q(ZLjava/lang/Object;)V

    new-instance v3, Ljuf;

    invoke-direct {v3}, Ljuf;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v4, 0x0

    :try_start_1
    iget-object v5, v1, Lkfw;->i:Ldja;

    invoke-virtual {v5}, Ldja;->u()Lkad;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljuf;->d(Lkad;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkfj;

    instance-of v7, v6, Lkjt;

    if-eqz v7, :cond_0

    check-cast v6, Lkjt;

    iget-object v6, v6, Lkjt;->e:Lkgd;

    invoke-virtual {v6}, Lkgd;->r()Lkad;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljuf;->d(Lkad;)V

    goto :goto_0

    :cond_1
    iget-object v5, v1, Lkfw;->d:Ljava/util/Set;

    const/4 v6, 0x0

    iput-object v6, v1, Lkfw;->d:Ljava/util/Set;

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    iget-object v7, v1, Lkfw;->i:Ldja;

    iget-object v8, v1, Lkfw;->c:Ljava/util/Set;

    invoke-virtual {v7, v8, v5}, Ldja;->x(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkgs;

    invoke-interface {v7, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Lmoz;->p(Z)V

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v7, v1, Lkfw;->i:Ldja;

    iget-object v8, v1, Lkfw;->c:Ljava/util/Set;

    invoke-virtual {v7, v8}, Ldja;->w(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    :cond_4
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkgs;

    iget-object v12, v11, Lkgs;->c:Lkgq;

    iget-object v12, v12, Lkgq;->c:Lmwn;

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkfj;

    instance-of v14, v13, Lkkb;

    if-eqz v14, :cond_5

    move-object v14, v13

    check-cast v14, Lkkb;

    invoke-virtual {v14}, Lkkb;->h()Lkfm;

    move-result-object v14

    sget-object v15, Lkfm;->a:Lkfm;

    if-ne v14, v15, :cond_5

    invoke-virtual {v11, v13}, Lkgs;->c(Lkfj;)Lkkf;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    move-object/from16 v12, p1

    invoke-virtual {v11, v12}, Lkgs;->i(Lkeg;)V

    iget-object v13, v11, Lkgs;->c:Lkgq;

    invoke-interface {v8, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    iget-object v10, v1, Lkfw;->b:Lkgw;

    invoke-virtual {v10, v7}, Lkgw;->q(Ljava/util/Collection;)V

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkkf;

    invoke-interface {v10}, Lkkf;->d()Lkfj;

    move-result-object v11

    instance-of v12, v11, Lkjt;

    if-eqz v12, :cond_8

    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    check-cast v11, Lkjt;

    iget-object v11, v11, Lkjt;->a:Lkjz;

    invoke-interface {v10}, Lkkf;->d()Lkfj;

    move-result-object v12

    invoke-interface {v12}, Lkfj;->a()I

    move-result v12

    iget v13, v11, Lkjz;->b:I

    if-ne v12, v13, :cond_9

    const/4 v12, 0x1

    goto :goto_6

    :cond_9
    const/4 v12, 0x0

    :goto_6
    invoke-static {v12}, Lmoz;->e(Z)V

    iget-object v12, v11, Lkjz;->c:Lkaf;

    invoke-interface {v10}, Lkkf;->d()Lkfj;

    move-result-object v13

    invoke-interface {v13}, Lkfj;->b()Lkaf;

    move-result-object v13

    invoke-virtual {v12, v13}, Lkaf;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-static {v12}, Lmoz;->e(Z)V

    iget-object v12, v11, Lkjz;->i:Ljava/util/Queue;

    invoke-interface {v12, v10}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v10, v11, Lkjz;->d:Ljava/util/concurrent/Executor;

    iget-object v11, v11, Lkjz;->e:Ljava/lang/Runnable;

    invoke-interface {v10, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_a
    invoke-interface {v10, v6}, Lkkf;->k(Lkpb;)V

    goto :goto_5

    :cond_b
    iget-object v6, v1, Lkfw;->a:Lkfv;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v9, Lmwl;

    invoke-direct {v9}, Lmwl;-><init>()V

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v10, v6, Lkfv;->a:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_c
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkfu;

    iget-object v12, v11, Lkfu;->h:Lkgq;

    invoke-interface {v0, v12}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-virtual {v9, v11}, Lmwl;->g(Ljava/lang/Object;)V

    goto :goto_7

    :cond_d
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v9}, Lmwl;->f()Lmwn;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkfu;

    iget-object v9, v6, Lkfu;->h:Lkgq;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkgs;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v9, Lkgs;->c:Lkgq;

    new-instance v11, Lkhr;

    invoke-virtual {v9, v4}, Lkgs;->a(Z)Lkad;

    move-result-object v12

    invoke-direct {v11, v10, v9, v12}, Lkhr;-><init>(Lkgq;Lkgs;Lkad;)V

    iget-object v9, v11, Lkhr;->b:Lkgq;

    iget-object v10, v6, Lkfu;->h:Lkgq;

    if-ne v9, v10, :cond_e

    const/4 v9, 0x1

    goto :goto_9

    :cond_e
    const/4 v9, 0x0

    :goto_9
    const-string v10, "Frame does not match source!"

    invoke-static {v9, v10}, Lmoz;->f(ZLjava/lang/Object;)V

    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    iget-boolean v9, v6, Lkfu;->g:Z

    if-eqz v9, :cond_f

    invoke-virtual {v11}, Lkhr;->c()V

    goto :goto_c

    :cond_f
    iget-object v9, v6, Lkfu;->b:Ljava/util/Deque;

    invoke-interface {v9, v11}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    invoke-virtual {v11}, Lkhr;->d()Z

    move-result v9

    if-eqz v9, :cond_10

    iget-object v9, v6, Lkfu;->d:Ljava/util/Deque;

    invoke-interface {v9, v11}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_a

    :cond_10
    iget-object v9, v6, Lkfu;->c:Ljava/util/Deque;

    invoke-interface {v9, v11}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    :goto_a
    invoke-virtual {v6}, Lkfu;->s()V

    iget-object v9, v6, Lkfu;->f:Ljava/util/List;

    monitor-enter v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v10, v6, Lkfu;->f:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkec;

    invoke-interface {v12, v11}, Lkec;->c(Lkhr;)V

    goto :goto_b

    :cond_11
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v9, v6, Lkfu;->a:Ljava/util/concurrent/Executor;

    new-instance v10, Lkcw;

    const/4 v12, 0x6

    invoke-direct {v10, v6, v11, v12}, Lkcw;-><init>(Lkfu;Lkhr;I)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_c
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_8

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0

    :cond_12
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkgs;

    invoke-virtual {v6}, Lkgs;->g()V

    goto :goto_d

    :cond_13
    if-eqz v5, :cond_14

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual/range {p0 .. p0}, Lkfw;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_14
    :try_start_a
    invoke-virtual {v3}, Ljuf;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    :try_start_b
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception v0

    move-object v5, v0

    :try_start_d
    invoke-virtual {v3}, Ljuf;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_e

    :catchall_4
    move-exception v0

    move-object v3, v0

    :try_start_e
    const-class v0, Ljava/lang/Throwable;

    const-string v6, "addSuppressed"

    new-array v7, v2, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Throwable;

    aput-object v8, v7, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v4

    invoke-virtual {v0, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_e

    :catch_0
    move-exception v0

    :goto_e
    :try_start_f
    throw v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :catchall_5
    move-exception v0

    monitor-exit p0

    goto :goto_10

    :goto_f
    throw v0

    :goto_10
    goto :goto_f
.end method

.method public final close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkfw;->f:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkfw;->f:Z

    iget-object v0, p0, Lkfw;->d:Ljava/util/Set;

    const/4 v1, 0x0

    iput-object v1, p0, Lkfw;->d:Ljava/util/Set;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkgs;

    invoke-virtual {v1}, Lkgs;->g()V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
