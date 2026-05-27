.class public final synthetic Lj$/util/stream/IntStream$-CC;
.super Ljava/lang/Object;


# direct methods
.method public static iterate(ILjava/util/function/IntUnaryOperator;)Lj$/util/stream/IntStream;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/y;

    invoke-direct {v0, p1, p0}, Lj$/util/stream/y;-><init>(Ljava/util/function/IntUnaryOperator;I)V

    new-instance p0, Lj$/util/stream/x;

    sget-object p1, Lj$/util/stream/u1;->DISTINCT:Lj$/util/stream/u1;

    invoke-virtual {v0}, Lj$/util/I;->characteristics()I

    move-result p1

    and-int/lit8 v1, p1, 0x4

    sget v2, Lj$/util/stream/u1;->f:I

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lj$/util/I;->getComparator()Ljava/util/Comparator;

    move-result-object v1

    if-eqz v1, :cond_0

    and-int/2addr p1, v2

    and-int/lit8 p1, p1, -0x5

    goto :goto_0

    :cond_0
    and-int/2addr p1, v2

    :goto_0
    invoke-direct {p0, v0, p1}, Lj$/util/stream/x;-><init>(Lj$/util/Spliterator;I)V

    return-object p0
.end method
