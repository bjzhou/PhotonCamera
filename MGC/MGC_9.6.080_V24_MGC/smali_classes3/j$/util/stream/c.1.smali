.class abstract Lj$/util/stream/c;
.super Lj$/util/stream/e;
.source "SourceFile"


# instance fields
.field protected final h:Ljava/util/concurrent/atomic/AtomicReference;

.field protected volatile i:Z


# direct methods
.method protected constructor <init>(Lj$/util/stream/b;Lj$/util/Spliterator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/e;-><init>(Lj$/util/stream/b;Lj$/util/Spliterator;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lj$/util/stream/c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method protected constructor <init>(Lj$/util/stream/c;Lj$/util/Spliterator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/e;-><init>(Lj$/util/stream/e;Lj$/util/Spliterator;)V

    iget-object p1, p1, Lj$/util/stream/c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lj$/util/stream/c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/e;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj$/util/stream/c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj$/util/stream/c;->j()Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-super {p0}, Lj$/util/stream/e;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final compute()V
    .locals 10

    iget-object v0, p0, Lj$/util/stream/e;->b:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v1

    iget-wide v3, p0, Lj$/util/stream/e;->c:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Lj$/util/stream/e;->g(J)J

    move-result-wide v3

    iput-wide v3, p0, Lj$/util/stream/e;->c:J

    :goto_0
    iget-object v5, p0, Lj$/util/stream/c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v6, 0x0

    move-object v7, p0

    :goto_1
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_6

    iget-boolean v8, v7, Lj$/util/stream/c;->i:Z

    if-nez v8, :cond_1

    invoke-static {v7}, Lj$/util/K;->l(Lj$/util/stream/e;)Ljava/util/concurrent/CountedCompleter;

    move-result-object v9

    :goto_2
    check-cast v9, Lj$/util/stream/e;

    check-cast v9, Lj$/util/stream/c;

    if-nez v8, :cond_1

    if-eqz v9, :cond_1

    iget-boolean v8, v9, Lj$/util/stream/c;->i:Z

    invoke-static {v9}, Lj$/util/K;->l(Lj$/util/stream/e;)Ljava/util/concurrent/CountedCompleter;

    move-result-object v9

    goto :goto_2

    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lj$/util/stream/c;->j()Ljava/lang/Object;

    move-result-object v8

    goto :goto_5

    :cond_2
    cmp-long v8, v1, v3

    if-lez v8, :cond_5

    invoke-interface {v0}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v7, v1}, Lj$/util/stream/e;->e(Lj$/util/Spliterator;)Lj$/util/stream/e;

    move-result-object v2

    check-cast v2, Lj$/util/stream/c;

    iput-object v2, v7, Lj$/util/stream/e;->d:Lj$/util/stream/e;

    invoke-virtual {v7, v0}, Lj$/util/stream/e;->e(Lj$/util/Spliterator;)Lj$/util/stream/e;

    move-result-object v8

    check-cast v8, Lj$/util/stream/c;

    iput-object v8, v7, Lj$/util/stream/e;->e:Lj$/util/stream/e;

    invoke-static {v7}, Lj$/util/K;->m(Lj$/util/stream/c;)V

    if-eqz v6, :cond_4

    move-object v0, v1

    move-object v7, v2

    move-object v2, v8

    goto :goto_3

    :cond_4
    move-object v7, v8

    :goto_3
    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v1

    goto :goto_1

    :cond_5
    :goto_4
    invoke-virtual {v7}, Lj$/util/stream/e;->a()Ljava/lang/Object;

    move-result-object v8

    :cond_6
    :goto_5
    invoke-virtual {v7, v8}, Lj$/util/stream/c;->f(Ljava/lang/Object;)V

    invoke-static {v7}, Lj$/util/K;->w(Lj$/util/stream/c;)V

    return-void
.end method

.method protected final f(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lj$/util/stream/e;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_3

    iget-object v0, p0, Lj$/util/stream/c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lj$/util/stream/e;->f(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final getRawResult()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/c;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/c;->i:Z

    return-void
.end method

.method protected final i()V
    .locals 4

    invoke-static {p0}, Lj$/util/K;->l(Lj$/util/stream/e;)Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    check-cast v0, Lj$/util/stream/e;

    check-cast v0, Lj$/util/stream/c;

    move-object v1, p0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Lj$/util/stream/e;->d:Lj$/util/stream/e;

    if-ne v2, v1, :cond_0

    iget-object v1, v0, Lj$/util/stream/e;->e:Lj$/util/stream/e;

    check-cast v1, Lj$/util/stream/c;

    iget-boolean v2, v1, Lj$/util/stream/c;->i:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lj$/util/stream/c;->h()V

    :cond_0
    invoke-static {v0}, Lj$/util/K;->l(Lj$/util/stream/e;)Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    check-cast v1, Lj$/util/stream/e;

    check-cast v1, Lj$/util/stream/c;

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected abstract j()Ljava/lang/Object;
.end method
