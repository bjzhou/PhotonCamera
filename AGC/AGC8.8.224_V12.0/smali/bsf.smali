.class public final Lbsf;
.super Ljava/lang/Object;

# interfaces
.implements Lbrr;
.implements Lcbb;


# instance fields
.field final a:Lbse;

.field public b:Lbqb;

.field public c:Z

.field public d:Z

.field public e:Lbsn;

.field public f:Z

.field g:Lbsj;

.field public h:Z

.field i:Lbsh;

.field public volatile j:Z

.field k:I

.field public final l:Lfkg;

.field public final m:Llij;

.field public final n:Llij;

.field private final o:Laed;

.field private final p:Lbtx;

.field private final q:Lbtx;

.field private final r:Lbtx;

.field private final s:Ljava/util/concurrent/atomic/AtomicInteger;

.field private t:Z

.field private u:Lbrt;


# direct methods
.method public constructor <init>(Lbtx;Lbtx;Lbtx;Llij;Llij;Laed;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p7, Lbse;

    new-instance p8, Ljava/util/ArrayList;

    const/4 p9, 0x2

    invoke-direct {p8, p9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p7, p8}, Lbse;-><init>(Ljava/util/List;)V

    iput-object p7, p0, Lbsf;->a:Lbse;

    invoke-static {}, Lfkg;->d()Lfkg;

    move-result-object p7

    iput-object p7, p0, Lbsf;->l:Lfkg;

    new-instance p7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p7, p0, Lbsf;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lbsf;->p:Lbtx;

    iput-object p2, p0, Lbsf;->q:Lbtx;

    iput-object p3, p0, Lbsf;->r:Lbtx;

    iput-object p4, p0, Lbsf;->n:Llij;

    iput-object p5, p0, Lbsf;->m:Llij;

    iput-object p6, p0, Lbsf;->o:Laed;

    return-void
.end method

.method private final j()Z
    .locals 1

    iget-boolean v0, p0, Lbsf;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lbsf;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lbsf;->j:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final a()Lbtx;
    .locals 1

    iget-boolean v0, p0, Lbsf;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsf;->r:Lbtx;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbsf;->q:Lbtx;

    :goto_0
    return-object v0
.end method

.method public final declared-synchronized b(Lbzq;Ljava/util/concurrent/Executor;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbsf;->l:Lfkg;

    invoke-virtual {v0}, Lfkg;->c()V

    iget-object v0, p0, Lbsf;->a:Lbse;

    iget-object v0, v0, Lbse;->a:Ljava/util/List;

    new-instance v1, Lbsd;

    invoke-direct {v1, p1, p2}, Lbsd;-><init>(Lbzq;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lbsf;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lbsf;->d(I)V

    new-instance v0, Lbsc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lbsc;-><init>(Lbsf;Lbzq;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lbsf;->h:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lbsf;->d(I)V

    new-instance v0, Lbsc;

    invoke-direct {v0, p0, p1, v1}, Lbsc;-><init>(Lbsf;Lbzq;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-boolean p1, p0, Lbsf;->j:Z

    xor-int/2addr p1, v1

    const-string p2, "Cannot add callbacks to a cancelled EngineJob"

    invoke-static {p1, p2}, Lbze;->r(ZLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbsf;->l:Lfkg;

    invoke-virtual {v0}, Lfkg;->c()V

    invoke-direct {p0}, Lbsf;->j()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, Lbze;->r(ZLjava/lang/String;)V

    iget-object v0, p0, Lbsf;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Can\'t decrement below 0"

    invoke-static {v1, v2}, Lbze;->r(ZLjava/lang/String;)V

    if-nez v0, :cond_1

    iget-object v0, p0, Lbsf;->i:Lbsh;

    invoke-virtual {p0}, Lbsf;->e()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lbsh;->f()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final declared-synchronized d(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lbsf;->j()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, Lbze;->r(ZLjava/lang/String;)V

    iget-object v0, p0, Lbsf;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lbsf;->i:Lbsh;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbsh;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbsf;->b:Lbqb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbsf;->a:Lbse;

    iget-object v0, v0, Lbse;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbsf;->b:Lbqb;

    iput-object v0, p0, Lbsf;->i:Lbsh;

    iput-object v0, p0, Lbsf;->e:Lbsn;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lbsf;->h:Z

    iput-boolean v1, p0, Lbsf;->j:Z

    iput-boolean v1, p0, Lbsf;->f:Z

    iget-object v2, p0, Lbsf;->u:Lbrt;

    iget-object v3, v2, Lbrt;->b:Lbrs;

    invoke-virtual {v3}, Lbrs;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lbrt;->a()V

    :cond_0
    iput-object v0, p0, Lbsf;->u:Lbrt;

    iput-object v0, p0, Lbsf;->g:Lbsj;

    iput v1, p0, Lbsf;->k:I

    iget-object v0, p0, Lbsf;->o:Laed;

    invoke-interface {v0, p0}, Laed;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()Lfkg;
    .locals 1

    iget-object v0, p0, Lbsf;->l:Lfkg;

    return-object v0
.end method

.method public final declared-synchronized g(Lbzq;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbsf;->l:Lfkg;

    invoke-virtual {v0}, Lfkg;->c()V

    iget-object v0, p0, Lbsf;->a:Lbse;

    iget-object v0, v0, Lbse;->a:Ljava/util/List;

    invoke-static {p1}, Lbse;->b(Lbzq;)Lbsd;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lbsf;->a:Lbse;

    invoke-virtual {p1}, Lbse;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lbsf;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lbsf;->j:Z

    iget-object v0, p0, Lbsf;->u:Lbrt;

    iput-boolean p1, v0, Lbrt;->o:Z

    iget-object p1, v0, Lbrt;->n:Lbrp;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lbrp;->a()V

    :cond_1
    iget-object p1, p0, Lbsf;->n:Llij;

    iget-object v0, p0, Lbsf;->b:Lbqb;

    invoke-virtual {p1, p0, v0}, Llij;->i(Lbsf;Lbqb;)V

    :goto_0
    iget-boolean p1, p0, Lbsf;->f:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lbsf;->h:Z

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lbsf;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lbsf;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized h(Lbrt;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lbsf;->u:Lbrt;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lbrt;->c(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lbsf;->a()Lbtx;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lbsf;->p:Lbtx;

    :goto_1
    invoke-virtual {v0, p1}, Lbtx;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized i(Lbqb;ZZZ)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lbsf;->b:Lbqb;

    iput-boolean p2, p0, Lbsf;->c:Z

    iput-boolean p3, p0, Lbsf;->t:Z

    iput-boolean p4, p0, Lbsf;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
