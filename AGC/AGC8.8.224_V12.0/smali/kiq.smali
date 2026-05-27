.class final Lkiq;
.super Ljava/lang/Object;

# interfaces
.implements Lkom;


# instance fields
.field private final a:Lkjc;

.field private final b:Lkjn;

.field private final c:Ljuf;

.field private final d:Landroid/os/Handler;

.field private final e:Lkbc;

.field private final f:Lkaq;

.field private final g:I

.field private h:Lkon;

.field private i:Ljava/util/List;

.field private j:Z

.field private k:Z

.field private l:Z

.field private final m:Ljava/util/Map;

.field private final n:Lloi;


# direct methods
.method public constructor <init>(Lkjc;Lkjn;Landroid/os/Handler;Lkbc;Lkaq;Lloi;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p7, 0x0

    iput-object p7, p0, Lkiq;->h:Lkon;

    iput-object p7, p0, Lkiq;->i:Ljava/util/List;

    const/4 p7, 0x0

    iput-boolean p7, p0, Lkiq;->j:Z

    iput-boolean p7, p0, Lkiq;->k:Z

    iput-boolean p7, p0, Lkiq;->l:Z

    new-instance p7, Ljava/util/LinkedHashMap;

    invoke-direct {p7}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p7, p0, Lkiq;->m:Ljava/util/Map;

    iput-object p1, p0, Lkiq;->a:Lkjc;

    iput-object p2, p0, Lkiq;->b:Lkjn;

    iput-object p3, p0, Lkiq;->d:Landroid/os/Handler;

    iput-object p4, p0, Lkiq;->e:Lkbc;

    iput-object p6, p0, Lkiq;->n:Lloi;

    const-string p1, "CaptureSessionState"

    invoke-interface {p5, p1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lkiq;->f:Lkaq;

    new-instance p1, Ljuf;

    invoke-direct {p1}, Ljuf;-><init>()V

    iput-object p1, p0, Lkiq;->c:Ljuf;

    const-class p1, Lkhv;

    monitor-enter p1

    :try_start_0
    sget p2, Lkhv;->d:I

    add-int/lit8 p3, p2, 0x1

    sput p3, Lkhv;->d:I

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput p2, p0, Lkiq;->g:I

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method private final l(Lkon;)V
    .locals 3

    iget-boolean v0, p0, Lkiq;->j:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lkiq;->c:Ljuf;

    invoke-virtual {v0}, Ljuf;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-direct {p0, p1}, Lkiq;->m(Lkon;)V

    iget-boolean v0, p0, Lkiq;->k:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkiq;->h:Lkon;

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Llkj;->x(Z)V

    iput-object p1, p0, Lkiq;->h:Lkon;

    iget-object p1, p0, Lkiq;->i:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lkiq;->c(Ljava/util/List;)V

    :cond_3
    iput-boolean v2, p0, Lkiq;->l:Z

    invoke-direct {p0}, Lkiq;->n()V

    return-void

    :cond_4
    iget-object v0, p0, Lkiq;->h:Lkon;

    if-nez v0, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    :goto_1
    invoke-static {v1}, Llkj;->x(Z)V

    iput-object p1, p0, Lkiq;->h:Lkon;

    return-void

    :cond_6
    :goto_2
    iget-object v0, p0, Lkiq;->e:Lkbc;

    const-string v1, "cameraCaptureSession#close"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    invoke-interface {p1}, Lkon;->close()V

    iget-object p1, p0, Lkiq;->e:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void
.end method

.method private final m(Lkon;)V
    .locals 8

    iget-object v0, p0, Lkiq;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lkiq;->e:Lkbc;

    const-string v1, "prepare"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lkiq;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :try_start_0
    iget-object v4, p0, Lkiq;->f:Lkaq;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Prepare:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lkaq;->f(Ljava/lang/String;)V

    invoke-interface {p1, v3, v2}, Lkon;->g(Landroid/view/Surface;I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v4, p0, Lkiq;->f:Lkaq;

    const-string v5, "Failed to prepare a surface! Keep prep-ing others."

    invoke-interface {v4, v5, v2}, Lkaq;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lkiq;->m:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lkiq;->f:Lkaq;

    iget-object v0, p0, Lkiq;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preparing surfaces. Count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lkaq;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lkiq;->e:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void
.end method

.method private final n()V
    .locals 13

    iget-boolean v0, p0, Lkiq;->j:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lkiq;->l:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lkiq;->k:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkiq;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lkiq;->e:Lkbc;

    const-string v1, "CaptureSessionState#setRequestProcessor"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lkiq;->a:Lkjc;

    new-instance v12, Lkjl;

    iget-object v1, p0, Lkiq;->h:Lkon;

    invoke-static {v1}, Llkj;->C(Ljava/lang/Object;)V

    instance-of v2, v1, Lkkn;

    if-eqz v2, :cond_1

    new-instance v2, Lkjj;

    check-cast v1, Lkkn;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lkjj;-><init>(Lkkn;I)V

    goto :goto_0

    :cond_1
    new-instance v2, Lkjj;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lkjj;-><init>(Lkon;I)V

    :goto_0
    iget-object v3, p0, Lkiq;->b:Lkjn;

    iget-object v4, p0, Lkiq;->d:Landroid/os/Handler;

    iget-object v5, p0, Lkiq;->e:Lkbc;

    iget-object v6, p0, Lkiq;->f:Lkaq;

    iget-object v7, p0, Lkiq;->n:Lloi;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lkjl;-><init>(Lkjd;Lkjn;Landroid/os/Handler;Lkbc;Lkaq;Lloi;[B[B[B[B)V

    monitor-enter v0

    :try_start_0
    iput-object v12, v0, Lkjc;->b:Lkhw;

    iget-boolean v1, v0, Lkjc;->f:Z

    if-eqz v1, :cond_2

    monitor-exit v0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    iput-object v1, v0, Lkjc;->c:Lkhw;

    invoke-virtual {v0}, Lkjc;->f()Lkia;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lkia;->b()V

    :cond_3
    iget-object v0, v0, Lkjc;->a:Lkhx;

    invoke-virtual {v0}, Lkhx;->b()V

    :goto_1
    iget-object v0, p0, Lkiq;->e:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method final a()Ljuf;
    .locals 1

    iget-object v0, p0, Lkiq;->c:Ljuf;

    invoke-virtual {v0}, Ljuf;->c()Ljuf;

    move-result-object v0

    return-object v0
.end method

.method final b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkiq;->h:Lkon;

    const/4 v1, 0x0

    iput-object v1, p0, Lkiq;->h:Lkon;

    iput-object v1, p0, Lkiq;->i:Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lkiq;->j:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkiq;->a:Lkjc;

    invoke-virtual {v0}, Lkjc;->g()V

    :cond_0
    iget-object v0, p0, Lkiq;->c:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final declared-synchronized c(Ljava/util/List;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkiq;->j:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lkiq;->c:Ljuf;

    invoke-virtual {v0}, Ljuf;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lkiq;->h:Lkon;

    if-nez v0, :cond_1

    iput-object p1, p0, Lkiq;->i:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lkiq;->e:Lkbc;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#finalizeOutputConfigurations"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    :try_start_2
    invoke-interface {v0, p1}, Lkon;->f(Ljava/util/List;)V

    iget-object v0, p0, Lkiq;->f:Lkaq;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finalized outputs for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lkiq;->b:Lkjn;

    invoke-virtual {v0, p0, p1}, Lkjn;->a(Lkiq;Ljava/util/Collection;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iput-object v1, p0, Lkiq;->i:Ljava/util/List;

    iget-object p1, p0, Lkiq;->e:Lkbc;

    :goto_1
    invoke-interface {p1}, Lkbc;->f()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    :goto_2
    :try_start_4
    iget-object v2, p0, Lkiq;->f:Lkaq;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING: Failed to finalize outputs for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lkaq;->i(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iput-object v1, p0, Lkiq;->i:Ljava/util/List;

    iget-object p1, p0, Lkiq;->e:Lkbc;

    goto :goto_1

    :goto_3
    iput-object v1, p0, Lkiq;->i:Ljava/util/List;

    iget-object v0, p0, Lkiq;->e:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    throw p1

    :cond_2
    :goto_4
    iget-object p1, p0, Lkiq;->f:Lkaq;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring finalizeOutputConfigurations. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is closed."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lkaq;->f(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public final declared-synchronized d(Lkon;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkiq;->f:Lkaq;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " is Closed."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lkiq;->c:Ljuf;

    invoke-virtual {v0, p1}, Ljuf;->d(Lkad;)V

    invoke-virtual {p0}, Lkiq;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(Lkon;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkiq;->f:Lkaq;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " failed to configure."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lkiq;->c:Ljuf;

    invoke-virtual {v0, p1}, Ljuf;->d(Lkad;)V

    invoke-virtual {p0}, Lkiq;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f(Lkon;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lkiq;->l(Lkon;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized g()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkiq;->k:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Llkj;->x(Z)V

    iput-boolean v1, p0, Lkiq;->k:Z

    iget-object v0, p0, Lkiq;->h:Lkon;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lkiq;->l(Lkon;)V
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

.method final h()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkiq;->h:Lkon;

    const/4 v1, 0x0

    iput-object v1, p0, Lkiq;->h:Lkon;

    iput-object v1, p0, Lkiq;->i:Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lkiq;->j:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lkiq;->a:Lkjc;

    invoke-virtual {v1}, Lkjc;->g()V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lkiq;->e:Lkbc;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#shutdown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    :try_start_1
    iget-object v1, p0, Lkiq;->f:Lkaq;

    invoke-virtual {p0}, Lkiq;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " shutdown"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lkiq;->e:Lkbc;

    const-string v2, "RequestProcessor#disconnect"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lkiq;->e:Lkbc;

    const-string v2, "captureSession#stopRepeating"

    invoke-interface {v1, v2}, Lkbc;->g(Ljava/lang/String;)V

    invoke-interface {v0}, Lkon;->h()V

    iget-object v1, p0, Lkiq;->e:Lkbc;

    const-string v2, "captureSession#abortCaptures"

    invoke-interface {v1, v2}, Lkbc;->g(Ljava/lang/String;)V

    invoke-interface {v0}, Lkon;->e()V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lkok; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lkiq;->e:Lkbc;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    :try_start_2
    iget-object v1, p0, Lkiq;->f:Lkaq;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered an error while shutting down "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lkaq;->j(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lkiq;->e:Lkbc;

    :goto_1
    invoke-interface {v0}, Lkbc;->f()V

    iget-object v0, p0, Lkiq;->e:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    goto :goto_3

    :goto_2
    iget-object v1, p0, Lkiq;->e:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    iget-object v1, p0, Lkiq;->e:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    throw v0

    :cond_0
    :goto_3
    iget-object v0, p0, Lkiq;->c:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final declared-synchronized i()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkiq;->f:Lkaq;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " is Active."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkiq;->f:Lkaq;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " is Ready."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lkiq;->a:Lkjc;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v1, v0, Lkjc;->f:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lkjc;->e:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lkjc;->c:Lkhw;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iput-boolean v2, v0, Lkjc;->e:Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iput-object v1, v0, Lkjc;->b:Lkhw;

    const/4 v1, 0x0

    iput-object v1, v0, Lkjc;->c:Lkhw;

    iput-boolean v2, v0, Lkjc;->e:Z

    invoke-virtual {v0}, Lkjc;->f()Lkia;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k(Landroid/view/Surface;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkiq;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lkiq;->f:Lkaq;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lkiq;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A surface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is prepared. Remaining: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkaq;->f(Ljava/lang/String;)V

    invoke-direct {p0}, Lkiq;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lkiq;->g:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CaptureSession-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
