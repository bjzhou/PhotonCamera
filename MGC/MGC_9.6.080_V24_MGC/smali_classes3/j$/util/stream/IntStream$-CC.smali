.class public final synthetic Lj$/util/stream/IntStream$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static iterate(ILjava/util/function/IntUnaryOperator;)Lj$/util/stream/IntStream;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/C;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/C;-><init>(ILjava/util/function/IntUnaryOperator;)V

    new-instance p0, Lj$/util/stream/A;

    invoke-static {v0}, Lj$/util/stream/M1;->r(Lj$/util/Spliterator;)I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lj$/util/stream/b;-><init>(Lj$/util/Spliterator;IZ)V

    return-object p0
.end method

.method public static range(II)Lj$/util/stream/IntStream;
    .locals 2

    const/4 v0, 0x0

    if-lt p0, p1, :cond_0

    invoke-static {}, Lj$/util/Spliterators;->c()Lj$/util/J;

    move-result-object p0

    new-instance p1, Lj$/util/stream/A;

    invoke-static {p0}, Lj$/util/stream/M1;->r(Lj$/util/Spliterator;)I

    move-result v1

    invoke-direct {p1, p0, v1, v0}, Lj$/util/stream/b;-><init>(Lj$/util/Spliterator;IZ)V

    return-object p1

    :cond_0
    new-instance v1, Lj$/util/stream/n2;

    invoke-direct {v1, p0, p1, v0}, Lj$/util/stream/n2;-><init>(III)V

    new-instance p0, Lj$/util/stream/A;

    invoke-static {v1}, Lj$/util/stream/M1;->r(Lj$/util/Spliterator;)I

    move-result p1

    invoke-direct {p0, v1, p1, v0}, Lj$/util/stream/b;-><init>(Lj$/util/Spliterator;IZ)V

    return-object p0
.end method
