.class public final synthetic Lj$/util/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/J;


# instance fields
.field public final synthetic a:Ljava/util/Spliterator$OfInt;


# direct methods
.method private synthetic constructor <init>(Ljava/util/Spliterator$OfInt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/H;->a:Ljava/util/Spliterator$OfInt;

    return-void
.end method

.method public static synthetic a(Ljava/util/Spliterator$OfInt;)Lj$/util/J;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/I;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/I;

    iget-object p0, p0, Lj$/util/I;->a:Lj$/util/J;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/H;

    invoke-direct {v0, p0}, Lj$/util/H;-><init>(Ljava/util/Spliterator$OfInt;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic characteristics()I
    .locals 1

    iget-object v0, p0, Lj$/util/H;->a:Ljava/util/Spliterator$OfInt;

    invoke-static {v0}, Lj$/nio/file/s;->a(Ljava/util/Spliterator;)I

    move-result v0

    return v0
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/H;->a:Ljava/util/Spliterator$OfInt;

    instance-of v1, p1, Lj$/util/H;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/H;

    iget-object p1, p1, Lj$/util/H;->a:Ljava/util/Spliterator$OfInt;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic estimateSize()J
    .locals 2

    iget-object v0, p0, Lj$/util/H;->a:Ljava/util/Spliterator$OfInt;

    invoke-static {v0}, Lj$/nio/file/s;->D(Ljava/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lj$/util/H;->a:Ljava/util/Spliterator$OfInt;

    invoke-static {v0, p1}, Lj$/nio/file/s;->o(Ljava/util/Spliterator$OfInt;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/H;->a:Ljava/util/Spliterator$OfInt;

    invoke-static {v0, p1}, Lj$/nio/file/s;->p(Ljava/util/Spliterator$OfInt;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/H;->a:Ljava/util/Spliterator$OfInt;

    invoke-static {v0, p1}, Lj$/nio/file/s;->q(Ljava/util/Spliterator$OfInt;Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public final synthetic getComparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lj$/util/H;->a:Ljava/util/Spliterator$OfInt;

    invoke-static {v0}, Lj$/nio/file/s;->c(Ljava/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getExactSizeIfKnown()J
    .locals 2

    iget-object v0, p0, Lj$/util/H;->a:Ljava/util/Spliterator$OfInt;

    invoke-static {v0}, Lj$/nio/file/s;->b(Ljava/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic hasCharacteristics(I)Z
    .locals 1

    iget-object v0, p0, Lj$/util/H;->a:Ljava/util/Spliterator$OfInt;

    invoke-static {v0, p1}, Lj$/nio/file/s;->C(Ljava/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/H;->a:Ljava/util/Spliterator$OfInt;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lj$/util/H;->a:Ljava/util/Spliterator$OfInt;

    invoke-static {v0, p1}, Lj$/nio/file/s;->w(Ljava/util/Spliterator$OfInt;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 1

    iget-object v0, p0, Lj$/util/H;->a:Ljava/util/Spliterator$OfInt;

    invoke-static {v0, p1}, Lj$/nio/file/s;->x(Ljava/util/Spliterator$OfInt;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public final synthetic tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 1

    iget-object v0, p0, Lj$/util/H;->a:Ljava/util/Spliterator$OfInt;

    invoke-static {v0, p1}, Lj$/nio/file/s;->y(Ljava/util/Spliterator$OfInt;Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public final synthetic trySplit()Lj$/util/J;
    .locals 1

    iget-object v0, p0, Lj$/util/H;->a:Ljava/util/Spliterator$OfInt;

    invoke-static {v0}, Lj$/nio/file/s;->e(Ljava/util/Spliterator$OfInt;)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    invoke-static {v0}, Lj$/util/H;->a(Ljava/util/Spliterator$OfInt;)Lj$/util/J;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic trySplit()Lj$/util/Q;
    .locals 1

    iget-object v0, p0, Lj$/util/H;->a:Ljava/util/Spliterator$OfInt;

    invoke-static {v0}, Lj$/nio/file/s;->g(Ljava/util/Spliterator$OfInt;)Ljava/util/Spliterator$OfPrimitive;

    move-result-object v0

    invoke-static {v0}, Lj$/util/O;->a(Ljava/util/Spliterator$OfPrimitive;)Lj$/util/Q;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    iget-object v0, p0, Lj$/util/H;->a:Ljava/util/Spliterator$OfInt;

    invoke-static {v0}, Lj$/nio/file/s;->j(Ljava/util/Spliterator$OfInt;)Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/S;->a(Ljava/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
