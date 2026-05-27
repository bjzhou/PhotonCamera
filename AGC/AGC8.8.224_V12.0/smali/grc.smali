.class public final Lgrc;
.super Lgqx;


# instance fields
.field private final i:Lgra;

.field private final j:Lkbc;


# direct methods
.method public constructor <init>(Lgqr;Ljava/util/concurrent/Executor;Lgqp;Lgxl;Lkaf;Lmqp;Lkbc;)V
    .locals 10

    move-object v9, p0

    const/4 v4, 0x4

    const/4 v7, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lgqx;-><init>(Lgqr;Ljava/util/concurrent/Executor;Lgqp;ILgxl;Lkaf;ILkbc;)V

    move-object/from16 v0, p7

    iput-object v0, v9, Lgrc;->j:Lkbc;

    invoke-virtual/range {p6 .. p6}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p6 .. p6}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgra;

    iput-object v0, v9, Lgrc;->i:Lgra;

    iget-object v1, v0, Lgra;->f:Lgqr;

    iget-object v2, v9, Lgrc;->f:Lgqr;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lmoz;->e(Z)V

    iget-object v0, v0, Lgra;->c:Lgqp;

    iget-object v1, v9, Lgrc;->c:Lgqp;

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Lmoz;->e(Z)V

    return-void

    :cond_2
    const/4 v0, 0x0

    iput-object v0, v9, Lgrc;->i:Lgra;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lgrc;->j:Lkbc;

    const-string v1, "PreviewChained"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lgrc;->f:Lgqr;

    iget-object v1, v0, Lgqr;->a:Lkpb;

    iget-object v2, v0, Lgqr;->e:Landroid/graphics/Rect;

    invoke-static {v1, v2}, Lgrc;->i(Lkpb;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0}, Lgrc;->f(Lgqr;)V

    new-instance v2, Lkaf;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lkaf;-><init>(II)V

    iget-object v3, p0, Lgrc;->a:Lkaf;

    invoke-static {v2, v3}, Lgsd;->a(Lkaf;Lkaf;)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lgqx;->b(Lgqr;I)Lgqy;

    move-result-object v3

    :try_start_0
    iget-wide v4, p0, Lgrc;->e:J

    const/4 v6, 0x2

    invoke-virtual {p0, v4, v5, v3, v6}, Lgra;->j(JLgqy;I)V

    iget-object v4, v0, Lgqr;->a:Lkpb;

    invoke-interface {v4}, Lkpb;->c()I

    iget-object v4, v0, Lgqr;->a:Lkpb;

    invoke-interface {v4}, Lkpb;->b()I

    iget-object v4, v0, Lgqr;->a:Lkpb;

    invoke-virtual {p0, v4, v1, v2}, Lgqx;->c(Lkpb;Landroid/graphics/Rect;I)[I

    move-result-object v1

    invoke-virtual {p0, v3, v1, v6}, Lgqx;->e(Lgqy;[II)V

    iget-object v1, p0, Lgrc;->i:Lgra;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lgrc;->c:Lgqp;

    new-instance v3, Ljava/util/HashSet;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgra;

    iget-object v5, v5, Lgra;->f:Lgqr;

    iget-object v7, p0, Lgra;->f:Lgqr;

    if-eq v5, v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x1

    :goto_1
    invoke-static {v6}, Lmoz;->p(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lgra;->f:Lgqr;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgra;

    iget-object v7, v7, Lgra;->f:Lgqr;

    if-ne v7, v1, :cond_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ERROR:  Spawned tasks cannot reference new images!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v1, p0, Lgra;->f:Lgqr;

    if-eqz v6, :cond_5

    move-object v5, v2

    check-cast v5, Lgqh;

    iget-object v5, v5, Lgqh;->e:Ljava/util/Map;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v7, v2

    check-cast v7, Lgqh;

    iget-object v7, v7, Lgqh;->e:Ljava/util/Map;

    iget-object v8, v1, Lgqr;->a:Lkpb;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgqf;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v8, v2

    check-cast v8, Lgqh;

    iget-object v8, v8, Lgqh;->e:Ljava/util/Map;

    iget-object v9, v1, Lgqr;->a:Lkpb;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v7, v6}, Lgpn;->a(I)I

    move-object v8, v2

    check-cast v8, Lgqh;

    iget-object v8, v8, Lgqh;->e:Ljava/util/Map;

    iget-object v1, v1, Lgqr;->a:Lkpb;

    invoke-interface {v8, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, Lgqh;

    iget v1, v1, Lgqh;->h:I

    add-int/2addr v1, v6

    move-object v6, v2

    check-cast v6, Lgqh;

    iput v1, v6, Lgqh;->h:I

    monitor-exit v5

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Image Reference has already been released or has never been held."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :cond_5
    :goto_3
    move-object v1, v2

    check-cast v1, Lgqh;

    iget-object v1, v1, Lgqh;->f:Ljava/util/Map;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    move-object v5, v2

    check-cast v5, Lgqh;

    iget-object v5, v5, Lgqh;->f:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgxb;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "Task NOT previously registered. ImageShadowTask booking-keeping is incorrect."

    invoke-static {v4, v6}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object v4, v5, Lgxb;->b:Ljava/lang/Object;

    check-cast v4, Lgqo;

    iget-object v4, v4, Lgqo;->b:Lgpn;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Lgpn;->a(I)I

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    check-cast v2, Lgqh;

    invoke-virtual {v2, v3, v5}, Lgqh;->e(Ljava/util/Set;Lgxb;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_6
    :goto_4
    iget-object v1, p0, Lgrc;->c:Lgqp;

    iget-object v0, v0, Lgqr;->a:Lkpb;

    iget-object v2, p0, Lgrc;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0, v2}, Lgqp;->b(Lkpb;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lgrc;->j:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :catchall_2
    move-exception v1

    iget-object v2, p0, Lgrc;->c:Lgqp;

    iget-object v0, v0, Lgqr;->a:Lkpb;

    iget-object v3, p0, Lgrc;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v0, v3}, Lgqp;->b(Lkpb;Ljava/util/concurrent/Executor;)V

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method
