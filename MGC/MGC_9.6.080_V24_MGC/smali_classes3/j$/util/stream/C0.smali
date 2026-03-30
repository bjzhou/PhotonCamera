.class abstract Lj$/util/stream/C0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/Spliterator;


# instance fields
.field a:Lj$/util/stream/Z;

.field b:I

.field c:Lj$/util/Spliterator;

.field d:Lj$/util/Spliterator;

.field e:Ljava/util/ArrayDeque;


# direct methods
.method constructor <init>(Lj$/util/stream/Z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/C0;->a:Lj$/util/stream/Z;

    return-void
.end method

.method protected static a(Ljava/util/ArrayDeque;)Lj$/util/stream/Z;
    .locals 6

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Z;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lj$/util/stream/Z;->s()I

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lj$/util/stream/Z;->count()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    return-object v0

    :cond_1
    invoke-interface {v0}, Lj$/util/stream/Z;->s()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-interface {v0, v1}, Lj$/util/stream/Z;->b(I)Lj$/util/stream/Z;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected final b()Ljava/util/ArrayDeque;
    .locals 3

    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iget-object v1, p0, Lj$/util/stream/C0;->a:Lj$/util/stream/Z;

    invoke-interface {v1}, Lj$/util/stream/Z;->s()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Lj$/util/stream/C0;->b:I

    if-lt v1, v2, :cond_0

    iget-object v2, p0, Lj$/util/stream/C0;->a:Lj$/util/stream/Z;

    invoke-interface {v2, v1}, Lj$/util/stream/Z;->b(I)Lj$/util/stream/Z;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected final c()Z
    .locals 2

    iget-object v0, p0, Lj$/util/stream/C0;->a:Lj$/util/stream/Z;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lj$/util/stream/C0;->d:Lj$/util/Spliterator;

    if-nez v0, :cond_3

    iget-object v0, p0, Lj$/util/stream/C0;->c:Lj$/util/Spliterator;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lj$/util/stream/C0;->b()Ljava/util/ArrayDeque;

    move-result-object v0

    iput-object v0, p0, Lj$/util/stream/C0;->e:Ljava/util/ArrayDeque;

    invoke-static {v0}, Lj$/util/stream/C0;->a(Ljava/util/ArrayDeque;)Lj$/util/stream/Z;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lj$/util/stream/Z;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    iput-object v0, p0, Lj$/util/stream/C0;->d:Lj$/util/Spliterator;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/stream/C0;->a:Lj$/util/stream/Z;

    return v1

    :cond_2
    iput-object v0, p0, Lj$/util/stream/C0;->d:Lj$/util/Spliterator;

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final characteristics()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public final estimateSize()J
    .locals 5

    iget-object v0, p0, Lj$/util/stream/C0;->a:Lj$/util/stream/Z;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lj$/util/stream/C0;->c:Lj$/util/Spliterator;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget v0, p0, Lj$/util/stream/C0;->b:I

    :goto_0
    iget-object v3, p0, Lj$/util/stream/C0;->a:Lj$/util/stream/Z;

    invoke-interface {v3}, Lj$/util/stream/Z;->s()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lj$/util/stream/C0;->a:Lj$/util/stream/Z;

    invoke-interface {v3, v0}, Lj$/util/stream/Z;->b(I)Lj$/util/stream/Z;

    move-result-object v3

    invoke-interface {v3}, Lj$/util/stream/Z;->count()J

    move-result-wide v3

    add-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-wide v1
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

.method public bridge synthetic trySplit()Lj$/util/G;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/C0;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/G;

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/J;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/C0;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/J;

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/N;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/C0;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/N;

    return-object v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Q;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/C0;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Q;

    return-object v0
.end method

.method public final trySplit()Lj$/util/Spliterator;
    .locals 3

    iget-object v0, p0, Lj$/util/stream/C0;->a:Lj$/util/stream/Z;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lj$/util/stream/C0;->d:Lj$/util/Spliterator;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lj$/util/stream/C0;->c:Lj$/util/Spliterator;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    return-object v0

    :cond_1
    iget v1, p0, Lj$/util/stream/C0;->b:I

    invoke-interface {v0}, Lj$/util/stream/Z;->s()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lj$/util/stream/C0;->a:Lj$/util/stream/Z;

    iget v1, p0, Lj$/util/stream/C0;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/util/stream/C0;->b:I

    invoke-interface {v0, v1}, Lj$/util/stream/Z;->b(I)Lj$/util/stream/Z;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/Z;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lj$/util/stream/C0;->a:Lj$/util/stream/Z;

    iget v1, p0, Lj$/util/stream/C0;->b:I

    invoke-interface {v0, v1}, Lj$/util/stream/Z;->b(I)Lj$/util/stream/Z;

    move-result-object v0

    iput-object v0, p0, Lj$/util/stream/C0;->a:Lj$/util/stream/Z;

    invoke-interface {v0}, Lj$/util/stream/Z;->s()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lj$/util/stream/C0;->a:Lj$/util/stream/Z;

    invoke-interface {v0}, Lj$/util/stream/Z;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    iput-object v0, p0, Lj$/util/stream/C0;->c:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lj$/util/stream/C0;->a:Lj$/util/stream/Z;

    iput v2, p0, Lj$/util/stream/C0;->b:I

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lj$/util/stream/Z;->b(I)Lj$/util/stream/Z;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/Z;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
