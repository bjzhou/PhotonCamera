.class public final Llaa;
.super Ljava/lang/Object;

# interfaces
.implements Lkzc;


# instance fields
.field public volatile a:Ljava/lang/Object;

.field public volatile b:Lkzd;

.field private c:Lkzw;

.field private d:Lkzw;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Llaa;->a:Ljava/lang/Object;

    iput-object v0, p0, Llaa;->b:Lkzd;

    iput-object v0, p0, Llaa;->c:Lkzw;

    iput-object v0, p0, Llaa;->d:Lkzw;

    return-void
.end method

.method public static j()Llaa;
    .locals 1

    new-instance v0, Llaa;

    invoke-direct {v0}, Llaa;-><init>()V

    return-object v0
.end method

.method public static k(Ljava/lang/Object;Lkye;Llaa;)V
    .locals 0

    :try_start_0
    invoke-interface {p1, p0}, Lkye;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Llaa;->l(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkzd; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lkzd;->a(Ljava/lang/Throwable;)Lkzd;

    move-result-object p0

    invoke-virtual {p2, p0}, Llaa;->m(Lkzd;)V

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p2, p0}, Llaa;->m(Lkzd;)V

    return-void
.end method

.method public static o(Ljava/lang/Object;Lkzg;Ljava/util/concurrent/Executor;Llaa;)V
    .locals 1

    :try_start_0
    invoke-interface {p1, p0, p2}, Lkzg;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Lkzc;

    move-result-object p0

    sget-object p1, Lnnv;->a:Lnnv;

    new-instance p2, Lkzy;

    invoke-direct {p2, p3}, Lkzy;-><init>(Llaa;)V

    new-instance v0, Lkzx;

    invoke-direct {v0, p3}, Lkzx;-><init>(Llaa;)V

    invoke-interface {p0, p1, p2, v0}, Lkzc;->c(Ljava/util/concurrent/Executor;Lkye;Lkye;)Lkzc;

    move-result-object p0

    sget-object p1, Lkyo;->a:Lkyo;

    invoke-interface {p0, p1}, Lkzc;->h(Lkyo;)V
    :try_end_0
    .catch Lkzd; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lkzd;->a(Ljava/lang/Throwable;)Lkzd;

    move-result-object p0

    invoke-virtual {p3, p0}, Llaa;->m(Lkzd;)V

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p3, p0}, Llaa;->m(Lkzd;)V

    return-void
.end method

.method private final p()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Llaa;->c:Lkzw;

    const/4 v1, 0x0

    iput-object v1, p0, Llaa;->c:Lkzw;

    iput-object v1, p0, Llaa;->d:Lkzw;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkzw;->a()V

    iget-object v0, v0, Lkzw;->a:Lkzw;

    goto :goto_0

    :cond_0
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

