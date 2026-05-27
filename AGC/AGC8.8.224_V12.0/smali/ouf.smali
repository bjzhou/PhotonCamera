.class public final Louf;
.super Ljava/lang/Object;

# interfaces
.implements Lott;


# instance fields
.field final synthetic a:Lott;

.field final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lott;Llvy;I)V
    .locals 0

    iput p3, p0, Louf;->c:I

    iput-object p1, p0, Louf;->a:Lott;

    iput-object p2, p0, Louf;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lott;Lomo;I)V
    .locals 0

    iput p3, p0, Louf;->c:I

    iput-object p1, p0, Louf;->a:Lott;

    iput-object p2, p0, Louf;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lott;Lomp;I)V
    .locals 0

    iput p3, p0, Louf;->c:I

    iput-object p1, p0, Louf;->a:Lott;

    iput-object p2, p0, Louf;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final di(Lotu;Loku;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Louf;->c:I

    const/4 v1, 0x2

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Louf;->a:Lott;

    new-instance v1, Lmcc;

    iget-object v2, p0, Louf;->b:Ljava/lang/Object;

    const/4 v3, 0x4

    invoke-direct {v1, p1, v2, v3}, Lmcc;-><init>(Lotu;Lomo;I)V

    check-cast v0, Lous;

    invoke-static {v0, v1, p2}, Lous;->d(Lous;Lotu;Loku;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lolc;->a:Lolc;

    if-ne p1, p2, :cond_8

    return-object p1

    :pswitch_0
    instance-of v0, p2, Loug;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Loug;

    iget v6, v0, Loug;->b:I

    and-int v7, v6, v4

    if-eqz v7, :cond_0

    sub-int/2addr v6, v4

    iput v6, v0, Loug;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Loug;

    invoke-direct {v0, p0, p2, v5}, Loug;-><init>(Louf;Loku;[B)V

    :goto_0
    iget-object p2, v0, Loug;->a:Ljava/lang/Object;

    sget-object v4, Lolc;->a:Lolc;

    iget v6, v0, Loug;->b:I

    packed-switch v6, :pswitch_data_1

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_2
    iget-object p1, v0, Loug;->c:Lotu;

    iget-object v2, v0, Loug;->e:Louf;

    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p2, p0, Louf;->a:Lott;

    iput-object p0, v0, Loug;->e:Louf;

    iput-object p1, v0, Loug;->c:Lotu;

    iput v3, v0, Loug;->b:I

    invoke-static {p2, p1, v0}, Lone;->n(Lott;Lotu;Loku;)Ljava/lang/Object;

    move-result-object p2

    if-eq p2, v4, :cond_2

    move-object v2, p0

    :goto_1
    check-cast p2, Ljava/lang/Throwable;

    if-eqz p2, :cond_1

    iget-object v2, v2, Louf;->b:Ljava/lang/Object;

    iput-object v5, v0, Loug;->e:Louf;

    iput-object v5, v0, Loug;->c:Lotu;

    iput v1, v0, Loug;->b:I

    invoke-interface {v2, p1, p2, v0}, Lomp;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_1

    goto :goto_3

    :cond_1
    :goto_2
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :cond_2
    :goto_3
    return-object v4

    :pswitch_4
    iget-object v0, p0, Louf;->a:Lott;

    new-instance v1, Lmcc;

    iget-object v2, p0, Louf;->b:Ljava/lang/Object;

    check-cast v2, Llvy;

    invoke-direct {v1, p1, v2, v3}, Lmcc;-><init>(Lotu;Llvy;I)V

    invoke-interface {v0, v1, p2}, Lott;->di(Lotu;Loku;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lolc;->a:Lolc;

    if-ne p1, p2, :cond_3

    return-object p1

    :cond_3
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :pswitch_5
    instance-of v0, p2, Loue;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Loue;

    iget v6, v0, Loue;->b:I

    and-int v7, v6, v4

    if-eqz v7, :cond_4

    sub-int/2addr v6, v4

    iput v6, v0, Loue;->b:I

    goto :goto_4

    :cond_4
    new-instance v0, Loue;

    invoke-direct {v0, p0, p2}, Loue;-><init>(Louf;Loku;)V

    :goto_4
    iget-object p2, v0, Loue;->a:Ljava/lang/Object;

    sget-object v4, Lolc;->a:Lolc;

    iget v6, v0, Loue;->b:I

    packed-switch v6, :pswitch_data_2

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_6
    iget-object p1, v0, Loue;->d:Ljava/lang/Object;

    check-cast p1, Lovp;

    :try_start_0
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p2

    goto :goto_7

    :pswitch_7
    iget-object p1, v0, Loue;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_a

    :pswitch_8
    iget-object p1, v0, Loue;->e:Lotu;

    iget-object v2, v0, Loue;->d:Ljava/lang/Object;

    check-cast v2, Louf;

    :try_start_1
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_8

    :pswitch_9
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    :try_start_2
    iget-object p2, p0, Louf;->a:Lott;

    iput-object p0, v0, Loue;->d:Ljava/lang/Object;

    iput-object p1, v0, Loue;->e:Lotu;

    iput v3, v0, Loue;->b:I

    invoke-interface {p2, p1, v0}, Lott;->di(Lotu;Loku;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ne p2, v4, :cond_5

    goto :goto_9

    :cond_5
    move-object v2, p0

    :goto_5
    new-instance p2, Lovp;

    invoke-interface {v0}, Loku;->d()Lola;

    move-result-object v1

    invoke-direct {p2, p1, v1}, Lovp;-><init>(Lotu;Lola;)V

    :try_start_3
    iget-object p1, v2, Louf;->b:Ljava/lang/Object;

    iput-object p2, v0, Loue;->d:Ljava/lang/Object;

    iput-object v5, v0, Loue;->e:Lotu;

    const/4 v1, 0x3

    iput v1, v0, Loue;->b:I

    invoke-interface {p1, p2, v5, v0}, Lomp;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eq p1, v4, :cond_6

    move-object p1, p2

    :goto_6
    invoke-virtual {p1}, Lovp;->h()V

    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :catchall_2
    move-exception p1

    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    :goto_7
    invoke-virtual {p1}, Lovp;->h()V

    throw p2

    :catchall_3
    move-exception p1

    move-object v2, p0

    :goto_8
    new-instance p2, Lovb;

    invoke-direct {p2, p1}, Lovb;-><init>(Ljava/lang/Throwable;)V

    iget-object v2, v2, Louf;->b:Ljava/lang/Object;

    iput-object p1, v0, Loue;->d:Ljava/lang/Object;

    iput-object v5, v0, Loue;->e:Lotu;

    iput v1, v0, Loue;->b:I

    invoke-static {p2, v2, p1, v0}, Lone;->o(Lotu;Lomp;Ljava/lang/Throwable;Loku;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v4, :cond_7

    :cond_6
    :goto_9
    return-object v4

    :cond_7
    :goto_a
    throw p1

    :cond_8
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
