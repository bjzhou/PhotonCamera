.class final Laph;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "androidx.room.CoroutinesRoom$Companion$createFlow$1$1"
    c = "CoroutinesRoom.kt"
    d = "invokeSuspend"
    e = {
        0x8a
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lapt;

.field final synthetic c:Lotu;

.field final synthetic d:[Ljava/lang/String;

.field final synthetic e:Ljava/util/concurrent/Callable;

.field private synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lapt;Lotu;[Ljava/lang/String;Ljava/util/concurrent/Callable;Loku;)V
    .locals 0

    iput-object p1, p0, Laph;->b:Lapt;

    iput-object p2, p0, Laph;->c:Lotu;

    iput-object p3, p0, Laph;->d:[Ljava/lang/String;

    iput-object p4, p0, Laph;->e:Ljava/util/concurrent/Callable;

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

    check-cast p1, Laph;

    invoke-virtual {p1, p2}, Laph;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Laph;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Laph;->f:Ljava/lang/Object;

    check-cast p1, Lopu;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Lolp;->P(III)Loss;

    move-result-object v7

    new-instance v6, Lapp;

    iget-object v1, p0, Laph;->d:[Ljava/lang/String;

    invoke-direct {v6, v1, v7}, Lapp;-><init>([Ljava/lang/String;Loss;)V

    sget-object v1, Lojk;->a:Lojk;

    invoke-interface {v7, v1}, Loss;->s(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lopu;->da()Lola;

    move-result-object v1

    sget-object v3, Laqb;->c:Lokv;

    invoke-interface {v1, v3}, Lola;->get(Loky;)Lokx;

    move-result-object v1

    check-cast v1, Laqb;

    if-eqz v1, :cond_0

    iget-object v1, v1, Laqb;->a:Lokw;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Laph;->b:Lapt;

    invoke-static {v1}, Lady;->d(Lapt;)Lopq;

    move-result-object v1

    :goto_0
    const/4 v3, 0x7

    invoke-static {v2, v2, v3}, Lolp;->P(III)Loss;

    move-result-object v2

    new-instance v3, Lapg;

    iget-object v5, p0, Laph;->b:Lapt;

    iget-object v8, p0, Laph;->e:Ljava/util/concurrent/Callable;

    const/4 v10, 0x0

    move-object v4, v3

    move-object v9, v2

    invoke-direct/range {v4 .. v10}, Lapg;-><init>(Lapt;Lapp;Loss;Ljava/util/concurrent/Callable;Loss;Loku;)V

    const/4 v4, 0x2

    invoke-static {p1, v1, v3, v4}, Lone;->j(Lopu;Lola;Lomo;I)Lora;

    iget-object p1, p0, Laph;->c:Lotu;

    const/4 v1, 0x1

    iput v1, p0, Laph;->a:I

    invoke-static {p1, v2, p0}, Lone;->r(Lotu;Lotf;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    :cond_1
    :goto_1
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 7

    new-instance v6, Laph;

    iget-object v1, p0, Laph;->b:Lapt;

    iget-object v2, p0, Laph;->c:Lotu;

    iget-object v3, p0, Laph;->d:[Ljava/lang/String;

    iget-object v4, p0, Laph;->e:Ljava/util/concurrent/Callable;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Laph;-><init>(Lapt;Lotu;[Ljava/lang/String;Ljava/util/concurrent/Callable;Loku;)V

    iput-object p1, v6, Laph;->f:Ljava/lang/Object;

    return-object v6
.end method
