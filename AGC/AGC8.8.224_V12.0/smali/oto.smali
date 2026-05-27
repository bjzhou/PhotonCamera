.class public final Loto;
.super Lotp;


# direct methods
.method public constructor <init>(Lomo;Lola;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lotp;-><init>(Lomo;Lola;)V

    return-void
.end method


# virtual methods
.method protected final b(Lotd;Loku;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lotn;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lotn;

    iget v1, v0, Lotn;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lotn;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lotn;

    invoke-direct {v0, p0, p2}, Lotn;-><init>(Loto;Loku;)V

    :goto_0
    iget-object p2, v0, Lotn;->a:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Lotn;->c:I

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object p1, v0, Lotn;->d:Lotd;

    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    iput-object p1, v0, Lotn;->d:Lotd;

    const/4 p2, 0x1

    iput p2, v0, Lotn;->c:I

    invoke-static {p0, p1, v0}, Lotp;->c(Lotp;Lotd;Loku;)Ljava/lang/Object;

    move-result-object p2

    if-eq p2, v1, :cond_2

    :goto_1
    iget-object p1, p1, Lost;->b:Loss;

    invoke-interface {p1}, Loss;->A()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\'awaitClose { yourCallbackOrListener.cancel() }\' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
