.class Lj$/util/stream/f0;
.super Lj$/util/stream/e;
.source "SourceFile"


# instance fields
.field protected final h:Lj$/util/stream/b;

.field protected final i:Ljava/util/function/LongFunction;

.field protected final j:Ljava/util/function/BinaryOperator;


# direct methods
.method constructor <init>(Lj$/util/stream/b;Lj$/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/e;-><init>(Lj$/util/stream/b;Lj$/util/Spliterator;)V

    iput-object p1, p0, Lj$/util/stream/f0;->h:Lj$/util/stream/b;

    iput-object p3, p0, Lj$/util/stream/f0;->i:Ljava/util/function/LongFunction;

    iput-object p4, p0, Lj$/util/stream/f0;->j:Ljava/util/function/BinaryOperator;

    return-void
.end method

.method constructor <init>(Lj$/util/stream/f0;Lj$/util/Spliterator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/e;-><init>(Lj$/util/stream/e;Lj$/util/Spliterator;)V

    iget-object p2, p1, Lj$/util/stream/f0;->h:Lj$/util/stream/b;

    iput-object p2, p0, Lj$/util/stream/f0;->h:Lj$/util/stream/b;

    iget-object p2, p1, Lj$/util/stream/f0;->i:Ljava/util/function/LongFunction;

    iput-object p2, p0, Lj$/util/stream/f0;->i:Ljava/util/function/LongFunction;

    iget-object p1, p1, Lj$/util/stream/f0;->j:Ljava/util/function/BinaryOperator;

    iput-object p1, p0, Lj$/util/stream/f0;->j:Ljava/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lj$/util/stream/f0;->i:Ljava/util/function/LongFunction;

    iget-object v1, p0, Lj$/util/stream/f0;->h:Lj$/util/stream/b;

    iget-object v2, p0, Lj$/util/stream/e;->b:Lj$/util/Spliterator;

    invoke-virtual {v1, v2}, Lj$/util/stream/b;->i(Lj$/util/Spliterator;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Q;

    iget-object v1, p0, Lj$/util/stream/f0;->h:Lj$/util/stream/b;

    iget-object v2, p0, Lj$/util/stream/e;->b:Lj$/util/Spliterator;

    invoke-virtual {v1, v2, v0}, Lj$/util/stream/b;->y(Lj$/util/Spliterator;Lj$/util/stream/r1;)Lj$/util/stream/r1;

    invoke-interface {v0}, Lj$/util/stream/Q;->a()Lj$/util/stream/Z;

    move-result-object v0

    return-object v0
.end method

.method protected final e(Lj$/util/Spliterator;)Lj$/util/stream/e;
    .locals 1

    new-instance v0, Lj$/util/stream/f0;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/f0;-><init>(Lj$/util/stream/f0;Lj$/util/Spliterator;)V

    return-object v0
.end method

.method public final onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 3

    iget-object v0, p0, Lj$/util/stream/e;->d:Lj$/util/stream/e;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lj$/util/stream/f0;->j:Ljava/util/function/BinaryOperator;

    check-cast v0, Lj$/util/stream/f0;

    invoke-virtual {v0}, Lj$/util/stream/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Z;

    iget-object v2, p0, Lj$/util/stream/e;->e:Lj$/util/stream/e;

    check-cast v2, Lj$/util/stream/f0;

    invoke-virtual {v2}, Lj$/util/stream/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/util/stream/Z;

    invoke-interface {v1, v0, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Z;

    invoke-virtual {p0, v0}, Lj$/util/stream/e;->f(Ljava/lang/Object;)V

    :goto_0
    invoke-super {p0, p1}, Lj$/util/stream/e;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    return-void
.end method
