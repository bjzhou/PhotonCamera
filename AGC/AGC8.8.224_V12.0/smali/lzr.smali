.class final Llzr;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.authenticator.F250AuthenticatorInternal$userAccount$1"
    c = "F250AuthenticatorInternal.kt"
    d = "invokeSuspend"
    e = {
        0x2e
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Llzs;


# direct methods
.method public constructor <init>(Llzs;Loku;)V
    .locals 0

    iput-object p1, p0, Llzr;->b:Llzs;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Loln;-><init>(ILoku;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lotu;

    check-cast p2, Loku;

    invoke-virtual {p0, p1, p2}, Lolf;->c(Ljava/lang/Object;Loku;)Loku;

    move-result-object p1

    sget-object p2, Lojk;->a:Lojk;

    check-cast p1, Llzr;

    invoke-virtual {p1, p2}, Llzr;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Llzr;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Llzr;->b:Llzs;

    const/4 v1, 0x1

    iput v1, p0, Llzr;->a:I

    iget-object v1, p1, Llzs;->a:Lopq;

    new-instance v2, Llzp;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Llzp;-><init>(Llzs;Loku;)V

    invoke-static {v1, v2, p0}, Lone;->h(Lola;Lomo;Loku;)Ljava/lang/Object;

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
    .locals 1

    new-instance p1, Llzr;

    iget-object v0, p0, Llzr;->b:Llzs;

    invoke-direct {p1, v0, p2}, Llzr;-><init>(Llzs;Loku;)V

    return-object p1
.end method
