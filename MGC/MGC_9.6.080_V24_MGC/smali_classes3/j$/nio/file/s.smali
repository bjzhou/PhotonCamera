.class public abstract synthetic Lj$/nio/file/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Ljava/util/Spliterator$OfLong;Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic B(Ljava/util/Spliterator$OfLong;Ljava/util/function/LongConsumer;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic C(Ljava/util/Spliterator;I)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic D(Ljava/util/Spliterator;)J
    .locals 2

    invoke-interface {p0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic a(Ljava/util/Spliterator;)I
    .locals 0

    invoke-interface {p0}, Ljava/util/Spliterator;->characteristics()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Ljava/util/Spliterator;)J
    .locals 2

    invoke-interface {p0}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic c(Ljava/util/Spliterator;)Ljava/util/Comparator;
    .locals 0

    invoke-interface {p0}, Ljava/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Ljava/util/Spliterator$OfDouble;)Ljava/util/Spliterator$OfDouble;
    .locals 0

    invoke-interface {p0}, Ljava/util/Spliterator$OfDouble;->trySplit()Ljava/util/Spliterator$OfDouble;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Ljava/util/Spliterator$OfInt;)Ljava/util/Spliterator$OfInt;
    .locals 0

    invoke-interface {p0}, Ljava/util/Spliterator$OfInt;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Ljava/util/Spliterator$OfDouble;)Ljava/util/Spliterator$OfPrimitive;
    .locals 0

    invoke-interface {p0}, Ljava/util/Spliterator$OfDouble;->trySplit()Ljava/util/Spliterator$OfPrimitive;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Ljava/util/Spliterator$OfInt;)Ljava/util/Spliterator$OfPrimitive;
    .locals 0

    invoke-interface {p0}, Ljava/util/Spliterator$OfInt;->trySplit()Ljava/util/Spliterator$OfPrimitive;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Ljava/lang/Iterable;)Ljava/util/Spliterator;
    .locals 0

    invoke-interface {p0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Ljava/util/Spliterator$OfDouble;)Ljava/util/Spliterator;
    .locals 0

    invoke-interface {p0}, Ljava/util/Spliterator$OfDouble;->trySplit()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j(Ljava/util/Spliterator$OfInt;)Ljava/util/Spliterator;
    .locals 0

    invoke-interface {p0}, Ljava/util/Spliterator$OfInt;->trySplit()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Ljava/util/Spliterator$OfLong;)Ljava/util/Spliterator;
    .locals 0

    invoke-interface {p0}, Ljava/util/Spliterator$OfLong;->trySplit()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Ljava/util/Spliterator$OfDouble;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfDouble;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic m(Ljava/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic n(Ljava/util/Spliterator$OfDouble;Ljava/util/function/DoubleConsumer;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public static bridge synthetic o(Ljava/util/Spliterator$OfInt;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfInt;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic p(Ljava/util/Spliterator$OfInt;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic q(Ljava/util/Spliterator$OfInt;Ljava/util/function/IntConsumer;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public static bridge synthetic r(Ljava/util/Spliterator$OfLong;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfLong;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic s(Ljava/util/Spliterator$OfLong;Ljava/util/function/LongConsumer;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public static bridge synthetic t(Ljava/util/Spliterator$OfDouble;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic u(Ljava/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic v(Ljava/util/Spliterator$OfDouble;Ljava/util/function/DoubleConsumer;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic w(Ljava/util/Spliterator$OfInt;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfInt;->tryAdvance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic x(Ljava/util/Spliterator$OfInt;Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic y(Ljava/util/Spliterator$OfInt;Ljava/util/function/IntConsumer;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic z(Ljava/util/Spliterator$OfLong;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfLong;->tryAdvance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
