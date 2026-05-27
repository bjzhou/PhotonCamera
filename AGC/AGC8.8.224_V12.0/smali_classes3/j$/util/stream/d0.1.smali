.class final Lj$/util/stream/d0;
.super Lj$/util/stream/k1;

# interfaces
.implements Lj$/util/stream/K;
.implements Lj$/util/stream/G;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj$/util/stream/k1;-><init>()V

    return-void
.end method


# virtual methods
.method public final F()Lj$/util/r;
    .locals 7

    new-instance v6, Lj$/util/stream/j1;

    const/4 v2, 0x0

    iget v3, p0, Lj$/util/stream/e;->b:I

    const/4 v4, 0x0

    iget v5, p0, Lj$/util/stream/e;->a:I

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/j1;-><init>(Lj$/util/stream/k1;IIII)V

    return-object v6
.end method

.method public final G(Ljava/lang/Double;)V
    .locals 2

    sget-boolean v0, Lj$/util/stream/a2;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lj$/util/stream/d0;->accept(D)V

    return-void

    :cond_0
    const-class p1, Lj$/util/stream/d0;

    const-string v0, "{0} calling Sink.OfDouble.accept(Double)"

    invoke-static {p1, v0}, Lj$/util/stream/a2;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic H([Ljava/lang/Double;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/F;->i(Lj$/util/stream/K;[Ljava/lang/Double;I)V

    return-void
.end method

.method public final a()Lj$/util/stream/K;
    .locals 0

    return-object p0
.end method

.method public final a()Lj$/util/stream/O;
    .locals 0

    return-object p0
.end method

.method public final accept(D)V
    .locals 0

    invoke-super {p0, p1, p2}, Lj$/util/stream/k1;->accept(D)V

    return-void
.end method

.method public final synthetic accept(I)V
    .locals 0

    invoke-static {}, Lj$/util/stream/F;->b()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/F;->g()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lj$/util/stream/d0;->G(Ljava/lang/Double;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public final c(I)Lj$/util/stream/N;
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic c(I)Lj$/util/stream/O;
    .locals 0

    invoke-virtual {p0, p1}, Lj$/util/stream/d0;->c(I)Lj$/util/stream/N;

    const/4 p1, 0x0

    throw p1
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final h(J)V
    .locals 0

    invoke-virtual {p0}, Lj$/util/stream/q1;->clear()V

    invoke-virtual {p0, p1, p2}, Lj$/util/stream/q1;->C(J)V

    return-void
.end method

.method public final i()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lj$/util/stream/q1;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public final k(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-super {p0, p1}, Lj$/util/stream/q1;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic n(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/F;->h(Lj$/util/stream/N;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic q(JJLjava/util/function/IntFunction;)Lj$/util/stream/O;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/F;->o(Lj$/util/stream/K;JJ)Lj$/util/stream/K;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic r([Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, [Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lj$/util/stream/d0;->H([Ljava/lang/Double;I)V

    return-void
.end method

.method public final synthetic u()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final y(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, [D

    invoke-super {p0, p1, p2}, Lj$/util/stream/q1;->y(ILjava/lang/Object;)V

    return-void
.end method
