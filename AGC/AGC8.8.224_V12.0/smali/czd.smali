.class public final Lczd;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/concurrent/Executor;Laea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lczd;->b:Ljava/lang/Object;

    iput-object p2, p0, Lczd;->d:Ljava/lang/Object;

    iput-object p3, p0, Lczd;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcgi;Lcfx;Ljvs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lczd;->a:Ljava/lang/Object;

    iput-object p2, p0, Lczd;->b:Ljava/lang/Object;

    iput-object p3, p0, Lczd;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Ljava/util/concurrent/ScheduledExecutorService;Ldhi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lczd;->c:Ljava/lang/Object;

    iput-object p1, p0, Lczd;->d:Ljava/lang/Object;

    iput-object p2, p0, Lczd;->a:Ljava/lang/Object;

    iput-object p3, p0, Lczd;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lczd;->b:Ljava/lang/Object;

    sget-object v1, Ldgu;->ad:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lczd;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lczd;->c:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lczd;->b:Ljava/lang/Object;

    sget-object v1, Ldgu;->ad:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lczd;->c:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v1, p0, Lczd;->a:Ljava/lang/Object;

    iget-object v0, p0, Lczd;->d:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lczg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lctw;

    const/16 v3, 0xc

    invoke-direct {v2, v0, v3}, Lctw;-><init>(Lczg;I)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x7d0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lczd;->c:Ljava/lang/Object;

    iget-object v0, p0, Lczd;->d:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lczg;

    invoke-virtual {v0}, Lczg;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scheduler running already."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(Lawl;)V
    .locals 4

    iput-object p1, p0, Lczd;->c:Ljava/lang/Object;

    iget-object v0, p0, Lczd;->d:Ljava/lang/Object;

    new-instance v1, Lbd;

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, Lbd;-><init>(Lczd;Lawl;I[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized d()Lkad;
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnbk;->a:Lnbc;

    iget-object v0, p0, Lczd;->d:Ljava/lang/Object;

    invoke-static {v0}, Ljvo;->c(Ljvs;)Ljvs;

    move-result-object v0

    new-instance v1, Lcbl;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcbl;-><init>(Lczd;I[B)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-interface {v0, v1, v2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    iput-object v0, p0, Lczd;->c:Ljava/lang/Object;

    new-instance v0, Lcfh;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, v3}, Lcfh;-><init>(Lczd;I[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnbk;->a:Lnbc;

    iget-object v0, p0, Lczd;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkad;->close()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lczd;->f(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f(Z)V
    .locals 1

    sget-object v0, Lnbk;->a:Lnbc;

    iget-object v0, p0, Lczd;->b:Ljava/lang/Object;

    check-cast v0, Lcfx;

    invoke-virtual {v0}, Lcfx;->b()V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lczd;->a:Ljava/lang/Object;

    invoke-interface {p1}, Lcgi;->g()V

    return-void

    :cond_0
    iget-object p1, p0, Lczd;->a:Ljava/lang/Object;

    invoke-interface {p1}, Lcgi;->f()V

    return-void
.end method
