.class final Lgkd;
.super Ljava/lang/Object;

# interfaces
.implements Lkee;


# instance fields
.field final synthetic a:Lgke;

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final e:J

.field private f:Z


# direct methods
.method public constructor <init>(Lgke;J)V
    .locals 1

    iput-object p1, p0, Lgkd;->a:Lgke;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lgkd;->b:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lgkd;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lgkd;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lgkd;->f:Z

    iput-wide p2, p0, Lgkd;->e:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 4

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lgkd;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgkd;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lgke;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0xb55

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "Unable to acquire any frame for this capture."

    invoke-interface {v0, v1}, Lnah;->o(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lgkd;->b:Ljava/util/List;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lgke;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    const-string v2, "Interrupted when waiting on framebuffer listener to acquire frames."

    const/16 v3, 0xb54

    invoke-static {v1, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Lgkd;->f:Z

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object v1, p0, Lgkd;->a:Lgke;

    iget-object v1, v1, Lgke;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lgkd;->a:Lgke;

    iget-object v3, v2, Lgke;->e:Lkef;

    iget-object v2, v2, Lgke;->d:Lgkd;

    invoke-interface {v3, v2}, Lkef;->l(Lkee;)V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final c(Lkhr;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lgkd;->f:Z

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-virtual {p1}, Lkhr;->b()Lkeg;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-wide v0, v0, Lkeg;->c:J

    iget-wide v2, p0, Lgkd;->e:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lgkd;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lgkd;->a:Lgke;

    iget v2, v1, Lgke;->b:I

    if-lt v0, v2, :cond_2

    iget-object v0, v1, Lgke;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object p1, p0, Lgkd;->a:Lgke;

    iget-object v1, p1, Lgke;->e:Lkef;

    iget-object p1, p1, Lgke;->d:Lgkd;

    invoke-interface {v1, p1}, Lkef;->l(Lkee;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_2
    iput-boolean p1, p0, Lgkd;->f:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_2
    invoke-virtual {p1}, Lkhr;->a()Lkeb;

    move-result-object v0

    iget-object v1, p0, Lgkd;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    sget-object v0, Lgke;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v2, 0xb57

    invoke-interface {v0, v2}, Lnah;->G(I)Lnaz;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lnah;

    iget-object v0, p0, Lgkd;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Lkhr;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v0, p1, Lkhr;->a:Lkgs;

    invoke-virtual {v0}, Lkgs;->n()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p1}, Lkhr;->f()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v3, "Image not available %d (done: %s, metadata done: %s, images done: %s"

    invoke-interface/range {v2 .. v7}, Lnah;->C(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lgkd;->a:Lgke;

    iget-object p1, p1, Lgke;->f:Lfzy;

    invoke-interface {p1, v1}, Lfzy;->bn(Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object p1, p0, Lgkd;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lgkd;->a:Lgke;

    iget-object p1, p1, Lgke;->f:Lfzy;

    invoke-interface {p1, v1}, Lfzy;->bn(Ljava/lang/Object;)V

    iget-object p1, p0, Lgkd;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-interface {v0}, Lkeb;->j()Lkgq;

    iget-object p1, p0, Lgkd;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    return-void

    :cond_4
    :goto_0
    return-void

    :catchall_2
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method
