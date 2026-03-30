.class final Lj$/util/stream/Y0;
.super Lj$/util/stream/M;
.source "SourceFile"


# virtual methods
.method public final K()Lj$/util/stream/b1;
    .locals 1

    new-instance v0, Lj$/util/stream/d1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0
.end method

.method public final b(Lj$/util/stream/b;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lj$/util/stream/M1;->SIZED:Lj$/util/stream/M1;

    invoke-virtual {p1}, Lj$/util/stream/b;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/M1;->s(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lj$/util/stream/M;->b(Lj$/util/stream/b;Lj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    :goto_0
    return-object p1
.end method

.method public final c(Lj$/util/stream/b;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lj$/util/stream/M1;->SIZED:Lj$/util/stream/M1;

    invoke-virtual {p1}, Lj$/util/stream/b;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/M1;->s(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lj$/util/stream/M;->c(Lj$/util/stream/b;Lj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    :goto_0
    return-object p1
.end method

.method public final d()I
    .locals 1

    sget v0, Lj$/util/stream/M1;->q:I

    return v0
.end method
