.class final Lj$/util/stream/i1;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/Spliterator;


# instance fields
.field a:I

.field final b:I

.field c:I

.field final d:I

.field e:[Ljava/lang/Object;

.field final synthetic f:Lj$/util/stream/r1;


# direct methods
.method constructor <init>(Lj$/util/stream/r1;IIII)V
    .locals 0

    iput-object p1, p0, Lj$/util/stream/i1;->f:Lj$/util/stream/r1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lj$/util/stream/i1;->a:I

    iput p3, p0, Lj$/util/stream/i1;->b:I

    iput p4, p0, Lj$/util/stream/i1;->c:I

    iput p5, p0, Lj$/util/stream/i1;->d:I

    iget-object p3, p1, Lj$/util/stream/r1;->e:[[Ljava/lang/Object;

    if-nez p3, :cond_0

    iget-object p1, p1, Lj$/util/stream/r1;->d:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    aget-object p1, p3, p2

    :goto_0
    iput-object p1, p0, Lj$/util/stream/i1;->e:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final characteristics()I
    .locals 1

    const/16 v0, 0x4050

    return v0
.end method

.method public final estimateSize()J
    .locals 6

    iget v0, p0, Lj$/util/stream/i1;->a:I

    iget v1, p0, Lj$/util/stream/i1;->d:I

    iget v2, p0, Lj$/util/stream/i1;->b:I

    if-ne v0, v2, :cond_0

    int-to-long v0, v1

    iget v2, p0, Lj$/util/stream/i1;->c:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lj$/util/stream/i1;->f:Lj$/util/stream/r1;

    iget-object v3, v3, Lj$/util/stream/e;->c:[J

    aget-wide v4, v3, v2

    int-to-long v1, v1

    add-long/2addr v4, v1

    aget-wide v0, v3, v0

    sub-long/2addr v4, v0

    iget v0, p0, Lj$/util/stream/i1;->c:I

    int-to-long v0, v0

    sub-long v0, v4, v0

    :goto_0
    return-wide v0
.end method

.method public final forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lj$/util/stream/i1;->a:I

    iget v1, p0, Lj$/util/stream/i1;->d:I

    iget v2, p0, Lj$/util/stream/i1;->b:I

    if-lt v0, v2, :cond_0

    if-ne v0, v2, :cond_5

    iget v3, p0, Lj$/util/stream/i1;->c:I

    if-ge v3, v1, :cond_5

    :cond_0
    iget v3, p0, Lj$/util/stream/i1;->c:I

    :goto_0
    iget-object v4, p0, Lj$/util/stream/i1;->f:Lj$/util/stream/r1;

    if-ge v0, v2, :cond_2

    iget-object v4, v4, Lj$/util/stream/r1;->e:[[Ljava/lang/Object;

    aget-object v4, v4, v0

    :goto_1
    array-length v5, v4

    if-ge v3, v5, :cond_1

    aget-object v5, v4, v3

    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    iget v0, p0, Lj$/util/stream/i1;->a:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lj$/util/stream/i1;->e:[Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v0, v4, Lj$/util/stream/r1;->e:[[Ljava/lang/Object;

    aget-object v0, v0, v2

    :goto_2
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iput v2, p0, Lj$/util/stream/i1;->a:I

    iput v1, p0, Lj$/util/stream/i1;->c:I

    :cond_5
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

    iget v0, p0, Lj$/util/stream/i1;->a:I

    const/4 v1, 0x0

    iget v2, p0, Lj$/util/stream/i1;->b:I

    if-lt v0, v2, :cond_1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lj$/util/stream/i1;->c:I

    iget v3, p0, Lj$/util/stream/i1;->d:I

    if-ge v0, v3, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lj$/util/stream/i1;->e:[Ljava/lang/Object;

    iget v3, p0, Lj$/util/stream/i1;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lj$/util/stream/i1;->c:I

    aget-object v0, v0, v3

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget p1, p0, Lj$/util/stream/i1;->c:I

    iget-object v0, p0, Lj$/util/stream/i1;->e:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_2

    iput v1, p0, Lj$/util/stream/i1;->c:I

    iget p1, p0, Lj$/util/stream/i1;->a:I

    add-int/2addr p1, v3

    iput p1, p0, Lj$/util/stream/i1;->a:I

    iget-object v0, p0, Lj$/util/stream/i1;->f:Lj$/util/stream/r1;

    iget-object v0, v0, Lj$/util/stream/r1;->e:[[Ljava/lang/Object;

    if-eqz v0, :cond_2

    if-gt p1, v2, :cond_2

    aget-object p1, v0, p1

    iput-object p1, p0, Lj$/util/stream/i1;->e:[Ljava/lang/Object;

    :cond_2
    return v3
.end method

.method public final trySplit()Lj$/util/Spliterator;
    .locals 9

    iget v2, p0, Lj$/util/stream/i1;->a:I

    iget v6, p0, Lj$/util/stream/i1;->b:I

    if-ge v2, v6, :cond_0

    new-instance v7, Lj$/util/stream/i1;

    add-int/lit8 v3, v6, -0x1

    iget v4, p0, Lj$/util/stream/i1;->c:I

    iget-object v8, p0, Lj$/util/stream/i1;->f:Lj$/util/stream/r1;

    iget-object v0, v8, Lj$/util/stream/r1;->e:[[Ljava/lang/Object;

    aget-object v0, v0, v3

    array-length v5, v0

    move-object v0, v7

    move-object v1, v8

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/i1;-><init>(Lj$/util/stream/r1;IIII)V

    iput v6, p0, Lj$/util/stream/i1;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lj$/util/stream/i1;->c:I

    iget-object v0, v8, Lj$/util/stream/r1;->e:[[Ljava/lang/Object;

    aget-object v0, v0, v6

    iput-object v0, p0, Lj$/util/stream/i1;->e:[Ljava/lang/Object;

    return-object v7

    :cond_0
    const/4 v0, 0x0

    if-ne v2, v6, :cond_2

    iget v1, p0, Lj$/util/stream/i1;->c:I

    iget v2, p0, Lj$/util/stream/i1;->d:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lj$/util/stream/i1;->e:[Ljava/lang/Object;

    add-int v3, v1, v2

    invoke-static {v0, v1, v3}, Lj$/util/U;->m([Ljava/lang/Object;II)Lj$/util/Spliterator;

    move-result-object v0

    iget v1, p0, Lj$/util/stream/i1;->c:I

    add-int/2addr v1, v2

    iput v1, p0, Lj$/util/stream/i1;->c:I

    :cond_2
    return-object v0
.end method
