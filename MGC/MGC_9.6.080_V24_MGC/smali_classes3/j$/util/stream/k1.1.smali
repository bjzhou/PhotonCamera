.class abstract Lj$/util/stream/k1;
.super Lj$/util/stream/b;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/Stream;


# virtual methods
.method public final allMatch(Ljava/util/function/Predicate;)Z
    .locals 1

    sget-object v0, Lj$/util/stream/J;->ALL:Lj$/util/stream/J;

    invoke-static {v0, p1}, Lj$/util/stream/M;->I(Lj$/util/stream/J;Ljava/util/function/Predicate;)Lj$/util/stream/K;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/util/stream/b;->f(Lj$/util/stream/o2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final anyMatch(Ljava/util/function/Predicate;)Z
    .locals 1

    sget-object v0, Lj$/util/stream/J;->ANY:Lj$/util/stream/J;

    invoke-static {v0, p1}, Lj$/util/stream/M;->I(Lj$/util/stream/J;Ljava/util/function/Predicate;)Lj$/util/stream/K;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/util/stream/b;->f(Lj$/util/stream/o2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final collect(Lj$/util/stream/Collector;)Ljava/lang/Object;
    .locals 10

    invoke-virtual {p0}, Lj$/util/stream/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lj$/util/stream/Collector$Characteristics;->CONCURRENT:Lj$/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lj$/util/stream/b;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lj$/util/stream/Collector$Characteristics;->UNORDERED:Lj$/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p1}, Lj$/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lj$/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v1

    new-instance v2, Lj$/util/stream/H;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v1, v0}, Lj$/util/stream/H;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lj$/util/stream/k1;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lj$/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v8

    invoke-interface {p1}, Lj$/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v7

    invoke-interface {p1}, Lj$/util/stream/Collector;->a()Ljava/util/function/BinaryOperator;

    move-result-object v6

    new-instance v0, Lj$/util/stream/V0;

    sget-object v5, Lj$/util/stream/N1;->REFERENCE:Lj$/util/stream/N1;

    move-object v4, v0

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lj$/util/stream/V0;-><init>(Lj$/util/stream/N1;Ljava/util/function/BinaryOperator;Ljava/util/function/BiConsumer;Ljava/util/function/Supplier;Lj$/util/stream/Collector;)V

    invoke-virtual {p0, v0}, Lj$/util/stream/b;->f(Lj$/util/stream/o2;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-interface {p1}, Lj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Lj$/util/stream/Collector$Characteristics;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lj$/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final count()J
    .locals 2

    new-instance v0, Lj$/util/stream/Y0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Lj$/util/stream/b;->f(Lj$/util/stream/o2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final distinct()Lj$/util/stream/Stream;
    .locals 3

    new-instance v0, Lj$/util/stream/l;

    sget v1, Lj$/util/stream/M1;->m:I

    sget v2, Lj$/util/stream/M1;->s:I

    or-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/j1;-><init>(Lj$/util/stream/b;II)V

    return-object v0
.end method

.method public final filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/y;

    sget v1, Lj$/util/stream/M1;->s:I

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/y;-><init>(Lj$/util/stream/b;ILjava/lang/Object;I)V

    return-object v0
.end method

.method public final findAny()Lj$/util/Optional;
    .locals 1

    sget-object v0, Lj$/util/stream/q;->d:Lj$/util/stream/o;

    invoke-virtual {p0, v0}, Lj$/util/stream/b;->f(Lj$/util/stream/o2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/Optional;

    return-object v0
.end method

.method public final findFirst()Lj$/util/Optional;
    .locals 1

    sget-object v0, Lj$/util/stream/q;->c:Lj$/util/stream/o;

    invoke-virtual {p0, v0}, Lj$/util/stream/b;->f(Lj$/util/stream/o2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/Optional;

    return-object v0
.end method

.method public final flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/f1;

    sget v1, Lj$/util/stream/M1;->o:I

    sget v2, Lj$/util/stream/M1;->n:I

    or-int/2addr v1, v2

    sget v2, Lj$/util/stream/M1;->s:I

    or-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/f1;-><init>(Lj$/util/stream/k1;ILjava/util/function/Function;I)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/t;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lj$/util/stream/t;-><init>(Ljava/util/function/Consumer;Z)V

    invoke-virtual {p0, v0}, Lj$/util/stream/b;->f(Lj$/util/stream/o2;)Ljava/lang/Object;

    return-void
.end method

.method public forEachOrdered(Ljava/util/function/Consumer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/t;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lj$/util/stream/t;-><init>(Ljava/util/function/Consumer;Z)V

    invoke-virtual {p0, v0}, Lj$/util/stream/b;->f(Lj$/util/stream/o2;)Ljava/lang/Object;

    return-void
.end method

.method final h(Lj$/util/stream/b;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/Z;
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lj$/util/stream/M;->B(Lj$/util/stream/b;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/Z;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/b;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterators;->i(Lj$/util/Spliterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method final j(Lj$/util/Spliterator;Lj$/util/stream/r1;)Z
    .locals 2

    :cond_0
    invoke-interface {p2}, Lj$/util/stream/r1;->n()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p2}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    return v0
.end method

.method final k()Lj$/util/stream/N1;
    .locals 1

    sget-object v0, Lj$/util/stream/N1;->REFERENCE:Lj$/util/stream/N1;

    return-object v0
.end method

.method public final limit(J)Lj$/util/stream/Stream;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    invoke-static {p0, v0, v1, p1, p2}, Lj$/util/stream/M;->J(Lj$/util/stream/k1;JJ)Lj$/util/stream/Stream;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final map(Ljava/util/function/Function;)Lj$/util/stream/Stream;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/f1;

    sget v1, Lj$/util/stream/M1;->o:I

    sget v2, Lj$/util/stream/M1;->n:I

    or-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/f1;-><init>(Lj$/util/stream/k1;ILjava/util/function/Function;I)V

    return-object v0
.end method

.method public final mapToDouble(Ljava/util/function/ToDoubleFunction;)Lj$/util/stream/DoubleStream;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/h1;

    sget v1, Lj$/util/stream/M1;->o:I

    sget v2, Lj$/util/stream/M1;->n:I

    or-int/2addr v1, v2

    invoke-direct {v0, p0, v1, p1}, Lj$/util/stream/h1;-><init>(Lj$/util/stream/k1;ILjava/util/function/ToDoubleFunction;)V

    return-object v0
.end method

.method public final mapToInt(Ljava/util/function/ToIntFunction;)Lj$/util/stream/IntStream;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/z;

    sget v1, Lj$/util/stream/M1;->o:I

    sget v2, Lj$/util/stream/M1;->n:I

    or-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/z;-><init>(Lj$/util/stream/b;ILjava/lang/Object;I)V

    return-object v0
.end method

.method public final mapToLong(Ljava/util/function/ToLongFunction;)Lj$/util/stream/LongStream;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/g1;

    sget v1, Lj$/util/stream/M1;->o:I

    sget v2, Lj$/util/stream/M1;->n:I

    or-int/2addr v1, v2

    invoke-direct {v0, p0, v1, p1}, Lj$/util/stream/g1;-><init>(Lj$/util/stream/k1;ILjava/util/function/ToLongFunction;)V

    return-object v0
.end method

.method public final min(Ljava/util/Comparator;)Lj$/util/Optional;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/desugar/sun/nio/fs/h;

    invoke-direct {v0, p1}, Lj$/desugar/sun/nio/fs/h;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lj$/util/stream/Q0;

    sget-object v1, Lj$/util/stream/N1;->REFERENCE:Lj$/util/stream/N1;

    const/4 v2, 0x2

    invoke-direct {p1, v1, v0, v2}, Lj$/util/stream/Q0;-><init>(Lj$/util/stream/N1;Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lj$/util/stream/b;->f(Lj$/util/stream/o2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/Optional;

    return-object p1
.end method

.method public final noneMatch(Ljava/util/function/Predicate;)Z
    .locals 1

    sget-object v0, Lj$/util/stream/J;->NONE:Lj$/util/stream/J;

    invoke-static {v0, p1}, Lj$/util/stream/M;->I(Lj$/util/stream/J;Ljava/util/function/Predicate;)Lj$/util/stream/K;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/util/stream/b;->f(Lj$/util/stream/o2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method final p(Ljava/util/function/Supplier;)Lj$/util/Spliterator;
    .locals 1

    new-instance v0, Lj$/util/stream/U1;

    invoke-direct {v0, p1}, Lj$/util/stream/U1;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method final q(JLjava/util/function/IntFunction;)Lj$/util/stream/Q;
    .locals 0

    invoke-static {p1, p2, p3}, Lj$/util/stream/M;->A(JLjava/util/function/IntFunction;)Lj$/util/stream/Q;

    move-result-object p1

    return-object p1
.end method

.method public final skip(J)Lj$/util/stream/Stream;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Lj$/util/stream/M;->J(Lj$/util/stream/k1;JJ)Lj$/util/stream/Stream;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sorted(Ljava/util/Comparator;)Lj$/util/stream/Stream;
    .locals 1

    new-instance v0, Lj$/util/stream/x1;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/x1;-><init>(Lj$/util/stream/k1;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public final toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lj$/util/stream/b;->g(Ljava/util/function/IntFunction;)Lj$/util/stream/Z;

    move-result-object v0

    invoke-static {v0, p1}, Lj$/util/stream/M;->F(Lj$/util/stream/Z;Ljava/util/function/IntFunction;)Lj$/util/stream/Z;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/stream/Z;->o(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final x(Lj$/util/stream/b;Ljava/util/function/Supplier;Z)Lj$/util/Spliterator;
    .locals 1

    new-instance v0, Lj$/util/stream/k2;

    invoke-direct {v0, p1, p2, p3}, Lj$/util/stream/O1;-><init>(Lj$/util/stream/b;Ljava/util/function/Supplier;Z)V

    return-object v0
.end method
