.class final Lj$/util/stream/U1;
.super Lj$/util/stream/w1;


# direct methods
.method constructor <init>(Lj$/util/stream/F;Lj$/util/Spliterator;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/w1;-><init>(Lj$/util/stream/F;Lj$/util/Spliterator;Z)V

    return-void
.end method

.method constructor <init>(Lj$/util/stream/F;Lj$/util/stream/a;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/w1;-><init>(Lj$/util/stream/F;Lj$/util/stream/a;Z)V

    return-void
.end method


# virtual methods
.method final d()V
    .locals 3

    new-instance v0, Lj$/util/stream/r1;

    invoke-direct {v0}, Lj$/util/stream/r1;-><init>()V

    iput-object v0, p0, Lj$/util/stream/w1;->h:Lj$/util/stream/e;

    new-instance v1, Lj$/util/stream/T1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lj$/util/stream/T1;-><init>(Ljava/util/function/Consumer;I)V

    iget-object v0, p0, Lj$/util/stream/w1;->b:Lj$/util/stream/F;

    invoke-virtual {v0, v1}, Lj$/util/stream/F;->B(Lj$/util/stream/Z0;)Lj$/util/stream/Z0;

    move-result-object v0

    iput-object v0, p0, Lj$/util/stream/w1;->e:Lj$/util/stream/Z0;

    new-instance v0, Lj$/util/stream/a;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lj$/util/stream/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lj$/util/stream/w1;->f:Lj$/util/stream/a;

    return-void
.end method

.method final e(Lj$/util/Spliterator;)Lj$/util/stream/w1;
    .locals 3

    new-instance v0, Lj$/util/stream/U1;

    iget-object v1, p0, Lj$/util/stream/w1;->b:Lj$/util/stream/F;

    iget-boolean v2, p0, Lj$/util/stream/w1;->a:Z

    invoke-direct {v0, v1, p1, v2}, Lj$/util/stream/U1;-><init>(Lj$/util/stream/F;Lj$/util/Spliterator;Z)V

    return-object v0
.end method

.method public final forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 3

    iget-object v0, p0, Lj$/util/stream/w1;->h:Lj$/util/stream/e;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lj$/util/stream/w1;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lj$/util/stream/w1;->c()V

    new-instance v0, Lj$/util/stream/T1;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lj$/util/stream/T1;-><init>(Ljava/util/function/Consumer;I)V

    iget-object p1, p0, Lj$/util/stream/w1;->d:Lj$/util/Spliterator;

    iget-object v2, p0, Lj$/util/stream/w1;->b:Lj$/util/stream/F;

    invoke-virtual {v2, p1, v0}, Lj$/util/stream/F;->A(Lj$/util/Spliterator;Lj$/util/stream/Z0;)Lj$/util/stream/Z0;

    iput-boolean v1, p0, Lj$/util/stream/w1;->i:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lj$/util/stream/U1;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void
.end method

.method public final tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lj$/util/stream/w1;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lj$/util/stream/w1;->h:Lj$/util/stream/e;

    check-cast v1, Lj$/util/stream/r1;

    iget-wide v2, p0, Lj$/util/stream/w1;->g:J

    iget v4, v1, Lj$/util/stream/e;->b:I

    if-nez v4, :cond_1

    iget v4, v1, Lj$/util/stream/e;->a:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    iget-object v1, v1, Lj$/util/stream/r1;->d:[Ljava/lang/Object;

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
    invoke-virtual {v1}, Lj$/util/stream/e;->count()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_4

    const/4 v4, 0x0

    :goto_0
    iget v5, v1, Lj$/util/stream/e;->b:I

    if-gt v4, v5, :cond_3

    iget-object v5, v1, Lj$/util/stream/e;->c:[J

    aget-wide v6, v5, v4

    iget-object v5, v1, Lj$/util/stream/r1;->e:[[Ljava/lang/Object;

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
