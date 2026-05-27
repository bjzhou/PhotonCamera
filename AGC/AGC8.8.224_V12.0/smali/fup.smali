.class public final Lfup;
.super Ljava/lang/Object;

# interfaces
.implements Lfuj;


# instance fields
.field public final a:Landroid/hardware/camera2/CameraManager;

.field private final b:Lkll;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lhxk;

.field private e:Lmwn;

.field private f:Lmwa;

.field private g:Lfuo;

.field private h:Lfum;

.field private final i:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;


# direct methods
.method public constructor <init>(Lcdi;Lfuk;Landroid/hardware/camera2/CameraManager;Lklj;Lhxk;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmza;->a:Lmza;

    iput-object v0, p0, Lfup;->e:Lmwn;

    sget-object v0, Lmyz;->a:Lmwa;

    iput-object v0, p0, Lfup;->f:Lmwa;

    new-instance v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-direct {v0, p0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Lfup;)V

    iput-object v0, p0, Lfup;->i:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    iput-object p3, p0, Lfup;->a:Landroid/hardware/camera2/CameraManager;

    iput-object p5, p0, Lfup;->d:Lhxk;

    invoke-static {p6}, Lnsy;->s(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p3

    iput-object p3, p0, Lfup;->c:Ljava/util/concurrent/Executor;

    sget-object p3, Lklv;->a:Lklv;

    invoke-interface {p4, p3}, Lklj;->h(Lklv;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lkll;

    invoke-interface {p4, p5}, Lklj;->a(Lkll;)Lkli;

    move-result-object p6

    invoke-interface {p6}, Lkli;->M()Z

    move-result p6

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_1
    const/4 p5, 0x0

    :goto_0
    iput-object p5, p0, Lfup;->b:Lkll;

    if-eqz p5, :cond_2

    invoke-interface {p4, p5}, Lklj;->a(Lkll;)Lkli;

    move-result-object p3

    check-cast p3, Lklh;

    iget-object p3, p3, Lklh;->b:Lmwn;

    invoke-static {p3}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p3

    sget-object p4, Lefv;->i:Lefv;

    invoke-interface {p3, p4}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p3

    sget-object p4, Lmtf;->b:Lj$/util/stream/Collector;

    invoke-interface {p3, p4}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmwn;

    iput-object p3, p0, Lfup;->e:Lmwn;

    iget-object p2, p2, Lfuk;->a:Lmwa;

    iput-object p2, p0, Lfup;->f:Lmwa;

    new-instance p2, Lfum;

    iget-object p3, p0, Lfup;->e:Lmwn;

    invoke-direct {p2, p3}, Lfum;-><init>(Lmwn;)V

    iput-object p2, p0, Lfup;->h:Lfum;

    new-instance p2, Lfuo;

    iget-object p3, p0, Lfup;->h:Lfum;

    iget-object p4, p0, Lfup;->e:Lmwn;

    invoke-direct {p2, p3, p5, p4}, Lfuo;-><init>(Lfum;Lkll;Lmwn;)V

    iput-object p2, p0, Lfup;->g:Lfuo;

    invoke-virtual {p1}, Lcdi;->i()Ljuf;

    move-result-object p2

    iget-object p3, p0, Lfup;->g:Lfuo;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p4, p0, Lfup;->a:Landroid/hardware/camera2/CameraManager;

    iget-object p5, p0, Lfup;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p4, p5, p3}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    new-instance p4, Leid;

    const/16 p5, 0xe

    invoke-direct {p4, p0, p3, p5}, Leid;-><init>(Lfup;Lfuo;I)V

    invoke-virtual {p2, p4}, Ljuf;->d(Lkad;)V

    :cond_2
    invoke-virtual {p1}, Lcdi;->i()Ljuf;

    move-result-object p1

    iget-object p2, p0, Lfup;->d:Lhxk;

    iget-object p3, p0, Lfup;->i:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-interface {p2, p3}, Lhxk;->a(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)Lkad;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljuf;->d(Lkad;)V

    return-void
.end method


# virtual methods
.method public final a()Lkll;
    .locals 4

    iget-object v0, p0, Lfup;->b:Lkll;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lfup;->h:Lfum;

    if-eqz v1, :cond_1

    iget-object v0, v1, Lfum;->b:Lnph;

    invoke-virtual {v0}, Lnph;->isDone()Z

    iget-object v0, v1, Lfum;->c:Lnph;

    invoke-virtual {v0}, Lnph;->isDone()Z

    const/4 v0, 0x2

    new-array v0, v0, [Lnou;

    iget-object v2, v1, Lfum;->b:Lnph;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    iget-object v2, v1, Lfum;->c:Lnph;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-static {v0}, Lnsy;->v([Lnou;)Lnom;

    move-result-object v0

    new-instance v2, Lbdj;

    const/4 v3, 0x7

    invoke-direct {v2, v1, v3}, Lbdj;-><init>(Lfum;I)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-virtual {v0, v2, v1}, Lnom;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lnsy;->K(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkll;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized b(Lhxi;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfup;->f:Lmwa;

    iget-object p1, p1, Lhxi;->a:Lhxj;

    invoke-virtual {v0, p1}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lfup;->h:Lfum;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lfum;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lfup;->e:Lmwn;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ldaa;

    const/16 v2, 0x9

    invoke-direct {v1, p1, v2}, Ldaa;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    iget-object v0, p0, Lfup;->h:Lfum;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ldcc;

    const/16 v2, 0x13

    invoke-direct {v1, v0, v2}, Ldcc;-><init>(Lfum;I)V

    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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
