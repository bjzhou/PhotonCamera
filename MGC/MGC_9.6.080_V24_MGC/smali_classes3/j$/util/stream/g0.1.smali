.class final Lj$/util/stream/g0;
.super Lj$/util/stream/j0;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/T;


# virtual methods
.method public final c(I)Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [D

    return-object p1
.end method

.method public final synthetic forEach(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/M;->q(Lj$/util/stream/T;Ljava/util/function/Consumer;)V

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

.method public final spliterator()Lj$/util/Q;
    .locals 1

    new-instance v0, Lj$/util/stream/x0;

    invoke-direct {v0, p0}, Lj$/util/stream/C0;-><init>(Lj$/util/stream/Z;)V

    return-object v0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    new-instance v0, Lj$/util/stream/x0;

    invoke-direct {v0, p0}, Lj$/util/stream/C0;-><init>(Lj$/util/stream/Z;)V

    return-object v0
.end method
