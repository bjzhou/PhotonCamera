.class final Lj$/util/stream/k0;
.super Lj$/util/stream/b0;
.source "SourceFile"


# virtual methods
.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/b0;->a:Lj$/util/stream/Z;

    invoke-interface {v0, p1}, Lj$/util/stream/Z;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lj$/util/stream/b0;->b:Lj$/util/stream/Z;

    invoke-interface {v0, p1}, Lj$/util/stream/Z;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final g(JJLjava/util/function/IntFunction;)Lj$/util/stream/Z;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lj$/util/stream/b0;->count()J

    move-result-wide v0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lj$/util/stream/b0;->a:Lj$/util/stream/Z;

    invoke-interface {v0}, Lj$/util/stream/Z;->count()J

    move-result-wide v7

    cmp-long v0, p1, v7

    if-ltz v0, :cond_1

    sub-long v2, p1, v7

    sub-long v4, p3, v7

    iget-object v1, p0, Lj$/util/stream/b0;->b:Lj$/util/stream/Z;

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lj$/util/stream/Z;->g(JJLjava/util/function/IntFunction;)Lj$/util/stream/Z;

    move-result-object p1

    return-object p1

    :cond_1
    cmp-long v0, p3, v7

    if-gtz v0, :cond_2

    iget-object v1, p0, Lj$/util/stream/b0;->a:Lj$/util/stream/Z;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lj$/util/stream/Z;->g(JJLjava/util/function/IntFunction;)Lj$/util/stream/Z;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object v0, Lj$/util/stream/N1;->REFERENCE:Lj$/util/stream/N1;

    iget-object v1, p0, Lj$/util/stream/b0;->a:Lj$/util/stream/Z;

    move-wide v2, p1

    move-wide v4, v7

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lj$/util/stream/Z;->g(JJLjava/util/function/IntFunction;)Lj$/util/stream/Z;

    move-result-object p1

    sub-long v4, p3, v7

    iget-object v1, p0, Lj$/util/stream/b0;->b:Lj$/util/stream/Z;

    const-wide/16 v2, 0x0

    invoke-interface/range {v1 .. v6}, Lj$/util/stream/Z;->g(JJLjava/util/function/IntFunction;)Lj$/util/stream/Z;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lj$/util/stream/M;->C(Lj$/util/stream/N1;Lj$/util/stream/Z;Lj$/util/stream/Z;)Lj$/util/stream/b0;

    move-result-object p1

    return-object p1
.end method

.method public final h([Ljava/lang/Object;I)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lj$/util/stream/b0;->a:Lj$/util/stream/Z;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/Z;->h([Ljava/lang/Object;I)V

    invoke-interface {v0}, Lj$/util/stream/Z;->count()J

    move-result-wide v0

    long-to-int v1, v0

    add-int/2addr p2, v1

    iget-object v0, p0, Lj$/util/stream/b0;->b:Lj$/util/stream/Z;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/Z;->h([Ljava/lang/Object;I)V

    return-void
.end method

.method public final o(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Lj$/util/stream/b0;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    long-to-int v1, v0

    invoke-interface {p1, v1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lj$/util/stream/k0;->h([Ljava/lang/Object;I)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stream size exceeds max array size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    new-instance v0, Lj$/util/stream/B0;

    invoke-direct {v0, p0}, Lj$/util/stream/C0;-><init>(Lj$/util/stream/Z;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lj$/util/stream/b0;->count()J

    move-result-wide v2

    const-wide/16 v4, 0x20

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    iget-object v2, p0, Lj$/util/stream/b0;->a:Lj$/util/stream/Z;

    iget-object v3, p0, Lj$/util/stream/b0;->b:Lj$/util/stream/Z;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    aput-object v3, v4, v0

    const-string v0, "ConcNode[%s.%s]"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lj$/util/stream/b0;->count()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    const-string v1, "ConcNode[size=%d]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
