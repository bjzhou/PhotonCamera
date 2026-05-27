.class final Lj$/util/stream/X;
.super Lj$/util/stream/Z;

# interfaces
.implements Lj$/util/stream/L;


# direct methods
.method constructor <init>(Lj$/util/stream/L;Lj$/util/stream/L;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/Z;-><init>(Lj$/util/stream/N;Lj$/util/stream/N;)V

    return-void
.end method


# virtual methods
.method public final synthetic a([Ljava/lang/Integer;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/F;->j(Lj$/util/stream/L;[Ljava/lang/Integer;I)V

    return-void
.end method

.method public final e(I)Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [I

    return-object p1
.end method

.method public final synthetic forEach(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/F;->m(Lj$/util/stream/L;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic q(JJLjava/util/function/IntFunction;)Lj$/util/stream/O;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/F;->p(Lj$/util/stream/L;JJ)Lj$/util/stream/L;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic r([Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lj$/util/stream/X;->a([Ljava/lang/Integer;I)V

    return-void
.end method

.method public final spliterator()Lj$/util/A;
    .locals 1

    new-instance v0, Lj$/util/stream/o0;

    invoke-direct {v0, p0}, Lj$/util/stream/o0;-><init>(Lj$/util/stream/L;)V

    return-object v0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    new-instance v0, Lj$/util/stream/o0;

    invoke-direct {v0, p0}, Lj$/util/stream/o0;-><init>(Lj$/util/stream/L;)V

    return-object v0
.end method
