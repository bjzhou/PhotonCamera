.class public final synthetic Ldab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ldhi;I)V
    .locals 0

    iput p2, p0, Ldab;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldab;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhrc;I)V
    .locals 0

    iput p2, p0, Ldab;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldab;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;I)V
    .locals 0

    iput p2, p0, Ldab;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldab;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljwb;I)V
    .locals 0

    iput p2, p0, Ldab;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldab;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Ldab;->b:I

    const/4 v1, 0x1

    const-string v2, "VideoFlash"

    const v3, 0x7f1401af

    const v4, 0x7f080349

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldab;->a:Ljava/lang/Object;

    check-cast p1, Lhrc;

    check-cast p2, Lhrb;

    if-eq p1, v0, :cond_2

    check-cast v0, Lhrc;

    invoke-interface {p2, v0}, Lhrb;->c(Lhrc;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Ldab;->a:Ljava/lang/Object;

    check-cast p1, Lgml;

    check-cast p2, Loiw;

    invoke-interface {p2}, Loiw;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkfl;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_1
    iget-object v0, p0, Ldab;->a:Ljava/lang/Object;

    check-cast p1, Lgml;

    check-cast p2, Loiw;

    invoke-interface {p2}, Loiw;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkfl;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_2
    iget-object v0, p0, Ldab;->a:Ljava/lang/Object;

    check-cast p1, Lgeh;

    check-cast p2, Ljava/lang/Boolean;

    sget-object p2, Lgff;->a:Lnak;

    sget-object p2, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->e()V

    sget-object p2, Lgfe;->a:Lgfe;

    invoke-interface {p1, v5, p2}, Lgeh;->u(ZLgee;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Ldab;->a:Ljava/lang/Object;

    check-cast p1, Lgeh;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lgej;->p:Lgej;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lgej;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1, v1, v4, v3, v2}, Lgeh;->v(ZIILjava/lang/String;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Ldab;->a:Ljava/lang/Object;

    check-cast p1, Lgeh;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lgej;->p:Lgej;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lgej;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1, v1, v4, v3, v2}, Lgeh;->v(ZIILjava/lang/String;)V

    return-void

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 1

    iget v0, p0, Ldab;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
