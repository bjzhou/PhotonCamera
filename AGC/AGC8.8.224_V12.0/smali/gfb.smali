.class public final synthetic Lgfb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljwb;Lfme;I)V
    .locals 0

    iput p3, p0, Lgfb;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgfb;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgfb;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljwb;Ljava/util/function/BiPredicate;I)V
    .locals 0

    iput p3, p0, Lgfb;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgfb;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgfb;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    iget v0, p0, Lgfb;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lgfb;->b:Ljava/lang/Object;

    iget-object v3, p0, Lgfb;->a:Ljava/lang/Object;

    check-cast p1, Lgeh;

    check-cast p2, Ljava/lang/Boolean;

    sget-object p2, Lgff;->a:Lnak;

    invoke-interface {p1}, Lgeh;->b()Lika;

    move-result-object p2

    sget-object v4, Lika;->a:Lika;

    invoke-virtual {p2}, Lika;->ordinal()I

    move-result p2

    const v4, 0x7f14058e

    const v5, 0x7f0801c0

    const v6, 0x7f140591

    const v7, 0x7f080202

    const-string v8, "VideoResolution"

    sparse-switch p2, :sswitch_data_0

    invoke-interface {p1, v2, v7, v6, v8}, Lgeh;->v(ZIILjava/lang/String;)V

    invoke-interface {p1, v2, v5, v4, v8}, Lgeh;->v(ZIILjava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lgfb;->a:Ljava/lang/Object;

    iget-object v3, p0, Lgfb;->b:Ljava/lang/Object;

    check-cast p1, Lgeh;

    check-cast p2, Ljava/lang/Boolean;

    sget-object v4, Lgff;->a:Lnak;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lgej;->j:Lgej;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lgej;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lgej;->j:Lgej;

    invoke-interface {v3, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object p2, Lgfe;->b:Lgfe;

    invoke-interface {p1, v1, p2}, Lgeh;->u(ZLgee;)V

    return-void

    :sswitch_0
    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljwu;

    invoke-virtual {p2}, Ljwu;->c()Z

    move-result p2

    if-nez p2, :cond_3

    check-cast v3, Lfme;

    invoke-virtual {v3}, Lfme;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljwu;

    invoke-virtual {p2}, Ljwu;->d()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1, v2, v7, v6, v8}, Lgeh;->v(ZIILjava/lang/String;)V

    invoke-interface {p1, v1, v5, v4, v8}, Lgeh;->v(ZIILjava/lang/String;)V

    return-void

    :cond_2
    invoke-interface {p1, v2, v7, v6, v8}, Lgeh;->v(ZIILjava/lang/String;)V

    invoke-interface {p1, v2, v5, v4, v8}, Lgeh;->v(ZIILjava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    invoke-interface {p1, v2, v5, v4, v8}, Lgeh;->v(ZIILjava/lang/String;)V

    invoke-interface {p1, v1, v7, v6, v8}, Lgeh;->v(ZIILjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_0
        0x8 -> :sswitch_0
        0xd -> :sswitch_0
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public final synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 1

    iget v0, p0, Lgfb;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
