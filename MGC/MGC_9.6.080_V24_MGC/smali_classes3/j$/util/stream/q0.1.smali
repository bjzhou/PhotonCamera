.class final Lj$/util/stream/q0;
.super Lj$/util/stream/s0;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/X;


# virtual methods
.method public final b(I)Lj$/util/stream/Y;
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic b(I)Lj$/util/stream/Z;
    .locals 0

    invoke-virtual {p0, p1}, Lj$/util/stream/q0;->b(I)Lj$/util/stream/Y;

    const/4 p1, 0x0

    throw p1
.end method

.method public final d()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lj$/util/stream/M;->z()[J

    move-result-object v0

    return-object v0
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

    invoke-static {}, Lj$/util/Spliterators;->d()Lj$/util/N;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    invoke-static {}, Lj$/util/Spliterators;->d()Lj$/util/N;

    move-result-object v0

    return-object v0
.end method
