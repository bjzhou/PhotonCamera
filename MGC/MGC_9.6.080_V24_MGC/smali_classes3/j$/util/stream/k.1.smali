.class final Lj$/util/stream/k;
.super Lj$/util/stream/n1;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/b;Lj$/util/stream/r1;I)V
    .locals 0

    iput p3, p0, Lj$/util/stream/k;->b:I

    iput-object p1, p0, Lj$/util/stream/k;->c:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lj$/util/stream/n1;-><init>(Lj$/util/stream/r1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lj$/util/stream/r1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lj$/util/stream/k;->b:I

    invoke-direct {p0, p1}, Lj$/util/stream/n1;-><init>(Lj$/util/stream/r1;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lj$/util/stream/k;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lj$/util/stream/k;->c:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/h1;

    iget-object v0, v0, Lj$/util/stream/h1;->m:Ljava/util/function/ToDoubleFunction;

    invoke-interface {v0, p1}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    iget-object p1, p0, Lj$/util/stream/n1;->a:Lj$/util/stream/r1;

    invoke-interface {p1, v0, v1}, Lj$/util/stream/r1;->accept(D)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lj$/util/stream/k;->c:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/g1;

    iget-object v0, v0, Lj$/util/stream/g1;->m:Ljava/util/function/ToLongFunction;

    invoke-interface {v0, p1}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v0

    iget-object p1, p0, Lj$/util/stream/n1;->a:Lj$/util/stream/r1;

    invoke-interface {p1, v0, v1}, Lj$/util/stream/r1;->accept(J)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lj$/util/stream/k;->c:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/z;

    iget-object v0, v0, Lj$/util/stream/z;->n:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/ToIntFunction;

    invoke-interface {v0, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lj$/util/stream/n1;->a:Lj$/util/stream/r1;

    invoke-interface {v0, p1}, Lj$/util/stream/r1;->accept(I)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lj$/util/stream/k;->c:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/f1;

    iget-object v0, v0, Lj$/util/stream/f1;->o:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lj$/util/stream/n1;->a:Lj$/util/stream/r1;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lj$/util/stream/k;->c:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/y;

    iget-object v0, v0, Lj$/util/stream/y;->o:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/n1;->a:Lj$/util/stream/r1;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void

    :pswitch_4
    iget-object v0, p0, Lj$/util/stream/k;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lj$/util/stream/k;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lj$/util/stream/n1;->a:Lj$/util/stream/r1;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j()V
    .locals 1

    iget v0, p0, Lj$/util/stream/k;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lj$/util/stream/n1;->j()V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/stream/k;->c:Ljava/lang/Object;

    iget-object v0, p0, Lj$/util/stream/n1;->a:Lj$/util/stream/r1;

    invoke-interface {v0}, Lj$/util/stream/r1;->j()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public k(J)V
    .locals 2

    iget v0, p0, Lj$/util/stream/k;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lj$/util/stream/n1;->k(J)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lj$/util/stream/n1;->a:Lj$/util/stream/r1;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/r1;->k(J)V

    return-void

    :pswitch_1
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lj$/util/stream/k;->c:Ljava/lang/Object;

    iget-object p1, p0, Lj$/util/stream/n1;->a:Lj$/util/stream/r1;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/r1;->k(J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
