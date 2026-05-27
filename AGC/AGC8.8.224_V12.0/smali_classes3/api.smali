.class public final Lapi;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "androidx.room.CoroutinesRoom$Companion$createFlow$1"
    c = "CoroutinesRoom.kt"
    d = "invokeSuspend"
    e = {
        0x70
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lapt;

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:Ljava/util/concurrent/Callable;

.field private synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lapt;[Ljava/lang/String;Ljava/util/concurrent/Callable;Loku;)V
    .locals 0

    iput-object p1, p0, Lapi;->b:Lapt;

    iput-object p2, p0, Lapi;->c:[Ljava/lang/String;

    iput-object p3, p0, Lapi;->d:Ljava/util/concurrent/Callable;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Loln;-><init>(ILoku;)V

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

    check-cast p1, Lapi;

    invoke-virtual {p1, p2}, Lapi;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Lapi;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Lapi;->e:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lotu;

    new-instance p1, Laph;

    iget-object v2, p0, Lapi;->b:Lapt;

    iget-object v4, p0, Lapi;->c:[Ljava/lang/String;

    iget-object v5, p0, Lapi;->d:Ljava/util/concurrent/Callable;

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Laph;-><init>(Lapt;Lotu;[Ljava/lang/String;Ljava/util/concurrent/Callable;Loku;)V

    const/4 v1, 0x1

    iput v1, p0, Lapi;->a:I

    invoke-static {p1, p0}, Lopx;->d(Lomo;Loku;)Ljava/lang/Object;

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
    .locals 4

    new-instance v0, Lapi;

    iget-object v1, p0, Lapi;->b:Lapt;

    iget-object v2, p0, Lapi;->c:[Ljava/lang/String;

    iget-object v3, p0, Lapi;->d:Ljava/util/concurrent/Callable;

    invoke-direct {v0, v1, v2, v3, p2}, Lapi;-><init>(Lapt;[Ljava/lang/String;Ljava/util/concurrent/Callable;Loku;)V

    iput-object p1, v0, Lapi;->e:Ljava/lang/Object;

    return-object v0
.end method
