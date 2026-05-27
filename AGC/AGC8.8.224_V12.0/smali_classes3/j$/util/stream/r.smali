.class abstract Lj$/util/stream/r;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/stream/X1;
.implements Lj$/util/stream/Y1;


# instance fields
.field private final a:Z


# direct methods
.method protected constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lj$/util/stream/r;->a:Z

    return-void
.end method


# virtual methods
.method public final synthetic accept(I)V
    .locals 0

    invoke-static {}, Lj$/util/stream/F;->b()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/F;->g()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public final b()I
    .locals 1

    iget-boolean v0, p0, Lj$/util/stream/r;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget v0, Lj$/util/stream/u1;->q:I

    :goto_0
    return v0
.end method

.method public final c(Lj$/util/stream/F;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lj$/util/stream/r;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lj$/util/stream/s;

    invoke-direct {v0, p1, p2, p0}, Lj$/util/stream/s;-><init>(Lj$/util/stream/F;Lj$/util/Spliterator;Lj$/util/stream/Z0;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/util/stream/t;

    invoke-virtual {p1, p0}, Lj$/util/stream/F;->B(Lj$/util/stream/Z0;)Lj$/util/stream/Z0;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lj$/util/stream/t;-><init>(Lj$/util/stream/F;Lj$/util/Spliterator;Lj$/util/stream/Z0;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final d(Lj$/util/stream/F;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1, p2, p0}, Lj$/util/stream/F;->A(Lj$/util/Spliterator;Lj$/util/stream/Z0;)Lj$/util/stream/Z0;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic f()V
    .locals 0

    return-void
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic h(J)V
    .locals 0

    return-void
.end method

.method public final synthetic m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
