.class public final Lkhm;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lkeq;

.field private final b:Lkgw;

.field private final c:Lkhw;

.field private final d:Ljava/util/Set;

.field private final e:Lmwn;

.field private final f:Ljava/util/Set;

.field private final g:Lkfg;

.field private final h:Lkte;

.field private final i:Landroidx/wear/ambient/AmbientDelegate;


# direct methods
.method public constructor <init>(Lkeq;Lkgw;Lkte;Landroidx/wear/ambient/AmbientDelegate;Lkfv;Lkfg;Lkhw;Landroidx/wear/ambient/AmbientDelegate;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkhm;->a:Lkeq;

    iput-object p2, p0, Lkhm;->b:Lkgw;

    iput-object p3, p0, Lkhm;->h:Lkte;

    iput-object p7, p0, Lkhm;->c:Lkhw;

    iput-object p8, p0, Lkhm;->i:Landroidx/wear/ambient/AmbientDelegate;

    new-instance p1, Lmwl;

    invoke-direct {p1}, Lmwl;-><init>()V

    monitor-enter p5

    :try_start_0
    iget-object p2, p5, Lkfv;->a:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkfu;

    iget-object p3, p3, Lkfu;->h:Lkgq;

    invoke-virtual {p1, p3}, Lmwl;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lmwl;->f()Lmwn;

    move-result-object p1

    iput-object p1, p0, Lkhm;->d:Ljava/util/Set;

    invoke-virtual {p4}, Landroidx/wear/ambient/AmbientDelegate;->L()Lmwn;

    move-result-object p1

    iput-object p1, p0, Lkhm;->e:Lmwn;

    iput-object p6, p0, Lkhm;->g:Lkfg;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lkhm;->f:Ljava/util/Set;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private final i(Lkfd;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lkib;
    .locals 15

    move-object v1, p0

    move-object/from16 v0, p1

    invoke-interface/range {p5 .. p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkgs;

    iget-object v3, v3, Lkgs;->c:Lkgq;

    move-object/from16 v9, p4

    invoke-interface {v9, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lmoz;->e(Z)V

    goto :goto_0

    :cond_0
    move-object/from16 v9, p4

    new-instance v2, Lmwl;

    invoke-direct {v2}, Lmwl;-><init>()V

    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkgq;

    iget-object v4, v4, Lkgq;->c:Lmwn;

    invoke-virtual {v2, v4}, Lmwl;->h(Ljava/lang/Iterable;)V

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, v1, Lkhm;->a:Lkeq;

    iget-object v4, v4, Lkeq;->h:Lmwn;

    invoke-virtual {v4}, Lmwn;->cz()Lnac;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkfa;

    iget-object v6, v5, Lkfa;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkgq;

    iget-object v5, v5, Lkgq;->d:Lmwn;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkfa;

    iget-object v7, v6, Lkfa;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v6, Lkfa;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkfa;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6, v7}, Lkfa;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v2, v6, Lkfa;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v6, Lkfa;->b:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v7, Lkfa;->b:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Conflicting parameter value for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " do not match."

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v7, v6, Lkfa;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkfa;

    iget-object v6, v5, Lkfa;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, v5, Lkfa;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    iget-object v4, v0, Lkfd;->b:Lmvv;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v5, :cond_a

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkfa;

    iget-object v8, v7, Lkfa;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, v7, Lkfa;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_a
    iget-object v4, v1, Lkhm;->i:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v4}, Landroidx/wear/ambient/AmbientDelegate;->E()Lkad;

    move-result-object v5

    :try_start_0
    iget-object v4, v4, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    check-cast v4, Lkht;

    invoke-static {v4}, Landroidx/wear/ambient/AmbientDelegate;->J(Lkht;)Ljava/util/Set;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v5}, Lkad;->close()V

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkfa;

    iget-object v6, v5, Lkfa;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, v5, Lkfa;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_c
    new-instance v13, Lmwl;

    invoke-direct {v13}, Lmwl;-><init>()V

    move-object/from16 v4, p3

    invoke-virtual {v13, v4}, Lmwl;->h(Ljava/lang/Iterable;)V

    iget-object v4, v1, Lkhm;->h:Lkte;

    new-instance v14, Lkfw;

    iget-object v5, v4, Lkte;->d:Ljava/lang/Object;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldja;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v4, Lkte;->a:Ljava/lang/Object;

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkfv;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v4, Lkte;->c:Ljava/lang/Object;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkgw;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Lkte;->b:Ljava/lang/Object;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lmwn;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, v14

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v12}, Lkfw;-><init>(Ldja;Lkfv;Lkgw;Lmwn;Ljava/util/Set;Ljava/util/Set;[B[B)V

    invoke-virtual {v13, v14}, Lmwl;->g(Ljava/lang/Object;)V

    iget-object v4, v1, Lkhm;->b:Lkgw;

    invoke-virtual {v13, v4}, Lmwl;->g(Ljava/lang/Object;)V

    new-instance v4, Lkib;

    iget v0, v0, Lkfd;->a:I

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object v3

    invoke-virtual {v13}, Lmwl;->f()Lmwn;

    move-result-object v5

    invoke-virtual {v2}, Lmwl;->f()Lmwn;

    move-result-object v2

    invoke-direct {v4, v0, v3, v5, v2}, Lkib;-><init>(ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-object v4

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_1
    invoke-interface {v5}, Lkad;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v3}, Lkof;->i(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_7
    goto :goto_9

    :goto_8
    throw v2

    :goto_9
    goto :goto_8
.end method

.method private final j(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lkib;
    .locals 7

    invoke-static {p3}, Lkhm;->n(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkhm;->a:Lkeq;

    iget-object v0, v0, Lkeq;->f:Lkfd;

    move-object v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkhm;->a:Lkeq;

    iget-object v0, v0, Lkeq;->e:Lkfd;

    move-object v2, v0

    :goto_0
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lkhm;->i(Lkfd;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lkib;

    move-result-object p1

    return-object p1
.end method

.method private final declared-synchronized k()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkhm;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkgs;

    invoke-virtual {v1}, Lkgs;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v1}, Lkgs;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private final declared-synchronized l()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lkhm;->k()V

    iget-object v0, p0, Lkhm;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

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
    iget-object v0, p0, Lkhm;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private final declared-synchronized m(Ljava/util/Set;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lkhm;->k()V

    iget-object v0, p0, Lkhm;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static final n(Ljava/util/Set;)Z
    .locals 2

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkgq;

    iget-object v0, v0, Lkgq;->c:Lmwn;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfj;

    invoke-interface {v1}, Lkfj;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final declared-synchronized a()Lkfy;
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lmza;->a:Lmza;

    new-instance v1, Lkfy;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2, v3, v4}, Lkfy;-><init>(Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    iget-object v0, p0, Lkhm;->d:Ljava/util/Set;

    iget-object v2, v1, Lkfy;->a:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lkhm;->e:Lmwn;

    invoke-virtual {v1, v0}, Lkfy;->e(Ljava/util/Set;)V

    iget-object v0, p0, Lkhm;->g:Lkfg;

    invoke-virtual {v1, v0}, Lkfy;->f(Lkfg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lkib;
    .locals 7

    invoke-static {p3}, Lkhm;->n(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkhm;->a:Lkeq;

    iget-object v0, v0, Lkeq;->d:Lkfd;

    move-object v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkhm;->a:Lkeq;

    iget-object v0, v0, Lkeq;->c:Lkfd;

    move-object v2, v0

    :goto_0
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lkhm;->i(Lkfd;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lkib;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkhm;->c:Lkhw;

    invoke-interface {v0}, Lkhw;->a()V

    invoke-direct {p0}, Lkhm;->l()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lkok; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    :try_start_1
    new-instance v1, Lkdf;

    invoke-direct {v1, v0}, Lkdf;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkhm;->c:Lkhw;

    invoke-interface {v0}, Lkhw;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e(Ljava/util/List;Ljava/util/List;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lmoz;->e(Z)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lmoz;->e(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfz;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    iget-object v4, v1, Lkfz;->a:Ljava/util/Set;

    iget-object v5, v1, Lkfz;->b:Ljava/util/Set;

    iget-object v1, v1, Lkfz;->c:Ljava/util/Set;

    invoke-virtual {p0, v4, v5, v1, v2}, Lkhm;->b(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lkib;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lkhm;->m(Ljava/util/Set;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lkhm;->c:Lkhw;

    invoke-interface {p1, v0}, Lkhw;->e(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final declared-synchronized f(Lkfz;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lkfz;->a:Ljava/util/Set;

    iget-object v1, p1, Lkfz;->b:Ljava/util/Set;

    iget-object p1, p1, Lkfz;->c:Ljava/util/Set;

    sget-object v2, Lmza;->a:Lmza;

    invoke-direct {p0, v0, v1, p1, v2}, Lkhm;->j(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lkib;

    move-result-object p1

    iget-object v0, p0, Lkhm;->c:Lkhw;

    invoke-interface {v0, p1}, Lkhw;->b(Lkib;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized g(Lkfz;Ljava/util/Set;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lkfz;->a:Ljava/util/Set;

    iget-object v1, p1, Lkfz;->b:Ljava/util/Set;

    iget-object p1, p1, Lkfz;->c:Ljava/util/Set;

    invoke-virtual {p0, v0, v1, p1, p2}, Lkhm;->b(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lkib;

    move-result-object p1

    invoke-direct {p0, p2}, Lkhm;->m(Ljava/util/Set;)V

    iget-object p2, p0, Lkhm;->c:Lkhw;

    invoke-interface {p2, p1}, Lkhw;->d(Lkib;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized h(Lkfz;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lkfz;->a:Ljava/util/Set;

    iget-object v1, p1, Lkfz;->b:Ljava/util/Set;

    iget-object p1, p1, Lkfz;->c:Ljava/util/Set;

    sget-object v2, Lmza;->a:Lmza;

    invoke-direct {p0, v0, v1, p1, v2}, Lkhm;->j(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lkib;

    move-result-object p1

    iget-object v0, p0, Lkhm;->c:Lkhw;

    invoke-interface {v0, p1}, Lkhw;->d(Lkib;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
