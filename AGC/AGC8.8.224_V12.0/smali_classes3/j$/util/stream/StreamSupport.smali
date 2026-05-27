.class public final Lj$/util/stream/StreamSupport;
.super Ljava/lang/Object;


# direct methods
.method public static stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/Spliterator<",
            "TT;>;Z)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/R0;

    sget-object v1, Lj$/util/stream/u1;->DISTINCT:Lj$/util/stream/u1;

    invoke-interface {p0}, Lj$/util/Spliterator;->characteristics()I

    move-result v1

    and-int/lit8 v2, v1, 0x4

    sget v3, Lj$/util/stream/u1;->f:I

    if-eqz v2, :cond_0

    invoke-interface {p0}, Lj$/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v2

    if-eqz v2, :cond_0

    and-int/2addr v1, v3

    and-int/lit8 v1, v1, -0x5

    goto :goto_0

    :cond_0
    and-int/2addr v1, v3

    :goto_0
    invoke-direct {v0, p0, v1, p1}, Lj$/util/stream/R0;-><init>(Lj$/util/Spliterator;IZ)V

    return-object v0
.end method

.method public static stream(Ljava/util/function/Supplier;IZ)Lj$/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "+",
            "Lj$/util/Spliterator<",
            "TT;>;>;IZ)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/R0;

    sget v1, Lj$/util/stream/u1;->f:I

    and-int/2addr p1, v1

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/R0;-><init>(Ljava/util/function/Supplier;IZ)V

    return-object v0
.end method
