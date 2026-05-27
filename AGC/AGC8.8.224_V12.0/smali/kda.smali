.class public final Lkda;
.super Ljava/lang/Object;

# interfaces
.implements Lkbx;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lkcx;

.field public final c:Ljava/util/List;

.field private final d:Lkcs;

.field private final e:Lkdd;

.field private final f:Ljava/util/concurrent/Executor;

.field private final g:Lkbc;

.field private final h:Lkaq;

.field private final i:Lkct;

.field private final j:Lkbm;

.field private final k:Lkpo;

.field private final l:Landroidx/wear/ambient/AmbientDelegate;


# direct methods
.method public constructor <init>(Lkpo;Landroidx/wear/ambient/AmbientDelegate;Lkcs;Ljava/util/concurrent/Executor;Lkdd;Lkbm;Lkbc;Lkaq;Lkct;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p10, Ljava/lang/Object;

    invoke-direct {p10}, Ljava/lang/Object;-><init>()V

    iput-object p10, p0, Lkda;->a:Ljava/lang/Object;

    new-instance p10, Ljava/util/ArrayList;

    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    iput-object p10, p0, Lkda;->c:Ljava/util/List;

    iput-object p1, p0, Lkda;->k:Lkpo;

    iput-object p2, p0, Lkda;->l:Landroidx/wear/ambient/AmbientDelegate;

    iput-object p3, p0, Lkda;->d:Lkcs;

    iput-object p5, p0, Lkda;->e:Lkdd;

    iput-object p4, p0, Lkda;->f:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lkda;->j:Lkbm;

    iput-object p7, p0, Lkda;->g:Lkbc;

    const-string p1, "VirtualCameraMgr"

    invoke-interface {p8, p1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lkda;->h:Lkaq;

    iput-object p9, p0, Lkda;->i:Lkct;

    return-void
.end method

.method private final f(Lkll;Lkbw;)V
    .locals 17

    move-object/from16 v12, p0

    move-object/from16 v0, p1

    move-object/from16 v13, p2

    iget-object v14, v12, Lkda;->a:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    iget-object v1, v12, Lkda;->b:Lkcx;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lkcx;->a:Lkll;

    invoke-virtual {v2, v0}, Lkll;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v13, :cond_0

    iget-object v0, v12, Lkda;->h:Lkaq;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attaching listener to existing CameraSession: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lkaq;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Lkcx;->e(Lkbw;)V

    goto :goto_0

    :cond_0
    iget-object v0, v12, Lkda;->h:Lkaq;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Has existing CameraSession. Noop Open: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    :goto_0
    monitor-exit v14

    return-void

    :cond_1
    iget-object v2, v12, Lkda;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lkcx;->f()V

    const/4 v1, 0x0

    iput-object v1, v12, Lkda;->b:Lkcx;

    :cond_2
    iget-object v1, v12, Lkda;->d:Lkcs;

    iget-object v2, v1, Lkcs;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v1, v1, Lkcs;->d:Ljuf;

    invoke-virtual {v1}, Ljuf;->b()Z

    move-result v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_4

    if-eqz v13, :cond_3

    :try_start_2
    iget-object v0, v12, Lkda;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lkcu;

    const/4 v2, 0x0

    invoke-direct {v1, v13, v2}, Lkcu;-><init>(Lkbw;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    iget-object v0, v12, Lkda;->h:Lkaq;

    const-string v1, "WakeLock is yet to be acquired. Cannot open."

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    monitor-exit v14

    return-void

    :cond_4
    iget-object v1, v12, Lkda;->k:Lkpo;

    iget-object v9, v0, Lkll;->a:Ljava/lang/String;

    new-instance v10, Lkcc;

    iget-object v2, v1, Lkpo;->b:Ljava/lang/Object;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/os/Handler;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lkpo;->a:Ljava/lang/Object;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/concurrent/Executor;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lkpo;->e:Ljava/lang/Object;

    check-cast v2, Lemc;

    invoke-virtual {v2}, Lemc;->a()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    iget-object v2, v1, Lkpo;->d:Ljava/lang/Object;

    check-cast v2, Lemb;

    invoke-virtual {v2}, Lemb;->a()Landroid/hardware/camera2/CameraManager;

    move-result-object v6

    iget-object v2, v1, Lkpo;->c:Ljava/lang/Object;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lkcf;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lkpo;->f:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lkbc;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lkcc;-><init>(Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager;Landroid/hardware/camera2/CameraManager;Lkcf;Lkbc;Ljava/lang/String;)V

    new-instance v15, Lkcx;

    iget-object v5, v12, Lkda;->e:Lkdd;

    iget-object v6, v12, Lkda;->f:Ljava/util/concurrent/Executor;

    iget-object v7, v12, Lkda;->j:Lkbm;

    iget-object v8, v12, Lkda;->h:Lkaq;

    iget-object v9, v12, Lkda;->g:Lkbc;

    iget-object v11, v12, Lkda;->i:Lkct;

    iget-object v1, v12, Lkda;->d:Lkcs;

    invoke-virtual {v1}, Lkcs;->a()Ljuf;

    move-result-object v16

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move-object v4, v10

    move-object v10, v11

    move-object/from16 v11, v16

    invoke-direct/range {v1 .. v11}, Lkcx;-><init>(Lkll;Lkda;Lkby;Lkdd;Ljava/util/concurrent/Executor;Lkbm;Lkaq;Lkbc;Lkct;Ljuf;)V

    monitor-enter v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-boolean v1, v15, Lkcx;->g:Z

    if-nez v1, :cond_8

    iget-boolean v1, v15, Lkcx;->e:Z

    if-nez v1, :cond_8

    iget-boolean v1, v15, Lkcx;->f:Z

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, v15, Lkcx;->g:Z

    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v2, v15, Lkcx;->d:Lkaq;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, " Opening"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v2, v15, Lkcx;->b:Lkco;

    invoke-virtual {v2, v15}, Lkco;->e(Lkbw;)V

    iget-object v2, v15, Lkcx;->c:Lkby;

    move-object v3, v2

    check-cast v3, Lkcc;

    iget-object v3, v3, Lkcc;->g:Ljava/lang/Object;

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    move-object v4, v2

    check-cast v4, Lkcc;

    iget-boolean v4, v4, Lkcc;->l:Z

    if-nez v4, :cond_7

    move-object v4, v2

    check-cast v4, Lkcc;

    iget-boolean v4, v4, Lkcc;->m:Z

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    move-object v4, v2

    check-cast v4, Lkcc;

    iput-boolean v1, v4, Lkcc;->l:Z

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    move-object v1, v2

    check-cast v1, Lkcc;

    iget-object v1, v1, Lkcc;->d:Ljava/util/concurrent/Executor;

    new-instance v3, Lkbz;

    check-cast v2, Lkcc;

    invoke-direct {v3, v2}, Lkbz;-><init>(Lkcc;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :cond_7
    :goto_1
    :try_start_7
    monitor-exit v3

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_8
    :goto_2
    :try_start_9
    monitor-exit v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_3
    if-eqz v13, :cond_9

    :try_start_a
    invoke-virtual {v15, v13}, Lkcx;->e(Lkbw;)V

    :cond_9
    iput-object v15, v12, Lkda;->b:Lkcx;

    monitor-exit v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    iget-object v1, v12, Lkda;->l:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v1, v0}, Landroidx/wear/ambient/AmbientDelegate;->R(Lkll;)V

    return-void

    :catchall_1
    move-exception v0

    :try_start_b
    monitor-exit v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_2
    move-exception v0

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v14
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lkda;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lkda;->b:Lkcx;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lkda;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lkda;->b:Lkcx;

    :cond_0
    iget-object v1, p0, Lkda;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkcx;

    invoke-virtual {v2}, Lkcx;->f()V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public final b()V
    .locals 10

    iget-object v0, p0, Lkda;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lkda;->b:Lkcx;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lkda;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lkda;->b:Lkcx;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_1
    iget-object v1, p0, Lkda;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lkda;->c:Ljava/util/List;

    invoke-static {v0}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkcx;

    :try_start_2
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3}, Lkcx;->f()V

    iget-object v5, v3, Lkcx;->c:Lkby;

    move-object v6, v5

    check-cast v6, Lkcc;

    iget-object v6, v6, Lkcc;->g:Ljava/lang/Object;

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    move-object v7, v5

    check-cast v7, Lkcc;

    iget-boolean v7, v7, Lkcc;->l:Z

    const-wide/16 v8, 0x5dc

    if-nez v7, :cond_2

    monitor-exit v6

    goto :goto_1

    :cond_2
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    check-cast v5, Lkcc;

    iget-object v5, v5, Lkcc;->j:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5, v8, v9, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    :goto_1
    iget-object v5, v3, Lkcx;->b:Lkco;

    iget-object v5, v5, Lkco;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5, v8, v9, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v4

    iget-object v5, p0, Lkda;->h:Lkaq;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Warning: Failed to synchronously close "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3, v4}, Lkaq;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public final c(Lkll;Lkbw;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkda;->f(Lkll;Lkbw;)V

    return-void
.end method

.method public final d(Lkll;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkda;->f(Lkll;Lkbw;)V

    return-void
.end method

.method public final e(Lkcx;)V
    .locals 2

    iget-object v0, p0, Lkda;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lkda;->b:Lkcx;

    if-ne v1, p1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lkda;->b:Lkcx;

    :cond_0
    iget-object v1, p0, Lkda;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lkda;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
