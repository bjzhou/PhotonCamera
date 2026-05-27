.class final Lovg;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "kotlinx.coroutines.flow.internal.ChannelFlow$collect$2"
    c = "ChannelFlow.kt"
    d = "invokeSuspend"
    e = {
        0x7b
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lotu;

.field final synthetic c:Lovi;

.field private synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lotu;Lovi;Loku;)V
    .locals 0

    iput-object p1, p0, Lovg;->b:Lotu;

    iput-object p2, p0, Lovg;->c:Lovi;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Loln;-><init>(ILoku;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lopu;

    check-cast p2, Loku;

    invoke-virtual {p0, p1, p2}, Lolf;->c(Ljava/lang/Object;Loku;)Loku;

    move-result-object p1

    sget-object p2, Lojk;->a:Lojk;

    check-cast p1, Lovg;

    invoke-virtual {p1, p2}, Lovg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Lovg;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Lovg;->d:Ljava/lang/Object;

    check-cast p1, Lopu;

    iget-object v1, p0, Lovg;->b:Lotu;

    iget-object v2, p0, Lovg;->c:Lovi;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Lovi;->a:Lola;

    new-instance v4, Lovh;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lovh;-><init>(Lovi;Loku;)V

    const/4 v2, -0x2

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-static {v2, v5, v6}, Lolp;->P(III)Loss;

    move-result-object v2

    invoke-static {p1, v3}, Lopp;->b(Lopu;Lola;)Lola;

    move-result-object p1

    new-instance v3, Lotd;

    invoke-direct {v3, p1, v2}, Lotd;-><init>(Lola;Loss;)V

    const/4 p1, 0x3

    invoke-virtual {v3, p1, v3, v4}, Loor;->dc(ILjava/lang/Object;Lomo;)V

    iput v5, p0, Lovg;->a:I

    invoke-static {v1, v3, p0}, Lone;->r(Lotu;Lotf;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :cond_0
    :goto_0
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 3

    new-instance v0, Lovg;

    iget-object v1, p0, Lovg;->b:Lotu;

    iget-object v2, p0, Lovg;->c:Lovi;

    invoke-direct {v0, v1, v2, p2}, Lovg;-><init>(Lotu;Lovi;Loku;)V

    iput-object p1, v0, Lovg;->d:Ljava/lang/Object;

    return-object v0
.end method
