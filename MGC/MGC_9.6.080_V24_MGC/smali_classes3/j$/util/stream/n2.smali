.class final Lj$/util/stream/n2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/J;


# instance fields
.field private a:I

.field private final b:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lj$/util/stream/n2;->a:I

    iput p2, p0, Lj$/util/stream/n2;->b:I

    return-void
.end method

.method constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/n2;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final characteristics()I
    .locals 1

    const/16 v0, 0x4555

    return v0
.end method

.method public final estimateSize()J
    .locals 4

    iget v0, p0, Lj$/util/stream/n2;->b:I

    int-to-long v0, v0

    iget v2, p0, Lj$/util/stream/n2;->a:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/n2;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/b;->b(Lj$/util/J;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lj$/util/stream/n2;->a:I

    iget v1, p0, Lj$/util/stream/n2;->b:I

    iput v1, p0, Lj$/util/stream/n2;->a:I

    :goto_0
    if-ge v0, v1, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    move v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getComparator()Ljava/util/Comparator;
    .locals 1

    const/4 v0, 0x0

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

.method public final bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/n2;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public final synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/b;->f(Lj$/util/J;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public final tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lj$/util/stream/n2;->a:I

    iget v1, p0, Lj$/util/stream/n2;->b:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lj$/util/stream/n2;->a:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final trySplit()Lj$/util/J;
    .locals 7

    invoke-virtual {p0}, Lj$/util/stream/n2;->estimateSize()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    new-instance v2, Lj$/util/stream/n2;

    iget v3, p0, Lj$/util/stream/n2;->a:I

    const-wide/32 v4, 0x1000000

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    const/4 v4, 0x2

    goto :goto_0

    :cond_1
    const/16 v4, 0x8

    :goto_0
    int-to-long v4, v4

    div-long/2addr v0, v4

    long-to-int v1, v0

    add-int/2addr v1, v3

    iput v1, p0, Lj$/util/stream/n2;->a:I

    invoke-direct {v2, v3, v1}, Lj$/util/stream/n2;-><init>(II)V

    move-object v0, v2

    :goto_1
    return-object v0
.end method

.method public final bridge synthetic trySplit()Lj$/util/Q;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/n2;->trySplit()Lj$/util/J;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/n2;->trySplit()Lj$/util/J;

    move-result-object v0

    return-object v0
.end method
