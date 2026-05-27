.class public final Loty;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "kotlinx.coroutines.flow.FlowKt__CollectKt$launchIn$1"
    c = "Collect.kt"
    d = "invokeSuspend"
    e = {
        0x32
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lott;


# direct methods
.method public constructor <init>(Lott;Loku;)V
    .locals 0

    iput-object p1, p0, Loty;->b:Lott;

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

    check-cast p1, Loty;

    invoke-virtual {p1, p2}, Loty;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Loty;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Loty;->b:Lott;

    const/4 v1, 0x1

    iput v1, p0, Loty;->a:I

    sget-object v1, Lovn;->a:Lovn;

    invoke-interface {p1, v1, p0}, Lott;->di(Lotu;Loku;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lolc;->a:Lolc;

    if-eq p1, v1, :cond_0

    sget-object p1, Lojk;->a:Lojk;

    :cond_0
    if-ne p1, v0, :cond_1

    return-object v0

    :cond_1
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

    new-instance p1, Loty;

    iget-object v0, p0, Loty;->b:Lott;

    invoke-direct {p1, v0, p2}, Loty;-><init>(Lott;Loku;)V

    return-object p1
.end method
