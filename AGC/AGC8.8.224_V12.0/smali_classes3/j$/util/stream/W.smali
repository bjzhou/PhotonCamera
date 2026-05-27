.class final Lj$/util/stream/W;
.super Lj$/util/stream/Z;

# interfaces
.implements Lj$/util/stream/K;


# direct methods
.method constructor <init>(Lj$/util/stream/K;Lj$/util/stream/K;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/Z;-><init>(Lj$/util/stream/N;Lj$/util/stream/N;)V

    return-void
.end method


# virtual methods
.method public final synthetic a([Ljava/lang/Double;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/F;->i(Lj$/util/stream/K;[Ljava/lang/Double;I)V

    return-void
.end method

.method public final e(I)Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [D

    return-object p1
.end method

.method public final synthetic forEach(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/F;->l(Lj$/util/stream/K;Ljava/util/function/Consumer;)V

    return-void
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

    invoke-virtual {p0, p1, p2}, Lj$/util/stream/W;->a([Ljava/lang/Double;I)V

    return-void
.end method

.method public final spliterator()Lj$/util/A;
    .locals 1

    new-instance v0, Lj$/util/stream/n0;

    invoke-direct {v0, p0}, Lj$/util/stream/n0;-><init>(Lj$/util/stream/K;)V

    return-object v0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    new-instance v0, Lj$/util/stream/n0;

    invoke-direct {v0, p0}, Lj$/util/stream/n0;-><init>(Lj$/util/stream/K;)V

    return-object v0
.end method
