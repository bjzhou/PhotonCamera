.class final Lj$/util/stream/k;
.super Lj$/util/stream/W0;


# instance fields
.field public final synthetic b:I

.field c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lj$/util/stream/Z0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lj$/util/stream/k;->b:I

    invoke-direct {p0, p1}, Lj$/util/stream/W0;-><init>(Lj$/util/stream/Z0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lj$/util/stream/c;Lj$/util/stream/Z0;I)V
    .locals 0

    iput p3, p0, Lj$/util/stream/k;->b:I

    iput-object p1, p0, Lj$/util/stream/k;->c:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lj$/util/stream/W0;-><init>(Lj$/util/stream/Z0;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lj$/util/stream/k;->b:I

    iget-object v1, p0, Lj$/util/stream/W0;->a:Lj$/util/stream/Z0;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lj$/util/stream/k;->c:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/w;

    iget-object v0, v0, Lj$/util/stream/w;->n:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lj$/util/stream/k;->c:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/w;

    iget-object v0, v0, Lj$/util/stream/w;->n:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void

    :pswitch_2
    iget-object v0, p0, Lj$/util/stream/k;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lj$/util/stream/k;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void

    :goto_0
    iget-object v0, p0, Lj$/util/stream/k;->c:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/Q0;

    iget-object v0, v0, Lj$/util/stream/Q0;->m:Ljava/util/function/ToLongFunction;

    invoke-interface {v0, p1}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lj$/util/stream/Z0;->accept(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f()V
    .locals 1

    iget v0, p0, Lj$/util/stream/k;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lj$/util/stream/W0;->f()V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/stream/k;->c:Ljava/lang/Object;

    iget-object v0, p0, Lj$/util/stream/W0;->a:Lj$/util/stream/Z0;

    invoke-interface {v0}, Lj$/util/stream/Z0;->f()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(J)V
    .locals 4

    iget v0, p0, Lj$/util/stream/k;->b:I

    const-wide/16 v1, -0x1

    iget-object v3, p0, Lj$/util/stream/W0;->a:Lj$/util/stream/Z0;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v3, v1, v2}, Lj$/util/stream/Z0;->h(J)V

    return-void

    :pswitch_1
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lj$/util/stream/k;->c:Ljava/lang/Object;

    invoke-interface {v3, v1, v2}, Lj$/util/stream/Z0;->h(J)V

    return-void

    :goto_0
    invoke-interface {v3, p1, p2}, Lj$/util/stream/Z0;->h(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
