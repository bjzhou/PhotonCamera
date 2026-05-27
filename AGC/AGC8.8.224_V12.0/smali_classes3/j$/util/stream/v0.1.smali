.class final Lj$/util/stream/v0;
.super Lj$/util/stream/o1;

# interfaces
.implements Lj$/util/stream/M;
.implements Lj$/util/stream/I;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj$/util/stream/o1;-><init>()V

    return-void
.end method


# virtual methods
.method public final F()Lj$/util/x;
    .locals 1

    invoke-super {p0}, Lj$/util/stream/o1;->F()Lj$/util/x;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G([Ljava/lang/Long;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/F;->k(Lj$/util/stream/M;[Ljava/lang/Long;I)V

    return-void
.end method

.method public final a()Lj$/util/stream/M;
    .locals 0

    return-object p0
.end method

.method public final a()Lj$/util/stream/O;
    .locals 0

    return-object p0
.end method

.method public final synthetic accept(I)V
    .locals 0

    invoke-static {}, Lj$/util/stream/F;->b()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final accept(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Lj$/util/stream/o1;->accept(J)V

    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/F;->f(Lj$/util/stream/Y0;Ljava/lang/Object;)V

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

    invoke-virtual {p0, p1}, Lj$/util/stream/v0;->c(I)Lj$/util/stream/N;

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

    check-cast v0, [J

    return-object v0
.end method

.method public final k(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/function/LongConsumer;

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

    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/F;->q(Lj$/util/stream/M;JJ)Lj$/util/stream/M;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic r([Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lj$/util/stream/v0;->G([Ljava/lang/Long;I)V

    return-void
.end method

.method public final synthetic s(Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/F;->e(Lj$/util/stream/Y0;Ljava/lang/Long;)V

    return-void
.end method

.method public final spliterator()Lj$/util/A;
    .locals 1

    invoke-super {p0}, Lj$/util/stream/o1;->F()Lj$/util/x;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    invoke-super {p0}, Lj$/util/stream/o1;->F()Lj$/util/x;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic u()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final y(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, [J

    invoke-super {p0, p1, p2}, Lj$/util/stream/q1;->y(ILjava/lang/Object;)V

    return-void
.end method
