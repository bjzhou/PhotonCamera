.class final Lnfu;
.super Lj$/util/Spliterators$AbstractSpliterator;


# instance fields
.field final synthetic a:Lnfv;


# direct methods
.method public constructor <init>(Lnfv;J)V
    .locals 0

    iput-object p1, p0, Lnfu;->a:Lnfv;

    const/16 p1, 0x10

    invoke-direct {p0, p2, p3, p1}, Lj$/util/Spliterators$AbstractSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$forEachRemaining(Lj$/util/Spliterator;Ljava/util/function/Consumer;)V

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

    iget-object v0, p0, Lnfu;->a:Lnfv;

    iget-object v1, v0, Lnfv;->c:Lj$/util/Spliterator;

    iget-object v2, v0, Lnfv;->a:Lnfs;

    invoke-interface {v1, v2}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lnfv;->d:Lj$/util/Spliterator;

    iget-object v0, v0, Lnfv;->b:Lnfs;

    invoke-interface {v1, v0}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnfu;->a:Lnfv;

    iget-object v1, v0, Lnfv;->a:Lnfs;

    iget-object v1, v1, Lnfs;->a:Ljava/lang/Object;

    iget-object v0, v0, Lnfv;->b:Lnfs;

    iget-object v0, v0, Lnfs;->a:Ljava/lang/Object;

    invoke-static {v1, v0}, Lnfx;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
