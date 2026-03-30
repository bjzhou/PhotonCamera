.class final Lj$/util/stream/i0;
.super Lj$/util/stream/j0;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/X;


# virtual methods
.method public final c(I)Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [J

    return-object p1
.end method

.method public final synthetic forEach(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/M;->s(Lj$/util/stream/X;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic g(JJLjava/util/function/IntFunction;)Lj$/util/stream/Z;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/M;->v(Lj$/util/stream/X;JJ)Lj$/util/stream/X;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic h([Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, [Ljava/lang/Long;

    invoke-static {p0, p1, p2}, Lj$/util/stream/M;->p(Lj$/util/stream/X;[Ljava/lang/Long;I)V

    return-void
.end method

.method public final spliterator()Lj$/util/Q;
    .locals 1

    new-instance v0, Lj$/util/stream/z0;

    invoke-direct {v0, p0}, Lj$/util/stream/C0;-><init>(Lj$/util/stream/Z;)V

    return-object v0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    new-instance v0, Lj$/util/stream/z0;

    invoke-direct {v0, p0}, Lj$/util/stream/C0;-><init>(Lj$/util/stream/Z;)V

    return-object v0
.end method
