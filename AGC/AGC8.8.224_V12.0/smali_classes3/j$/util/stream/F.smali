.class public abstract synthetic Lj$/util/stream/F;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called wrong accept method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Lj$/util/stream/X0;Ljava/lang/Integer;)V
    .locals 1

    sget-boolean v0, Lj$/util/stream/a2;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lj$/util/stream/X0;->accept(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Sink.OfInt.accept(Integer)"

    invoke-static {p0, p1}, Lj$/util/stream/a2;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static bridge synthetic d(Lj$/util/stream/X0;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {p0, p1}, Lj$/util/stream/X0;->j(Ljava/lang/Integer;)V

    return-void
.end method

.method public static e(Lj$/util/stream/Y0;Ljava/lang/Long;)V
    .locals 2

    sget-boolean v0, Lj$/util/stream/a2;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lj$/util/stream/Y0;->accept(J)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Sink.OfLong.accept(Long)"

    invoke-static {p0, p1}, Lj$/util/stream/a2;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static bridge synthetic f(Lj$/util/stream/Y0;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-interface {p0, p1}, Lj$/util/stream/Y0;->s(Ljava/lang/Long;)V

    return-void
.end method

.method public static g()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called wrong accept method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static h(Lj$/util/stream/N;Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 5

    sget-boolean v0, Lj$/util/stream/a2;->a:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lj$/util/stream/O;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    invoke-interface {p0}, Lj$/util/stream/O;->count()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-interface {p1, v1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lj$/util/stream/O;->r([Ljava/lang/Object;I)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stream size exceeds max array size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Node.OfPrimitive.asArray"

    invoke-static {p0, p1}, Lj$/util/stream/a2;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static i(Lj$/util/stream/K;[Ljava/lang/Double;I)V
    .locals 4

    sget-boolean v0, Lj$/util/stream/a2;->a:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lj$/util/stream/N;->i()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Node.OfDouble.copyInto(Double[], int)"

    invoke-static {p0, p1}, Lj$/util/stream/a2;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static j(Lj$/util/stream/L;[Ljava/lang/Integer;I)V
    .locals 3

    sget-boolean v0, Lj$/util/stream/a2;->a:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lj$/util/stream/N;->i()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Node.OfInt.copyInto(Integer[], int)"

    invoke-static {p0, p1}, Lj$/util/stream/a2;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static k(Lj$/util/stream/M;[Ljava/lang/Long;I)V
    .locals 4

    sget-boolean v0, Lj$/util/stream/a2;->a:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lj$/util/stream/N;->i()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Node.OfInt.copyInto(Long[], int)"

    invoke-static {p0, p1}, Lj$/util/stream/a2;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static l(Lj$/util/stream/K;Ljava/util/function/Consumer;)V
    .locals 1

    instance-of v0, p1, Ljava/util/function/DoubleConsumer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-interface {p0, p1}, Lj$/util/stream/N;->k(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lj$/util/stream/a2;->a:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lj$/util/stream/N;->spliterator()Lj$/util/A;

    move-result-object p0

    check-cast p0, Lj$/util/r;

    invoke-interface {p0, p1}, Lj$/util/r;->forEachRemaining(Ljava/util/function/Consumer;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Node.OfLong.forEachRemaining(Consumer)"

    invoke-static {p0, p1}, Lj$/util/stream/a2;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static m(Lj$/util/stream/L;Ljava/util/function/Consumer;)V
    .locals 1

    instance-of v0, p1, Ljava/util/function/IntConsumer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-interface {p0, p1}, Lj$/util/stream/N;->k(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lj$/util/stream/a2;->a:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lj$/util/stream/N;->spliterator()Lj$/util/A;

    move-result-object p0

    check-cast p0, Lj$/util/u;

    invoke-interface {p0, p1}, Lj$/util/u;->forEachRemaining(Ljava/util/function/Consumer;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Node.OfInt.forEachRemaining(Consumer)"

    invoke-static {p0, p1}, Lj$/util/stream/a2;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static n(Lj$/util/stream/M;Ljava/util/function/Consumer;)V
    .locals 1

    instance-of v0, p1, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-interface {p0, p1}, Lj$/util/stream/N;->k(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lj$/util/stream/a2;->a:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lj$/util/stream/N;->spliterator()Lj$/util/A;

    move-result-object p0

    check-cast p0, Lj$/util/x;

    invoke-interface {p0, p1}, Lj$/util/x;->forEachRemaining(Ljava/util/function/Consumer;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Node.OfLong.forEachRemaining(Consumer)"

    invoke-static {p0, p1}, Lj$/util/stream/a2;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static o(Lj$/util/stream/K;JJ)Lj$/util/stream/K;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    invoke-interface {p0}, Lj$/util/stream/O;->count()J

    move-result-wide v2

    cmp-long v4, p3, v2

    if-nez v4, :cond_0

    return-object p0

    :cond_0
    sub-long v2, p3, p1

    invoke-interface {p0}, Lj$/util/stream/N;->spliterator()Lj$/util/A;

    move-result-object v4

    check-cast v4, Lj$/util/r;

    cmp-long v5, v2, v0

    if-ltz v5, :cond_1

    const-wide/32 v0, 0x7ffffff7

    cmp-long v5, v2, v0

    if-gez v5, :cond_1

    new-instance v0, Lj$/util/stream/c0;

    invoke-direct {v0, v2, v3}, Lj$/util/stream/c0;-><init>(J)V

    goto :goto_0

    :cond_1
    new-instance v0, Lj$/util/stream/d0;

    invoke-direct {v0}, Lj$/util/stream/d0;-><init>()V

    :goto_0
    invoke-interface {v0, v2, v3}, Lj$/util/stream/Z0;->h(J)V

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_1
    int-to-long v6, v5

    cmp-long v8, v6, p1

    if-gez v8, :cond_2

    new-instance v6, Lj$/util/stream/H1;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lj$/util/stream/H1;-><init>(I)V

    invoke-interface {v4, v6}, Lj$/util/r;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lj$/util/stream/O;->count()J

    move-result-wide p0

    cmp-long p2, p3, p0

    if-nez p2, :cond_3

    invoke-interface {v4, v0}, Lj$/util/r;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    goto :goto_3

    :cond_3
    :goto_2
    int-to-long p0, v1

    cmp-long p2, p0, v2

    if-gez p2, :cond_4

    invoke-interface {v4, v0}, Lj$/util/r;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p0

    if-eqz p0, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-interface {v0}, Lj$/util/stream/Z0;->f()V

    invoke-interface {v0}, Lj$/util/stream/G;->a()Lj$/util/stream/K;

    move-result-object p0

    return-object p0
.end method

.method public static p(Lj$/util/stream/L;JJ)Lj$/util/stream/L;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    invoke-interface {p0}, Lj$/util/stream/O;->count()J

    move-result-wide v0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    sub-long v0, p3, p1

    invoke-interface {p0}, Lj$/util/stream/N;->spliterator()Lj$/util/A;

    move-result-object v2

    check-cast v2, Lj$/util/u;

    invoke-static {v0, v1}, Lj$/util/stream/E0;->n(J)Lj$/util/stream/H;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lj$/util/stream/Z0;->h(J)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    int-to-long v6, v5

    cmp-long v8, v6, p1

    if-gez v8, :cond_1

    new-instance v6, Lj$/util/stream/J1;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lj$/util/stream/J1;-><init>(I)V

    invoke-interface {v2, v6}, Lj$/util/u;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lj$/util/stream/O;->count()J

    move-result-wide p0

    cmp-long p2, p3, p0

    if-nez p2, :cond_2

    invoke-interface {v2, v3}, Lj$/util/u;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    goto :goto_2

    :cond_2
    :goto_1
    int-to-long p0, v4

    cmp-long p2, p0, v0

    if-gez p2, :cond_3

    invoke-interface {v2, v3}, Lj$/util/u;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p0

    if-eqz p0, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {v3}, Lj$/util/stream/Z0;->f()V

    invoke-interface {v3}, Lj$/util/stream/H;->a()Lj$/util/stream/L;

    move-result-object p0

    return-object p0
.end method

.method public static q(Lj$/util/stream/M;JJ)Lj$/util/stream/M;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    invoke-interface {p0}, Lj$/util/stream/O;->count()J

    move-result-wide v0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    sub-long v0, p3, p1

    invoke-interface {p0}, Lj$/util/stream/N;->spliterator()Lj$/util/A;

    move-result-object v2

    check-cast v2, Lj$/util/x;

    invoke-static {v0, v1}, Lj$/util/stream/E0;->o(J)Lj$/util/stream/I;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lj$/util/stream/Z0;->h(J)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    int-to-long v6, v5

    cmp-long v8, v6, p1

    if-gez v8, :cond_1

    new-instance v6, Lj$/util/stream/L1;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lj$/util/stream/L1;-><init>(I)V

    invoke-interface {v2, v6}, Lj$/util/x;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lj$/util/stream/O;->count()J

    move-result-wide p0

    cmp-long p2, p3, p0

    if-nez p2, :cond_2

    invoke-interface {v2, v3}, Lj$/util/x;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    goto :goto_2

    :cond_2
    :goto_1
    int-to-long p0, v4

    cmp-long p2, p0, v0

    if-gez p2, :cond_3

    invoke-interface {v2, v3}, Lj$/util/x;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p0

    if-eqz p0, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {v3}, Lj$/util/stream/Z0;->f()V

    invoke-interface {v3}, Lj$/util/stream/I;->a()Lj$/util/stream/M;

    move-result-object p0

    return-object p0
.end method

.method public static r(Lj$/util/stream/O;JJLjava/util/function/IntFunction;)Lj$/util/stream/O;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    invoke-interface {p0}, Lj$/util/stream/O;->count()J

    move-result-wide v0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lj$/util/stream/O;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    sub-long v1, p3, p1

    invoke-static {v1, v2, p5}, Lj$/util/stream/E0;->g(JLjava/util/function/IntFunction;)Lj$/util/stream/J;

    move-result-object p5

    invoke-interface {p5, v1, v2}, Lj$/util/stream/Z0;->h(J)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    int-to-long v5, v4

    cmp-long v7, v5, p1

    if-gez v7, :cond_1

    new-instance v5, Lj$/desugar/sun/nio/fs/n;

    invoke-direct {v5}, Lj$/desugar/sun/nio/fs/n;-><init>()V

    invoke-interface {v0, v5}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lj$/util/stream/O;->count()J

    move-result-wide p0

    cmp-long p2, p3, p0

    if-nez p2, :cond_2

    invoke-interface {v0, p5}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_2
    :goto_1
    int-to-long p0, v3

    cmp-long p2, p0, v1

    if-gez p2, :cond_3

    invoke-interface {v0, p5}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result p0

    if-eqz p0, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {p5}, Lj$/util/stream/Z0;->f()V

    invoke-interface {p5}, Lj$/util/stream/J;->a()Lj$/util/stream/O;

    move-result-object p0

    return-object p0
.end method

.method static s(JJ)J
    .locals 5

    const-wide v0, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-ltz v4, :cond_0

    add-long/2addr p0, p2

    goto :goto_0

    :cond_0
    move-wide p0, v0

    :goto_0
    cmp-long p2, p0, v2

    if-ltz p2, :cond_1

    move-wide v0, p0

    :cond_1
    return-wide v0
.end method

.method static t(Lj$/util/stream/v1;Lj$/util/Spliterator;JJ)Lj$/util/Spliterator;
    .locals 11

    const-wide v0, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    cmp-long v4, p4, v2

    if-ltz v4, :cond_0

    add-long v4, p2, p4

    goto :goto_0

    :cond_0
    move-wide v4, v0

    :goto_0
    cmp-long v6, v4, v2

    if-ltz v6, :cond_1

    move-wide v9, v4

    goto :goto_1

    :cond_1
    move-wide v9, v0

    :goto_1
    sget-object v0, Lj$/util/stream/c1;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    new-instance v0, Lj$/util/stream/I1;

    move-object v6, p1

    check-cast v6, Lj$/util/r;

    move-object v5, v0

    move-wide v7, p2

    invoke-direct/range {v5 .. v10}, Lj$/util/stream/I1;-><init>(Lj$/util/r;JJ)V

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown shape "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lj$/util/stream/M1;

    move-object v6, p1

    check-cast v6, Lj$/util/x;

    move-object v5, v0

    move-wide v7, p2

    invoke-direct/range {v5 .. v10}, Lj$/util/stream/M1;-><init>(Lj$/util/x;JJ)V

    goto :goto_2

    :cond_4
    new-instance v0, Lj$/util/stream/K1;

    move-object v6, p1

    check-cast v6, Lj$/util/u;

    move-object v5, v0

    move-wide v7, p2

    invoke-direct/range {v5 .. v10}, Lj$/util/stream/K1;-><init>(Lj$/util/u;JJ)V

    goto :goto_2

    :cond_5
    new-instance v6, Lj$/util/stream/O1;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, v9

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/O1;-><init>(Lj$/util/Spliterator;JJ)V

    :goto_2
    return-object v0
.end method

.method public static z(Lj$/util/stream/C;Ljava/util/function/Predicate;)Lj$/util/stream/D;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/D;

    sget-object v1, Lj$/util/stream/v1;->REFERENCE:Lj$/util/stream/v1;

    new-instance v2, Lj$/util/stream/i;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0, p1}, Lj$/util/stream/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1, p0, v2}, Lj$/util/stream/D;-><init>(Lj$/util/stream/v1;Lj$/util/stream/C;Lj$/util/stream/i;)V

    return-object v0
.end method


# virtual methods
.method abstract A(Lj$/util/Spliterator;Lj$/util/stream/Z0;)Lj$/util/stream/Z0;
.end method

.method abstract B(Lj$/util/stream/Z0;)Lj$/util/stream/Z0;
.end method

.method abstract u(Lj$/util/Spliterator;Lj$/util/stream/Z0;)V
.end method

.method abstract v(Lj$/util/Spliterator;Lj$/util/stream/Z0;)Z
.end method

.method abstract w(Lj$/util/Spliterator;)J
.end method

.method abstract x()I
.end method

.method abstract y(JLjava/util/function/IntFunction;)Lj$/util/stream/J;
.end method
