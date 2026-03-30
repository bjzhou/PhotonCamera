.class final Lj$/util/stream/x;
.super Lj$/util/stream/l1;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field final synthetic c:Lj$/util/stream/b;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/b;Lj$/util/stream/r1;I)V
    .locals 0

    iput p3, p0, Lj$/util/stream/x;->b:I

    iput-object p1, p0, Lj$/util/stream/x;->c:Lj$/util/stream/b;

    invoke-direct {p0, p2}, Lj$/util/stream/l1;-><init>(Lj$/util/stream/r1;)V

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget v0, p0, Lj$/util/stream/x;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lj$/util/stream/x;->c:Lj$/util/stream/b;

    check-cast v0, Lj$/util/stream/z;

    iget-object v0, v0, Lj$/util/stream/z;->n:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/l1;->a:Lj$/util/stream/r1;

    invoke-interface {v0, p1}, Lj$/util/stream/r1;->accept(I)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lj$/util/stream/x;->c:Lj$/util/stream/b;

    check-cast v0, Lj$/util/stream/z;

    iget-object v0, v0, Lj$/util/stream/z;->n:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/IntUnaryOperator;

    invoke-interface {v0, p1}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result p1

    iget-object v0, p0, Lj$/util/stream/l1;->a:Lj$/util/stream/r1;

    invoke-interface {v0, p1}, Lj$/util/stream/r1;->accept(I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lj$/util/stream/x;->c:Lj$/util/stream/b;

    check-cast v0, Lj$/util/stream/y;

    iget-object v0, v0, Lj$/util/stream/y;->o:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/IntFunction;

    invoke-interface {v0, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lj$/util/stream/l1;->a:Lj$/util/stream/r1;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k(J)V
    .locals 2

    iget v0, p0, Lj$/util/stream/x;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lj$/util/stream/l1;->k(J)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lj$/util/stream/l1;->a:Lj$/util/stream/r1;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/r1;->k(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
