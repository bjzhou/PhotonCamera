.class final Lj$/util/stream/L;
.super Lj$/util/stream/c;
.source "SourceFile"


# instance fields
.field private final j:Lj$/util/stream/K;


# direct methods
.method constructor <init>(Lj$/util/stream/K;Lj$/util/stream/b;Lj$/util/Spliterator;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lj$/util/stream/c;-><init>(Lj$/util/stream/b;Lj$/util/Spliterator;)V

    iput-object p1, p0, Lj$/util/stream/L;->j:Lj$/util/stream/K;

    return-void
.end method

.method constructor <init>(Lj$/util/stream/L;Lj$/util/Spliterator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/c;-><init>(Lj$/util/stream/c;Lj$/util/Spliterator;)V

    iget-object p1, p1, Lj$/util/stream/L;->j:Lj$/util/stream/K;

    iput-object p1, p0, Lj$/util/stream/L;->j:Lj$/util/stream/K;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lj$/util/stream/e;->a:Lj$/util/stream/b;

    iget-object v1, p0, Lj$/util/stream/L;->j:Lj$/util/stream/K;

    iget-object v1, v1, Lj$/util/stream/K;->b:Lj$/util/stream/H;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/stream/I;

    iget-object v2, p0, Lj$/util/stream/e;->b:Lj$/util/Spliterator;

    invoke-virtual {v0, v2, v1}, Lj$/util/stream/b;->y(Lj$/util/Spliterator;Lj$/util/stream/r1;)Lj$/util/stream/r1;

    iget-boolean v0, v1, Lj$/util/stream/I;->b:Z

    iget-object v1, p0, Lj$/util/stream/L;->j:Lj$/util/stream/K;

    iget-object v1, v1, Lj$/util/stream/K;->a:Lj$/util/stream/J;

    invoke-static {v1}, Lj$/util/stream/J;->k(Lj$/util/stream/J;)Z

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lj$/util/stream/c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_0
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    :cond_2
    :goto_0
    return-object v2
.end method

.method protected final e(Lj$/util/Spliterator;)Lj$/util/stream/e;
    .locals 1

    new-instance v0, Lj$/util/stream/L;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/L;-><init>(Lj$/util/stream/L;Lj$/util/Spliterator;)V

    return-object v0
.end method

.method protected final j()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/L;->j:Lj$/util/stream/K;

    iget-object v0, v0, Lj$/util/stream/K;->a:Lj$/util/stream/J;

    invoke-static {v0}, Lj$/util/stream/J;->k(Lj$/util/stream/J;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
