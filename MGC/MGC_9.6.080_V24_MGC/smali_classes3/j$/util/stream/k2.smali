.class final Lj$/util/stream/k2;
.super Lj$/util/stream/O1;
.source "SourceFile"


# virtual methods
.method final d()V
    .locals 3

    new-instance v0, Lj$/util/stream/J1;

    invoke-direct {v0}, Lj$/util/stream/J1;-><init>()V

    iput-object v0, p0, Lj$/util/stream/O1;->h:Lj$/util/stream/d;

    new-instance v1, Lj$/util/stream/a;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lj$/util/stream/a;-><init>(ILjava/lang/Object;)V

    iget-object v0, p0, Lj$/util/stream/O1;->b:Lj$/util/stream/b;

    invoke-virtual {v0, v1}, Lj$/util/stream/b;->z(Lj$/util/stream/r1;)Lj$/util/stream/r1;

    move-result-object v0

    iput-object v0, p0, Lj$/util/stream/O1;->e:Lj$/util/stream/r1;

    new-instance v0, Lj$/util/stream/a;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Lj$/util/stream/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lj$/util/stream/O1;->f:Ljava/util/function/BooleanSupplier;

    return-void
.end method

.method final e(Lj$/util/Spliterator;)Lj$/util/stream/O1;
    .locals 3

    new-instance v0, Lj$/util/stream/k2;

    iget-object v1, p0, Lj$/util/stream/O1;->b:Lj$/util/stream/b;

    iget-boolean v2, p0, Lj$/util/stream/O1;->a:Z

    invoke-direct {v0, v1, p1, v2}, Lj$/util/stream/O1;-><init>(Lj$/util/stream/b;Lj$/util/Spliterator;Z)V

    return-object v0
.end method

.method public final forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2

    iget-object v0, p0, Lj$/util/stream/O1;->h:Lj$/util/stream/d;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lj$/util/stream/O1;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lj$/util/stream/O1;->c()V

    new-instance v0, Lj$/util/stream/a;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p1}, Lj$/util/stream/a;-><init>(ILjava/lang/Object;)V

    iget-object p1, p0, Lj$/util/stream/O1;->d:Lj$/util/Spliterator;

    iget-object v1, p0, Lj$/util/stream/O1;->b:Lj$/util/stream/b;

    invoke-virtual {v1, p1, v0}, Lj$/util/stream/b;->y(Lj$/util/Spliterator;Lj$/util/stream/r1;)Lj$/util/stream/r1;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj$/util/stream/O1;->i:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lj$/util/stream/k2;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void
.end method

.method public final tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lj$/util/stream/O1;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lj$/util/stream/O1;->h:Lj$/util/stream/d;

    check-cast v1, Lj$/util/stream/J1;

    iget-wide v2, p0, Lj$/util/stream/O1;->g:J

    iget v4, v1, Lj$/util/stream/d;->b:I

    if-nez v4, :cond_1

    iget v4, v1, Lj$/util/stream/d;->a:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    iget-object v1, v1, Lj$/util/stream/J1;->d:[Ljava/lang/Object;

    long-to-int v3, v2

    aget-object v1, v1, v3

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {v1}, Lj$/util/stream/d;->count()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_4

    const/4 v4, 0x0

    :goto_0
    iget v5, v1, Lj$/util/stream/d;->b:I

    if-gt v4, v5, :cond_3

    iget-object v5, v1, Lj$/util/stream/d;->c:[J

    aget-wide v6, v5, v4

    iget-object v5, v1, Lj$/util/stream/J1;->e:[[Ljava/lang/Object;

    aget-object v5, v5, v4

    array-length v8, v5

    int-to-long v8, v8

    add-long/2addr v8, v6

    cmp-long v10, v2, v8

    if-gez v10, :cond_2

    sub-long/2addr v2, v6

    long-to-int v1, v2

    aget-object v1, v5, v1

    :goto_1
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    return v0
.end method
