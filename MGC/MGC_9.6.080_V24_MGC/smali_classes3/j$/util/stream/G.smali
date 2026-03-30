.class abstract Lj$/util/stream/G;
.super Lj$/util/stream/b;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/LongStream;


# virtual methods
.method public final boxed()Lj$/util/stream/Stream;
    .locals 2

    new-instance v0, Lj$/util/stream/n;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lj$/util/stream/n;-><init>(I)V

    new-instance v1, Lj$/util/stream/y;

    invoke-direct {v1, p0, v0}, Lj$/util/stream/y;-><init>(Lj$/util/stream/G;Lj$/util/stream/n;)V

    return-object v1
.end method

.method final h(Lj$/util/stream/b;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/Z;
    .locals 7

    invoke-virtual {p1, p2}, Lj$/util/stream/b;->i(Lj$/util/Spliterator;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-string p4, "Stream size exceeds max array size"

    const-wide/32 v4, 0x7ffffff7

    cmp-long v6, v0, v2

    if-ltz v6, :cond_1

    const/16 v2, 0x4000

    invoke-interface {p2, v2}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_1

    cmp-long p3, v0, v4

    if-gez p3, :cond_0

    long-to-int p3, v0

    new-array p3, p3, [J

    new-instance p4, Lj$/util/stream/J0;

    invoke-direct {p4, p2, p1, p3}, Lj$/util/stream/J0;-><init>(Lj$/util/Spliterator;Lj$/util/stream/b;[J)V

    invoke-virtual {p4}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    new-instance p1, Lj$/util/stream/D0;

    invoke-direct {p1, p3}, Lj$/util/stream/D0;-><init>([J)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Lj$/util/stream/e0;

    new-instance v1, Lj$/util/stream/f;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lj$/util/stream/f;-><init>(I)V

    new-instance v2, Lj$/util/stream/f;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Lj$/util/stream/f;-><init>(I)V

    invoke-direct {v0, p1, p2, v1, v2}, Lj$/util/stream/f0;-><init>(Lj$/util/stream/b;Lj$/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/X;

    if-eqz p3, :cond_3

    invoke-interface {p1}, Lj$/util/stream/Z;->s()I

    move-result p2

    if-lez p2, :cond_3

    invoke-interface {p1}, Lj$/util/stream/Z;->count()J

    move-result-wide p2

    cmp-long v0, p2, v4

    if-gez v0, :cond_2

    long-to-int p3, p2

    new-array p2, p3, [J

    new-instance p3, Lj$/util/stream/N0;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p2, p4}, Lj$/util/stream/O0;-><init>(Lj$/util/stream/Z;Ljava/lang/Object;I)V

    invoke-virtual {p3}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    new-instance p1, Lj$/util/stream/D0;

    invoke-direct {p1, p2}, Lj$/util/stream/D0;-><init>([J)V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    invoke-super {p0}, Lj$/util/stream/b;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    instance-of v1, v0, Lj$/util/N;

    if-eqz v1, :cond_0

    check-cast v0, Lj$/util/N;

    invoke-static {v0}, Lj$/util/Spliterators;->h(Lj$/util/N;)Lj$/util/C;

    move-result-object v0

    return-object v0

    :cond_0
    sget-boolean v0, Lj$/util/stream/r2;->a:Z

    if-eqz v0, :cond_1

    const-class v0, Lj$/util/stream/b;

    const-string v1, "using LongStream.adapt(Spliterator<Long> s)"

    invoke-static {v0, v1}, Lj$/util/stream/r2;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LongStream.adapt(Spliterator<Long> s)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final j(Lj$/util/Spliterator;Lj$/util/stream/r1;)Z
    .locals 3

    instance-of v0, p1, Lj$/util/N;

    const/4 v1, 0x0

    const-class v2, Lj$/util/stream/b;

    if-eqz v0, :cond_4

    check-cast p1, Lj$/util/N;

    instance-of v0, p2, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/util/function/LongConsumer;

    goto :goto_0

    :cond_0
    sget-boolean v0, Lj$/util/stream/r2;->a:Z

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/D;

    invoke-direct {v0, p2}, Lj$/util/stream/D;-><init>(Lj$/util/stream/r1;)V

    :cond_1
    :goto_0
    invoke-interface {p2}, Lj$/util/stream/r1;->n()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1, v0}, Lj$/util/N;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    return v1

    :cond_3
    const-string p1, "using LongStream.adapt(Sink<Long> s)"

    invoke-static {v2, p1}, Lj$/util/stream/r2;->a(Ljava/lang/Class;Ljava/lang/String;)V

    throw v1

    :cond_4
    sget-boolean p1, Lj$/util/stream/r2;->a:Z

    if-eqz p1, :cond_5

    const-string p1, "using LongStream.adapt(Spliterator<Long> s)"

    invoke-static {v2, p1}, Lj$/util/stream/r2;->a(Ljava/lang/Class;Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "LongStream.adapt(Spliterator<Long> s)"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final k()Lj$/util/stream/N1;
    .locals 1

    sget-object v0, Lj$/util/stream/N1;->LONG_VALUE:Lj$/util/stream/N1;

    return-object v0
.end method

.method public final max()Lj$/util/OptionalLong;
    .locals 4

    new-instance v0, Lj$/util/stream/n;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lj$/util/stream/n;-><init>(I)V

    new-instance v1, Lj$/util/stream/Q0;

    sget-object v2, Lj$/util/stream/N1;->LONG_VALUE:Lj$/util/stream/N1;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lj$/util/stream/Q0;-><init>(Lj$/util/stream/N1;Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Lj$/util/stream/b;->f(Lj$/util/stream/o2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/OptionalLong;

    return-object v0
.end method

.method final p(Ljava/util/function/Supplier;)Lj$/util/Spliterator;
    .locals 1

    new-instance v0, Lj$/util/stream/S1;

    invoke-direct {v0, p1}, Lj$/util/stream/U1;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method final q(JLjava/util/function/IntFunction;)Lj$/util/stream/Q;
    .locals 0

    invoke-static {p1, p2}, Lj$/util/stream/M;->H(J)Lj$/util/stream/P;

    move-result-object p1

    return-object p1
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 2

    invoke-super {p0}, Lj$/util/stream/b;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    instance-of v1, v0, Lj$/util/N;

    if-eqz v1, :cond_0

    check-cast v0, Lj$/util/N;

    return-object v0

    :cond_0
    sget-boolean v0, Lj$/util/stream/r2;->a:Z

    if-eqz v0, :cond_1

    const-class v0, Lj$/util/stream/b;

    const-string v1, "using LongStream.adapt(Spliterator<Long> s)"

    invoke-static {v0, v1}, Lj$/util/stream/r2;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LongStream.adapt(Spliterator<Long> s)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final x(Lj$/util/stream/b;Ljava/util/function/Supplier;Z)Lj$/util/Spliterator;
    .locals 1

    new-instance v0, Lj$/util/stream/b2;

    invoke-direct {v0, p1, p2, p3}, Lj$/util/stream/O1;-><init>(Lj$/util/stream/b;Ljava/util/function/Supplier;Z)V

    return-object v0
.end method
