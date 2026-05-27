.class public final Llst;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Llsu;

.field public final c:Lmnb;

.field public final d:Ljava/lang/Object;

.field public e:Ljava/util/List;

.field private final f:Lnou;

.field private final g:Lmnb;

.field private final h:Losg;


# direct methods
.method public constructor <init>(Llsu;Lnou;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmnb;

    new-instance v1, Llss;

    invoke-direct {v1, p0}, Llss;-><init>(Llst;)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-direct {v0, v1, v2}, Lmnb;-><init>(Lnnn;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Llst;->g:Lmnb;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Llst;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llst;->e:Ljava/util/List;

    iput-object p1, p0, Llst;->b:Llsu;

    iput-object p2, p0, Llst;->f:Lnou;

    move-object p2, p1

    check-cast p2, Llsr;

    iget-object p2, p2, Llsr;->a:Ljava/lang/String;

    iput-object p2, p0, Llst;->a:Ljava/lang/String;

    new-instance p2, Lmnb;

    new-instance v0, Lcna;

    check-cast p1, Llsr;

    const/16 v1, 0xc

    invoke-direct {v0, p1, v1}, Lcna;-><init>(Llsr;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-direct {p2, v0, p1}, Lmnb;-><init>(Lnnn;Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Llst;->c:Lmnb;

    invoke-static {}, Losg;->c()Losg;

    move-result-object p1

    iput-object p1, p0, Llst;->h:Losg;

    new-instance p1, Lcmq;

    const/16 p2, 0x14

    invoke-direct {p1, p0, p2}, Lcmq;-><init>(Llst;I)V

    invoke-virtual {p0, p1}, Llst;->c(Lnno;)V

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 4

    iget-object v0, p0, Llst;->g:Lmnb;

    iget-object v0, v0, Lmnb;->c:Lnph;

    invoke-virtual {v0}, Lnph;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llst;->b:Llsu;

    check-cast v0, Llsr;

    invoke-virtual {v0}, Llsr;->a()Lnou;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Llst;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Get "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lljz;->h(Ljava/lang/String;)Lmnm;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Llst;->g:Lmnb;

    invoke-virtual {v1}, Lmnb;->c()Lnou;

    move-result-object v1

    new-instance v2, Lcmq;

    const/16 v3, 0x13

    invoke-direct {v2, p0, v3}, Lcmq;-><init>(Llst;I)V

    invoke-static {v2}, Lmny;->b(Lnno;)Lnno;

    move-result-object v2

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-static {v1, v2, v3}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmnm;->a(Lnou;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lmnm;->close()V

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Llst;->f:Lnou;

    invoke-static {v1}, Lnsy;->C(Lnou;)Lnou;

    invoke-static {v0}, Lnsy;->C(Lnou;)Lnou;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lmnm;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v1, v0}, Llkj;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method public final b(Lmqi;Ljava/util/concurrent/Executor;)Lnou;
    .locals 9

    new-instance v0, Llsx;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Llsx;-><init>(Lmqi;I)V

    invoke-static {v0}, Lmny;->b(Lnno;)Lnno;

    move-result-object v5

    iget-object p1, p0, Llst;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Update "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lljz;->h(Ljava/lang/String;)Lmnm;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Llst;->g:Lmnb;

    invoke-virtual {v0}, Lmnb;->c()Lnou;

    move-result-object v0

    iget-object v1, p0, Llst;->h:Losg;

    new-instance v2, Lcna;

    const/16 v3, 0xe

    invoke-direct {v2, v0, v3}, Lcna;-><init>(Lnou;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-virtual {v1, v2, v3}, Losg;->b(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    iget-object v1, p0, Llst;->h:Losg;

    new-instance v8, Llsp;

    const/4 v7, 0x2

    move-object v2, v8

    move-object v3, p0

    move-object v4, v0

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Llsp;-><init>(Llst;Lnou;Lnno;Ljava/util/concurrent/Executor;I)V

    invoke-static {v8}, Lmny;->a(Lnnn;)Lnnn;

    move-result-object p2

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-virtual {v1, p2, v2}, Losg;->b(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lnou;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2, v0}, Lnsy;->M(Lnou;Ljava/util/concurrent/Future;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lnol;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v0, v2}, Lnol;-><init>(Lnou;Ljava/util/concurrent/Future;I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-interface {p2, v1, v2}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-interface {v0, v1, v2}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_0
    iget-object v0, p0, Llst;->f:Lnou;

    invoke-static {v0}, Lnsy;->C(Lnou;)Lnou;

    invoke-virtual {p1, p2}, Lmnm;->a(Lnou;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lmnm;->close()V

    return-object p2

    :catchall_0
    move-exception p2

    :try_start_1
    invoke-virtual {p1}, Lmnm;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-static {p2, p1}, Llkj;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    throw p2
.end method

.method public final c(Lnno;)V
    .locals 2

    iget-object v0, p0, Llst;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Llst;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
