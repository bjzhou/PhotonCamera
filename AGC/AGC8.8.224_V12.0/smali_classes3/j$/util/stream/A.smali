.class abstract Lj$/util/stream/A;
.super Lj$/util/stream/c;

# interfaces
.implements Lj$/util/stream/LongStream;


# direct methods
.method constructor <init>(Lj$/util/stream/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/c;-><init>(Lj$/util/stream/c;I)V

    return-void
.end method


# virtual methods
.method final F(Lj$/util/stream/F;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/O;
    .locals 0

    invoke-static {p1, p2, p3}, Lj$/util/stream/E0;->j(Lj$/util/stream/F;Lj$/util/Spliterator;Z)Lj$/util/stream/M;

    move-result-object p1

    return-object p1
.end method

.method final G(Lj$/util/Spliterator;Lj$/util/stream/Z0;)Z
    .locals 3

    instance-of v0, p1, Lj$/util/x;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    check-cast p1, Lj$/util/x;

    instance-of v0, p2, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/util/function/LongConsumer;

    goto :goto_0

    :cond_0
    sget-boolean v0, Lj$/util/stream/a2;->a:Z

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/z;

    invoke-direct {v0, p2}, Lj$/util/stream/z;-><init>(Lj$/util/stream/Z0;)V

    :cond_1
    :goto_0
    invoke-interface {p2}, Lj$/util/stream/Z0;->m()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1, v0}, Lj$/util/x;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    return v1

    :cond_3
    const-class p1, Lj$/util/stream/c;

    const-string p2, "using LongStream.adapt(Sink<Long> s)"

    invoke-static {p1, p2}, Lj$/util/stream/a2;->a(Ljava/lang/Class;Ljava/lang/String;)V

    throw v1

    :cond_4
    sget-boolean p1, Lj$/util/stream/a2;->a:Z

    if-eqz p1, :cond_5

    const-class p1, Lj$/util/stream/c;

    const-string p2, "using LongStream.adapt(Spliterator<Long> s)"

    invoke-static {p1, p2}, Lj$/util/stream/a2;->a(Ljava/lang/Class;Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "LongStream.adapt(Spliterator<Long> s)"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method final H()Lj$/util/stream/v1;
    .locals 1

    sget-object v0, Lj$/util/stream/v1;->LONG_VALUE:Lj$/util/stream/v1;

    return-object v0
.end method

.method final L(Ljava/util/function/Supplier;)Lj$/util/Spliterator;
    .locals 1

    new-instance v0, Lj$/util/stream/z1;

    invoke-direct {v0, p1}, Lj$/util/stream/z1;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method final S(Lj$/util/stream/F;Lj$/util/stream/a;Z)Lj$/util/Spliterator;
    .locals 1

    new-instance v0, Lj$/util/stream/G1;

    invoke-direct {v0, p1, p2, p3}, Lj$/util/stream/G1;-><init>(Lj$/util/stream/F;Lj$/util/stream/a;Z)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    invoke-super {p0}, Lj$/util/stream/c;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    instance-of v1, v0, Lj$/util/x;

    if-eqz v1, :cond_0

    check-cast v0, Lj$/util/x;

    invoke-static {v0}, Lj$/util/U;->h(Lj$/util/x;)Lj$/util/n;

    move-result-object v0

    return-object v0

    :cond_0
    sget-boolean v0, Lj$/util/stream/a2;->a:Z

    if-eqz v0, :cond_1

    const-class v0, Lj$/util/stream/c;

    const-string v1, "using LongStream.adapt(Spliterator<Long> s)"

    invoke-static {v0, v1}, Lj$/util/stream/a2;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LongStream.adapt(Spliterator<Long> s)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final max()Lj$/util/OptionalLong;
    .locals 3

    new-instance v0, Lj$/desugar/sun/nio/fs/n;

    invoke-direct {v0}, Lj$/desugar/sun/nio/fs/n;-><init>()V

    new-instance v1, Lj$/util/stream/F0;

    sget-object v2, Lj$/util/stream/v1;->LONG_VALUE:Lj$/util/stream/v1;

    invoke-direct {v1, v2, v0}, Lj$/util/stream/F0;-><init>(Lj$/util/stream/v1;Lj$/desugar/sun/nio/fs/n;)V

    invoke-virtual {p0, v1}, Lj$/util/stream/c;->D(Lj$/util/stream/X1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/OptionalLong;

    return-object v0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 2

    invoke-super {p0}, Lj$/util/stream/c;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    instance-of v1, v0, Lj$/util/x;

    if-eqz v1, :cond_0

    check-cast v0, Lj$/util/x;

    return-object v0

    :cond_0
    sget-boolean v0, Lj$/util/stream/a2;->a:Z

    if-eqz v0, :cond_1

    const-class v0, Lj$/util/stream/c;

    const-string v1, "using LongStream.adapt(Spliterator<Long> s)"

    invoke-static {v0, v1}, Lj$/util/stream/a2;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LongStream.adapt(Spliterator<Long> s)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final y(JLjava/util/function/IntFunction;)Lj$/util/stream/J;
    .locals 0

    invoke-static {p1, p2}, Lj$/util/stream/E0;->o(J)Lj$/util/stream/I;

    move-result-object p1

    return-object p1
.end method
