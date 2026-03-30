.class final Lj$/util/stream/Z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/b1;
.implements Lj$/util/stream/p1;


# instance fields
.field private a:Z

.field private b:I

.field final synthetic c:Lj$/util/stream/n;


# direct methods
.method constructor <init>(Lj$/util/stream/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/Z0;->c:Lj$/util/stream/n;

    return-void
.end method


# virtual methods
.method public final synthetic accept(D)V
    .locals 0

    invoke-static {}, Lj$/util/stream/M;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final accept(I)V
    .locals 2

    iget-boolean v0, p0, Lj$/util/stream/Z0;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/stream/Z0;->a:Z

    iput p1, p0, Lj$/util/stream/Z0;->b:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/util/stream/Z0;->c:Lj$/util/stream/n;

    iget v1, p0, Lj$/util/stream/Z0;->b:I

    invoke-interface {v0, v1, p1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result p1

    iput p1, p0, Lj$/util/stream/Z0;->b:I

    :goto_0
    return-void
.end method

.method public final synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/M;->l()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/M;->h(Lj$/util/stream/p1;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/IntConsumer$-CC;->$default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lj$/util/stream/b1;)V
    .locals 1

    check-cast p1, Lj$/util/stream/Z0;

    iget-boolean v0, p1, Lj$/util/stream/Z0;->a:Z

    if-nez v0, :cond_0

    iget p1, p1, Lj$/util/stream/Z0;->b:I

    invoke-virtual {p0, p1}, Lj$/util/stream/Z0;->accept(I)V

    :cond_0
    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lj$/util/stream/Z0;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lj$/util/OptionalInt;->empty()Lj$/util/OptionalInt;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lj$/util/stream/Z0;->b:I

    invoke-static {v0}, Lj$/util/OptionalInt;->of(I)Lj$/util/OptionalInt;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final synthetic j()V
    .locals 0

    return-void
.end method

.method public final k(J)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj$/util/stream/Z0;->a:Z

    const/4 p1, 0x0

    iput p1, p0, Lj$/util/stream/Z0;->b:I

    return-void
.end method

.method public final synthetic l(Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/M;->g(Lj$/util/stream/p1;Ljava/lang/Integer;)V

    return-void
.end method

.method public final synthetic n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