.method private final q(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Llaa;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Llaa;->g()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lkzw;

    invoke-direct {v0, p1, p2, p3}, Lkzw;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Llaa;)V

    iget-object p1, p0, Llaa;->d:Lkzw;

    if-eqz p1, :cond_0

    iput-object v0, p1, Lkzw;->a:Lkzw;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Llaa;->c:Lkzw;

    :goto_0
    iput-object v0, p0, Llaa;->d:Lkzw;

    monitor-exit p0

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Should not be delaying execution when done"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static r(Lkzd;Lkye;Ljava/util/concurrent/Executor;Llaa;)V
    .locals 2

    :try_start_0
    new-instance v0, Lkzu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p3, v1}, Lkzu;-><init>(Ljava/lang/Object;Lkye;Llaa;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lkzd;->a(Ljava/lang/Throwable;)Lkzd;

    move-result-object p0

    invoke-virtual {p3, p0}, Llaa;->m(Lkzd;)V

    return-void
.end method

.method private static s(Ljava/lang/Object;Lkye;Ljava/util/concurrent/Executor;Llaa;)V
    .locals 2

    :try_start_0
    new-instance v0, Lkzu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p3, v1}, Lkzu;-><init>(Ljava/lang/Object;Lkye;Llaa;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lkzd;->a(Ljava/lang/Throwable;)Lkzd;

    move-result-object p0

    invoke-virtual {p3, p0}, Llaa;->m(Lkzd;)V

    return-void
.end method

.method private static t(Lkzd;Lkzg;Ljava/util/concurrent/Executor;Llaa;Llpm;)V
    .locals 9

    :try_start_0
    new-instance v8, Lkzv;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lkzv;-><init>(Ljava/lang/Object;Lkzg;Ljava/util/concurrent/Executor;Llaa;Llpm;[B[B)V

    invoke-interface {p2, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lkzd;->a(Ljava/lang/Throwable;)Lkzd;

    move-result-object p0

    invoke-virtual {p3, p0}, Llaa;->m(Lkzd;)V

    return-void
.end method

.method private static u(Ljava/lang/Object;Lkzg;Ljava/util/concurrent/Executor;Llaa;Llpm;)V
    .locals 9

    :try_start_0
    new-instance v8, Lkzv;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lkzv;-><init>(Ljava/lang/Object;Lkzg;Ljava/util/concurrent/Executor;Llaa;Llpm;[B[B)V

    invoke-interface {p2, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lkzd;->a(Ljava/lang/Throwable;)Lkzd;

    move-result-object p0

    invoke-virtual {p3, p0}, Llaa;->m(Lkzd;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Executor;Lkye;)Lkzc;
    .locals 3

    invoke-static {}, Llaa;->j()Llaa;

    move-result-object v0

    iget-object v1, p0, Llaa;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-static {v1, p2, p1, v0}, Llaa;->s(Ljava/lang/Object;Lkye;Ljava/util/concurrent/Executor;Llaa;)V

    return-object v0

    :cond_0
    iget-object v1, p0, Llaa;->b:Lkzd;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Llaa;->m(Lkzd;)V

    return-object v0

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Llaa;->a:Ljava/lang/Object;

    if-nez v2, :cond_2

    iget-object v1, p0, Llaa;->b:Lkzd;

    if-nez v1, :cond_2

    new-instance v1, Llbz;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, v0, v2}, Llbz;-><init>(Llaa;Lkye;Llaa;I)V

    invoke-direct {p0, p1, v1, v0}, Llaa;->q(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Llaa;)V

    monitor-exit p0

    return-object v0

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    invoke-static {v2, p2, p1, v0}, Llaa;->s(Ljava/lang/Object;Lkye;Ljava/util/concurrent/Executor;Llaa;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v1}, Llaa;->m(Lkzd;)V

    :goto_0
    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Ljava/util/concurrent/Executor;Lkzg;)Lkzc;
    .locals 10

    sget-object v5, Llab;->a:Llpm;

    invoke-static {}, Llaa;->j()Llaa;

    move-result-object v8

    iget-object v0, p0, Llaa;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {v0, p2, p1, v8, v5}, Llaa;->u(Ljava/lang/Object;Lkzg;Ljava/util/concurrent/Executor;Llaa;Llpm;)V

    return-object v8

    :cond_0
    iget-object v0, p0, Llaa;->b:Lkzd;

    if-eqz v0, :cond_1

    invoke-virtual {v8, v0}, Llaa;->m(Lkzd;)V

    return-object v8

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Llaa;->a:Ljava/lang/Object;

    if-nez v1, :cond_2

    iget-object v0, p0, Llaa;->b:Lkzd;

    if-nez v0, :cond_2

    new-instance v9, Lkzs;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, v8

    invoke-direct/range {v0 .. v7}, Lkzs;-><init>(Llaa;Lkzg;Ljava/util/concurrent/Executor;Llaa;Llpm;[B[B)V

    invoke-direct {p0, p1, v9, v8}, Llaa;->q(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Llaa;)V

    monitor-exit p0

    return-object v8

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    invoke-static {v1, p2, p1, v8, v5}, Llaa;->u(Ljava/lang/Object;Lkzg;Ljava/util/concurrent/Executor;Llaa;Llpm;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v8, v0}, Llaa;->m(Lkzd;)V

    :goto_0
    return-object v8

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c(Ljava/util/concurrent/Executor;Lkye;Lkye;)Lkzc;
    .locals 3

    invoke-static {}, Llaa;->j()Llaa;

    move-result-object v0

    iget-object v1, p0, Llaa;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-static {v1, p2, p1, v0}, Llaa;->s(Ljava/lang/Object;Lkye;Ljava/util/concurrent/Executor;Llaa;)V

    return-object v0

    :cond_0
    iget-object v1, p0, Llaa;->b:Lkzd;

    if-eqz v1, :cond_1

    invoke-static {v1, p3, p1, v0}, Llaa;->r(Lkzd;Lkye;Ljava/util/concurrent/Executor;Llaa;)V

    return-object v0

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Llaa;->a:Ljava/lang/Object;

    if-nez v2, :cond_2

    iget-object v1, p0, Llaa;->b:Lkzd;

    if-nez v1, :cond_2

    new-instance v1, Lkzr;

    invoke-direct {v1, p0, p2, v0, p3}, Lkzr;-><init>(Llaa;Lkye;Llaa;Lkye;)V

    invoke-direct {p0, p1, v1, v0}, Llaa;->q(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Llaa;)V

    monitor-exit p0

    return-object v0

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    invoke-static {v2, p2, p1, v0}, Llaa;->s(Ljava/lang/Object;Lkye;Ljava/util/concurrent/Executor;Llaa;)V

    goto :goto_0

    :cond_3
    invoke-static {v1, p3, p1, v0}, Llaa;->r(Lkzd;Lkye;Ljava/util/concurrent/Executor;Llaa;)V

    :goto_0
    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final d(Ljava/util/concurrent/Executor;Lkzg;Lkzg;)Lkzc;
    .locals 11

    sget-object v5, Llab;->a:Llpm;

    invoke-static {}, Llaa;->j()Llaa;

    move-result-object v9

    iget-object v0, p0, Llaa;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {v0, p2, p1, v9, v5}, Llaa;->u(Ljava/lang/Object;Lkzg;Ljava/util/concurrent/Executor;Llaa;Llpm;)V

    return-object v9

    :cond_0
    iget-object v0, p0, Llaa;->b:Lkzd;

    if-eqz v0, :cond_1

    invoke-static {v0, p3, p1, v9, v5}, Llaa;->t(Lkzd;Lkzg;Ljava/util/concurrent/Executor;Llaa;Llpm;)V

    return-object v9

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Llaa;->a:Ljava/lang/Object;

    if-nez v1, :cond_2

    iget-object v0, p0, Llaa;->b:Lkzd;

    if-nez v0, :cond_2

    new-instance v10, Lkzt;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, v9

    move-object v6, p3

    invoke-direct/range {v0 .. v8}, Lkzt;-><init>(Llaa;Lkzg;Ljava/util/concurrent/Executor;Llaa;Llpm;Lkzg;[B[B)V

    invoke-direct {p0, p1, v10, v9}, Llaa;->q(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Llaa;)V

    monitor-exit p0

    return-object v9

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    invoke-static {v1, p2, p1, v9, v5}, Llaa;->u(Ljava/lang/Object;Lkzg;Ljava/util/concurrent/Executor;Llaa;Llpm;)V

    goto :goto_0

    :cond_3
    invoke-static {v0, p3, p1, v9, v5}, Llaa;->t(Lkzd;Lkzg;Ljava/util/concurrent/Executor;Llaa;Llpm;)V

    :goto_0
    return-object v9

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final e()Lnou;
    .locals 2

    new-instance v0, Lkzz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkzz;-><init>(Llaa;I)V

    return-object v0
.end method

.method public final f()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Llaa;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Llaa;->b:Lkzd;

    if-nez v0, :cond_3

    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Llaa;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Llaa;->a:Ljava/lang/Object;

    if-eqz v0, :cond_2

    monitor-exit p0

    return-object v0

    :cond_2
    iget-object v0, p0, Llaa;->b:Lkzd;

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    iget-object v0, p0, Llaa;->b:Lkzd;

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Llaa;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Llaa;->b:Lkzd;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final h(Lkyo;)V
    .locals 3

    iget-object v0, p0, Llaa;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Llaa;->b:Lkzd;

    if-nez v0, :cond_4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Llaa;->a:Ljava/lang/Object;

    if-nez v1, :cond_2

    iget-object v0, p0, Llaa;->b:Lkzd;

    if-nez v0, :cond_1

    sget-object v0, Lnnv;->a:Lnnv;

    new-instance v1, Lkzj;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lkzj;-><init>(Llaa;Lkyo;I)V

    invoke-virtual {p0, v0, v1}, Llaa;->n(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    monitor-exit p0

    return-void

    :cond_1
    goto :goto_0

    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-static {v0}, Lmrp;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    invoke-static {v0}, Lmrp;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final i(Ljava/util/concurrent/Executor;Llhe;)Lkzc;
    .locals 3

    new-instance v0, Lkzp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lkzp;-><init>(Llaa;Llhe;[B)V

    new-instance v2, Lkzq;

    invoke-direct {v2, p0, p2, v1}, Lkzq;-><init>(Llaa;Llhe;[B)V

    invoke-virtual {p0, p1, v0, v2}, Llaa;->d(Ljava/util/concurrent/Executor;Lkzg;Lkzg;)Lkzc;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Llaa;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Llaa;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    iput-object p1, p0, Llaa;->a:Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Llaa;->p()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final m(Lkzd;)V
    .locals 1

    invoke-virtual {p0}, Llaa;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Llaa;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    iput-object p1, p0, Llaa;->b:Lkzd;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Llaa;->p()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final n(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Llaa;->g()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lkzw;

    invoke-direct {v0, p1, p2}, Lkzw;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    iget-object p1, p0, Llaa;->d:Lkzw;

    if-eqz p1, :cond_0

    iput-object v0, p1, Lkzw;->a:Lkzw;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Llaa;->c:Lkzw;

    :goto_0
    iput-object v0, p0, Llaa;->d:Lkzw;

    monitor-exit p0

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Should not be delaying execution when done"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
