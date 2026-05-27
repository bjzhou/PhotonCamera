.class final Lj$/util/stream/H0;
.super Lj$/util/stream/N0;

# interfaces
.implements Lj$/util/stream/M0;


# instance fields
.field final synthetic b:Ljava/util/function/Supplier;

.field final synthetic c:Ljava/util/function/BiConsumer;

.field final synthetic d:Ljava/util/function/BinaryOperator;


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;)V
    .locals 0

    iput-object p1, p0, Lj$/util/stream/H0;->b:Ljava/util/function/Supplier;

    iput-object p2, p0, Lj$/util/stream/H0;->c:Ljava/util/function/BiConsumer;

    iput-object p3, p0, Lj$/util/stream/H0;->d:Ljava/util/function/BinaryOperator;

    invoke-direct {p0}, Lj$/util/stream/N0;-><init>()V

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

.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lj$/util/stream/H0;->c:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Lj$/util/stream/N0;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic f()V
    .locals 0

    return-void
.end method

.method public final h(J)V
    .locals 0

    iget-object p1, p0, Lj$/util/stream/H0;->b:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lj$/util/stream/N0;->a:Ljava/lang/Object;

    return-void
.end method

.method public final l(Lj$/util/stream/M0;)V
    .locals 2

    check-cast p1, Lj$/util/stream/H0;

    iget-object v0, p0, Lj$/util/stream/N0;->a:Ljava/lang/Object;

    iget-object p1, p1, Lj$/util/stream/N0;->a:Ljava/lang/Object;

    iget-object v1, p0, Lj$/util/stream/H0;->d:Ljava/util/function/BinaryOperator;

    invoke-interface {v1, v0, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lj$/util/stream/N0;->a:Ljava/lang/Object;

    return-void
.end method

.method public final synthetic m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
