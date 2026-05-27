.class public final Llzs;
.super Ljava/lang/Object;

# interfaces
.implements Lluk;


# instance fields
.field public final a:Lopq;

.field public final b:Lkrn;

.field public final c:Llzw;

.field public final d:Llzz;

.field private final e:Landroid/content/Context;

.field private final f:Louo;


# direct methods
.method public constructor <init>(Lopq;Landroid/content/Context;Lkrn;Llzw;Llzz;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llzs;->a:Lopq;

    iput-object p2, p0, Llzs;->e:Landroid/content/Context;

    iput-object p3, p0, Llzs;->b:Lkrn;

    iput-object p4, p0, Llzs;->c:Llzw;

    iput-object p5, p0, Llzs;->d:Llzz;

    const/4 p1, 0x0

    invoke-static {p1}, Louy;->a(Ljava/lang/Object;)Louo;

    move-result-object p2

    iput-object p2, p0, Llzs;->f:Louo;

    new-instance p2, Llzr;

    invoke-direct {p2, p0, p1}, Llzr;-><init>(Llzs;Loku;)V

    return-void
.end method


# virtual methods
.method public final a(Llzy;Lomk;Loku;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p3, Llzo;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Llzo;

    iget v1, v0, Llzo;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Llzo;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Llzo;

    invoke-direct {v0, p0, p3}, Llzo;-><init>(Llzs;Loku;)V

    :goto_0
    iget-object p3, v0, Llzo;->c:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Llzo;->e:I

    const/16 v3, 0xc

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object p1, v0, Llzo;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_1
    iget-object p1, v0, Llzo;->b:Ljava/lang/Object;

    iget-object p2, v0, Llzo;->i:Loux;

    iget-object v2, v0, Llzo;->h:Llzq;

    iget-object v5, v0, Llzo;->f:Llzy;

    iget-object v6, v0, Llzo;->a:Ljava/lang/Object;

    check-cast v6, Llzs;

    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_2
    iget-object p1, v0, Llzo;->b:Ljava/lang/Object;

    iget-object p2, v0, Llzo;->i:Loux;

    iget-object v2, v0, Llzo;->h:Llzq;

    iget-object v5, v0, Llzo;->f:Llzy;

    iget-object v6, v0, Llzo;->a:Ljava/lang/Object;

    check-cast v6, Llzs;

    :try_start_0
    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/16 :goto_4

    :pswitch_3
    iget-object p1, v0, Llzo;->g:Llzs;

    iget-object p2, v0, Llzo;->b:Ljava/lang/Object;

    iget-object v2, v0, Llzo;->i:Loux;

    iget-object v5, v0, Llzo;->h:Llzq;

    iget-object v6, v0, Llzo;->f:Llzy;

    iget-object v7, v0, Llzo;->a:Ljava/lang/Object;

    check-cast v7, Llzs;

    :try_start_1
    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :pswitch_4
    iget-object p1, v0, Llzo;->b:Ljava/lang/Object;

    iget-object p2, v0, Llzo;->i:Loux;

    iget-object v2, v0, Llzo;->h:Llzq;

    iget-object v5, v0, Llzo;->f:Llzy;

    iget-object v6, v0, Llzo;->a:Ljava/lang/Object;

    check-cast v6, Llzs;

    :try_start_2
    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v10, v5

    move-object v5, p1

    move-object p1, v6

    move-object v6, v10

    goto :goto_2

    :catchall_1
    move-exception p3

    move-object v7, v6

    move-object v6, v5

    move-object v5, v2

    move-object v2, p2

    move-object p2, p1

    move-object p1, p3

    goto/16 :goto_5

    :pswitch_5
    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p3, p0, Llzs;->f:Louo;

    move-object v2, p0

    move-object v10, p3

    move-object p3, p2

    move-object p2, v10

    :goto_1
    invoke-interface {p2}, Louo;->c()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lluh;

    :try_start_3
    iput-object v2, v0, Llzo;->a:Ljava/lang/Object;

    iput-object p1, v0, Llzo;->f:Llzy;

    move-object v6, p3

    check-cast v6, Llzq;

    iput-object v6, v0, Llzo;->h:Llzq;

    move-object v6, p2

    check-cast v6, Loux;

    iput-object v6, v0, Llzo;->i:Loux;

    iput-object v5, v0, Llzo;->b:Ljava/lang/Object;

    iput-object v4, v0, Llzo;->g:Llzs;

    const/4 v6, 0x1

    iput v6, v0, Llzo;->e:I

    invoke-interface {p3, v0}, Lomk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eq v6, v1, :cond_3

    move-object v10, v6

    move-object v6, p1

    move-object p1, v2

    move-object v2, p3

    move-object p3, v10

    :goto_2
    :try_start_4
    check-cast p3, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-static {p3}, Lkwp;->s(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lluh;

    move-result-object p3

    if-nez p3, :cond_2

    iget-object p3, p1, Llzs;->c:Llzw;

    iput-object p1, v0, Llzo;->a:Ljava/lang/Object;

    iput-object v6, v0, Llzo;->f:Llzy;

    move-object v7, v2

    check-cast v7, Llzq;

    iput-object v7, v0, Llzo;->h:Llzq;

    move-object v7, p2

    check-cast v7, Loux;

    iput-object v7, v0, Llzo;->i:Loux;

    iput-object v5, v0, Llzo;->b:Ljava/lang/Object;

    iput-object p1, v0, Llzo;->g:Llzs;

    const/4 v7, 0x2

    iput v7, v0, Llzo;->e:I

    invoke-interface {p3, v0}, Llzw;->b(Loku;)Ljava/lang/Object;

    move-result-object p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eq p3, v1, :cond_1

    move-object v7, p1

    move-object v10, v2

    move-object v2, p2

    move-object p2, v5

    move-object v5, v10

    :goto_3
    :try_start_5
    iget-object p1, p1, Llzs;->d:Llzz;

    sget-object p3, Lodt;->o:Lodt;

    invoke-static {v6, p3, v4, v4, v3}, Llzy;->c(Llzy;Lodt;Ljava/lang/Throwable;Llux;I)Llur;

    move-result-object p3

    iput-object v7, v0, Llzo;->a:Ljava/lang/Object;

    iput-object v6, v0, Llzo;->f:Llzy;

    move-object v8, v5

    check-cast v8, Llzq;

    iput-object v8, v0, Llzo;->h:Llzq;

    move-object v8, v2

    check-cast v8, Loux;

    iput-object v8, v0, Llzo;->i:Loux;

    iput-object p2, v0, Llzo;->b:Ljava/lang/Object;

    iput-object v4, v0, Llzo;->g:Llzs;

    const/4 v8, 0x3

    iput v8, v0, Llzo;->e:I

    invoke-virtual {p1, p3, v0}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eq p1, v1, :cond_1

    move-object p1, p2

    move-object p2, v2

    move-object v2, v5

    move-object v5, v6

    move-object v6, v7

    :goto_4
    move-object p3, v4

    move-object v10, v5

    move-object v5, p1

    move-object p1, v10

    goto/16 :goto_d

    :cond_1
    return-object v1

    :cond_2
    move-object v10, v6

    move-object v6, p1

    move-object p1, v10

    goto/16 :goto_d

    :catchall_2
    move-exception p3

    move-object v7, p1

    move-object p1, p3

    move-object v10, v2

    move-object v2, p2

    move-object p2, v5

    move-object v5, v10

    goto :goto_5

    :cond_3
    return-object v1

    :catchall_3
    move-exception v6

    move-object v7, v2

    move-object v2, p2

    move-object p2, v5

    move-object v5, p3

    move-object v10, v6

    move-object v6, p1

    move-object p1, v10

    :goto_5
    instance-of p3, p1, Ljda;

    if-eqz p3, :cond_4

    move-object p3, p1

    check-cast p3, Ljda;

    goto :goto_6

    :cond_4
    move-object p3, v4

    :goto_6
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljda;->a()I

    move-result p3

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p3}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_7

    :cond_5
    move-object v8, v4

    :goto_7
    if-nez v8, :cond_6

    goto :goto_8

    :cond_6
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v9, 0x7

    if-ne p3, v9, :cond_8

    iget-object p1, v7, Llzs;->c:Llzw;

    iget-object p3, v7, Llzs;->e:Landroid/content/Context;

    invoke-interface {p1, p3}, Llzw;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-static {p1}, Lkwp;->s(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lluh;

    move-result-object p3

    move-object p1, v6

    move-object v6, v7

    move-object v10, v5

    move-object v5, p2

    move-object p2, v2

    move-object v2, v10

    goto/16 :goto_d

    :cond_7
    move-object p3, v4

    move-object p1, v6

    move-object v6, v7

    move-object v10, v5

    move-object v5, p2

    move-object p2, v2

    move-object v2, v10

    goto :goto_d

    :cond_8
    :goto_8
    const/4 p3, 0x4

    if-nez v8, :cond_9

    goto :goto_a

    :cond_9
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, p3, :cond_a

    :goto_9
    goto :goto_b

    :cond_a
    :goto_a
    if-nez v8, :cond_b

    goto :goto_e

    :cond_b
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_e

    goto :goto_9

    :goto_b
    iget-object v8, v7, Llzs;->d:Llzz;

    sget-object v9, Lodt;->o:Lodt;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v6, v9, p1, v4, v3}, Llzy;->c(Llzy;Lodt;Ljava/lang/Throwable;Llux;I)Llur;

    move-result-object p1

    iput-object v7, v0, Llzo;->a:Ljava/lang/Object;

    iput-object v6, v0, Llzo;->f:Llzy;

    move-object v9, v5

    check-cast v9, Llzq;

    iput-object v9, v0, Llzo;->h:Llzq;

    move-object v9, v2

    check-cast v9, Loux;

    iput-object v9, v0, Llzo;->i:Loux;

    iput-object p2, v0, Llzo;->b:Ljava/lang/Object;

    iput-object v4, v0, Llzo;->g:Llzs;

    iput p3, v0, Llzo;->e:I

    invoke-virtual {v8, p1, v0}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v1, :cond_d

    move-object p1, p2

    move-object p2, v2

    move-object v2, v5

    move-object v5, v6

    move-object v6, v7

    :goto_c
    move-object p3, v4

    move-object v10, v5

    move-object v5, p1

    move-object p1, v10

    :goto_d
    invoke-interface {p2, v5, p3}, Louo;->dj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    move-object p3, v2

    move-object v2, v6

    goto/16 :goto_1

    :cond_c
    return-object p3

    :cond_d
    return-object v1

    :cond_e
    :goto_e
    iget-object p2, v7, Llzs;->d:Llzz;

    sget-object p3, Lodt;->p:Lodt;

    invoke-static {v6, p3, p1, v4, v3}, Llzy;->c(Llzy;Lodt;Ljava/lang/Throwable;Llux;I)Llur;

    move-result-object p3

    iput-object p1, v0, Llzo;->a:Ljava/lang/Object;

    iput-object v4, v0, Llzo;->f:Llzy;

    iput-object v4, v0, Llzo;->h:Llzq;

    iput-object v4, v0, Llzo;->i:Loux;

    iput-object v4, v0, Llzo;->b:Ljava/lang/Object;

    iput-object v4, v0, Llzo;->g:Llzs;

    const/4 v2, 0x5

    iput v2, v0, Llzo;->e:I

    invoke-virtual {p2, p3, v0}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_f

    return-object v1

    :cond_f
    :goto_f
    goto :goto_11

    :goto_10
    throw p1

    :goto_11
    goto :goto_10

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Llzy;Loku;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Llzq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Llzq;-><init>(Llzs;Loku;)V

    invoke-virtual {p0, p1, v0, p2}, Llzs;->a(Llzy;Lomk;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
