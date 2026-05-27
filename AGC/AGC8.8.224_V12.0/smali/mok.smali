.class public final Lmok;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "com.google.async.coroutines.MapConcurrentlyKt$mapConcurrently$2"
    c = "MapConcurrently.kt"
    d = "invokeSuspend"
    e = {
        0x3e
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:I

.field final synthetic c:Lott;

.field final synthetic d:Lomo;

.field private synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILott;Lomo;Loku;)V
    .locals 0

    iput p1, p0, Lmok;->b:I

    iput-object p2, p0, Lmok;->c:Lott;

    iput-object p3, p0, Lmok;->d:Lomo;

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

    check-cast p1, Lmok;

    invoke-virtual {p1, p2}, Lmok;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Lmok;->a:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v0, p0, Lmok;->e:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Lmok;->e:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Lotu;

    iget p1, p0, Lmok;->b:I

    new-instance v8, Loxv;

    invoke-direct {v8, p1}, Loxv;-><init>(I)V

    iget p1, p0, Lmok;->b:I

    new-array v1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    sget-object v4, Lmol;->a:Lmol;

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v6, Lonj;

    invoke-direct {v6}, Lonj;-><init>()V

    new-instance p1, Lmog;

    iget-object v3, p0, Lmok;->c:Lott;

    iget-object v4, p0, Lmok;->d:Lomo;

    const/4 v5, 0x0

    invoke-direct {p1, v3, v8, v4, v5}, Lmog;-><init>(Lott;Loxv;Lomo;Loku;)V

    new-instance v3, Lotp;

    sget-object v4, Lolb;->a:Lolb;

    invoke-direct {v3, p1, v4}, Lotp;-><init>(Lomo;Lola;)V

    new-instance p1, Lmoh;

    invoke-direct {p1, v5}, Lmoh;-><init>(Loku;)V

    invoke-static {v3, p1}, Lone;->p(Lott;Lomp;)Lott;

    move-result-object p1

    new-instance v9, Lmoj;

    iget v5, p0, Lmok;->b:I

    move-object v3, v9

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Lmoj;-><init>([Ljava/lang/Object;ILonj;Lotu;Loxv;)V

    iput-object v1, p0, Lmok;->e:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, p0, Lmok;->a:I

    invoke-interface {p1, v9, p0}, Lott;->di(Lotu;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    return-object v0

    :goto_1
    array-length p1, v1

    :goto_2
    if-ge v2, p1, :cond_3

    aget-object v0, v1, v2

    sget-object v3, Lmol;->a:Lmol;

    if-eq v0, v3, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
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

    new-instance v0, Lmok;

    iget v1, p0, Lmok;->b:I

    iget-object v2, p0, Lmok;->c:Lott;

    iget-object v3, p0, Lmok;->d:Lomo;

    invoke-direct {v0, v1, v2, v3, p2}, Lmok;-><init>(ILott;Lomo;Loku;)V

    iput-object p1, v0, Lmok;->e:Ljava/lang/Object;

    return-object v0
.end method
