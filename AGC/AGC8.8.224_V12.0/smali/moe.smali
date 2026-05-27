.class final Lmoe;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "com.google.async.coroutines.MapConcurrentlyKt$mapConcurrently$2$1$1$1"
    c = "MapConcurrently.kt"
    d = "invokeSuspend"
    e = {
        0x2b,
        0x34
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lomo;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:I

.field final synthetic e:Lotd;


# direct methods
.method public constructor <init>(Lomo;Ljava/lang/Object;Lotd;ILoku;)V
    .locals 0

    iput-object p1, p0, Lmoe;->b:Lomo;

    iput-object p2, p0, Lmoe;->c:Ljava/lang/Object;

    iput-object p3, p0, Lmoe;->e:Lotd;

    iput p4, p0, Lmoe;->d:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Loln;-><init>(ILoku;)V

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

    check-cast p1, Lmoe;

    invoke-virtual {p1, p2}, Lmoe;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Lmoe;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_0
    :try_start_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :pswitch_1
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lmoe;->b:Lomo;

    iget-object v1, p0, Lmoe;->c:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, p0, Lmoe;->a:I

    invoke-interface {p1, v1, p0}, Lomo;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    if-eq p1, v0, :cond_0

    :goto_0
    iget-object v1, p0, Lmoe;->e:Lotd;

    new-instance v2, Loka;

    iget v3, p0, Lmoe;->d:I

    invoke-direct {v2, v3, p1}, Loka;-><init>(ILjava/lang/Object;)V

    const/4 p1, 0x2

    iput p1, p0, Lmoe;->a:I

    invoke-virtual {v1, v2, p0}, Lost;->q(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    :cond_0
    return-object v0

    :goto_1
    new-instance v0, Lmod;

    invoke-direct {v0, p1}, Lmod;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    :cond_1
    :goto_2
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 6

    new-instance p1, Lmoe;

    iget-object v1, p0, Lmoe;->b:Lomo;

    iget-object v2, p0, Lmoe;->c:Ljava/lang/Object;

    iget-object v3, p0, Lmoe;->e:Lotd;

    iget v4, p0, Lmoe;->d:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lmoe;-><init>(Lomo;Ljava/lang/Object;Lotd;ILoku;)V

    return-object p1
.end method
