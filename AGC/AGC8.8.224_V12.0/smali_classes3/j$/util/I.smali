.class public abstract Lj$/util/I;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/u;


# instance fields
.field private final a:I

.field private b:J

.field private c:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lj$/util/I;->b:J

    const/16 v0, 0x510

    iput v0, p0, Lj$/util/I;->a:I

    return-void
.end method


# virtual methods
.method public final characteristics()I
    .locals 1

    iget v0, p0, Lj$/util/I;->a:I

    return v0
.end method

.method public final estimateSize()J
    .locals 2

    iget-wide v0, p0, Lj$/util/I;->b:J

    return-wide v0
.end method

.method public final forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/function/IntConsumer;

    :goto_0
    invoke-interface {p0, p1}, Lj$/util/u;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    goto :goto_0
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/b;->b(Lj$/util/u;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 0

    :goto_0
    invoke-interface {p0, p1}, Lj$/util/u;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    goto :goto_0
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

.method public final synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/b;->k(Lj$/util/u;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic trySplit()Lj$/util/A;
    .locals 1

    invoke-virtual {p0}, Lj$/util/I;->trySplit()Lj$/util/u;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Lj$/util/I;->trySplit()Lj$/util/u;

    move-result-object v0

    return-object v0
.end method

.method public final trySplit()Lj$/util/u;
    .locals 9

    new-instance v0, Lj$/util/H;

    invoke-direct {v0}, Lj$/util/H;-><init>()V

    iget-wide v1, p0, Lj$/util/I;->b:J

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-lez v5, :cond_4

    invoke-interface {p0, v0}, Lj$/util/u;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    iget v3, p0, Lj$/util/I;->c:I

    add-int/lit16 v3, v3, 0x400

    int-to-long v4, v3

    cmp-long v6, v4, v1

    if-lez v6, :cond_0

    long-to-int v3, v1

    :cond_0
    const/high16 v1, 0x2000000

    if-le v3, v1, :cond_1

    const/high16 v3, 0x2000000

    :cond_1
    new-array v1, v3, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v5, v0, Lj$/util/H;->a:I

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v3, :cond_2

    invoke-interface {p0, v0}, Lj$/util/u;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    goto :goto_0

    :cond_2
    iput v4, p0, Lj$/util/I;->c:I

    iget-wide v5, p0, Lj$/util/I;->b:J

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v0, v5, v7

    if-eqz v0, :cond_3

    int-to-long v7, v4

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lj$/util/I;->b:J

    :cond_3
    new-instance v0, Lj$/util/Q;

    iget v3, p0, Lj$/util/I;->a:I

    invoke-direct {v0, v1, v2, v4, v3}, Lj$/util/Q;-><init>([IIII)V

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method
