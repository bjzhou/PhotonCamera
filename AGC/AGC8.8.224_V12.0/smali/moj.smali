.class final Lmoj;
.super Ljava/lang/Object;

# interfaces
.implements Lotu;


# instance fields
.field final synthetic a:[Ljava/lang/Object;

.field final synthetic b:I

.field final synthetic c:Lonj;

.field final synthetic d:Lotu;

.field final synthetic e:Loxv;


# direct methods
.method public constructor <init>([Ljava/lang/Object;ILonj;Lotu;Loxv;)V
    .locals 0

    iput-object p1, p0, Lmoj;->a:[Ljava/lang/Object;

    iput p2, p0, Lmoj;->b:I

    iput-object p3, p0, Lmoj;->c:Lonj;

    iput-object p4, p0, Lmoj;->d:Lotu;

    iput-object p5, p0, Lmoj;->e:Loxv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Loku;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Loka;

    invoke-virtual {p0, p1, p2}, Lmoj;->b(Loka;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Loka;Loku;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lmoi;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lmoi;

    iget v1, v0, Lmoi;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lmoi;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lmoi;

    invoke-direct {v0, p0, p2}, Lmoi;-><init>(Lmoj;Loku;)V

    :goto_0
    iget-object p2, v0, Lmoi;->a:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Lmoi;->c:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object p1, v0, Lmoi;->d:Lmoj;

    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    iget p2, p1, Loka;->a:I

    iget-object p1, p1, Loka;->b:Ljava/lang/Object;

    iget-object v2, p0, Lmoj;->a:[Ljava/lang/Object;

    iget v4, p0, Lmoj;->b:I

    rem-int/2addr p2, v4

    aget-object v4, v2, p2

    sget-object v5, Lmol;->a:Lmol;

    if-ne v4, v5, :cond_4

    aput-object p1, v2, p2

    move-object p1, p0

    :cond_1
    :goto_1
    iget-object p2, p1, Lmoj;->a:[Ljava/lang/Object;

    iget-object v2, p1, Lmoj;->c:Lonj;

    iget v2, v2, Lonj;->a:I

    aget-object p2, p2, v2

    sget-object v2, Lmol;->a:Lmol;

    if-eq p2, v2, :cond_3

    iget-object v2, p1, Lmoj;->d:Lotu;

    iput-object p1, v0, Lmoi;->d:Lmoj;

    iput v3, v0, Lmoi;->c:I

    invoke-interface {v2, p2, v0}, Lotu;->a(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object p2

    if-eq p2, v1, :cond_2

    :goto_2
    iget-object p2, p1, Lmoj;->a:[Ljava/lang/Object;

    iget-object v2, p1, Lmoj;->c:Lonj;

    iget v2, v2, Lonj;->a:I

    sget-object v4, Lmol;->a:Lmol;

    aput-object v4, p2, v2

    iget-object p2, p1, Lmoj;->e:Loxv;

    invoke-virtual {p2}, Loxv;->a()V

    iget-object p2, p1, Lmoj;->c:Lonj;

    iget v2, p2, Lonj;->a:I

    add-int/2addr v2, v3

    iput v2, p2, Lonj;->a:I

    iget v4, p1, Lmoj;->b:I

    if-ne v2, v4, :cond_1

    const/4 v2, 0x0

    iput v2, p2, Lonj;->a:I

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
