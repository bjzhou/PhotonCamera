.class final Lovv;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "kotlinx.coroutines.flow.internal.UndispatchedContextCollector$emitRef$1"
    c = "ChannelFlow.kt"
    d = "invokeSuspend"
    e = {
        0xd4
    }
.end annotation


# instance fields
.field a:I

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lotu;


# direct methods
.method public constructor <init>(Lotu;Loku;)V
    .locals 0

    iput-object p1, p0, Lovv;->c:Lotu;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Loln;-><init>(ILoku;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Loku;

    invoke-virtual {p0, p1, p2}, Lolf;->c(Ljava/lang/Object;Loku;)Loku;

    move-result-object p1

    sget-object p2, Lojk;->a:Lojk;

    check-cast p1, Lovv;

    invoke-virtual {p1, p2}, Lovv;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Lovv;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Lovv;->b:Ljava/lang/Object;

    iget-object v1, p0, Lovv;->c:Lotu;

    const/4 v2, 0x1

    iput v2, p0, Lovv;->a:I

    invoke-interface {v1, p1, p0}, Lotu;->a(Ljava/lang/Object;Loku;)Ljava/lang/Object;

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
    .locals 2

    new-instance v0, Lovv;

    iget-object v1, p0, Lovv;->c:Lotu;

    invoke-direct {v0, v1, p2}, Lovv;-><init>(Lotu;Loku;)V

    iput-object p1, v0, Lovv;->b:Ljava/lang/Object;

    return-object v0
.end method
