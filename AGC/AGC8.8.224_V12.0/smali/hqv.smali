.class public final Lhqv;
.super Ljava/lang/Object;

# interfaces
.implements Lhrj;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lkbc;

.field public volatile c:Z

.field public final d:Lhrj;

.field public volatile e:Lmqp;

.field private final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile g:J


# direct methods
.method public constructor <init>(Lhra;Lmqp;Lkbc;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhqv;->c:Z

    sget-object v1, Lmpx;->a:Lmpx;

    iput-object v1, p0, Lhqv;->e:Lmqp;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lhqv;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lhqv;->g:J

    iput-object p3, p0, Lhqv;->b:Lkbc;

    invoke-virtual {p2}, Lmqp;->g()Z

    move-result p3

    invoke-static {p3}, Lmoz;->e(Z)V

    iput-object p1, p0, Lhqv;->d:Lhrj;

    invoke-virtual {p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lhqv;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final b(Landroid/graphics/PointF;)Ljvs;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhqv;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lhqv;->g:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lhqv;->d:Lhrj;

    invoke-interface {v0, p1}, Lhrj;->b(Landroid/graphics/PointF;)Ljvs;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final bG(Lhna;)V
    .locals 1

    iget-object v0, p0, Lhqv;->d:Lhrj;

    invoke-interface {v0, p1}, Lhrj;->bG(Lhna;)V

    return-void
.end method

.method public final ci()V
    .locals 1

    monitor-enter p0

    :try_start_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d(Lmqp;Lmqp;)Lkad;
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lhqv;->e:Lmqp;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lhqv;->d:Lhrj;

    invoke-interface {v0, p1, p2}, Lhrj;->d(Lmqp;Lmqp;)Lkad;

    move-result-object p1

    new-instance p2, Lgss;

    const/16 v0, 0xe

    invoke-direct {p2, p0, p1, v0}, Lgss;-><init>(Lhqv;Lkad;I)V

    return-object p2

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final e(Lhrn;)V
    .locals 1

    iget-object v0, p0, Lhqv;->d:Lhrj;

    invoke-interface {v0, p1}, Lhrj;->e(Lhrn;)V

    return-void
.end method

.method public final f(Lkpb;)V
    .locals 5

    iget-wide v0, p0, Lhqv;->g:J

    invoke-interface {p1}, Lkpb;->d()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x112a880

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    invoke-interface {p1}, Lkpb;->close()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lhqv;->c:Z

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lkpb;->close()V

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lhqv;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lhqv;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lhph;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lhph;-><init>(Lhqv;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhqv;->c:Z

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lhqv;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-interface {p1}, Lkpb;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lhqv;->g:J

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lhqv;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lhqn;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lhqn;-><init>(Lhqv;Lkpb;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final g(Lhrn;)V
    .locals 1

    iget-object v0, p0, Lhqv;->d:Lhrj;

    invoke-interface {v0, p1}, Lhrj;->g(Lhrn;)V

    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lhqv;->d:Lhrj;

    invoke-interface {v0}, Lhrj;->h()V

    return-void
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lhqv;->d:Lhrj;

    invoke-interface {v0}, Lhrj;->i()Z

    move-result v0

    return v0
.end method
