.class final Lj$/util/stream/S0;
.super Lj$/util/stream/c1;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/b1;
.implements Lj$/util/stream/o1;


# instance fields
.field final synthetic b:Lj$/util/stream/n;

.field final synthetic c:Lj$/util/stream/f;

.field final synthetic d:Lj$/util/stream/a;


# direct methods
.method constructor <init>(Lj$/util/stream/n;Lj$/util/stream/f;Lj$/util/stream/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/S0;->b:Lj$/util/stream/n;

    iput-object p2, p0, Lj$/util/stream/S0;->c:Lj$/util/stream/f;

    iput-object p3, p0, Lj$/util/stream/S0;->d:Lj$/util/stream/a;

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 2

    iget-object v0, p0, Lj$/util/stream/S0;->c:Lj$/util/stream/f;

    iget-object v1, p0, Lj$/util/stream/c1;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Ljava/util/function/ObjDoubleConsumer;->accept(Ljava/lang/Object;D)V

    return-void
.end method

.method public final synthetic accept(I)V
    .locals 0

    invoke-static {}, Lj$/util/stream/M;->k()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/M;->l()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/M;->f(Lj$/util/stream/o1;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/nio/channels/c;->a(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Lj$/util/function/b;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lj$/util/stream/b1;)V
    .locals 2

    check-cast p1, Lj$/util/stream/S0;

    iget-object v0, p0, Lj$/util/stream/c1;->a:Ljava/lang/Object;

    iget-object p1, p1, Lj$/util/stream/c1;->a:Ljava/lang/Object;

    iget-object v1, p0, Lj$/util/stream/S0;->d:Lj$/util/stream/a;

    invoke-interface {v1, v0, p1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lj$/util/stream/c1;->a:Ljava/lang/Object;

    return-void
.end method

.method public final synthetic j()V
    .locals 0

    return-void
.end method

.method public final k(J)V
    .locals 0

    iget-object p1, p0, Lj$/util/stream/S0;->b:Lj$/util/stream/n;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lj$/util/stream/c1;->a:Ljava/lang/Object;

    return-void
.end method

.method public final synthetic n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic r(Ljava/lang/Double;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/M;->e(Lj$/util/stream/o1;Ljava/lang/Double;)V

    return-void
.end method
