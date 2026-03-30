.class final Lj$/util/stream/v1;
.super Lj$/util/stream/c;
.source "SourceFile"


# instance fields
.field private final j:Lj$/util/stream/t1;

.field private final k:Ljava/util/function/IntFunction;

.field private final l:J

.field private final m:J

.field private n:J

.field private volatile o:Z


# direct methods
.method constructor <init>(Lj$/util/stream/t1;Lj$/util/stream/b;Lj$/util/Spliterator;Ljava/util/function/IntFunction;JJ)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lj$/util/stream/c;-><init>(Lj$/util/stream/b;Lj$/util/Spliterator;)V

    iput-object p1, p0, Lj$/util/stream/v1;->j:Lj$/util/stream/t1;

    iput-object p4, p0, Lj$/util/stream/v1;->k:Ljava/util/function/IntFunction;

    iput-wide p5, p0, Lj$/util/stream/v1;->l:J

    iput-wide p7, p0, Lj$/util/stream/v1;->m:J

    return-void
.end method

.method constructor <init>(Lj$/util/stream/v1;Lj$/util/Spliterator;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lj$/util/stream/c;-><init>(Lj$/util/stream/c;Lj$/util/Spliterator;)V

    iget-object p2, p1, Lj$/util/stream/v1;->j:Lj$/util/stream/t1;

    iput-object p2, p0, Lj$/util/stream/v1;->j:Lj$/util/stream/t1;

    iget-object p2, p1, Lj$/util/stream/v1;->k:Ljava/util/function/IntFunction;

    iput-object p2, p0, Lj$/util/stream/v1;->k:Ljava/util/function/IntFunction;

    iget-wide v0, p1, Lj$/util/stream/v1;->l:J

    iput-wide v0, p0, Lj$/util/stream/v1;->l:J

    iget-wide p1, p1, Lj$/util/stream/v1;->m:J

    iput-wide p1, p0, Lj$/util/stream/v1;->m:J

    return-void
.end method

.method private k(J)J
    .locals 4

    iget-boolean v0, p0, Lj$/util/stream/v1;->o:Z

    if-eqz v0, :cond_0

    iget-wide p1, p0, Lj$/util/stream/v1;->n:J

    return-wide p1

    :cond_0
    iget-object v0, p0, Lj$/util/stream/e;->d:Lj$/util/stream/e;

    check-cast v0, Lj$/util/stream/v1;

    iget-object v1, p0, Lj$/util/stream/e;->e:Lj$/util/stream/e;

    check-cast v1, Lj$/util/stream/v1;

    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {v0, p1, p2}, Lj$/util/stream/v1;->k(J)J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {v1, p1, p2}, Lj$/util/stream/v1;->k(J)J

    move-result-wide p1

    add-long/2addr v2, p1

    :goto_0
    return-wide v2

    :cond_3
    :goto_1
    iget-wide p1, p0, Lj$/util/stream/v1;->n:J

    return-wide p1
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Lj$/util/stream/e;->d()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    sget-object v0, Lj$/util/stream/M1;->SIZED:Lj$/util/stream/M1;

    iget-object v3, p0, Lj$/util/stream/v1;->j:Lj$/util/stream/t1;

    iget v3, v3, Lj$/util/stream/b;->c:I

    invoke-virtual {v0, v3}, Lj$/util/stream/M1;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/v1;->j:Lj$/util/stream/t1;

    iget-object v1, p0, Lj$/util/stream/e;->b:Lj$/util/Spliterator;

    invoke-virtual {v0, v1}, Lj$/util/stream/b;->i(Lj$/util/Spliterator;)J

    move-result-wide v1

    :cond_0
    iget-object v0, p0, Lj$/util/stream/v1;->j:Lj$/util/stream/t1;

    iget-object v3, p0, Lj$/util/stream/v1;->k:Ljava/util/function/IntFunction;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lj$/util/stream/M;->A(JLjava/util/function/IntFunction;)Lj$/util/stream/Q;

    move-result-object v0

    iget-object v1, p0, Lj$/util/stream/v1;->j:Lj$/util/stream/t1;

    iget-object v2, p0, Lj$/util/stream/e;->a:Lj$/util/stream/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lj$/util/stream/s1;

    invoke-direct {v2, v1, v0}, Lj$/util/stream/s1;-><init>(Lj$/util/stream/t1;Lj$/util/stream/r1;)V

    iget-object v1, p0, Lj$/util/stream/e;->a:Lj$/util/stream/b;

    invoke-virtual {v1, v2}, Lj$/util/stream/b;->z(Lj$/util/stream/r1;)Lj$/util/stream/r1;

    move-result-object v2

    iget-object v3, p0, Lj$/util/stream/e;->b:Lj$/util/Spliterator;

    invoke-virtual {v1, v3, v2}, Lj$/util/stream/b;->d(Lj$/util/Spliterator;Lj$/util/stream/r1;)Z

    invoke-interface {v0}, Lj$/util/stream/Q;->a()Lj$/util/stream/Z;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lj$/util/stream/v1;->j:Lj$/util/stream/t1;

    iget-object v3, p0, Lj$/util/stream/v1;->k:Ljava/util/function/IntFunction;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lj$/util/stream/M;->A(JLjava/util/function/IntFunction;)Lj$/util/stream/Q;

    move-result-object v0

    iget-wide v1, p0, Lj$/util/stream/v1;->l:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    iget-object v1, p0, Lj$/util/stream/v1;->j:Lj$/util/stream/t1;

    iget-object v2, p0, Lj$/util/stream/e;->a:Lj$/util/stream/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lj$/util/stream/s1;

    invoke-direct {v2, v1, v0}, Lj$/util/stream/s1;-><init>(Lj$/util/stream/t1;Lj$/util/stream/r1;)V

    iget-object v1, p0, Lj$/util/stream/e;->a:Lj$/util/stream/b;

    invoke-virtual {v1, v2}, Lj$/util/stream/b;->z(Lj$/util/stream/r1;)Lj$/util/stream/r1;

    move-result-object v2

    iget-object v3, p0, Lj$/util/stream/e;->b:Lj$/util/Spliterator;

    invoke-virtual {v1, v3, v2}, Lj$/util/stream/b;->d(Lj$/util/Spliterator;Lj$/util/stream/r1;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lj$/util/stream/e;->a:Lj$/util/stream/b;

    iget-object v2, p0, Lj$/util/stream/e;->b:Lj$/util/Spliterator;

    invoke-virtual {v1, v2, v0}, Lj$/util/stream/b;->y(Lj$/util/Spliterator;Lj$/util/stream/r1;)Lj$/util/stream/r1;

    :goto_0
    invoke-interface {v0}, Lj$/util/stream/Q;->a()Lj$/util/stream/Z;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/Z;->count()J

    move-result-wide v1

    iput-wide v1, p0, Lj$/util/stream/v1;->n:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lj$/util/stream/v1;->o:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lj$/util/stream/e;->b:Lj$/util/Spliterator;

    :goto_1
    return-object v0
.end method

.method protected final e(Lj$/util/Spliterator;)Lj$/util/stream/e;
    .locals 1

    new-instance v0, Lj$/util/stream/v1;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/v1;-><init>(Lj$/util/stream/v1;Lj$/util/Spliterator;)V

    return-object v0
.end method

.method protected final h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/c;->i:Z

    iget-boolean v0, p0, Lj$/util/stream/v1;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/v1;->j:Lj$/util/stream/t1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lj$/util/stream/N1;->REFERENCE:Lj$/util/stream/N1;

    invoke-static {v0}, Lj$/util/stream/M;->E(Lj$/util/stream/N1;)Lj$/util/stream/s0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/c;->f(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected final j()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/v1;->j:Lj$/util/stream/t1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lj$/util/stream/N1;->REFERENCE:Lj$/util/stream/N1;

    invoke-static {v0}, Lj$/util/stream/M;->E(Lj$/util/stream/N1;)Lj$/util/stream/s0;

    move-result-object v0

    return-object v0
.end method

.method public final onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 13

    iget-object v0, p0, Lj$/util/stream/e;->d:Lj$/util/stream/e;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-wide/16 v3, 0x0

    if-nez v2, :cond_6

    check-cast v0, Lj$/util/stream/v1;

    iget-wide v5, v0, Lj$/util/stream/v1;->n:J

    iget-object v0, p0, Lj$/util/stream/e;->e:Lj$/util/stream/e;

    check-cast v0, Lj$/util/stream/v1;

    iget-wide v7, v0, Lj$/util/stream/v1;->n:J

    add-long/2addr v5, v7

    iput-wide v5, p0, Lj$/util/stream/v1;->n:J

    iget-boolean v0, p0, Lj$/util/stream/c;->i:Z

    if-eqz v0, :cond_1

    iput-wide v3, p0, Lj$/util/stream/v1;->n:J

    iget-object v0, p0, Lj$/util/stream/v1;->j:Lj$/util/stream/t1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lj$/util/stream/N1;->REFERENCE:Lj$/util/stream/N1;

    invoke-static {v0}, Lj$/util/stream/M;->E(Lj$/util/stream/N1;)Lj$/util/stream/s0;

    move-result-object v0

    :goto_1
    move-object v5, v0

    goto :goto_2

    :cond_1
    iget-wide v5, p0, Lj$/util/stream/v1;->n:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_2

    iget-object v0, p0, Lj$/util/stream/v1;->j:Lj$/util/stream/t1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lj$/util/stream/N1;->REFERENCE:Lj$/util/stream/N1;

    invoke-static {v0}, Lj$/util/stream/M;->E(Lj$/util/stream/N1;)Lj$/util/stream/s0;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lj$/util/stream/e;->d:Lj$/util/stream/e;

    check-cast v0, Lj$/util/stream/v1;

    iget-wide v5, v0, Lj$/util/stream/v1;->n:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_3

    iget-object v0, p0, Lj$/util/stream/e;->e:Lj$/util/stream/e;

    check-cast v0, Lj$/util/stream/v1;

    invoke-virtual {v0}, Lj$/util/stream/c;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Z;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lj$/util/stream/v1;->j:Lj$/util/stream/t1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lj$/util/stream/N1;->REFERENCE:Lj$/util/stream/N1;

    iget-object v2, p0, Lj$/util/stream/e;->d:Lj$/util/stream/e;

    check-cast v2, Lj$/util/stream/v1;

    invoke-virtual {v2}, Lj$/util/stream/c;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/util/stream/Z;

    iget-object v5, p0, Lj$/util/stream/e;->e:Lj$/util/stream/e;

    check-cast v5, Lj$/util/stream/v1;

    invoke-virtual {v5}, Lj$/util/stream/c;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj$/util/stream/Z;

    invoke-static {v0, v2, v5}, Lj$/util/stream/M;->C(Lj$/util/stream/N1;Lj$/util/stream/Z;Lj$/util/stream/Z;)Lj$/util/stream/b0;

    move-result-object v0

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Lj$/util/stream/e;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v6, p0, Lj$/util/stream/v1;->m:J

    cmp-long v0, v6, v3

    if-ltz v0, :cond_4

    invoke-interface {v5}, Lj$/util/stream/Z;->count()J

    move-result-wide v6

    iget-wide v8, p0, Lj$/util/stream/v1;->l:J

    iget-wide v10, p0, Lj$/util/stream/v1;->m:J

    add-long/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :goto_3
    move-wide v8, v6

    goto :goto_4

    :cond_4
    iget-wide v6, p0, Lj$/util/stream/v1;->n:J

    goto :goto_3

    :goto_4
    iget-wide v6, p0, Lj$/util/stream/v1;->l:J

    iget-object v10, p0, Lj$/util/stream/v1;->k:Ljava/util/function/IntFunction;

    invoke-interface/range {v5 .. v10}, Lj$/util/stream/Z;->g(JJLjava/util/function/IntFunction;)Lj$/util/stream/Z;

    move-result-object v5

    :cond_5
    invoke-virtual {p0, v5}, Lj$/util/stream/c;->f(Ljava/lang/Object;)V

    iput-boolean v1, p0, Lj$/util/stream/v1;->o:Z

    :cond_6
    iget-wide v0, p0, Lj$/util/stream/v1;->m:J

    cmp-long v2, v0, v3

    if-ltz v2, :cond_b

    invoke-virtual {p0}, Lj$/util/stream/e;->d()Z

    move-result v0

    if-nez v0, :cond_b

    iget-wide v0, p0, Lj$/util/stream/v1;->l:J

    iget-wide v2, p0, Lj$/util/stream/v1;->m:J

    add-long/2addr v0, v2

    iget-boolean v2, p0, Lj$/util/stream/v1;->o:Z

    if-eqz v2, :cond_7

    iget-wide v2, p0, Lj$/util/stream/v1;->n:J

    goto :goto_5

    :cond_7
    invoke-direct {p0, v0, v1}, Lj$/util/stream/v1;->k(J)J

    move-result-wide v2

    :goto_5
    cmp-long v4, v2, v0

    if-ltz v4, :cond_8

    goto :goto_7

    :cond_8
    invoke-static {p0}, Lj$/util/K;->l(Lj$/util/stream/e;)Ljava/util/concurrent/CountedCompleter;

    move-result-object v4

    check-cast v4, Lj$/util/stream/e;

    check-cast v4, Lj$/util/stream/v1;

    move-object v5, p0

    :goto_6
    if-eqz v4, :cond_a

    iget-object v6, v4, Lj$/util/stream/e;->e:Lj$/util/stream/e;

    if-ne v5, v6, :cond_9

    iget-object v5, v4, Lj$/util/stream/e;->d:Lj$/util/stream/e;

    check-cast v5, Lj$/util/stream/v1;

    if-eqz v5, :cond_9

    invoke-direct {v5, v0, v1}, Lj$/util/stream/v1;->k(J)J

    move-result-wide v5

    add-long/2addr v2, v5

    cmp-long v5, v2, v0

    if-ltz v5, :cond_9

    goto :goto_7

    :cond_9
    invoke-static {v4}, Lj$/util/K;->l(Lj$/util/stream/e;)Ljava/util/concurrent/CountedCompleter;

    move-result-object v5

    check-cast v5, Lj$/util/stream/e;

    check-cast v5, Lj$/util/stream/v1;

    move-object v12, v5

    move-object v5, v4

    move-object v4, v12

    goto :goto_6

    :cond_a
    cmp-long v4, v2, v0

    if-ltz v4, :cond_b

    :goto_7
    invoke-virtual {p0}, Lj$/util/stream/c;->i()V

    :cond_b
    invoke-super {p0, p1}, Lj$/util/stream/e;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    return-void
.end method
