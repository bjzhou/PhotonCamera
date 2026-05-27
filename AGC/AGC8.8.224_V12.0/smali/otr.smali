.class public final Lotr;
.super Ljava/lang/Object;

# interfaces
.implements Lotu;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Lonk;Llwc;Lmdc;I[B)V
    .locals 0

    iput p4, p0, Lotr;->d:I

    iput-object p1, p0, Lotr;->c:Ljava/lang/Object;

    iput-object p2, p0, Lotr;->b:Ljava/lang/Object;

    iput-object p3, p0, Lotr;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lots;Lonk;Lotu;I)V
    .locals 0

    iput p4, p0, Lotr;->d:I

    iput-object p1, p0, Lotr;->a:Ljava/lang/Object;

    iput-object p2, p0, Lotr;->b:Ljava/lang/Object;

    iput-object p3, p0, Lotr;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Loku;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lotr;->d:I

    const/4 v1, 0x1

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    const/high16 v3, -0x80000000

    packed-switch v0, :pswitch_data_0

    instance-of v0, p2, Lmcy;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Lmcy;

    iget v4, v0, Lmcy;->b:I

    and-int v5, v4, v3

    if-eqz v5, :cond_4

    sub-int/2addr v4, v3

    iput v4, v0, Lmcy;->b:I

    goto :goto_4

    :pswitch_0
    instance-of v0, p2, Lotq;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lotq;

    iget v4, v0, Lotq;->c:I

    and-int v5, v4, v3

    if-eqz v5, :cond_0

    sub-int/2addr v4, v3

    iput v4, v0, Lotq;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lotq;

    invoke-direct {v0, p0, p2}, Lotq;-><init>(Lotr;Loku;)V

    :goto_0
    iget-object p2, v0, Lotq;->a:Ljava/lang/Object;

    sget-object v3, Lolc;->a:Lolc;

    iget v4, v0, Lotq;->c:I

    packed-switch v4, :pswitch_data_1

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_2
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p2, p0, Lotr;->b:Ljava/lang/Object;

    check-cast p2, Lonk;

    iget-object p2, p2, Lonk;->a:Ljava/lang/Object;

    sget-object v2, Lovo;->a:Loxb;

    if-eq p2, v2, :cond_2

    iget-object v2, p0, Lotr;->a:Ljava/lang/Object;

    check-cast v2, Lots;

    iget-object v2, v2, Lots;->b:Lomo;

    invoke-interface {v2, p2, p1}, Lomo;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Lojk;->a:Lojk;

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p2, p0, Lotr;->b:Ljava/lang/Object;

    check-cast p2, Lonk;

    iput-object p1, p2, Lonk;->a:Ljava/lang/Object;

    iget-object p2, p0, Lotr;->c:Ljava/lang/Object;

    iput v1, v0, Lotq;->c:I

    invoke-interface {p2, p1, v0}, Lotu;->a(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_3

    :goto_2
    return-object v3

    :cond_3
    :goto_3
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :cond_4
    new-instance v0, Lmcy;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p2, v3}, Lmcy;-><init>(Lotr;Loku;[B)V

    :goto_4
    move-object v9, v0

    iget-object p2, v9, Lmcy;->a:Ljava/lang/Object;

    sget-object v0, Lolc;->a:Lolc;

    iget v3, v9, Lmcy;->b:I

    packed-switch v3, :pswitch_data_2

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_4
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_5
    iget-object p1, v9, Lmcy;->c:Lonk;

    goto :goto_5

    :pswitch_6
    iget-object p1, v9, Lmcy;->c:Lonk;

    :goto_5
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_7
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p2, p0, Lotr;->c:Ljava/lang/Object;

    move-object v2, p2

    check-cast v2, Lonk;

    iget-object v3, v2, Lonk;->a:Ljava/lang/Object;

    check-cast p1, Llyh;

    move-object v5, v3

    check-cast v5, Lmdd;

    instance-of v3, p1, Lmdi;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lotr;->b:Ljava/lang/Object;

    check-cast p1, Lmdi;

    iget-object p1, p1, Lmdi;->a:Ljava/lang/String;

    iput-object v2, v9, Lmcy;->c:Lonk;

    iput v1, v9, Lmcy;->b:I

    check-cast v3, Llwc;

    invoke-virtual {v3, v5, p1, v9}, Llwc;->f(Lmdd;Ljava/lang/String;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto/16 :goto_8

    :cond_5
    move-object v10, p2

    move-object p2, p1

    move-object p1, v10

    goto :goto_6

    :cond_6
    instance-of v1, p1, Lmdg;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lotr;->b:Ljava/lang/Object;

    iget-object v3, p0, Lotr;->a:Ljava/lang/Object;

    check-cast p1, Lmdg;

    iget-wide v7, p1, Lmdg;->a:J

    iput-object v2, v9, Lmcy;->c:Lonk;

    const/4 p1, 0x2

    iput p1, v9, Lmcy;->b:I

    move-object v6, v3

    check-cast v6, Lmdc;

    move-object v4, v1

    check-cast v4, Llwc;

    invoke-virtual/range {v4 .. v9}, Llwc;->g(Lmdd;Lmdc;JLoku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    goto :goto_8

    :cond_7
    move-object v10, p2

    move-object p2, p1

    move-object p1, v10

    goto :goto_6

    :cond_8
    instance-of v1, p1, Lmdh;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lotr;->b:Ljava/lang/Object;

    check-cast p1, Lmdh;

    iget-object p1, p1, Lmdh;->a:Ljava/lang/String;

    iput-object v2, v9, Lmcy;->c:Lonk;

    const/4 v2, 0x3

    iput v2, v9, Lmcy;->b:I

    check-cast v1, Llwc;

    invoke-virtual {v1, v5, p1, v9}, Llwc;->c(Lmdd;Ljava/lang/String;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    goto :goto_8

    :cond_9
    move-object v10, p2

    move-object p2, p1

    move-object p1, v10

    :goto_6
    check-cast p1, Lonk;

    iput-object p2, p1, Lonk;->a:Ljava/lang/Object;

    sget-object v0, Lojk;->a:Lojk;

    goto :goto_8

    :cond_a
    instance-of p2, p1, Lmde;

    if-eqz p2, :cond_c

    iget-object p1, p0, Lotr;->b:Ljava/lang/Object;

    const/4 p2, 0x4

    iput p2, v9, Lmcy;->b:I

    check-cast p1, Llwc;

    invoke-virtual {p1, v5, v9}, Llwc;->d(Lmdd;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b

    goto :goto_8

    :cond_b
    :goto_7
    new-instance p1, Loiz;

    invoke-direct {p1}, Loiz;-><init>()V

    throw p1

    :cond_c
    instance-of p2, p1, Lmdf;

    if-eqz p2, :cond_e

    iget-object p2, p0, Lotr;->b:Ljava/lang/Object;

    iget-object v1, p0, Lotr;->a:Ljava/lang/Object;

    check-cast p1, Lmdf;

    const/4 v2, 0x5

    iput v2, v9, Lmcy;->b:I

    check-cast v1, Lmdc;

    check-cast p2, Llwc;

    invoke-virtual {p2, v5, v1, p1, v9}, Llwc;->e(Lmdd;Lmdc;Lmdf;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_d

    :goto_8
    return-object v0

    :cond_d
    :goto_9
    new-instance p1, Loiz;

    invoke-direct {p1}, Loiz;-><init>()V

    throw p1

    :cond_e
    new-instance p1, Lojb;

    invoke-direct {p1}, Lojb;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
