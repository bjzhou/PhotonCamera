.class final Lj$/util/stream/P0;
.super Lj$/util/stream/f;


# instance fields
.field private final h:Lj$/util/stream/E0;


# direct methods
.method constructor <init>(Lj$/util/stream/E0;Lj$/util/stream/F;Lj$/util/Spliterator;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lj$/util/stream/f;-><init>(Lj$/util/stream/F;Lj$/util/Spliterator;)V

    iput-object p1, p0, Lj$/util/stream/P0;->h:Lj$/util/stream/E0;

    return-void
.end method

.method constructor <init>(Lj$/util/stream/P0;Lj$/util/Spliterator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/f;-><init>(Lj$/util/stream/f;Lj$/util/Spliterator;)V

    iget-object p1, p1, Lj$/util/stream/P0;->h:Lj$/util/stream/E0;

    iput-object p1, p0, Lj$/util/stream/P0;->h:Lj$/util/stream/E0;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lj$/util/stream/f;->a:Lj$/util/stream/F;

    iget-object v1, p0, Lj$/util/stream/P0;->h:Lj$/util/stream/E0;

    invoke-virtual {v1}, Lj$/util/stream/E0;->p()Lj$/util/stream/M0;

    move-result-object v1

    iget-object v2, p0, Lj$/util/stream/f;->b:Lj$/util/Spliterator;

    invoke-virtual {v0, v2, v1}, Lj$/util/stream/F;->A(Lj$/util/Spliterator;Lj$/util/stream/Z0;)Lj$/util/stream/Z0;

    return-object v1
.end method

.method protected final e(Lj$/util/Spliterator;)Lj$/util/stream/f;
    .locals 1

    new-instance v0, Lj$/util/stream/P0;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/P0;-><init>(Lj$/util/stream/P0;Lj$/util/Spliterator;)V

    return-object v0
.end method

.method public final onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 2

    iget-object v0, p0, Lj$/util/stream/f;->d:Lj$/util/stream/f;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    check-cast v0, Lj$/util/stream/P0;

    invoke-virtual {v0}, Lj$/util/stream/f;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/M0;

    iget-object v1, p0, Lj$/util/stream/f;->e:Lj$/util/stream/f;

    check-cast v1, Lj$/util/stream/P0;

    invoke-virtual {v1}, Lj$/util/stream/f;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/stream/M0;

    invoke-interface {v0, v1}, Lj$/util/stream/M0;->l(Lj$/util/stream/M0;)V

    invoke-virtual {p0, v0}, Lj$/util/stream/f;->f(Ljava/lang/Object;)V

    :cond_1
    invoke-super {p0, p1}, Lj$/util/stream/f;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    return-void
.end method
