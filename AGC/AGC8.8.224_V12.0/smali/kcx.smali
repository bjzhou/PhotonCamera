.class public final Lkcx;
.super Ljava/lang/Object;

# interfaces
.implements Lkbw;


# instance fields
.field public final a:Lkll;

.field public final b:Lkco;

.field public final c:Lkby;

.field public final d:Lkaq;

.field public e:Z

.field public f:Z

.field public g:Z

.field private final h:Ljava/util/concurrent/Executor;

.field private final i:Lkda;

.field private final j:Lkdd;

.field private final k:Lkbc;

.field private final l:Lkct;

.field private final m:Ljuf;

.field private n:Lkcz;

.field private o:Z

.field private p:Lkcv;

.field private final q:Lkbm;


# direct methods
.method public constructor <init>(Lkll;Lkda;Lkby;Lkdd;Ljava/util/concurrent/Executor;Lkbm;Lkaq;Lkbc;Lkct;Ljuf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkcx;->e:Z

    iput-boolean v0, p0, Lkcx;->f:Z

    iput-boolean v0, p0, Lkcx;->g:Z

    iput-boolean v0, p0, Lkcx;->o:Z

    invoke-static {p5}, Lnsy;->s(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p5

    iput-object p5, p0, Lkcx;->h:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lkcx;->a:Lkll;

    iput-object p2, p0, Lkcx;->i:Lkda;

    iput-object p3, p0, Lkcx;->c:Lkby;

    iput-object p4, p0, Lkcx;->j:Lkdd;

    iput-object p6, p0, Lkcx;->q:Lkbm;

    iput-object p7, p0, Lkcx;->d:Lkaq;

    iput-object p8, p0, Lkcx;->k:Lkbc;

    check-cast p3, Lkcc;

    iget-object p1, p3, Lkcc;->i:Lkco;

    iput-object p1, p0, Lkcx;->b:Lkco;

    iput-object p9, p0, Lkcx;->l:Lkct;

    iput-object p10, p0, Lkcx;->m:Ljuf;

    new-instance p1, Lirx;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lirx;-><init>(Lkcx;I)V

    invoke-virtual {p10, p1}, Ljuf;->d(Lkad;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lkcx;->l:Lkct;

    iget-object v1, p0, Lkcx;->a:Lkll;

    invoke-interface {v0, v1}, Lkct;->h(Lkll;)V

    sget-object v0, Lkbo;->l:Lkbo;

    invoke-virtual {p0, v0}, Lkcx;->g(Lkbo;)V

    return-void
.end method

.method public final b()V
    .locals 1

    sget-object v0, Lkbo;->k:Lkbo;

    invoke-virtual {p0, v0}, Lkcx;->g(Lkbo;)V

    return-void
.end method

.method public final c(Lkbo;)V
    .locals 4

    invoke-virtual {p0, p1}, Lkcx;->g(Lkbo;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkcx;->a:Lkll;

    iget-boolean v1, p0, Lkcx;->o:Z

    sget-object v2, Lkbo;->a:Lkbo;

    invoke-virtual {p1}, Lkbo;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v2, Lkbu;

    goto :goto_0

    :pswitch_0
    new-instance v2, Lkbs;

    invoke-direct {v2, v0, p1, v1}, Lkbs;-><init>(Lkll;Lkbo;Z)V

    goto :goto_1

    :pswitch_1
    new-instance v2, Lkbp;

    invoke-direct {v2, v0, p1, v1}, Lkbp;-><init>(Lkll;Lkbo;Z)V

    goto :goto_1

    :pswitch_2
    new-instance v2, Lkbq;

    invoke-direct {v2, v0, p1, v1}, Lkbq;-><init>(Lkll;Lkbo;Z)V

    goto :goto_1

    :pswitch_3
    new-instance v2, Lkbt;

    invoke-direct {v2, v0, p1, v1}, Lkbt;-><init>(Lkll;Lkbo;Z)V

    goto :goto_1

    :pswitch_4
    new-instance v2, Lkbr;

    invoke-direct {v2, v0, p1, v1}, Lkbr;-><init>(Lkll;Lkbo;Z)V

    goto :goto_1

    :goto_0
    invoke-direct {v2, v0, p1, v1}, Lkbu;-><init>(Lkll;Lkbo;Z)V

    :goto_1
    iget-object v0, p0, Lkcx;->l:Lkct;

    iget-object v1, p0, Lkcx;->a:Lkll;

    iget-boolean v3, p0, Lkcx;->o:Z

    invoke-interface {v0, v1, p1, v3}, Lkct;->f(Lkll;Lkbo;Z)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lkcx;->d:Lkaq;

    invoke-virtual {v2}, Lkbu;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmqr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lkaq;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lkcx;->j:Lkdd;

    invoke-interface {p1, v2}, Lkdd;->f(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized d(Lkoo;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lkcx;->o:Z

    iget-object v0, p0, Lkcx;->d:Lkaq;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " Opened"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->f(Ljava/lang/String;)V

    new-instance v0, Lkcv;

    iget-object v1, p0, Lkcx;->d:Lkaq;

    invoke-direct {v0, p1, v1}, Lkcv;-><init>(Lkoo;Lkaq;)V

    iput-object v0, p0, Lkcx;->p:Lkcv;

    iget-object p1, p0, Lkcx;->q:Lkbm;

    invoke-virtual {p1, v0}, Lkbm;->b(Lkcv;)V

    iget-object p1, p0, Lkcx;->l:Lkct;

    iget-object v0, p0, Lkcx;->a:Lkll;

    invoke-interface {p1, v0}, Lkct;->g(Lkll;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(Lkbw;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkcx;->e:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lkcx;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkcx;->n:Lkcz;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lkcx;->d:Lkaq;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " passed to a new listener."

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lkcx;->h:Ljava/util/concurrent/Executor;

    new-instance v2, Lkcw;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Lkcw;-><init>(Lkcx;Lkbw;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    new-instance v0, Lkcz;

    invoke-direct {v0}, Lkcz;-><init>()V

    invoke-virtual {v0, p1}, Lkco;->e(Lkbw;)V

    iput-object v0, p0, Lkcx;->n:Lkcz;

    iget-object p1, p0, Lkcx;->h:Ljava/util/concurrent/Executor;

    new-instance v1, Lkcw;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lkcw;-><init>(Lkcx;Lkcz;I)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    :try_start_1
    iget-object v0, p0, Lkcx;->h:Ljava/util/concurrent/Executor;

    new-instance v1, Lkcu;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lkcu;-><init>(Lkbw;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkcx;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lkcx;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkcx;->d:Lkaq;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " closeAsync, queueing shutdown task."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkcx;->e:Z

    iget-object v0, p0, Lkcx;->i:Lkda;

    invoke-virtual {v0, p0}, Lkda;->e(Lkcx;)V

    iget-object v0, p0, Lkcx;->h:Ljava/util/concurrent/Executor;

    new-instance v1, Lkcu;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lkcu;-><init>(Lkcx;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final g(Lkbo;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkcx;->f:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkcx;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkcx;->f:Z

    iget-object v0, p0, Lkcx;->p:Lkcv;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lkcx;->q:Lkbm;

    invoke-virtual {v2, v0}, Lkbm;->c(Lkcv;)V

    iput-object v1, p0, Lkcx;->p:Lkcv;

    :cond_1
    iget-object v0, p0, Lkcx;->i:Lkda;

    invoke-virtual {v0, p0}, Lkda;->e(Lkcx;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lkcx;->k:Lkbc;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#shutdown("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lkcx;->d:Lkaq;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " Closing"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lkcx;->c:Lkby;

    invoke-interface {v0}, Lkby;->close()V

    iget-object v0, p0, Lkcx;->b:Lkco;

    invoke-virtual {v0}, Lkco;->a()V

    iget-object v0, p0, Lkcx;->i:Lkda;

    iget-object v2, v0, Lkda;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, v0, Lkda;->b:Lkcx;

    if-ne v3, p0, :cond_2

    iput-object v1, v0, Lkda;->b:Lkcx;

    :cond_2
    iget-object v0, v0, Lkda;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lkcx;->m:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    iget-object v0, p0, Lkcx;->d:Lkaq;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lkbo;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Closed ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkaq;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lkcx;->k:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lkcx;->a:Lkll;

    iget-object v0, v0, Lkll;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
