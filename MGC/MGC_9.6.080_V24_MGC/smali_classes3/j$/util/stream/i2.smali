.class final Lj$/util/stream/i2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/Spliterator;
.implements Ljava/util/function/Consumer;


# instance fields
.field protected final a:Lj$/util/Spliterator;

.field protected final b:Z

.field protected final c:I

.field private final d:J

.field private final e:Ljava/util/concurrent/atomic/AtomicLong;

.field f:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lj$/util/Spliterator;JJ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/i2;->a:Lj$/util/Spliterator;

    const-wide/16 v0, 0x0

    cmp-long p1, p4, v0

    if-gez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lj$/util/stream/i2;->b:Z

    if-ltz p1, :cond_1

    move-wide v0, p4

    :cond_1
    iput-wide v0, p0, Lj$/util/stream/i2;->d:J

    const/16 v0, 0x80

    iput v0, p0, Lj$/util/stream/i2;->c:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    if-ltz p1, :cond_2

    add-long/2addr p2, p4

    :cond_2
    invoke-direct {v0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lj$/util/stream/i2;->e:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(Lj$/util/Spliterator;Lj$/util/stream/i2;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/i2;->a:Lj$/util/Spliterator;

    iget-boolean p1, p2, Lj$/util/stream/i2;->b:Z

    iput-boolean p1, p0, Lj$/util/stream/i2;->b:Z

    iget-object p1, p2, Lj$/util/stream/i2;->e:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lj$/util/stream/i2;->e:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v0, p2, Lj$/util/stream/i2;->d:J

    iput-wide v0, p0, Lj$/util/stream/i2;->d:J

    iget p1, p2, Lj$/util/stream/i2;->c:I

    iput p1, p0, Lj$/util/stream/i2;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lj$/util/stream/i2;->f:Ljava/lang/Object;

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method protected final b(J)J
    .locals 10

    :cond_0
    iget-object v0, p0, Lj$/util/stream/i2;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    iget-boolean v3, p0, Lj$/util/stream/i2;->b:Z

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-nez v6, :cond_2

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-wide p1, v4

    :goto_0
    return-wide p1

    :cond_2
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-lez v8, :cond_3

    sub-long v8, v1, v6

    invoke-virtual {v0, v1, v2, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    if-eqz v3, :cond_4

    sub-long/2addr p1, v6

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_4
    iget-wide p1, p0, Lj$/util/stream/i2;->d:J

    cmp-long v0, v1, p1

    if-lez v0, :cond_5

    sub-long/2addr v1, p1

    sub-long/2addr v6, v1

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_5
    return-wide v6
.end method

.method public final characteristics()I
    .locals 1

    iget-object v0, p0, Lj$/util/stream/i2;->a:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit16 v0, v0, -0x4051

    return v0
.end method

.method public final estimateSize()J
    .locals 2

    iget-object v0, p0, Lj$/util/stream/i2;->a:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public final forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lj$/util/stream/i2;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    sget-object v1, Lj$/util/stream/j2;->MAYBE_MORE:Lj$/util/stream/j2;

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lj$/util/stream/i2;->b:Z

    if-eqz v1, :cond_2

    sget-object v1, Lj$/util/stream/j2;->UNLIMITED:Lj$/util/stream/j2;

    goto :goto_0

    :cond_2
    sget-object v1, Lj$/util/stream/j2;->NO_MORE:Lj$/util/stream/j2;

    :goto_0
    sget-object v2, Lj$/util/stream/j2;->NO_MORE:Lj$/util/stream/j2;

    if-eq v1, v2, :cond_8

    sget-object v2, Lj$/util/stream/j2;->MAYBE_MORE:Lj$/util/stream/j2;

    iget-object v5, p0, Lj$/util/stream/i2;->a:Lj$/util/Spliterator;

    if-ne v1, v2, :cond_7

    const/4 v1, 0x0

    iget v2, p0, Lj$/util/stream/i2;->c:I

    if-nez v0, :cond_3

    new-instance v0, Lj$/util/stream/P1;

    invoke-direct {v0, v2}, Lj$/util/stream/P1;-><init>(I)V

    goto :goto_1

    :cond_3
    iput v1, v0, Lj$/util/stream/P1;->a:I

    :goto_1
    move-wide v6, v3

    :cond_4
    invoke-interface {v5, v0}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    int-to-long v8, v2

    cmp-long v10, v6, v8

    if-ltz v10, :cond_4

    :cond_5
    cmp-long v2, v6, v3

    if-nez v2, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0, v6, v7}, Lj$/util/stream/i2;->b(J)J

    move-result-wide v2

    :goto_2
    int-to-long v4, v1

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    iget-object v4, v0, Lj$/util/stream/P1;->b:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    invoke-interface {v5, p1}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    :cond_8
    return-void
.end method

.method public final synthetic getComparator()Ljava/util/Comparator;
    .locals 1

    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getComparator(Lj$/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getExactSizeIfKnown()J
    .locals 2

    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getExactSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic hasCharacteristics(I)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$hasCharacteristics(Lj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public final tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object v0, p0, Lj$/util/stream/i2;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    sget-object v0, Lj$/util/stream/j2;->MAYBE_MORE:Lj$/util/stream/j2;

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lj$/util/stream/i2;->b:Z

    if-eqz v0, :cond_2

    sget-object v0, Lj$/util/stream/j2;->UNLIMITED:Lj$/util/stream/j2;

    goto :goto_0

    :cond_2
    sget-object v0, Lj$/util/stream/j2;->NO_MORE:Lj$/util/stream/j2;

    :goto_0
    sget-object v1, Lj$/util/stream/j2;->NO_MORE:Lj$/util/stream/j2;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lj$/util/stream/i2;->a:Lj$/util/Spliterator;

    invoke-interface {v0, p0}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lj$/util/stream/i2;->b(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    iget-object v0, p0, Lj$/util/stream/i2;->f:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lj$/util/stream/i2;->f:Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_4
    return v2
.end method

.method public final trySplit()Lj$/util/Spliterator;
    .locals 6

    iget-object v0, p0, Lj$/util/stream/i2;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    return-object v4

    :cond_0
    iget-object v0, p0, Lj$/util/stream/i2;->a:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Lj$/util/stream/i2;

    invoke-direct {v4, v0, p0}, Lj$/util/stream/i2;-><init>(Lj$/util/Spliterator;Lj$/util/stream/i2;)V

    :goto_0
    return-object v4
.end method
