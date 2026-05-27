.class final Lapu;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "androidx.room.RoomDatabaseKt$startTransactionCoroutine$2$1$1"
    c = "RoomDatabaseExt.kt"
    d = "invokeSuspend"
    e = {
        0x67
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lapt;

.field final synthetic c:Looz;

.field final synthetic d:Lomo;

.field private synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lapt;Looz;Lomo;Loku;)V
    .locals 0

    iput-object p1, p0, Lapu;->b:Lapt;

    iput-object p2, p0, Lapu;->c:Looz;

    iput-object p3, p0, Lapu;->d:Lomo;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Loln;-><init>(ILoku;)V

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

    check-cast p1, Lapu;

    invoke-virtual {p1, p2}, Lapu;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Lapu;->a:I

    packed-switch v1, :pswitch_data_0

    iget-object v0, p0, Lapu;->e:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Loku;

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Lapu;->e:Ljava/lang/Object;

    check-cast p1, Lopu;

    invoke-interface {p1}, Lopu;->da()Lola;

    move-result-object p1

    sget-object v1, Lokw;->a:Lokv;

    invoke-interface {p1, v1}, Lola;->get(Loky;)Lokx;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lokw;

    iget-object v1, p0, Lapu;->b:Lapt;

    new-instance v2, Laqb;

    invoke-direct {v2, p1}, Laqb;-><init>(Lokw;)V

    iget-object v1, v1, Lapt;->i:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Loxe;

    invoke-direct {v4, v3, v1}, Loxe;-><init>(Ljava/lang/Object;Ljava/lang/ThreadLocal;)V

    invoke-interface {p1, v2}, Lokw;->plus(Lola;)Lola;

    move-result-object p1

    invoke-interface {p1, v4}, Lola;->plus(Lola;)Lola;

    move-result-object p1

    iget-object v1, p0, Lapu;->c:Looz;

    iget-object v2, p0, Lapu;->d:Lomo;

    iput-object v1, p0, Lapu;->e:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, p0, Lapu;->a:I

    invoke-static {p1, v2, p0}, Lone;->h(Lola;Lomo;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :goto_0
    invoke-interface {v1, p1}, Loku;->e(Ljava/lang/Object;)V

    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 4

    new-instance v0, Lapu;

    iget-object v1, p0, Lapu;->b:Lapt;

    iget-object v2, p0, Lapu;->c:Looz;

    iget-object v3, p0, Lapu;->d:Lomo;

    invoke-direct {v0, v1, v2, v3, p2}, Lapu;-><init>(Lapt;Looz;Lomo;Loku;)V

    iput-object p1, v0, Lapu;->e:Ljava/lang/Object;

    return-object v0
.end method
