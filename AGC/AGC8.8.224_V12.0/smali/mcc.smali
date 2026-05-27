.class public final Lmcc;
.super Ljava/lang/Object;

# interfaces
.implements Lotu;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lomo;Lonk;I)V
    .locals 0

    iput p3, p0, Lmcc;->c:I

    iput-object p1, p0, Lmcc;->b:Ljava/lang/Object;

    iput-object p2, p0, Lmcc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lonk;Ldqx;I[B[B)V
    .locals 0

    iput p3, p0, Lmcc;->c:I

    iput-object p1, p0, Lmcc;->a:Ljava/lang/Object;

    iput-object p2, p0, Lmcc;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lotu;Llvy;I)V
    .locals 0

    iput p3, p0, Lmcc;->c:I

    iput-object p1, p0, Lmcc;->a:Ljava/lang/Object;

    iput-object p2, p0, Lmcc;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lotu;Lomo;I)V
    .locals 0

    iput p3, p0, Lmcc;->c:I

    iput-object p1, p0, Lmcc;->a:Ljava/lang/Object;

    iput-object p2, p0, Lmcc;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lotu;Lonk;I)V
    .locals 0

    iput p3, p0, Lmcc;->c:I

    iput-object p1, p0, Lmcc;->a:Ljava/lang/Object;

    iput-object p2, p0, Lmcc;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Loku;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lmcc;->c:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    packed-switch v0, :pswitch_data_0

    instance-of v0, p2, Loum;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Loum;

    iget v6, v0, Loum;->b:I

    and-int v7, v6, v5

    if-eqz v7, :cond_13

    sub-int/2addr v6, v5

    iput v6, v0, Loum;->b:I

    goto/16 :goto_f

    :pswitch_0
    instance-of v0, p2, Louk;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Louk;

    iget v1, v0, Louk;->b:I

    and-int v6, v1, v5

    if-eqz v6, :cond_0

    sub-int/2addr v1, v5

    iput v1, v0, Louk;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Louk;

    invoke-direct {v0, p0, p2, v4}, Louk;-><init>(Lmcc;Loku;[B)V

    :goto_0
    iget-object p2, v0, Louk;->a:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v4, v0, Louk;->b:I

    packed-switch v4, :pswitch_data_1

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    iget-object p1, v0, Louk;->c:Ljava/lang/Object;

    iget-object v0, v0, Louk;->e:Lmcc;

    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p2, p0, Lmcc;->b:Ljava/lang/Object;

    iput-object p0, v0, Louk;->e:Lmcc;

    iput-object p1, v0, Louk;->c:Ljava/lang/Object;

    iput v2, v0, Louk;->b:I

    invoke-interface {p2, p1, v0}, Lomo;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, p0

    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_2

    sget-object v1, Lojk;->a:Lojk;

    :goto_2
    return-object v1

    :cond_2
    iget-object p2, v0, Lmcc;->a:Ljava/lang/Object;

    check-cast p2, Lonk;

    iput-object p1, p2, Lonk;->a:Ljava/lang/Object;

    new-instance p1, Lovc;

    invoke-direct {p1, v0}, Lovc;-><init>(Lotu;)V

    throw p1

    :pswitch_3
    instance-of v0, p2, Loui;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Loui;

    iget v1, v0, Loui;->b:I

    and-int v6, v1, v5

    if-eqz v6, :cond_3

    sub-int/2addr v1, v5

    iput v1, v0, Loui;->b:I

    goto :goto_3

    :cond_3
    new-instance v0, Loui;

    invoke-direct {v0, p0, p2, v4}, Loui;-><init>(Lmcc;Loku;[B)V

    :goto_3
    iget-object p2, v0, Loui;->a:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v4, v0, Loui;->b:I

    packed-switch v4, :pswitch_data_2

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    iget-object p1, v0, Loui;->d:Lmcc;

    :try_start_0
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p2

    goto :goto_5

    :pswitch_5
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    :try_start_1
    iget-object p2, p0, Lmcc;->a:Ljava/lang/Object;

    iput-object p0, v0, Loui;->d:Lmcc;

    iput v2, v0, Loui;->b:I

    invoke-interface {p2, p1, v0}, Lotu;->a(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_4
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :catchall_1
    move-exception p1

    move-object p2, p1

    move-object p1, p0

    :goto_5
    iget-object p1, p1, Lmcc;->b:Ljava/lang/Object;

    check-cast p1, Lonk;

    iput-object p2, p1, Lonk;->a:Ljava/lang/Object;

    throw p2

    :pswitch_6
    instance-of v0, p2, Llvx;

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, Llvx;

    iget v1, v0, Llvx;->b:I

    and-int v6, v1, v5

    if-eqz v6, :cond_5

    sub-int/2addr v1, v5

    iput v1, v0, Llvx;->b:I

    goto :goto_6

    :cond_5
    new-instance v0, Llvx;

    invoke-direct {v0, p0, p2, v4}, Llvx;-><init>(Lmcc;Loku;[B)V

    :goto_6
    iget-object p2, v0, Llvx;->a:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v4, v0, Llvx;->b:I

    packed-switch v4, :pswitch_data_3

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_7
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_8

    :pswitch_8
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p2, p0, Lmcc;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p1}, Lljr;->ao(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llyf;

    iget-object v5, p0, Lmcc;->b:Ljava/lang/Object;

    check-cast v5, Llvy;

    iget-object v5, v5, Llvy;->b:Llyd;

    new-instance v6, Llwd;

    iget-object v5, v5, Llyd;->a:Ljava/lang/Object;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Llpm;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, v4}, Llwd;-><init>(Llyf;)V

    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_6
    iput v2, v0, Llvx;->b:I

    invoke-interface {p2, v3, v0}, Lotu;->a(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    :goto_8
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :pswitch_9
    instance-of v0, p2, Lmcb;

    if-eqz v0, :cond_8

    move-object v0, p2

    check-cast v0, Lmcb;

    iget v4, v0, Lmcb;->b:I

    and-int v6, v4, v5

    if-eqz v6, :cond_8

    sub-int/2addr v4, v5

    iput v4, v0, Lmcb;->b:I

    goto :goto_9

    :cond_8
    new-instance v0, Lmcb;

    invoke-direct {v0, p0, p2}, Lmcb;-><init>(Lmcc;Loku;)V

    :goto_9
    iget-object p2, v0, Lmcb;->a:Ljava/lang/Object;

    sget-object v4, Lolc;->a:Lolc;

    iget v5, v0, Lmcb;->b:I

    packed-switch v5, :pswitch_data_4

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_a
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_b
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_c
    iget-object p1, v0, Lmcb;->d:Lonk;

    goto :goto_a

    :pswitch_d
    iget-object p1, v0, Lmcb;->d:Lonk;

    :goto_a
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_e
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p2, p0, Lmcc;->a:Ljava/lang/Object;

    move-object v3, p2

    check-cast v3, Lonk;

    iget-object v5, v3, Lonk;->a:Ljava/lang/Object;

    check-cast p1, Llyh;

    check-cast v5, Lmbi;

    instance-of v6, p1, Lmdi;

    if-eqz v6, :cond_a

    iget-object v1, p0, Lmcc;->b:Ljava/lang/Object;

    check-cast p1, Lmdi;

    iget-object p1, p1, Lmdi;->a:Ljava/lang/String;

    iput-object v3, v0, Lmcb;->d:Lonk;

    iput v2, v0, Lmcb;->b:I

    check-cast v1, Ldqx;

    invoke-virtual {v1, v5, p1, v0}, Ldqx;->p(Lmbi;Ljava/lang/String;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_9

    goto/16 :goto_d

    :cond_9
    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    goto :goto_b

    :cond_a
    instance-of v2, p1, Lmdg;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lmcc;->b:Ljava/lang/Object;

    check-cast p1, Lmdg;

    iget-wide v6, p1, Lmdg;->a:J

    iput-object v3, v0, Lmcb;->d:Lonk;

    iput v1, v0, Lmcb;->b:I

    check-cast v2, Ldqx;

    invoke-virtual {v2, v5, v6, v7, v0}, Ldqx;->q(Lmbi;JLoku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_b

    goto :goto_d

    :cond_b
    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    goto :goto_b

    :cond_c
    instance-of v1, p1, Lmde;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lmcc;->b:Ljava/lang/Object;

    check-cast p1, Lmde;

    iget-object p1, p1, Lmde;->a:Ljava/lang/String;

    iput-object v3, v0, Lmcb;->d:Lonk;

    const/4 v2, 0x3

    iput v2, v0, Lmcb;->b:I

    check-cast v1, Ldqx;

    invoke-virtual {v1, v5, p1, v0}, Ldqx;->m(Lmbi;Ljava/lang/String;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_d

    goto :goto_d

    :cond_d
    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    :goto_b
    check-cast p1, Lonk;

    iput-object p2, p1, Lonk;->a:Ljava/lang/Object;

    sget-object v4, Lojk;->a:Lojk;

    goto :goto_d

    :cond_e
    instance-of p2, p1, Lmdh;

    if-eqz p2, :cond_10

    iget-object p1, p0, Lmcc;->b:Ljava/lang/Object;

    const/4 p2, 0x4

    iput p2, v0, Lmcb;->b:I

    check-cast p1, Ldqx;

    invoke-virtual {p1, v5, v0}, Ldqx;->n(Lmbi;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_f

    goto :goto_d

    :cond_f
    :goto_c
    new-instance p1, Loiz;

    invoke-direct {p1}, Loiz;-><init>()V

    throw p1

    :cond_10
    instance-of p2, p1, Lmdf;

    if-eqz p2, :cond_12

    iget-object p2, p0, Lmcc;->b:Ljava/lang/Object;

    check-cast p1, Lmdf;

    const/4 v1, 0x5

    iput v1, v0, Lmcb;->b:I

    check-cast p2, Ldqx;

    invoke-virtual {p2, v5, p1, v0}, Ldqx;->o(Lmbi;Lmdf;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_11

    :goto_d
    return-object v4

    :cond_11
    :goto_e
    new-instance p1, Loiz;

    invoke-direct {p1}, Loiz;-><init>()V

    throw p1

    :cond_12
    new-instance p1, Lojb;

    invoke-direct {p1}, Lojb;-><init>()V

    throw p1

    :cond_13
    new-instance v0, Loum;

    invoke-direct {v0, p0, p2, v4}, Loum;-><init>(Lmcc;Loku;[B)V

    :goto_f
    iget-object p2, v0, Loum;->a:Ljava/lang/Object;

    sget-object v5, Lolc;->a:Lolc;

    iget v6, v0, Loum;->b:I

    packed-switch v6, :pswitch_data_5

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_f
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_11

    :pswitch_10
    iget-object p1, v0, Loum;->d:Lotu;

    iget-object v2, v0, Loum;->c:Ljava/lang/Object;

    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_10

    :pswitch_11
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p2, p0, Lmcc;->a:Ljava/lang/Object;

    iget-object v3, p0, Lmcc;->b:Ljava/lang/Object;

    iput-object p1, v0, Loum;->c:Ljava/lang/Object;

    iput-object p2, v0, Loum;->d:Lotu;

    iput v2, v0, Loum;->b:I

    invoke-interface {v3, p1, v0}, Lomo;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v5, :cond_15

    move-object v2, p1

    move-object p1, p2

    :goto_10
    iput-object v4, v0, Loum;->c:Ljava/lang/Object;

    iput-object v4, v0, Loum;->d:Lotu;

    iput v1, v0, Loum;->b:I

    invoke-interface {p1, v2, v0}, Lotu;->a(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v5, :cond_14

    goto :goto_12

    :cond_14
    :goto_11
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :cond_15
    :goto_12
    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_6
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method
