.class public final synthetic Lj$/util/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/Q;


# instance fields
.field public final synthetic a:Ljava/util/Spliterator$OfPrimitive;


# direct methods
.method private synthetic constructor <init>(Ljava/util/Spliterator$OfPrimitive;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/O;->a:Ljava/util/Spliterator$OfPrimitive;

    return-void
.end method

.method public static synthetic a(Ljava/util/Spliterator$OfPrimitive;)Lj$/util/Q;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/P;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/P;

    iget-object p0, p0, Lj$/util/P;->a:Lj$/util/Q;

    return-object p0

    :cond_1
    invoke-static {p0}, Lj$/util/K;->t(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lj$/util/K;->c(Ljava/lang/Object;)Ljava/util/Spliterator$OfDouble;

    move-result-object p0

    invoke-static {p0}, Lj$/util/E;->a(Ljava/util/Spliterator$OfDouble;)Lj$/util/G;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0}, Lj$/util/K;->A(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lj$/util/K;->d(Ljava/lang/Object;)Ljava/util/Spliterator$OfInt;

    move-result-object p0

    invoke-static {p0}, Lj$/util/H;->a(Ljava/util/Spliterator$OfInt;)Lj$/util/J;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p0}, Lj$/util/K;->C(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lj$/util/K;->e(Ljava/lang/Object;)Ljava/util/Spliterator$OfLong;

    move-result-object p0

    invoke-static {p0}, Lj$/util/L;->a(Ljava/util/Spliterator$OfLong;)Lj$/util/N;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v0, Lj$/util/O;

    invoke-direct {v0, p0}, Lj$/util/O;-><init>(Ljava/util/Spliterator$OfPrimitive;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic characteristics()I
    .locals 1

    iget-object v0, p0, Lj$/util/O;->a:Ljava/util/Spliterator$OfPrimitive;

    invoke-static {v0}, Lj$/nio/file/s;->a(Ljava/util/Spliterator;)I

    move-result v0

    return v0
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/O;->a:Ljava/util/Spliterator$OfPrimitive;

    instance-of v1, p1, Lj$/util/O;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/O;

    iget-object p1, p1, Lj$/util/O;->a:Ljava/util/Spliterator$OfPrimitive;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic estimateSize()J
    .locals 2

    iget-object v0, p0, Lj$/util/O;->a:Ljava/util/Spliterator$OfPrimitive;

    invoke-static {v0}, Lj$/nio/file/s;->D(Ljava/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lj$/util/O;->a:Ljava/util/Spliterator$OfPrimitive;

    invoke-static {v0, p1}, Lj$/util/K;->r(Ljava/util/Spliterator$OfPrimitive;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/O;->a:Ljava/util/Spliterator$OfPrimitive;

    invoke-static {v0, p1}, Lj$/util/K;->s(Ljava/util/Spliterator;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic getComparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lj$/util/O;->a:Ljava/util/Spliterator$OfPrimitive;

    invoke-static {v0}, Lj$/nio/file/s;->c(Ljava/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getExactSizeIfKnown()J
    .locals 2

    iget-object v0, p0, Lj$/util/O;->a:Ljava/util/Spliterator$OfPrimitive;

    invoke-static {v0}, Lj$/nio/file/s;->b(Ljava/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic hasCharacteristics(I)Z
    .locals 1

    iget-object v0, p0, Lj$/util/O;->a:Ljava/util/Spliterator$OfPrimitive;

    invoke-static {v0, p1}, Lj$/nio/file/s;->C(Ljava/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/O;->a:Ljava/util/Spliterator$OfPrimitive;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lj$/util/O;->a:Ljava/util/Spliterator$OfPrimitive;

    invoke-static {v0, p1}, Lj$/util/K;->u(Ljava/util/Spliterator$OfPrimitive;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 1

    iget-object v0, p0, Lj$/util/O;->a:Ljava/util/Spliterator$OfPrimitive;

    invoke-static {v0, p1}, Lj$/util/K;->v(Ljava/util/Spliterator;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public final synthetic trySplit()Lj$/util/Q;
    .locals 1

    iget-object v0, p0, Lj$/util/O;->a:Ljava/util/Spliterator$OfPrimitive;

    invoke-static {v0}, Lj$/util/K;->i(Ljava/util/Spliterator$OfPrimitive;)Ljava/util/Spliterator$OfPrimitive;

    move-result-object v0

    invoke-static {v0}, Lj$/util/O;->a(Ljava/util/Spliterator$OfPrimitive;)Lj$/util/Q;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    iget-object v0, p0, Lj$/util/O;->a:Ljava/util/Spliterator$OfPrimitive;

    invoke-static {v0}, Lj$/util/K;->j(Ljava/util/Spliterator$OfPrimitive;)Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/S;->a(Ljava/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
