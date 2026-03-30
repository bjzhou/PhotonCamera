.class final Lj$/util/stream/n0;
.super Lj$/util/stream/C1;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/T;
.implements Lj$/util/stream/N;


# virtual methods
.method public final a()Lj$/util/stream/T;
    .locals 0

    return-object p0
.end method

.method public final a()Lj$/util/stream/Z;
    .locals 0

    return-object p0
.end method

.method public final synthetic accept(I)V
    .locals 0

    invoke-static {}, Lj$/util/stream/M;->k()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/M;->l()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/M;->f(Lj$/util/stream/o1;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)Lj$/util/stream/Y;
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic b(I)Lj$/util/stream/Z;
    .locals 0

    invoke-virtual {p0, p1}, Lj$/util/stream/n0;->b(I)Lj$/util/stream/Y;

    const/4 p1, 0x0

    throw p1
.end method

.method public final d()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lj$/util/stream/I1;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-super {p0, p1}, Lj$/util/stream/I1;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic g(JJLjava/util/function/IntFunction;)Lj$/util/stream/Z;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/M;->t(Lj$/util/stream/T;JJ)Lj$/util/stream/T;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic h([Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, [Ljava/lang/Double;

    invoke-static {p0, p1, p2}, Lj$/util/stream/M;->n(Lj$/util/stream/T;[Ljava/lang/Double;I)V

    return-void
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public final k(J)V
    .locals 0

    invoke-virtual {p0}, Lj$/util/stream/I1;->clear()V

    invoke-virtual {p0, p1, p2}, Lj$/util/stream/I1;->y(J)V

    return-void
.end method

.method public final synthetic n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic o(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/M;->m(Lj$/util/stream/Y;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic r(Ljava/lang/Double;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/M;->e(Lj$/util/stream/o1;Ljava/lang/Double;)V

    return-void
.end method

.method public final synthetic s()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final spliterator()Lj$/util/Q;
    .locals 1

    invoke-super {p0}, Lj$/util/stream/C1;->C()Lj$/util/G;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    invoke-super {p0}, Lj$/util/stream/C1;->C()Lj$/util/G;

    move-result-object v0

    return-object v0
.end method

.method public final t(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, [D

    invoke-super {p0, p1, p2}, Lj$/util/stream/I1;->t(ILjava/lang/Object;)V

    return-void
.end method
