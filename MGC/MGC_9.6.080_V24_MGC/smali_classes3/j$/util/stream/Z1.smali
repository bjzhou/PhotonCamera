.class final Lj$/util/stream/Z1;
.super Lj$/util/stream/O1;
.source "SourceFile"

# interfaces
.implements Lj$/util/J;


# virtual methods
.method final d()V
    .locals 3

    new-instance v0, Lj$/util/stream/E1;

    invoke-direct {v0}, Lj$/util/stream/I1;-><init>()V

    iput-object v0, p0, Lj$/util/stream/O1;->h:Lj$/util/stream/d;

    new-instance v1, Lj$/util/stream/Y1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lj$/util/stream/Y1;-><init>(Ljava/util/function/IntConsumer;I)V

    iget-object v0, p0, Lj$/util/stream/O1;->b:Lj$/util/stream/b;

    invoke-virtual {v0, v1}, Lj$/util/stream/b;->z(Lj$/util/stream/r1;)Lj$/util/stream/r1;

    move-result-object v0

    iput-object v0, p0, Lj$/util/stream/O1;->e:Lj$/util/stream/r1;

    new-instance v0, Lj$/util/stream/a;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lj$/util/stream/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lj$/util/stream/O1;->f:Ljava/util/function/BooleanSupplier;

    return-void
.end method

.method final e(Lj$/util/Spliterator;)Lj$/util/stream/O1;
    .locals 3

    new-instance v0, Lj$/util/stream/Z1;

    iget-object v1, p0, Lj$/util/stream/O1;->b:Lj$/util/stream/b;

    iget-boolean v2, p0, Lj$/util/stream/O1;->a:Z

    invoke-direct {v0, v1, p1, v2}, Lj$/util/stream/O1;-><init>(Lj$/util/stream/b;Lj$/util/Spliterator;Z)V

    return-object v0
.end method

.method public final bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/Z1;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/b;->b(Lj$/util/J;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 2

    iget-object v0, p0, Lj$/util/stream/O1;->h:Lj$/util/stream/d;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lj$/util/stream/O1;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lj$/util/stream/O1;->c()V

    new-instance v0, Lj$/util/stream/Y1;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lj$/util/stream/Y1;-><init>(Ljava/util/function/IntConsumer;I)V

    iget-object p1, p0, Lj$/util/stream/O1;->d:Lj$/util/Spliterator;

    iget-object v1, p0, Lj$/util/stream/O1;->b:Lj$/util/stream/b;

    invoke-virtual {v1, p1, v0}, Lj$/util/stream/b;->y(Lj$/util/Spliterator;Lj$/util/stream/r1;)Lj$/util/stream/r1;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj$/util/stream/O1;->i:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lj$/util/stream/Z1;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void
.end method

.method public final bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/Z1;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public final synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/b;->f(Lj$/util/J;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public final tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lj$/util/stream/O1;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lj$/util/stream/O1;->h:Lj$/util/stream/d;

    check-cast v1, Lj$/util/stream/E1;

    iget-wide v2, p0, Lj$/util/stream/O1;->g:J

    invoke-virtual {v1, v2, v3}, Lj$/util/stream/I1;->x(J)I

    move-result v4

    iget v5, v1, Lj$/util/stream/d;->b:I

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    iget-object v1, v1, Lj$/util/stream/I1;->d:Ljava/lang/Object;

    check-cast v1, [I

    long-to-int v3, v2

    aget v1, v1, v3

    goto :goto_0

    :cond_0
    iget-object v5, v1, Lj$/util/stream/I1;->e:[Ljava/lang/Object;

    check-cast v5, [[I

    aget-object v5, v5, v4

    iget-object v1, v1, Lj$/util/stream/d;->c:[J

    aget-wide v6, v1, v4

    sub-long/2addr v2, v6

    long-to-int v1, v2

    aget v1, v5, v1

    :goto_0
    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_1
    return v0
.end method

.method public final trySplit()Lj$/util/J;
    .locals 1

    invoke-super {p0}, Lj$/util/stream/O1;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/J;

    return-object v0
.end method

.method public final trySplit()Lj$/util/Q;
    .locals 1

    invoke-super {p0}, Lj$/util/stream/O1;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/J;

    return-object v0
.end method

.method public final trySplit()Lj$/util/Spliterator;
    .locals 1

    invoke-super {p0}, Lj$/util/stream/O1;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/J;

    return-object v0
.end method
