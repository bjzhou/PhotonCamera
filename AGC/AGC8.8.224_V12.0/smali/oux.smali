.class public final Loux;
.super Lovd;

# interfaces
.implements Louo;
.implements Lott;


# instance fields
.field private final a:Loop;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lovd;-><init>()V

    invoke-static {p1}, Lolp;->k(Ljava/lang/Object;)Loop;

    move-result-object p1

    iput-object p1, p0, Loux;->a:Loop;

    return-void
.end method

.method private final f(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Loux;->a:Loop;

    iget-object v0, v0, Loop;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-static {v0, p1}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return v1

    :cond_1
    :goto_0
    :try_start_1
    invoke-static {v0, p2}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    monitor-exit p0

    return v0

    :cond_2
    :try_start_2
    iget-object p1, p0, Loux;->a:Loop;

    invoke-virtual {p1, p2}, Loop;->c(Ljava/lang/Object;)V

    iget p1, p0, Loux;->b:I

    and-int/lit8 p2, p1, 0x1

    if-nez p2, :cond_9

    add-int/2addr p1, v0

    iput p1, p0, Loux;->b:I

    iget-object p2, p0, Lovd;->d:[Lovf;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    :goto_1
    check-cast p2, [Louz;

    if-eqz p2, :cond_7

    const/4 v2, 0x0

    :goto_2
    array-length v3, p2

    if-ge v2, v3, :cond_7

    aget-object v3, p2, v2

    if-eqz v3, :cond_6

    iget-object v4, v3, Louz;->a:Loop;

    :cond_3
    iget-object v5, v4, Loop;->a:Ljava/lang/Object;

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    sget-object v6, Louy;->b:Loxb;

    if-eq v5, v6, :cond_6

    sget-object v7, Louy;->a:Loxb;

    if-ne v5, v7, :cond_5

    iget-object v7, v3, Louz;->a:Loop;

    invoke-virtual {v7, v5, v6}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_5
    iget-object v6, v3, Louz;->a:Loop;

    invoke-virtual {v6, v5, v7}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    check-cast v5, Lopa;

    sget-object v3, Lojk;->a:Lojk;

    invoke-interface {v5, v3}, Loku;->e(Ljava/lang/Object;)V

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    monitor-enter p0

    :try_start_3
    iget p2, p0, Loux;->b:I

    if-ne p2, p1, :cond_8

    add-int/2addr p1, v0

    iput p1, p0, Loux;->b:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v0

    :cond_8
    :try_start_4
    iget-object p1, p0, Lovd;->d:[Lovf;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    move v8, p2

    move-object p2, p1

    move p1, v8

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_9
    add-int/lit8 p1, p1, 0x2

    :try_start_5
    iput p1, p0, Loux;->b:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return v0

    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Loku;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Loux;->d(Ljava/lang/Object;)V

    sget-object p1, Lojk;->a:Lojk;

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final c()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lovo;->a:Loxb;

    iget-object v1, p0, Loux;->a:Loop;

    iget-object v1, v1, Loop;->a:Ljava/lang/Object;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lovo;->a:Loxb;

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Loux;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final di(Lotu;Loku;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Louw;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Louw;

    iget v1, v0, Louw;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Louw;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Louw;

    invoke-direct {v0, p0, p2}, Louw;-><init>(Loux;Loku;)V

    :goto_0
    iget-object p2, v0, Louw;->b:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Louw;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object p1, v0, Louw;->a:Ljava/lang/Object;

    iget-object v2, v0, Louw;->h:Lora;

    iget-object v5, v0, Louw;->g:Louz;

    iget-object v6, v0, Louw;->f:Lotu;

    iget-object v7, v0, Louw;->e:Loux;

    :try_start_0
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_2

    :pswitch_1
    iget-object p1, v0, Louw;->a:Ljava/lang/Object;

    iget-object v2, v0, Louw;->h:Lora;

    iget-object v5, v0, Louw;->g:Louz;

    iget-object v6, v0, Louw;->f:Lotu;

    iget-object v7, v0, Louw;->e:Loux;

    :try_start_1
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :pswitch_2
    iget-object v5, v0, Louw;->g:Louz;

    iget-object p1, v0, Louw;->f:Lotu;

    iget-object v7, v0, Louw;->e:Loux;

    :try_start_2
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto/16 :goto_5

    :pswitch_3
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lovd;->i()Lovf;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Louz;

    :try_start_3
    instance-of p2, p1, Lova;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez p2, :cond_9

    move-object v7, p0

    :goto_1
    :try_start_4
    invoke-interface {v0}, Loku;->d()Lola;

    move-result-object p2

    sget-object v2, Lora;->c:Lokv;

    invoke-interface {p2, v2}, Lola;->get(Loky;)Lokx;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lora;

    move-object v6, p1

    move-object p1, v4

    :cond_1
    :goto_2
    iget-object p2, v7, Loux;->a:Loop;

    iget-object p2, p2, Loop;->a:Ljava/lang/Object;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lolp;->T(Lora;)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {p1, p2}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_3
    sget-object p1, Lovo;->a:Loxb;

    if-ne p2, p1, :cond_4

    move-object p1, v4

    goto :goto_3

    :cond_4
    move-object p1, p2

    :goto_3
    iput-object v7, v0, Louw;->e:Loux;

    iput-object v6, v0, Louw;->f:Lotu;

    iput-object v5, v0, Louw;->g:Louz;

    iput-object v2, v0, Louw;->h:Lora;

    iput-object p2, v0, Louw;->a:Ljava/lang/Object;

    const/4 v8, 0x2

    iput v8, v0, Louw;->d:I

    invoke-interface {v6, p1, v0}, Lotu;->a(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v1, :cond_8

    move-object p1, p2

    :cond_5
    :goto_4
    iget-object p2, v5, Louz;->a:Loop;

    sget-object v8, Louy;->a:Loxb;

    invoke-virtual {p2, v8}, Loop;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v8, Lopw;->a:Z

    sget-object v8, Louy;->b:Loxb;

    if-eq p2, v8, :cond_1

    iput-object v7, v0, Louw;->e:Loux;

    iput-object v6, v0, Louw;->f:Lotu;

    iput-object v5, v0, Louw;->g:Louz;

    iput-object v2, v0, Louw;->h:Lora;

    iput-object p1, v0, Louw;->a:Ljava/lang/Object;

    const/4 p2, 0x3

    iput p2, v0, Louw;->d:I

    new-instance p2, Lopa;

    invoke-static {v0}, Lolp;->g(Loku;)Loku;

    move-result-object v8

    invoke-direct {p2, v8, v3}, Lopa;-><init>(Loku;I)V

    invoke-virtual {p2}, Lopa;->x()V

    iget-object v8, v5, Louz;->a:Loop;

    sget-object v9, Louy;->a:Loxb;

    invoke-virtual {v8, v9, p2}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    sget-object v8, Lojk;->a:Lojk;

    invoke-interface {p2, v8}, Loku;->e(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p2}, Lopa;->m()Ljava/lang/Object;

    move-result-object p2

    sget-object v8, Lolc;->a:Lolc;

    if-eq p2, v8, :cond_7

    sget-object p2, Lojk;->a:Lojk;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_7
    if-eq p2, v1, :cond_8

    goto :goto_2

    :cond_8
    return-object v1

    :cond_9
    :try_start_5
    move-object p2, p1

    check-cast p2, Lova;

    iput-object p0, v0, Louw;->e:Loux;

    iput-object p1, v0, Louw;->f:Lotu;

    iput-object v5, v0, Louw;->g:Louz;

    iput v3, v0, Louw;->d:I

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    move-object v7, p0

    :goto_5
    invoke-virtual {v7, v5}, Lovd;->j(Lovf;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final dj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lovo;->a:Loxb;

    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Lovo;->a:Loxb;

    :cond_1
    invoke-direct {p0, p1, p2}, Loux;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic e()Lovf;
    .locals 1

    new-instance v0, Louz;

    invoke-direct {v0}, Louz;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic h()[Lovf;
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Louz;

    return-object v0
.end method
