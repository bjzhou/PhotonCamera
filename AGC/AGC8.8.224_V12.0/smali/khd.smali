.class public final Lkhd;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field private final a:Lkhm;

.field private final b:Ljuf;

.field private final c:Lkmy;

.field private final d:Lkhl;

.field private final e:Ljava/lang/Runnable;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Llij;Lkte;Lkmy;Ljava/lang/Runnable;Lkhw;Landroidx/wear/ambient/AmbientDelegate;[B[B[B[B)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v0, Lkhd;->f:Z

    iput-boolean v3, v0, Lkhd;->g:Z

    move-object/from16 v3, p3

    iput-object v3, v0, Lkhd;->c:Lkmy;

    move-object/from16 v3, p4

    iput-object v3, v0, Lkhd;->e:Ljava/lang/Runnable;

    new-instance v3, Ljuf;

    invoke-direct {v3}, Ljuf;-><init>()V

    iput-object v3, v0, Lkhd;->b:Ljuf;

    new-instance v15, Lkhm;

    iget-object v4, v1, Llij;->b:Ljava/lang/Object;

    check-cast v4, Lkge;

    invoke-virtual {v4}, Lkge;->a()Lkeq;

    move-result-object v5

    iget-object v4, v1, Llij;->f:Ljava/lang/Object;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lkgw;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Llij;->a:Ljava/lang/Object;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    iget-object v7, v1, Llij;->g:Ljava/lang/Object;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v1, Llij;->c:Ljava/lang/Object;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lkfv;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v1, Llij;->d:Ljava/lang/Object;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lkfg;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Llij;->e:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkhx;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v7, v4

    check-cast v7, Lkte;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/16 v16, 0x0

    move-object v4, v15

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v17, v15

    move-object v15, v1

    invoke-direct/range {v4 .. v16}, Lkhm;-><init>(Lkeq;Lkgw;Lkte;Landroidx/wear/ambient/AmbientDelegate;Lkfv;Lkfg;Lkhw;Landroidx/wear/ambient/AmbientDelegate;[B[B[B[B)V

    move-object/from16 v1, v17

    iput-object v1, v0, Lkhd;->a:Lkhm;

    new-instance v15, Lkhl;

    iget-object v4, v2, Lkte;->d:Ljava/lang/Object;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lkte;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v2, Lkte;->b:Ljava/lang/Object;

    check-cast v4, Lfmj;

    invoke-virtual {v4}, Lfmj;->a()Lkli;

    move-result-object v6

    iget-object v4, v2, Lkte;->c:Ljava/lang/Object;

    check-cast v4, Lkao;

    invoke-virtual {v4}, Lkao;->a()Lkaq;

    move-result-object v7

    iget-object v2, v2, Lkte;->a:Ljava/lang/Object;

    check-cast v2, Lkge;

    invoke-virtual {v2}, Lkge;->a()Lkeq;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, v15

    move-object v9, v1

    move-object/from16 v10, p6

    invoke-direct/range {v4 .. v14}, Lkhl;-><init>(Lkte;Lkli;Lkaq;Lkeq;Lkhm;Landroidx/wear/ambient/AmbientDelegate;[B[B[B[B)V

    iput-object v15, v0, Lkhd;->d:Lkhl;

    invoke-virtual {v3, v15}, Ljuf;->d(Lkad;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lkdz;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkhd;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lkhd;->d:Lkhl;

    invoke-virtual {v0}, Lkhl;->a()Lkhs;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lkdf;

    const-string v1, "getConfig3ABuilder() cannot be called after the session is closed."

    invoke-direct {v0, v1}, Lkdf;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Lkfy;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkhd;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lkhd;->a:Lkhm;

    invoke-virtual {v0}, Lkhm;->a()Lkfy;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lkdf;

    const-string v1, "getRequestBuilder() cannot be called after the session is closed."

    invoke-direct {v0, v1}, Lkdf;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Lkfh;Z)Lnou;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkhd;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lkhd;->d:Lkhl;

    invoke-virtual {v0, p1, p2}, Lkhl;->b(Lkfh;Z)Lnou;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    new-instance p1, Lkdf;

    const-string p2, "trigger3A() cannot be called after the session is closed."

    invoke-direct {p1, p2}, Lkdf;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final close()V
    .locals 4

    iget-object v0, p0, Lkhd;->d:Lkhl;

    iget-object v0, v0, Lkhl;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkhd;->f:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-boolean v0, p0, Lkhd;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lkhd;->a:Lkhm;

    invoke-virtual {p0}, Lkhd;->b()Lkfy;

    move-result-object v1

    invoke-virtual {v1}, Lkfy;->a()Lkfz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkhm;->f(Lkfz;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkhd;->g:Z
    :try_end_1
    .catch Lkdf; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "CAM_RequestProcessorSess"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resume last repeating request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkhd;->f:Z

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lkhd;->b:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    iget-object v0, p0, Lkhd;->c:Lkmy;

    invoke-virtual {v0}, Lkmy;->close()V

    iget-object v0, p0, Lkhd;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final declared-synchronized d(ZZZZ)Lnou;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkhd;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lkhd;->d:Lkhl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lkhl;->c(ZZZZ)Lnou;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    new-instance p1, Lkdf;

    const-string p2, "unlock3A() cannot be called after the session is closed."

    invoke-direct {p1, p2}, Lkdf;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(Lkea;Z)Lnou;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkhd;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lkhd;->d:Lkhl;

    invoke-virtual {v0, p1, p2}, Lkhl;->d(Lkea;Z)Lnou;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    new-instance p1, Lkdf;

    const-string p2, "update3A() cannot be called after the session is closed."

    invoke-direct {p1, p2}, Lkdf;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkhd;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lkhd;->a:Lkhm;

    invoke-virtual {v0}, Lkhm;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lkdf;

    const-string v1, "abortCaptures() cannot be called after the session is closed."

    invoke-direct {v0, v1}, Lkdf;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkhd;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkhd;->g:Z

    iget-object v0, p0, Lkhd;->a:Lkhm;

    invoke-virtual {v0}, Lkhm;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lkdf;

    const-string v1, "stopRepeating() cannot be called after the session is closed."

    invoke-direct {v0, v1}, Lkdf;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h(Ljava/util/List;Ljava/util/List;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkhd;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lkhd;->a:Lkhm;

    invoke-virtual {v0, p1, p2}, Lkhm;->e(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lkdf;

    const-string p2, "submit() cannot be called after the session is closed."

    invoke-direct {p1, p2}, Lkdf;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized i(Lkfz;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkhd;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lkhd;->a:Lkhm;

    invoke-virtual {v0, p1}, Lkhm;->f(Lkfz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lkdf;

    const-string v0, "setRepeating() cannot be called after the session is closed."

    invoke-direct {p1, v0}, Lkdf;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized j(Lkfz;Ljava/util/Set;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkhd;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lkhd;->a:Lkhm;

    invoke-virtual {v0, p1, p2}, Lkhm;->g(Lkfz;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lkdf;

    const-string p2, "submit() cannot be called after the session is closed."

    invoke-direct {p1, p2}, Lkdf;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized k(Lkea;)Lnou;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkhd;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lkhd;->d:Lkhl;

    invoke-virtual {v0, p1}, Lkhl;->e(Lkea;)Lnou;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    new-instance p1, Lkdf;

    const-string v0, "lock3AImmediately() with config3a cannot be called after the session is closed."

    invoke-direct {p1, v0}, Lkdf;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized l(Lkea;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkhd;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lkhd;->d:Lkhl;

    invoke-virtual {v0, p1}, Lkhl;->f(Lkea;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lkdf;

    const-string v0, "updateConfig3AWithLocksRetained() cannot be called after the session is closed."

    invoke-direct {p1, v0}, Lkdf;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized m(Lkea;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkhd;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lkhd;->d:Lkhl;

    invoke-virtual {v0, p1}, Lkhl;->g(Lkea;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lkdf;

    const-string v0, "submit3A() cannot be called after the session is closed."

    invoke-direct {p1, v0}, Lkdf;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized n(Ljava/util/Set;Lkfg;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkhd;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lkhd;->a:Lkhm;

    invoke-virtual {v0}, Lkhm;->a()Lkfy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkfy;->e(Ljava/util/Set;)V

    invoke-virtual {v0, p2}, Lkfy;->f(Lkfg;)V

    iget-object p1, p0, Lkhd;->a:Lkhm;

    invoke-virtual {v0}, Lkfy;->a()Lkfz;

    move-result-object p2

    invoke-virtual {p1, p2}, Lkhm;->h(Lkfz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lkdf;

    const-string p2, "submit(parameters, listener) cannot be called after the session is closed."

    invoke-direct {p1, p2}, Lkdf;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
