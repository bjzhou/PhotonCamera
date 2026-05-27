.class public final Lepl;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final c:Ljava/util/Map;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Lkbc;

.field private final f:Lfwx;

.field private final g:Ljava/util/Set;

.field private final h:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/lasagna/MotionBlurProcessingQueue"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lepl;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lkbc;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lfwx;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lfwx;-><init>(I)V

    iput-object v0, p0, Lepl;->f:Lfwx;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lepl;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lepl;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lepl;->g:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lepl;->h:Ljava/util/Set;

    iput-object p2, p0, Lepl;->d:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lepl;->e:Lkbc;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(IZLjava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lepl;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x6e8

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "Aborting task %s"

    invoke-interface {v0, v1, p1}, Lnah;->p(Ljava/lang/String;I)V

    invoke-virtual {p0, p1, p3}, Lepl;->e(ILjava/lang/Runnable;)V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lepl;->h:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lepl;->b(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(IZ)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lepl;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lepk;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lepk;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    if-nez p2, :cond_1

    :try_start_1
    sget-object p2, Lepl;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const/16 v0, 0x6e9

    invoke-interface {p2, v0}, Lnah;->G(I)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const-string v0, "Aborting un-started stask %s"

    invoke-interface {p2, v0, p1}, Lnah;->p(Ljava/lang/String;I)V

    iget-object p1, p0, Lepl;->g:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(ILjava/lang/Runnable;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lepl;->g:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lepk;

    new-instance v2, Lpi;

    const/16 v3, 0xa

    invoke-direct {v2, p0, p1, p2, v3}, Lpi;-><init>(Lepl;ILjava/lang/Runnable;I)V

    invoke-direct {v0, p0, p1, v2}, Lepk;-><init>(Lepl;ILjava/lang/Runnable;)V

    iget-object p2, p0, Lepl;->c:Ljava/util/Map;

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lepl;->f:Lfwx;

    invoke-virtual {p2, v0}, Lfwx;->a(Lfwu;)Lnou;

    move-result-object p2

    new-instance v0, Lbbh;

    const/16 v1, 0x11

    invoke-direct {v0, p0, p1, v1}, Lbbh;-><init>(Lepl;II)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-interface {p2, v0, p1}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_0
    :try_start_1
    sget-object p2, Lepl;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const/16 v0, 0x6f0

    invoke-interface {p2, v0}, Lnah;->G(I)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const-string v0, "Cannot start task %s, already aborted"

    invoke-interface {p2, v0, p1}, Lnah;->p(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)I
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lepl;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lepk;

    const/4 v2, 0x2

    if-nez v0, :cond_1

    sget-object p2, Lepl;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const/16 p3, 0x6e7

    invoke-interface {p2, p3}, Lnah;->G(I)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const-string p3, "Task not found: %s"

    invoke-interface {p2, p3, p1}, Lnah;->p(Ljava/lang/String;I)V

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lepl;->h:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    return p1

    :cond_0
    return v2

    :cond_1
    :try_start_1
    iget-object v1, v0, Lepk;->a:Lnph;

    invoke-virtual {v1}, Lnph;->isDone()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lepj;

    const/4 v8, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v5, p2

    move v6, p1

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lepj;-><init>(Lepl;Ljava/lang/String;ILjava/lang/Runnable;I)V

    invoke-virtual {v0, v1, p4}, Lepk;->d(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_2
    :try_start_2
    sget-object p2, Lepl;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const/16 p3, 0x6e5

    invoke-interface {p2, p3}, Lnah;->G(I)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const-string p3, "Cannot execute, task already done: %s"

    invoke-interface {p2, p3, p1}, Lnah;->p(Ljava/lang/String;I)V

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(ILjava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lchy;->k:Lchy;

    const-string v1, "abortRunnable"

    invoke-virtual {p0, p1, v1, p2, v0}, Lepl;->d(ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f(Ljava/lang/Runnable;)V
    .locals 3

    new-instance v0, Lepk;

    new-instance v1, Leli;

    const/16 v2, 0x9

    invoke-direct {v1, p1, v2}, Leli;-><init>(Ljava/lang/Runnable;I)V

    const/4 p1, -0x1

    invoke-direct {v0, p0, p1, v1}, Lepk;-><init>(Lepl;ILjava/lang/Runnable;)V

    new-instance p1, Leli;

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Leli;-><init>(Lepk;I)V

    sget-object v1, Lchy;->l:Lchy;

    invoke-virtual {v0, p1, v1}, Lepk;->d(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lepl;->f:Lfwx;

    invoke-virtual {p1, v0}, Lfwx;->a(Lfwu;)Lnou;

    move-result-object p1

    new-instance v0, Lchy;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lchy;-><init>(I)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-interface {p1, v0, v1}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
