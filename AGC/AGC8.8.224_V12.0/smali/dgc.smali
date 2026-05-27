.class public final Ldgc;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final b:Ldfr;

.field private final c:Z

.field private final d:Lfbz;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Lmqp;

.field private g:Lmqp;

.field private final h:Lilz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Ldgc;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Ldfr;Lfbz;Ldhi;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ldgc;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Ldgc;->f:Lmqp;

    iput-object v0, p0, Ldgc;->g:Lmqp;

    iput-object p1, p0, Ldgc;->b:Ldfr;

    iput-object p2, p0, Ldgc;->d:Lfbz;

    new-instance p1, Lilz;

    const p2, 0x3ca3d70a    # 0.02f

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lilz;-><init>(F[B)V

    iput-object p1, p0, Ldgc;->h:Lilz;

    sget-object p1, Ldgv;->h:Ldhj;

    invoke-interface {p3, p1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    iput-boolean p1, p0, Ldgc;->c:Z

    return-void
.end method

.method private final g()Z
    .locals 3

    iget-object v0, p0, Ldgc;->b:Ldfr;

    invoke-virtual {v0}, Ldfr;->a()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcvm;

    iget-object v0, v0, Lcvm;->c:Ljava/lang/Object;

    check-cast v0, Ldxl;

    invoke-virtual {v0}, Ldxl;->b()Lgrw;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Ldgc;->h:Lilz;

    iget-object v2, v0, Lgrw;->q:[Lgrz;

    iget-object v0, v0, Lgrw;->o:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v0}, Lilz;->a([Lgrz;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method private final h()Z
    .locals 3

    iget-object v0, p0, Ldgc;->g:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldgc;->g:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lilz;

    iget v0, v0, Lilz;->a:F

    const/high16 v2, 0x41700000    # 15.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Ldgc;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    iput-object v0, p0, Ldgc;->f:Lmqp;

    iget-object v0, p0, Ldgc;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ldgc;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldgc;->d:Lfbz;

    invoke-interface {v0}, Lfbz;->q()V
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

.method final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldgc;->d:Lfbz;

    invoke-interface {v0}, Lfbz;->o()V

    iget-object v0, p0, Ldgc;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized d(F)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lilz;

    invoke-direct {p0}, Ldgc;->g()Z

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lilz;-><init>(F[B)V

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Ldgc;->g:Lmqp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Ldgc;->f:Lmqp;

    iput-object v0, p0, Ldgc;->g:Lmqp;

    iget-object v0, p0, Ldgc;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldgc;->c:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Ldgc;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Ldgc;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldgc;->f:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Ldgc;->f:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    :cond_0
    sget-object v0, Ldgc;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :cond_1
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
