.class public abstract Lj$/util/Spliterators$AbstractSpliterator;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lj$/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:I

.field private b:J

.field private c:I


# direct methods
.method protected constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lj$/util/Spliterators$AbstractSpliterator;->b:J

    and-int/lit8 p1, p3, 0x40

    if-eqz p1, :cond_0

    or-int/lit16 p3, p3, 0x4000

    :cond_0
    iput p3, p0, Lj$/util/Spliterators$AbstractSpliterator;->a:I

    return-void
.end method


# virtual methods
.method public final characteristics()I
    .locals 1

    iget v0, p0, Lj$/util/Spliterators$AbstractSpliterator;->a:I

    return v0
.end method

.method public final estimateSize()J
    .locals 2

    iget-wide v0, p0, Lj$/util/Spliterators$AbstractSpliterator;->b:J

    return-wide v0
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$forEachRemaining(Lj$/util/Spliterator;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic getComparator()Ljava/util/Comparator;
    .locals 1

    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getComparator(Lj$/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getExactSizeIfKnown()J
    .locals 2

    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getExactSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$hasCharacteristics(Lj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public final trySplit()Lj$/util/Spliterator;
    .locals 9

    new-instance v0, Lj$/util/J;

    invoke-direct {v0}, Lj$/util/J;-><init>()V

    iget-wide v1, p0, Lj$/util/Spliterators$AbstractSpliterator;->b:J

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-lez v5, :cond_5

    invoke-interface {p0, v0}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Lj$/util/Spliterators$AbstractSpliterator;->c:I

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
    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v4, 0x0

    :cond_2
    iget-object v5, v0, Lj$/util/J;->a:Ljava/lang/Object;

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v3, :cond_3

    invoke-interface {p0, v0}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_3
    iput v4, p0, Lj$/util/Spliterators$AbstractSpliterator;->c:I

    iget-wide v5, p0, Lj$/util/Spliterators$AbstractSpliterator;->b:J

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v0, v5, v7

    if-eqz v0, :cond_4

    int-to-long v7, v4

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lj$/util/Spliterators$AbstractSpliterator;->b:J

    :cond_4
    new-instance v0, Lj$/util/K;

    iget v3, p0, Lj$/util/Spliterators$AbstractSpliterator;->a:I

    invoke-direct {v0, v1, v2, v4, v3}, Lj$/util/K;-><init>([Ljava/lang/Object;III)V

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method
