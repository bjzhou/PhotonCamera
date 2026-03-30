.class public final synthetic Lj$/util/stream/W1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/o1;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/function/DoubleConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/DoubleConsumer;I)V
    .locals 0

    iput p2, p0, Lj$/util/stream/W1;->a:I

    iput-object p1, p0, Lj$/util/stream/W1;->b:Ljava/util/function/DoubleConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final synthetic b(J)V
    .locals 0

    return-void
.end method

.method private final synthetic c(J)V
    .locals 0

    return-void
.end method

.method private final synthetic d()V
    .locals 0

    return-void
.end method

.method private final synthetic e()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 1

    iget v0, p0, Lj$/util/stream/W1;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lj$/util/stream/W1;->b:Ljava/util/function/DoubleConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoubleConsumer;->accept(D)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lj$/util/stream/W1;->b:Ljava/util/function/DoubleConsumer;

    check-cast v0, Lj$/util/stream/C1;

    invoke-virtual {v0, p1, p2}, Lj$/util/stream/C1;->accept(D)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic accept(I)V
    .locals 0

    iget p1, p0, Lj$/util/stream/W1;->a:I

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lj$/util/stream/M;->k()V

    const/4 p1, 0x0

    throw p1

    :pswitch_0
    invoke-static {}, Lj$/util/stream/M;->k()V

    const/4 p1, 0x0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic accept(J)V
    .locals 0

    iget p1, p0, Lj$/util/stream/W1;->a:I

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lj$/util/stream/M;->l()V

    const/4 p1, 0x0

    throw p1

    :pswitch_0
    invoke-static {}, Lj$/util/stream/M;->l()V

    const/4 p1, 0x0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lj$/util/stream/W1;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lj$/util/stream/M;->f(Lj$/util/stream/o1;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/stream/M;->f(Lj$/util/stream/o1;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lj$/util/stream/W1;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .locals 1

    iget v0, p0, Lj$/util/stream/W1;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lj$/nio/channels/c;->a(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Lj$/util/function/b;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p0, p1}, Lj$/nio/channels/c;->a(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Lj$/util/function/b;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic j()V
    .locals 1

    iget v0, p0, Lj$/util/stream/W1;->a:I

    return-void
.end method

.method public final synthetic k(J)V
    .locals 0

    iget p1, p0, Lj$/util/stream/W1;->a:I

    return-void
.end method

.method public final synthetic n()Z
    .locals 1

    iget v0, p0, Lj$/util/stream/W1;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic r(Ljava/lang/Double;)V
    .locals 1

    iget v0, p0, Lj$/util/stream/W1;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lj$/util/stream/M;->e(Lj$/util/stream/o1;Ljava/lang/Double;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/stream/M;->e(Lj$/util/stream/o1;Ljava/lang/Double;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
