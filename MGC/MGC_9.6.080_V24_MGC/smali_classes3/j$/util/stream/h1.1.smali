.class final Lj$/util/stream/h1;
.super Lj$/util/stream/b;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/DoubleStream;


# instance fields
.field final synthetic m:Ljava/util/function/ToDoubleFunction;


# direct methods
.method constructor <init>(Lj$/util/stream/k1;ILjava/util/function/ToDoubleFunction;)V
    .locals 0

    iput-object p3, p0, Lj$/util/stream/h1;->m:Ljava/util/function/ToDoubleFunction;

    invoke-direct {p0, p1, p2}, Lj$/util/stream/b;-><init>(Lj$/util/stream/b;I)V

    return-void
.end method


# virtual methods
.method public final average()Lj$/util/OptionalDouble;
    .locals 8

    const/4 v0, 0x1

    new-instance v5, Lj$/util/stream/n;

    invoke-direct {v5, v0}, Lj$/util/stream/n;-><init>(I)V

    new-instance v4, Lj$/util/stream/f;

    const/4 v1, 0x6

    invoke-direct {v4, v1}, Lj$/util/stream/f;-><init>(I)V

    new-instance v1, Lj$/util/stream/f;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lj$/util/stream/f;-><init>(I)V

    new-instance v3, Lj$/util/stream/a;

    const/16 v2, 0xd

    invoke-direct {v3, v2, v1}, Lj$/util/stream/a;-><init>(ILjava/lang/Object;)V

    new-instance v7, Lj$/util/stream/T0;

    sget-object v2, Lj$/util/stream/N1;->DOUBLE_VALUE:Lj$/util/stream/N1;

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/T0;-><init>(Lj$/util/stream/N1;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/Supplier;I)V

    invoke-virtual {p0, v7}, Lj$/util/stream/b;->f(Lj$/util/stream/o2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    const/4 v2, 0x2

    aget-wide v3, v1, v2

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_1

    sget-object v3, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    const/4 v3, 0x0

    aget-wide v3, v1, v3

    aget-wide v5, v1, v0

    add-double/2addr v3, v5

    array-length v5, v1

    sub-int/2addr v5, v0

    aget-wide v5, v1, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v5, v6}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide v3, v5

    :cond_0
    aget-wide v0, v1, v2

    div-double/2addr v3, v0

    invoke-static {v3, v4}, Lj$/util/OptionalDouble;->b(D)Lj$/util/OptionalDouble;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lj$/util/OptionalDouble;->a()Lj$/util/OptionalDouble;

    move-result-object v0

    :goto_0
    return-object v0
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

    new-array p3, p3, [D

    new-instance p4, Lj$/util/stream/H0;

    invoke-direct {p4, p2, p1, p3}, Lj$/util/stream/H0;-><init>(Lj$/util/Spliterator;Lj$/util/stream/b;[D)V

    invoke-virtual {p4}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    new-instance p1, Lj$/util/stream/l0;

    invoke-direct {p1, p3}, Lj$/util/stream/l0;-><init>([D)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Lj$/util/stream/e0;

    new-instance v1, Lj$/util/stream/f;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lj$/util/stream/f;-><init>(I)V

    new-instance v2, Lj$/util/stream/f;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Lj$/util/stream/f;-><init>(I)V

    invoke-direct {v0, p1, p2, v1, v2}, Lj$/util/stream/f0;-><init>(Lj$/util/stream/b;Lj$/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/T;

    if-eqz p3, :cond_3

    invoke-interface {p1}, Lj$/util/stream/Z;->s()I

    move-result p2

    if-lez p2, :cond_3

    invoke-interface {p1}, Lj$/util/stream/Z;->count()J

    move-result-wide p2

    cmp-long v0, p2, v4

    if-gez v0, :cond_2

    long-to-int p3, p2

    new-array p2, p3, [D

    new-instance p3, Lj$/util/stream/N0;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p2, p4}, Lj$/util/stream/O0;-><init>(Lj$/util/stream/Z;Ljava/lang/Object;I)V

    invoke-virtual {p3}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    new-instance p1, Lj$/util/stream/l0;

    invoke-direct {p1, p2}, Lj$/util/stream/l0;-><init>([D)V

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

    instance-of v1, v0, Lj$/util/G;

    if-eqz v1, :cond_0

    check-cast v0, Lj$/util/G;

    invoke-static {v0}, Lj$/util/Spliterators;->f(Lj$/util/G;)Lj$/util/y;

    move-result-object v0

    return-object v0

    :cond_0
    sget-boolean v0, Lj$/util/stream/r2;->a:Z

    if-eqz v0, :cond_1

    const-class v0, Lj$/util/stream/b;

    const-string v1, "using DoubleStream.adapt(Spliterator<Double> s)"

    invoke-static {v0, v1}, Lj$/util/stream/r2;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DoubleStream.adapt(Spliterator<Double> s)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final j(Lj$/util/Spliterator;Lj$/util/stream/r1;)Z
    .locals 3

    instance-of v0, p1, Lj$/util/G;

    const/4 v1, 0x0

    const-class v2, Lj$/util/stream/b;

    if-eqz v0, :cond_4

    check-cast p1, Lj$/util/G;

    instance-of v0, p2, Ljava/util/function/DoubleConsumer;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/util/function/DoubleConsumer;

    goto :goto_0

    :cond_0
    sget-boolean v0, Lj$/util/stream/r2;->a:Z

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/m;

    invoke-direct {v0, p2}, Lj$/util/stream/m;-><init>(Lj$/util/stream/r1;)V

    :cond_1
    :goto_0
    invoke-interface {p2}, Lj$/util/stream/r1;->n()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1, v0}, Lj$/util/G;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    return v1

    :cond_3
    const-string p1, "using DoubleStream.adapt(Sink<Double> s)"

    invoke-static {v2, p1}, Lj$/util/stream/r2;->a(Ljava/lang/Class;Ljava/lang/String;)V

    throw v1

    :cond_4
    sget-boolean p1, Lj$/util/stream/r2;->a:Z

    if-eqz p1, :cond_5

    const-string p1, "using DoubleStream.adapt(Spliterator<Double> s)"

    invoke-static {v2, p1}, Lj$/util/stream/r2;->a(Ljava/lang/Class;Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "DoubleStream.adapt(Spliterator<Double> s)"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final k()Lj$/util/stream/N1;
    .locals 1

    sget-object v0, Lj$/util/stream/N1;->DOUBLE_VALUE:Lj$/util/stream/N1;

    return-object v0
.end method

.method public final min()Lj$/util/OptionalDouble;
    .locals 4

    new-instance v0, Lj$/util/stream/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj$/util/stream/n;-><init>(I)V

    new-instance v1, Lj$/util/stream/Q0;

    sget-object v2, Lj$/util/stream/N1;->DOUBLE_VALUE:Lj$/util/stream/N1;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lj$/util/stream/Q0;-><init>(Lj$/util/stream/N1;Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Lj$/util/stream/b;->f(Lj$/util/stream/o2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/OptionalDouble;

    return-object v0
.end method

.method final p(Ljava/util/function/Supplier;)Lj$/util/Spliterator;
    .locals 1

    new-instance v0, Lj$/util/stream/Q1;

    invoke-direct {v0, p1}, Lj$/util/stream/U1;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method final q(JLjava/util/function/IntFunction;)Lj$/util/stream/Q;
    .locals 0

    invoke-static {p1, p2}, Lj$/util/stream/M;->D(J)Lj$/util/stream/N;

    move-result-object p1

    return-object p1
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 2

    invoke-super {p0}, Lj$/util/stream/b;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    instance-of v1, v0, Lj$/util/G;

    if-eqz v1, :cond_0

    check-cast v0, Lj$/util/G;

    return-object v0

    :cond_0
    sget-boolean v0, Lj$/util/stream/r2;->a:Z

    if-eqz v0, :cond_1

    const-class v0, Lj$/util/stream/b;

    const-string v1, "using DoubleStream.adapt(Spliterator<Double> s)"

    invoke-static {v0, v1}, Lj$/util/stream/r2;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DoubleStream.adapt(Spliterator<Double> s)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final t()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final u(ILj$/util/stream/r1;)Lj$/util/stream/r1;
    .locals 1

    new-instance p1, Lj$/util/stream/k;

    const/4 v0, 0x5

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/k;-><init>(Lj$/util/stream/b;Lj$/util/stream/r1;I)V

    return-object p1
.end method

.method final x(Lj$/util/stream/b;Ljava/util/function/Supplier;Z)Lj$/util/Spliterator;
    .locals 1

    new-instance v0, Lj$/util/stream/X1;

    invoke-direct {v0, p1, p2, p3}, Lj$/util/stream/O1;-><init>(Lj$/util/stream/b;Ljava/util/function/Supplier;Z)V

    return-object v0
.end method
