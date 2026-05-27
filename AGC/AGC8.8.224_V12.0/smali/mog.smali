.class final Lmog;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "com.google.async.coroutines.MapConcurrentlyKt$mapConcurrently$2$1"
    c = "MapConcurrently.kt"
    d = "invokeSuspend"
    e = {
        0x57
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lott;

.field final synthetic c:Lomo;

.field final synthetic d:Loxv;

.field private synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lott;Loxv;Lomo;Loku;)V
    .locals 0

    iput-object p1, p0, Lmog;->b:Lott;

    iput-object p2, p0, Lmog;->d:Loxv;

    iput-object p3, p0, Lmog;->c:Lomo;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Loln;-><init>(ILoku;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lotd;

    check-cast p2, Loku;

    invoke-virtual {p0, p1, p2}, Lolf;->c(Ljava/lang/Object;Loku;)Loku;

    move-result-object p1

    sget-object p2, Lojk;->a:Lojk;

    check-cast p1, Lmog;

    invoke-virtual {p1, p2}, Lmog;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Lmog;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Lmog;->e:Ljava/lang/Object;

    check-cast p1, Lotd;

    iget-object v1, p0, Lmog;->b:Lott;

    iget-object v2, p0, Lmog;->d:Loxv;

    iget-object v3, p0, Lmog;->c:Lomo;

    new-instance v4, Lmof;

    invoke-direct {v4, p1, v2, v3}, Lmof;-><init>(Lotd;Loxv;Lomo;)V

    const/4 p1, 0x1

    iput p1, p0, Lmog;->a:I

    invoke-interface {v1, v4, p0}, Lott;->di(Lotu;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :cond_0
    :goto_0
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 4

    new-instance v0, Lmog;

    iget-object v1, p0, Lmog;->b:Lott;

    iget-object v2, p0, Lmog;->d:Loxv;

    iget-object v3, p0, Lmog;->c:Lomo;

    invoke-direct {v0, v1, v2, v3, p2}, Lmog;-><init>(Lott;Loxv;Lomo;Loku;)V

    iput-object p1, v0, Lmog;->e:Ljava/lang/Object;

    return-object v0
.end method
