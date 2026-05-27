.class public final Losx;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "kotlinx.coroutines.channels.ChannelsKt__ChannelsKt$trySendBlocking$2"
    c = "Channels.kt"
    d = "invokeSuspend"
    e = {
        0x27
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lotj;

.field final synthetic c:Ljava/lang/Object;

.field private synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lotj;Ljava/lang/Object;Loku;)V
    .locals 0

    iput-object p1, p0, Losx;->b:Lotj;

    iput-object p2, p0, Losx;->c:Ljava/lang/Object;

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

    check-cast p1, Losx;

    invoke-virtual {p1, p2}, Losx;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Losx;->a:I

    packed-switch v1, :pswitch_data_0

    :try_start_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Losx;->d:Ljava/lang/Object;

    check-cast p1, Lopu;

    iget-object p1, p0, Losx;->b:Lotj;

    iget-object v1, p0, Losx;->c:Ljava/lang/Object;

    const/4 v2, 0x1

    :try_start_1
    iput v2, p0, Losx;->a:I

    invoke-interface {p1, v1, p0}, Lotj;->q(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :cond_0
    :goto_0
    sget-object p1, Lojk;->a:Lojk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lljr;->aN(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Lojf;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lojk;->a:Lojk;

    goto :goto_2

    :cond_1
    invoke-static {p1}, Lojf;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lolp;->O(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Losw;->a(Ljava/lang/Object;)Losw;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 3

    new-instance v0, Losx;

    iget-object v1, p0, Losx;->b:Lotj;

    iget-object v2, p0, Losx;->c:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p2}, Losx;-><init>(Lotj;Ljava/lang/Object;Loku;)V

    iput-object p1, v0, Losx;->d:Ljava/lang/Object;

    return-object v0
.end method
