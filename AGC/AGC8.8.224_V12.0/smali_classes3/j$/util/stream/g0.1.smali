.class final Lj$/util/stream/g0;
.super Lj$/util/stream/i0;

# interfaces
.implements Lj$/util/stream/M;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj$/util/stream/i0;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a([Ljava/lang/Long;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/F;->k(Lj$/util/stream/M;[Ljava/lang/Long;I)V

    return-void
.end method

.method public final c(I)Lj$/util/stream/N;
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic c(I)Lj$/util/stream/O;
    .locals 0

    invoke-virtual {p0, p1}, Lj$/util/stream/g0;->c(I)Lj$/util/stream/N;

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic forEach(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/F;->n(Lj$/util/stream/M;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final i()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lj$/util/stream/E0;->f()[J

    move-result-object v0

    return-object v0
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

    invoke-virtual {p0, p1, p2}, Lj$/util/stream/g0;->a([Ljava/lang/Long;I)V

    return-void
.end method

.method public final spliterator()Lj$/util/A;
    .locals 1

    invoke-static {}, Lj$/util/U;->d()Lj$/util/x;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    invoke-static {}, Lj$/util/U;->d()Lj$/util/x;

    move-result-object v0

    return-object v0
.end method
