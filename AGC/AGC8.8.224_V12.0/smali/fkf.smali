.class public final Lfkf;
.super Ljava/lang/Object;

# interfaces
.implements Lfkn;


# instance fields
.field public final a:Lfke;

.field public b:Z

.field public c:Lmqp;

.field public d:Z

.field public e:Lmqp;

.field public f:J

.field final synthetic g:Lgxb;

.field private final h:Lfkn;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:J

.field private n:Lfkm;


# direct methods
.method public constructor <init>(Lgxb;Lfkn;[B[B)V
    .locals 0

    iput-object p1, p0, Lfkf;->g:Lgxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lfke;

    invoke-direct {p1, p0}, Lfke;-><init>(Lfkf;)V

    iput-object p1, p0, Lfkf;->a:Lfke;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lfkf;->i:Z

    iput-boolean p1, p0, Lfkf;->b:Z

    sget-object p3, Lmpx;->a:Lmpx;

    iput-object p3, p0, Lfkf;->c:Lmqp;

    iput-boolean p1, p0, Lfkf;->d:Z

    iput-object p3, p0, Lfkf;->e:Lmqp;

    iput-boolean p1, p0, Lfkf;->j:Z

    iput-boolean p1, p0, Lfkf;->k:Z

    iput-boolean p1, p0, Lfkf;->l:Z

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lfkf;->m:J

    iput-wide p3, p0, Lfkf;->f:J

    iput-object p2, p0, Lfkf;->h:Lfkn;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()J
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lfkf;->i:Z

    invoke-virtual {p0}, Lfkf;->c()V

    iget-wide v0, p0, Lfkf;->m:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfkf;->g:Lgxb;

    iget-object v0, v0, Lgxb;->b:Ljava/lang/Object;

    const-string v1, "Ending still pending microvideo sessions"

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfkf;->l:Z

    invoke-virtual {p0}, Lfkf;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lfkf;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lfkf;->j:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lfkf;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lfkf;->h:Lfkn;

    invoke-interface {v0}, Lfkn;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lfkf;->m:J

    iget-object v0, p0, Lfkf;->g:Lgxb;

    iget-object v0, v0, Lgxb;->b:Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start timestamp from underlying trimmer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lkaq;->b(Ljava/lang/String;)V

    iput-boolean v1, p0, Lfkf;->j:Z

    :cond_0
    iget-boolean v0, p0, Lfkf;->l:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfkf;->n:Lfkm;

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lfkf;->j:Z

    if-nez v3, :cond_1

    iget-object v0, p0, Lfkf;->g:Lgxb;

    iget-object v0, v0, Lgxb;->b:Ljava/lang/Object;

    const-string v3, "... canceling since no start timestamp was requested"

    invoke-interface {v0, v3}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lfkf;->n:Lfkm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lfkd;->b:Lfkd;

    invoke-interface {v0, v3}, Lfkm;->a(Lfkd;)V

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lfkf;->m:J

    const-wide/32 v5, 0x2dc6c0

    add-long/2addr v3, v5

    sget-object v5, Lfkq;->j:Lfkq;

    invoke-interface {v0, v3, v4, v5}, Lfkm;->b(JLfkq;)V

    iget-object v0, p0, Lfkf;->g:Lgxb;

    iget-object v0, v0, Lgxb;->b:Ljava/lang/Object;

    const-string v3, "... ending max length later"

    invoke-interface {v0, v3}, Lkaq;->b(Ljava/lang/String;)V

    :goto_0
    iput-object v2, p0, Lfkf;->n:Lfkm;

    iget-object v0, p0, Lfkf;->a:Lfke;

    invoke-virtual {v0}, Lfke;->a()V

    :cond_2
    iget-object v0, p0, Lfkf;->n:Lfkm;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lfkf;->k:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lfkf;->l:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lfkf;->g:Lgxb;

    iget-object v0, v0, Lgxb;->b:Ljava/lang/Object;

    const-string v3, "Asking delegate muxer for trimming decision"

    invoke-interface {v0, v3}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lfkf;->h:Lfkn;

    new-instance v3, Lfki;

    invoke-direct {v3, p0, v1}, Lfki;-><init>(Lfkf;I)V

    invoke-interface {v0, v3}, Lfkn;->d(Lfkm;)V

    iput-boolean v1, p0, Lfkf;->k:Z

    :cond_3
    iget-boolean v0, p0, Lfkf;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lfkf;->n:Lfkm;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lfkf;->l:Z

    xor-int/2addr v0, v1

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, p0, Lfkf;->g:Lgxb;

    iget-object v0, v0, Lgxb;->b:Ljava/lang/Object;

    iget-wide v3, p0, Lfkf;->f:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ending normally at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lfkf;->n:Lfkm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v3, p0, Lfkf;->f:J

    iget-object v5, p0, Lfkf;->c:Lmqp;

    invoke-virtual {v5}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfkq;

    invoke-interface {v0, v3, v4, v5}, Lfkm;->b(JLfkq;)V

    iput-object v2, p0, Lfkf;->n:Lfkm;

    iget-object v0, p0, Lfkf;->a:Lfke;

    invoke-virtual {v0}, Lfke;->a()V

    iget-object v0, p0, Lfkf;->g:Lgxb;

    iget-object v0, v0, Lgxb;->b:Ljava/lang/Object;

    const-string v3, "Ended normally."

    invoke-interface {v0, v3}, Lkaq;->b(Ljava/lang/String;)V

    :cond_4
    iget-boolean v0, p0, Lfkf;->d:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lfkf;->n:Lfkm;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lfkf;->l:Z

    xor-int/2addr v0, v1

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, p0, Lfkf;->n:Lfkm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lfkf;->e:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfkd;

    invoke-interface {v0, v1}, Lfkm;->a(Lfkd;)V

    iput-object v2, p0, Lfkf;->n:Lfkm;

    iget-object v0, p0, Lfkf;->a:Lfke;

    invoke-virtual {v0}, Lfke;->a()V

    iget-object v0, p0, Lfkf;->g:Lgxb;

    iget-object v0, v0, Lgxb;->b:Ljava/lang/Object;

    const-string v1, "Cancelled normally."

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(Lfkm;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lfkf;->n:Lfkm;

    iget-object p1, p0, Lfkf;->a:Lfke;

    iget-object p1, p1, Lfke;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lfkf;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
