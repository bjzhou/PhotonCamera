.class public abstract synthetic Lj$/util/K;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/util/Spliterator$OfInt;

    return p0
.end method

.method public static bridge synthetic B(Lj$/util/stream/u;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    return-void
.end method

.method public static bridge synthetic C(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/util/Spliterator$OfLong;

    return p0
.end method

.method public static bridge synthetic D(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/util/Spliterator$OfPrimitive;

    return p0
.end method

.method public static bridge synthetic a()I
    .locals 1

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    return v0
.end method

.method public static bridge synthetic b(Lj$/util/stream/u;)I
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Ljava/lang/Object;)Ljava/util/Spliterator$OfDouble;
    .locals 0

    check-cast p0, Ljava/util/Spliterator$OfDouble;

    return-object p0
.end method

.method public static bridge synthetic d(Ljava/lang/Object;)Ljava/util/Spliterator$OfInt;
    .locals 0

    check-cast p0, Ljava/util/Spliterator$OfInt;

    return-object p0
.end method

.method public static bridge synthetic e(Ljava/lang/Object;)Ljava/util/Spliterator$OfLong;
    .locals 0

    check-cast p0, Ljava/util/Spliterator$OfLong;

    return-object p0
.end method

.method public static bridge synthetic f(Ljava/util/Spliterator$OfLong;)Ljava/util/Spliterator$OfLong;
    .locals 0

    invoke-interface {p0}, Ljava/util/Spliterator$OfLong;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Ljava/lang/Object;)Ljava/util/Spliterator$OfPrimitive;
    .locals 0

    check-cast p0, Ljava/util/Spliterator$OfPrimitive;

    return-object p0
.end method

.method public static bridge synthetic h(Ljava/util/Spliterator$OfLong;)Ljava/util/Spliterator$OfPrimitive;
    .locals 0

    invoke-interface {p0}, Ljava/util/Spliterator$OfLong;->trySplit()Ljava/util/Spliterator$OfPrimitive;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Ljava/util/Spliterator$OfPrimitive;)Ljava/util/Spliterator$OfPrimitive;
    .locals 0

    invoke-interface {p0}, Ljava/util/Spliterator$OfPrimitive;->trySplit()Ljava/util/Spliterator$OfPrimitive;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j(Ljava/util/Spliterator$OfPrimitive;)Ljava/util/Spliterator;
    .locals 0

    invoke-interface {p0}, Ljava/util/Spliterator$OfPrimitive;->trySplit()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .locals 0

    invoke-interface {p0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Lj$/util/stream/e;)Ljava/util/concurrent/CountedCompleter;
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Lj$/util/stream/c;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CountedCompleter;->setPendingCount(I)V

    return-void
.end method

.method public static bridge synthetic n(Lj$/util/stream/e;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CountedCompleter;->setPendingCount(I)V

    return-void
.end method

.method public static bridge synthetic o(Lj$/util/stream/u;)V
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    return-void
.end method

.method public static bridge synthetic p(Lj$/util/stream/v;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    return-void
.end method

.method public static bridge synthetic q(Ljava/util/Spliterator$OfLong;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic r(Ljava/util/Spliterator$OfPrimitive;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic s(Ljava/util/Spliterator;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic t(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/util/Spliterator$OfDouble;

    return p0
.end method

.method public static bridge synthetic u(Ljava/util/Spliterator$OfPrimitive;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic v(Ljava/util/Spliterator;Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic w(Lj$/util/stream/c;)V
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    return-void
.end method

.method public static bridge synthetic x(Lj$/util/stream/e;)V
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    return-void
.end method

.method public static bridge synthetic y(Lj$/util/stream/u;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    return-void
.end method

.method public static bridge synthetic z(Lj$/util/stream/v;)V
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->propagateCompletion()V

    return-void
.end method
