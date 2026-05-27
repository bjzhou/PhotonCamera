.class final Llzp;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.authenticator.F250AuthenticatorInternal$getSignedInAccount$2"
    c = "F250AuthenticatorInternal.kt"
    d = "invokeSuspend"
    e = {
        0x33,
        0x33
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Llzs;


# direct methods
.method public constructor <init>(Llzs;Loku;)V
    .locals 0

    iput-object p1, p0, Llzp;->c:Llzs;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Loln;-><init>(ILoku;)V

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

    check-cast p1, Llzp;

    invoke-virtual {p1, p2}, Llzp;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Llzp;->b:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v0, p0, Llzp;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lluh;

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Llzp;->a:Ljava/lang/Object;

    check-cast v1, Llzy;

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    new-instance v1, Llzy;

    iget-object p1, p0, Llzp;->c:Llzs;

    iget-object p1, p1, Llzs;->b:Lkrn;

    sget-object v3, Llvd;->a:Llvd;

    invoke-direct {v1, p1, v3, v2, v2}, Llzy;-><init>(Lkrn;Lllj;[B[B)V

    iget-object p1, p0, Llzp;->c:Llzs;

    iput-object v1, p0, Llzp;->a:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, p0, Llzp;->b:I

    invoke-virtual {p1, v1, p0}, Llzs;->b(Llzy;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v0, :cond_0

    :goto_0
    check-cast p1, Lluh;

    if-eqz p1, :cond_1

    iget-object v2, p0, Llzp;->c:Llzs;

    iget-object v2, v2, Llzs;->d:Llzz;

    invoke-static {v1}, Llzy;->d(Llzy;)Llur;

    move-result-object v1

    iput-object p1, p0, Llzp;->a:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, p0, Llzp;->b:I

    invoke-virtual {v2, v1, p0}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_0

    move-object v2, p1

    goto :goto_1

    :cond_0
    return-object v0

    :cond_1
    :goto_1
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 1

    new-instance p1, Llzp;

    iget-object v0, p0, Llzp;->c:Llzs;

    invoke-direct {p1, v0, p2}, Llzp;-><init>(Llzs;Loku;)V

    return-object p1
.end method
