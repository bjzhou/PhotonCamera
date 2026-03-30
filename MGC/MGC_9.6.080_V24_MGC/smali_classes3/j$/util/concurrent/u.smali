.class final Lj$/util/concurrent/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/Spliterator;


# instance fields
.field a:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

.field b:I

.field c:Z

.field final synthetic d:Lj$/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method constructor <init>(Lj$/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/concurrent/u;->d:Lj$/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private a()Lj$/util/concurrent/ConcurrentLinkedQueue$Node;
    .locals 2

    iget-object v0, p0, Lj$/util/concurrent/u;->a:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lj$/util/concurrent/u;->c:Z

    if-nez v1, :cond_0

    iget-object v0, p0, Lj$/util/concurrent/u;->d:Lj$/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->b()Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v0

    iput-object v0, p0, Lj$/util/concurrent/u;->a:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lj$/util/concurrent/u;->c:Z

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final characteristics()I
    .locals 1

    const/16 v0, 0x1110

    return v0
.end method

.method public final estimateSize()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public final forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lj$/util/concurrent/u;->a()Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lj$/util/concurrent/u;->a:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lj$/util/concurrent/u;->c:Z

    iget-object v1, p0, Lj$/util/concurrent/u;->d:Lj$/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1, v0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->c(Ljava/util/function/Consumer;Lj$/util/concurrent/ConcurrentLinkedQueue$Node;)V

    :cond_0
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
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lj$/util/concurrent/u;->a()Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v1, v0, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    iget-object v2, v0, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lj$/util/concurrent/u;->d:Lj$/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->b()Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-nez v1, :cond_2

    if-nez v0, :cond_0

    :cond_2
    iput-object v0, p0, Lj$/util/concurrent/u;->a:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iput-boolean v2, p0, Lj$/util/concurrent/u;->c:Z

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return v2

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public final trySplit()Lj$/util/Spliterator;
    .locals 10

    invoke-direct {p0}, Lj$/util/concurrent/u;->a()Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v2, v0, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget v3, p0, Lj$/util/concurrent/u;->b:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/high16 v5, 0x2000000

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lj$/util/concurrent/u;->b:I

    const/4 v5, 0x0

    move-object v6, v1

    const/4 v7, 0x0

    :cond_1
    iget-object v8, v0, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v8, :cond_3

    if-nez v6, :cond_2

    new-array v6, v3, [Ljava/lang/Object;

    :cond_2
    add-int/lit8 v9, v7, 0x1

    aput-object v8, v6, v7

    move v7, v9

    :cond_3
    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lj$/util/concurrent/u;->d:Lj$/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->b()Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_5

    iget-object v2, v0, Lj$/util/concurrent/ConcurrentLinkedQueue$Node;->next:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    if-eqz v2, :cond_5

    if-lt v7, v3, :cond_1

    :cond_5
    iput-object v0, p0, Lj$/util/concurrent/u;->a:Lj$/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v0, :cond_6

    iput-boolean v4, p0, Lj$/util/concurrent/u;->c:Z

    :cond_6
    if-nez v7, :cond_7

    goto :goto_1

    :cond_7
    const/16 v0, 0x1110

    invoke-static {v6, v5, v7, v0}, Lj$/util/Spliterators;->m([Ljava/lang/Object;III)Lj$/util/Spliterator;

    move-result-object v1

    :cond_8
    :goto_1
    return-object v1
.end method
