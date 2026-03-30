.class public final synthetic Lj$/util/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/G;


# instance fields
.field public final synthetic a:Ljava/util/Spliterator$OfDouble;


# direct methods
.method private synthetic constructor <init>(Ljava/util/Spliterator$OfDouble;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/E;->a:Ljava/util/Spliterator$OfDouble;

    return-void
.end method

.method public static synthetic a(Ljava/util/Spliterator$OfDouble;)Lj$/util/G;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/F;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/F;

    iget-object p0, p0, Lj$/util/F;->a:Lj$/util/G;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/E;

    invoke-direct {v0, p0}, Lj$/util/E;-><init>(Ljava/util/Spliterator$OfDouble;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic characteristics()I
    .locals 1

    iget-object v0, p0, Lj$/util/E;->a:Ljava/util/Spliterator$OfDouble;

    invoke-static {v0}, Lj$/nio/file/s;->a(Ljava/util/Spliterator;)I

    move-result v0

    return v0
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/E;->a:Ljava/util/Spliterator$OfDouble;

    instance-of v1, p1, Lj$/util/E;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/E;

    iget-object p1, p1, Lj$/util/E;->a:Ljava/util/Spliterator$OfDouble;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic estimateSize()J
    .locals 2

    iget-object v0, p0, Lj$/util/E;->a:Ljava/util/Spliterator$OfDouble;

    invoke-static {v0}, Lj$/nio/file/s;->D(Ljava/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lj$/util/E;->a:Ljava/util/Spliterator$OfDouble;

    invoke-static {v0, p1}, Lj$/nio/file/s;->l(Ljava/util/Spliterator$OfDouble;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/E;->a:Ljava/util/Spliterator$OfDouble;

    invoke-static {v0, p1}, Lj$/nio/file/s;->m(Ljava/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/E;->a:Ljava/util/Spliterator$OfDouble;

    invoke-static {v0, p1}, Lj$/nio/file/s;->n(Ljava/util/Spliterator$OfDouble;Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public final synthetic getComparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lj$/util/E;->a:Ljava/util/Spliterator$OfDouble;

    invoke-static {v0}, Lj$/nio/file/s;->c(Ljava/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getExactSizeIfKnown()J
    .locals 2

    iget-object v0, p0, Lj$/util/E;->a:Ljava/util/Spliterator$OfDouble;

    invoke-static {v0}, Lj$/nio/file/s;->b(Ljava/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic hasCharacteristics(I)Z
    .locals 1

    iget-object v0, p0, Lj$/util/E;->a:Ljava/util/Spliterator$OfDouble;

    invoke-static {v0, p1}, Lj$/nio/file/s;->C(Ljava/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/E;->a:Ljava/util/Spliterator$OfDouble;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lj$/util/E;->a:Ljava/util/Spliterator$OfDouble;

    invoke-static {v0, p1}, Lj$/nio/file/s;->t(Ljava/util/Spliterator$OfDouble;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 1

    iget-object v0, p0, Lj$/util/E;->a:Ljava/util/Spliterator$OfDouble;

    invoke-static {v0, p1}, Lj$/nio/file/s;->u(Ljava/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public final synthetic tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 1

    iget-object v0, p0, Lj$/util/E;->a:Ljava/util/Spliterator$OfDouble;

    invoke-static {v0, p1}, Lj$/nio/file/s;->v(Ljava/util/Spliterator$OfDouble;Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public final synthetic trySplit()Lj$/util/G;
    .locals 1

    iget-object v0, p0, Lj$/util/E;->a:Ljava/util/Spliterator$OfDouble;

    invoke-static {v0}, Lj$/nio/file/s;->d(Ljava/util/Spliterator$OfDouble;)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    invoke-static {v0}, Lj$/util/E;->a(Ljava/util/Spliterator$OfDouble;)Lj$/util/G;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic trySplit()Lj$/util/Q;
    .locals 1

    iget-object v0, p0, Lj$/util/E;->a:Ljava/util/Spliterator$OfDouble;

    invoke-static {v0}, Lj$/nio/file/s;->f(Ljava/util/Spliterator$OfDouble;)Ljava/util/Spliterator$OfPrimitive;

    move-result-object v0

    invoke-static {v0}, Lj$/util/O;->a(Ljava/util/Spliterator$OfPrimitive;)Lj$/util/Q;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    iget-object v0, p0, Lj$/util/E;->a:Ljava/util/Spliterator$OfDouble;

    invoke-static {v0}, Lj$/nio/file/s;->i(Ljava/util/Spliterator$OfDouble;)Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/S;->a(Ljava/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
