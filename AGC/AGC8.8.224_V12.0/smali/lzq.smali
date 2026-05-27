.class final Llzq;
.super Loln;

# interfaces
.implements Lomk;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.authenticator.F250AuthenticatorInternal$signedInAccountInternal$2"
    c = "F250AuthenticatorInternal.kt"
    d = "invokeSuspend"
    e = {
        0x5b
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Llzs;


# direct methods
.method public constructor <init>(Llzs;Loku;)V
    .locals 0

    iput-object p1, p0, Llzq;->b:Llzs;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Loln;-><init>(ILoku;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Loku;

    new-instance v0, Llzq;

    iget-object v1, p0, Llzq;->b:Llzs;

    invoke-direct {v0, v1, p1}, Llzq;-><init>(Llzs;Loku;)V

    sget-object p1, Lojk;->a:Lojk;

    invoke-virtual {v0, p1}, Llzq;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Llzq;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Llzq;->b:Llzs;

    iget-object p1, p1, Llzs;->c:Llzw;

    const/4 v1, 0x1

    iput v1, p0, Llzq;->a:I

    invoke-interface {p1, p0}, Llzw;->c(Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :cond_0
    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
