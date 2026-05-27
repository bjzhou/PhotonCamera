.class Lj$/util/stream/V;
.super Lj$/util/stream/f;


# instance fields
.field protected final h:Lj$/util/stream/F;

.field protected final i:Ljava/util/function/LongFunction;

.field protected final j:Ljava/util/function/BinaryOperator;


# direct methods
.method constructor <init>(Lj$/util/stream/F;Lj$/util/Spliterator;Ljava/util/function/LongFunction;Lj$/util/stream/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/f;-><init>(Lj$/util/stream/F;Lj$/util/Spliterator;)V

    iput-object p1, p0, Lj$/util/stream/V;->h:Lj$/util/stream/F;

    iput-object p3, p0, Lj$/util/stream/V;->i:Ljava/util/function/LongFunction;

    iput-object p4, p0, Lj$/util/stream/V;->j:Ljava/util/function/BinaryOperator;

    return-void
.end method

.method constructor <init>(Lj$/util/stream/V;Lj$/util/Spliterator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/f;-><init>(Lj$/util/stream/f;Lj$/util/Spliterator;)V

    iget-object p2, p1, Lj$/util/stream/V;->h:Lj$/util/stream/F;

    iput-object p2, p0, Lj$/util/stream/V;->h:Lj$/util/stream/F;

    iget-object p2, p1, Lj$/util/stream/V;->i:Ljava/util/function/LongFunction;

    iput-object p2, p0, Lj$/util/stream/V;->i:Ljava/util/function/LongFunction;

    iget-object p1, p1, Lj$/util/stream/V;->j:Ljava/util/function/BinaryOperator;

    iput-object p1, p0, Lj$/util/stream/V;->j:Ljava/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lj$/util/stream/V;->i:Ljava/util/function/LongFunction;

    iget-object v1, p0, Lj$/util/stream/V;->h:Lj$/util/stream/F;

    iget-object v2, p0, Lj$/util/stream/f;->b:Lj$/util/Spliterator;

    invoke-virtual {v1, v2}, Lj$/util/stream/F;->w(Lj$/util/Spliterator;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/J;

    iget-object v1, p0, Lj$/util/stream/V;->h:Lj$/util/stream/F;

    iget-object v2, p0, Lj$/util/stream/f;->b:Lj$/util/Spliterator;

    invoke-virtual {v1, v2, v0}, Lj$/util/stream/F;->A(Lj$/util/Spliterator;Lj$/util/stream/Z0;)Lj$/util/stream/Z0;

    invoke-interface {v0}, Lj$/util/stream/J;->a()Lj$/util/stream/O;

    move-result-object v0

    return-object v0
.end method

.method protected final e(Lj$/util/Spliterator;)Lj$/util/stream/f;
    .locals 1

    new-instance v0, Lj$/util/stream/V;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/V;-><init>(Lj$/util/stream/V;Lj$/util/Spliterator;)V

    return-object v0
.end method

.method public final onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 3

    iget-object v0, p0, Lj$/util/stream/f;->d:Lj$/util/stream/f;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lj$/util/stream/V;->j:Ljava/util/function/BinaryOperator;

    check-cast v0, Lj$/util/stream/V;

    invoke-virtual {v0}, Lj$/util/stream/f;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/O;

    iget-object v2, p0, Lj$/util/stream/f;->e:Lj$/util/stream/f;

    check-cast v2, Lj$/util/stream/V;

    invoke-virtual {v2}, Lj$/util/stream/f;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/util/stream/O;

    invoke-interface {v1, v0, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/O;

    invoke-virtual {p0, v0}, Lj$/util/stream/f;->f(Ljava/lang/Object;)V

    :cond_1
    invoke-super {p0, p1}, Lj$/util/stream/f;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    return-void
.end method
