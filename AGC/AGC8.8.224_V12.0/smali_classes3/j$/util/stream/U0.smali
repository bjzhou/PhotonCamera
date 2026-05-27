.class abstract Lj$/util/stream/U0;
.super Lj$/util/stream/c;

# interfaces
.implements Lj$/util/stream/Stream;


# direct methods
.method constructor <init>(Lj$/util/Spliterator;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/c;-><init>(Lj$/util/Spliterator;IZ)V

    return-void
.end method

.method constructor <init>(Lj$/util/stream/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/c;-><init>(Lj$/util/stream/c;I)V

    return-void
.end method

.method constructor <init>(Ljava/util/function/Supplier;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/c;-><init>(Ljava/util/function/Supplier;IZ)V

    return-void
.end method


# virtual methods
.method final F(Lj$/util/stream/F;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/O;
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lj$/util/stream/E0;->h(Lj$/util/stream/F;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/O;

    move-result-object p1

    return-object p1
.end method

.method final G(Lj$/util/Spliterator;Lj$/util/stream/Z0;)Z
    .locals 2

    :cond_0
    invoke-interface {p2}, Lj$/util/stream/Z0;->m()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p2}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    return v0
.end method

.method final H()Lj$/util/stream/v1;
    .locals 1

    sget-object v0, Lj$/util/stream/v1;->REFERENCE:Lj$/util/stream/v1;

    return-object v0
.end method

.method final L(Ljava/util/function/Supplier;)Lj$/util/Spliterator;
    .locals 1

    new-instance v0, Lj$/util/stream/B1;

    invoke-direct {v0, p1}, Lj$/util/stream/B1;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method final S(Lj$/util/stream/F;Lj$/util/stream/a;Z)Lj$/util/Spliterator;
    .locals 1

    new-instance v0, Lj$/util/stream/U1;

    invoke-direct {v0, p1, p2, p3}, Lj$/util/stream/U1;-><init>(Lj$/util/stream/F;Lj$/util/stream/a;Z)V

    return-object v0
.end method

.method public final allMatch(Ljava/util/function/Predicate;)Z
    .locals 1

    sget-object v0, Lj$/util/stream/C;->ALL:Lj$/util/stream/C;

    invoke-static {v0, p1}, Lj$/util/stream/F;->z(Lj$/util/stream/C;Ljava/util/function/Predicate;)Lj$/util/stream/D;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/util/stream/c;->D(Lj$/util/stream/X1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final anyMatch(Ljava/util/function/Predicate;)Z
    .locals 1

    sget-object v0, Lj$/util/stream/C;->ANY:Lj$/util/stream/C;

    invoke-static {v0, p1}, Lj$/util/stream/F;->z(Lj$/util/stream/C;Ljava/util/function/Predicate;)Lj$/util/stream/D;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/util/stream/c;->D(Lj$/util/stream/X1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final collect(Lj$/util/stream/Collector;)Ljava/lang/Object;
    .locals 10

    invoke-virtual {p0}, Lj$/util/stream/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lj$/util/stream/Collector$Characteristics;->CONCURRENT:Lj$/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lj$/util/stream/c;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lj$/util/stream/Collector$Characteristics;->UNORDERED:Lj$/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p1}, Lj$/util/stream/Collector;->c()Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lj$/util/stream/Collector;->a()Ljava/util/function/BiConsumer;

    move-result-object v1

    new-instance v2, Lj$/util/stream/i;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v1, v0}, Lj$/util/stream/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lj$/util/stream/U0;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lj$/util/stream/Collector;->c()Ljava/util/function/Supplier;

    move-result-object v8

    invoke-interface {p1}, Lj$/util/stream/Collector;->a()Ljava/util/function/BiConsumer;

    move-result-object v7

    invoke-interface {p1}, Lj$/util/stream/Collector;->b()Ljava/util/function/BinaryOperator;

    move-result-object v6

    new-instance v0, Lj$/util/stream/G0;

    sget-object v5, Lj$/util/stream/v1;->REFERENCE:Lj$/util/stream/v1;

    move-object v4, v0

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lj$/util/stream/G0;-><init>(Lj$/util/stream/v1;Ljava/util/function/BinaryOperator;Ljava/util/function/BiConsumer;Ljava/util/function/Supplier;Lj$/util/stream/Collector;)V

    invoke-virtual {p0, v0}, Lj$/util/stream/c;->D(Lj$/util/stream/X1;)Ljava/lang/Object;

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
    invoke-interface {p1}, Lj$/util/stream/Collector;->d()Ljava/util/function/Function;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final count()J
    .locals 2

    new-instance v0, Lj$/util/stream/K0;

    sget-object v1, Lj$/util/stream/v1;->REFERENCE:Lj$/util/stream/v1;

    invoke-direct {v0, v1}, Lj$/util/stream/K0;-><init>(Lj$/util/stream/v1;)V

    invoke-virtual {p0, v0}, Lj$/util/stream/c;->D(Lj$/util/stream/X1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final distinct()Lj$/util/stream/Stream;
    .locals 3

    new-instance v0, Lj$/util/stream/l;

    sget v1, Lj$/util/stream/u1;->m:I

    sget v2, Lj$/util/stream/u1;->s:I

    or-int/2addr v1, v2

    invoke-direct {v0, p0, v1}, Lj$/util/stream/l;-><init>(Lj$/util/stream/c;I)V

    return-object v0
.end method

.method public final filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/w;

    sget v1, Lj$/util/stream/u1;->s:I

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/w;-><init>(Lj$/util/stream/c;ILjava/lang/Object;I)V

    return-object v0
.end method

.method public final findFirst()Lj$/util/Optional;
    .locals 1

    sget-object v0, Lj$/util/stream/n;->c:Lj$/util/stream/m;

    invoke-virtual {p0, v0}, Lj$/util/stream/c;->D(Lj$/util/stream/X1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/Optional;

    return-object v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/q;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lj$/util/stream/q;-><init>(Ljava/util/function/Consumer;Z)V

    invoke-virtual {p0, v0}, Lj$/util/stream/c;->D(Lj$/util/stream/X1;)Ljava/lang/Object;

    return-void
.end method

.method public forEachOrdered(Ljava/util/function/Consumer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/q;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lj$/util/stream/q;-><init>(Ljava/util/function/Consumer;Z)V

    invoke-virtual {p0, v0}, Lj$/util/stream/c;->D(Lj$/util/stream/X1;)Ljava/lang/Object;

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/c;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/U;->i(Lj$/util/Spliterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final limit(J)Lj$/util/stream/Stream;
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    new-instance v0, Lj$/util/stream/b1;

    sget v1, Lj$/util/stream/u1;->s:I

    const-wide/16 v2, -0x1

    cmp-long v4, p1, v2

    if-eqz v4, :cond_0

    sget v2, Lj$/util/stream/u1;->t:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    or-int/2addr v1, v2

    invoke-direct {v0, p0, v1, p1, p2}, Lj$/util/stream/b1;-><init>(Lj$/util/stream/c;IJ)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final map(Ljava/util/function/Function;)Lj$/util/stream/Stream;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/w;

    sget v1, Lj$/util/stream/u1;->o:I

    sget v2, Lj$/util/stream/u1;->n:I

    or-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/w;-><init>(Lj$/util/stream/c;ILjava/lang/Object;I)V

    return-object v0
.end method

.method public final mapToLong(Ljava/util/function/ToLongFunction;)Lj$/util/stream/LongStream;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/Q0;

    sget v1, Lj$/util/stream/u1;->o:I

    sget v2, Lj$/util/stream/u1;->n:I

    or-int/2addr v1, v2

    invoke-direct {v0, p0, v1, p1}, Lj$/util/stream/Q0;-><init>(Lj$/util/stream/c;ILjava/util/function/ToLongFunction;)V

    return-object v0
.end method

.method public final noneMatch(Ljava/util/function/Predicate;)Z
    .locals 1

    sget-object v0, Lj$/util/stream/C;->NONE:Lj$/util/stream/C;

    invoke-static {v0, p1}, Lj$/util/stream/F;->z(Lj$/util/stream/C;Ljava/util/function/Predicate;)Lj$/util/stream/D;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/util/stream/c;->D(Lj$/util/stream/X1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final sorted(Ljava/util/Comparator;)Lj$/util/stream/Stream;
    .locals 1

    new-instance v0, Lj$/util/stream/f1;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/f1;-><init>(Lj$/util/stream/c;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public final toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lj$/util/stream/c;->E(Ljava/util/function/IntFunction;)Lj$/util/stream/O;

    move-result-object v0

    invoke-static {v0, p1}, Lj$/util/stream/E0;->m(Lj$/util/stream/O;Ljava/util/function/IntFunction;)Lj$/util/stream/O;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/stream/O;->n(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final y(JLjava/util/function/IntFunction;)Lj$/util/stream/J;
    .locals 0

    invoke-static {p1, p2, p3}, Lj$/util/stream/E0;->g(JLjava/util/function/IntFunction;)Lj$/util/stream/J;

    move-result-object p1

    return-object p1
.end method
