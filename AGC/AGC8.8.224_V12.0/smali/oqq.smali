.class public abstract Loqq;
.super Loql;

# interfaces
.implements Loqa;


# instance fields
.field private final c:Loom;

.field public final e:Loop;

.field public final f:Loop;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Loql;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lolp;->k(Ljava/lang/Object;)Loop;

    move-result-object v1

    iput-object v1, p0, Loqq;->e:Loop;

    invoke-static {v0}, Lolp;->k(Ljava/lang/Object;)Loop;

    move-result-object v0

    iput-object v0, p0, Loqq;->f:Loop;

    const/4 v0, 0x0

    invoke-static {v0}, Lolp;->h(Z)Loom;

    move-result-object v0

    iput-object v0, p0, Loqq;->c:Loom;

    return-void
.end method

.method private final v(Ljava/lang/Runnable;)Z
    .locals 6

    iget-object v0, p0, Loqq;->e:Loop;

    :cond_0
    :goto_0
    iget-object v1, v0, Loop;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Loqq;->t()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return v3

    :cond_1
    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Loqq;->e:Loop;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, p1}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_2
    instance-of v4, v1, Lowt;

    if-eqz v4, :cond_3

    move-object v4, v1

    check-cast v4, Lowt;

    invoke-virtual {v4, p1}, Lowt;->a(Ljava/lang/Object;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    return v3

    :pswitch_0
    iget-object v2, p0, Loqq;->e:Loop;

    invoke-virtual {v4}, Lowt;->c()Lowt;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    return v2

    :cond_3
    sget-object v4, Loqr;->b:Loxb;

    if-ne v1, v4, :cond_4

    return v3

    :cond_4
    new-instance v3, Lowt;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v2}, Lowt;-><init>(IZ)V

    move-object v4, v1

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lowt;->a(Ljava/lang/Object;)I

    invoke-virtual {v3, p1}, Lowt;->a(Ljava/lang/Object;)I

    iget-object v4, p0, Loqq;->e:Loop;

    invoke-virtual {v4, v1, v3}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Looz;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Loqr;->a(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    new-instance v4, Loqm;

    invoke-direct {v4, p0, v2, v3, p1}, Loqm;-><init>(Loqq;JLooz;)V

    invoke-virtual {p0, v0, v1, v4}, Loqq;->s(JLoqo;)V

    invoke-static {p1, v4}, Lonm;->o(Looz;Loqh;)V

    return-void
.end method

.method public final d(Lola;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p2}, Loqq;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f(JLjava/lang/Runnable;Lola;)Loqh;
    .locals 1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lopz;->a:Loqa;

    invoke-interface {v0, p1, p2, p3, p4}, Loqa;->f(JLjava/lang/Runnable;Lola;)Loqh;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0, p1}, Loqq;->v(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Loql;->p()V

    return-void

    :cond_0
    sget-object v0, Lopy;->c:Lopy;

    invoke-virtual {v0, p1}, Loqq;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public i()V
    .locals 6

    sget-object v0, Loru;->a:Ljava/lang/ThreadLocal;

    sget-object v0, Loru;->a:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Loqq;->c:Loom;

    invoke-virtual {v0}, Loom;->c()V

    sget-boolean v0, Lopw;->a:Z

    iget-object v0, p0, Loqq;->e:Loop;

    :cond_0
    iget-object v2, v0, Loop;->a:Ljava/lang/Object;

    if-nez v2, :cond_1

    iget-object v2, p0, Loqq;->e:Loop;

    sget-object v3, Loqr;->b:Loxb;

    invoke-virtual {v2, v1, v3}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    instance-of v3, v2, Lowt;

    if-eqz v3, :cond_2

    check-cast v2, Lowt;

    invoke-virtual {v2}, Lowt;->d()Z

    goto :goto_0

    :cond_2
    sget-object v3, Loqr;->b:Loxb;

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    new-instance v3, Lowt;

    const/16 v4, 0x8

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lowt;-><init>(IZ)V

    move-object v4, v2

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lowt;->a(Ljava/lang/Object;)I

    iget-object v4, p0, Loqq;->e:Loop;

    invoke-virtual {v4, v2, v3}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    :goto_0
    invoke-virtual {p0}, Loql;->j()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    :goto_1
    iget-object v0, p0, Loqq;->f:Loop;

    iget-object v0, v0, Loop;->a:Ljava/lang/Object;

    check-cast v0, Loqp;

    if-eqz v0, :cond_7

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Loxg;->a()I

    move-result v4

    if-lez v4, :cond_5

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Loxg;->d(I)Loxh;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_5
    move-object v4, v1

    :goto_2
    monitor-exit v0

    check-cast v4, Loqo;

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v2, v3, v4}, Loql;->h(JLoqo;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_7
    :goto_3
    return-void
.end method

.method public final j()J
    .locals 10

    invoke-virtual {p0}, Loql;->o()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Loqq;->f:Loop;

    iget-object v0, v0, Loop;->a:Ljava/lang/Object;

    check-cast v0, Loqp;

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Loxg;->g()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    :cond_1
    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Loxg;->b()Loxh;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_2

    monitor-exit v0

    move-object v6, v3

    goto :goto_1

    :cond_2
    :try_start_1
    check-cast v6, Loqo;

    iget-wide v7, v6, Loqo;->b:J

    sub-long v7, v4, v7

    cmp-long v9, v7, v1

    if-ltz v9, :cond_3

    invoke-direct {p0, v6}, Loqq;->v(Ljava/lang/Runnable;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Loxg;->d(I)Loxh;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    move-object v6, v3

    :goto_0
    monitor-exit v0

    :goto_1
    check-cast v6, Loqo;

    if-nez v6, :cond_1

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_4
    :goto_2
    iget-object v0, p0, Loqq;->e:Loop;

    :cond_5
    :goto_3
    iget-object v4, v0, Loop;->a:Ljava/lang/Object;

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    instance-of v5, v4, Lowt;

    if-eqz v5, :cond_8

    move-object v5, v4

    check-cast v5, Lowt;

    invoke-virtual {v5}, Lowt;->b()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lowt;->a:Loxb;

    if-eq v6, v7, :cond_7

    move-object v3, v6

    check-cast v3, Ljava/lang/Runnable;

    goto :goto_4

    :cond_7
    iget-object v6, p0, Loqq;->e:Loop;

    invoke-virtual {v5}, Lowt;->c()Lowt;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    sget-object v5, Loqr;->b:Loxb;

    if-ne v4, v5, :cond_9

    goto :goto_4

    :cond_9
    iget-object v5, p0, Loqq;->e:Loop;

    invoke-virtual {v5, v4, v3}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v3, v4

    check-cast v3, Ljava/lang/Runnable;

    :goto_4
    if-nez v3, :cond_13

    iget-object v0, p0, Loql;->d:Lovy;

    const-wide v3, 0x7fffffffffffffffL

    if-nez v0, :cond_a

    move-wide v5, v3

    goto :goto_5

    :cond_a
    invoke-virtual {v0}, Lovy;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    move-wide v5, v3

    goto :goto_5

    :cond_b
    move-wide v5, v1

    :goto_5
    cmp-long v0, v5, v1

    if-nez v0, :cond_c

    goto :goto_6

    :cond_c
    iget-object v0, p0, Loqq;->e:Loop;

    iget-object v0, v0, Loop;->a:Ljava/lang/Object;

    if-eqz v0, :cond_f

    instance-of v5, v0, Lowt;

    if-eqz v5, :cond_d

    check-cast v0, Lowt;

    invoke-virtual {v0}, Lowt;->e()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_6

    :cond_d
    sget-object v5, Loqr;->b:Loxb;

    if-ne v0, v5, :cond_e

    move-wide v1, v3

    goto :goto_6

    :cond_e
    return-wide v1

    :cond_f
    iget-object v0, p0, Loqq;->f:Loop;

    iget-object v0, v0, Loop;->a:Ljava/lang/Object;

    check-cast v0, Loqp;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Loxg;->c()Loxh;

    move-result-object v0

    check-cast v0, Loqo;

    if-nez v0, :cond_10

    move-wide v1, v3

    goto :goto_6

    :cond_10
    iget-wide v3, v0, Loqo;->b:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-gez v0, :cond_11

    goto :goto_6

    :cond_11
    move-wide v1, v3

    goto :goto_6

    :cond_12
    move-wide v1, v3

    :goto_6
    return-wide v1

    :cond_13
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    return-wide v1
.end method

.method public final s(JLoqo;)V
    .locals 3

    invoke-virtual {p0}, Loqq;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Loqq;->f:Loop;

    iget-object v0, v0, Loop;->a:Ljava/lang/Object;

    check-cast v0, Loqp;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Loqq;->f:Loop;

    new-instance v2, Loqp;

    invoke-direct {v2, p1, p2}, Loqp;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Loqq;->f:Loop;

    iget-object v0, v0, Loop;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Loqp;

    :cond_1
    invoke-virtual {p3, p1, p2, v0, p0}, Loqo;->c(JLoqp;Loqq;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Loql;->h(JLoqo;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Loqq;->f:Loop;

    iget-object p1, p1, Loop;->a:Ljava/lang/Object;

    check-cast p1, Loqp;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Loxg;->c()Loxh;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Loqo;

    goto :goto_1

    :cond_2
    :goto_1
    if-ne v1, p3, :cond_3

    invoke-virtual {p0}, Loql;->p()V

    :cond_3
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t()Z
    .locals 1

    iget-object v0, p0, Loqq;->c:Loom;

    invoke-virtual {v0}, Loom;->a()Z

    move-result v0

    return v0
.end method

.method protected final u()Z
    .locals 4

    iget-object v0, p0, Loql;->d:Lovy;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lovy;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iget-object v0, p0, Loqq;->f:Loop;

    iget-object v0, v0, Loop;->a:Ljava/lang/Object;

    check-cast v0, Loqp;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Loxg;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    iget-object v0, p0, Loqq;->e:Loop;

    iget-object v0, v0, Loop;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v0, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    instance-of v3, v0, Lowt;

    if-eqz v3, :cond_5

    check-cast v0, Lowt;

    invoke-virtual {v0}, Lowt;->e()Z

    move-result v1

    goto :goto_2

    :cond_5
    sget-object v3, Loqr;->b:Loxb;

    if-eq v0, v3, :cond_6

    :goto_2
    return v1

    :cond_6
    return v2
.end method
