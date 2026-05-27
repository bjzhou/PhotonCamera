.class public final Lfkj;
.super Ljava/lang/Object;

# interfaces
.implements Lfkn;


# instance fields
.field final synthetic a:Lfkk;

.field private final b:Lfkn;

.field private final c:J

.field private d:Lmqp;

.field private e:Lmqp;

.field private f:Z


# direct methods
.method public constructor <init>(Lfkk;JLfkn;)V
    .locals 0

    iput-object p1, p0, Lfkj;->a:Lfkk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lmpx;->a:Lmpx;

    iput-object p1, p0, Lfkj;->d:Lmqp;

    iput-object p1, p0, Lfkj;->e:Lmqp;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lfkj;->f:Z

    iput-object p4, p0, Lfkj;->b:Lfkn;

    iput-wide p2, p0, Lfkj;->c:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 7

    iget-object v0, p0, Lfkj;->a:Lfkk;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfkj;->a:Lfkk;

    iget-object v1, v1, Lfkk;->d:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lfkj;->b:Lfkn;

    invoke-interface {v1}, Lfkn;->a()J

    iget-wide v1, p0, Lfkj;->c:J

    iget-object v3, p0, Lfkj;->a:Lfkk;

    iget-wide v4, v3, Lfkk;->f:J

    cmp-long v6, v1, v4

    if-lez v6, :cond_0

    iget-boolean v1, v3, Lfkk;->e:Z

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0, v4, v5}, Lfkj;->c(J)V

    :cond_1
    iget-wide v1, p0, Lfkj;->c:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b()V
    .locals 8

    sget-object v0, Lmpx;->a:Lmpx;

    iget-object v1, p0, Lfkj;->a:Lfkk;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lfkj;->f:Z

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    iget-object v2, p0, Lfkj;->e:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lfkj;->d:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lfkj;->c:J

    iget-object v4, p0, Lfkj;->a:Lfkk;

    iget-wide v4, v4, Lfkk;->c:J

    add-long/2addr v2, v4

    iget-object v4, p0, Lfkj;->d:Lmqp;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-gtz v6, :cond_1

    sget-object v2, Lfkd;->g:Lfkd;

    invoke-static {v2}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    move-object v3, v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lfkj;->d:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-static {v2}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    sget-object v3, Lfkq;->k:Lfkq;

    invoke-static {v3}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lfkj;->f:Z

    iget-object v4, p0, Lfkj;->a:Lfkk;

    iget-object v4, v4, Lfkk;->d:Ljava/util/Set;

    invoke-interface {v4, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object v7, v2

    move-object v2, v0

    move-object v0, v3

    move-object v3, v7

    goto :goto_1

    :cond_2
    move-object v2, v0

    move-object v3, v2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lfkj;->a:Lfkk;

    iget-object v1, v1, Lfkk;->a:Lkaq;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Sending out end timestamp: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lfkj;->e:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfkm;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v2, Lfkq;->a:Lfkq;

    invoke-virtual {v0, v2}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfkq;

    invoke-interface {v1, v4, v5, v0}, Lfkm;->b(JLfkq;)V

    :cond_3
    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lfkj;->a:Lfkk;

    iget-object v0, v0, Lfkk;->a:Lkaq;

    const-string v1, "Cancelling long shot."

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lfkj;->e:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfkm;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfkd;

    invoke-interface {v0, v1}, Lfkm;->a(Lfkd;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Lfkj;->d:Lmqp;

    invoke-virtual {p0}, Lfkj;->b()V

    return-void
.end method

.method public final d(Lfkm;)V
    .locals 2

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Lfkj;->e:Lmqp;

    iget-object p1, p0, Lfkj;->b:Lfkn;

    new-instance v0, Lfki;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfki;-><init>(Lfkj;I)V

    invoke-interface {p1, v0}, Lfkn;->d(Lfkm;)V

    invoke-virtual {p0}, Lfkj;->b()V

    return-void
.end method
