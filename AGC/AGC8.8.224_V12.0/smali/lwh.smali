.class public abstract Llwh;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic b(Llwh;Ljava/util/List;Llul;Loku;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p3, Llwg;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Llwg;

    iget v1, v0, Llwg;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Llwg;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Llwg;

    invoke-direct {v0, p0, p3}, Llwg;-><init>(Llwh;Loku;)V

    :goto_0
    iget-object p3, v0, Llwg;->c:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Llwg;->d:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, v0, Llwg;->b:Ljava/lang/Object;

    check-cast p0, Llul;

    iget-object p1, v0, Llwg;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_1
    iget-object p2, v0, Llwg;->e:Llul;

    iget-object p0, v0, Llwg;->b:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljava/util/List;

    iget-object p0, v0, Llwg;->a:Ljava/lang/Object;

    check-cast p0, Llwh;

    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_2
    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p1}, Lljr;->ao(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {p3, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llyg;

    iget-object v4, v4, Llyg;->a:Llyf;

    iget-wide v4, v4, Llyf;->u:J

    invoke-static {v4, v5}, Lolp;->e(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iput-object p0, v0, Llwg;->a:Ljava/lang/Object;

    iput-object p1, v0, Llwg;->b:Ljava/lang/Object;

    iput-object p2, v0, Llwg;->e:Llul;

    const/4 v2, 0x1

    iput v2, v0, Llwg;->d:I

    move-object v2, p0

    check-cast v2, Llwp;

    iget-object v4, v2, Llwp;->a:Lapt;

    new-instance v5, Llwi;

    const/4 v6, 0x0

    invoke-direct {v5, v2, p3, p2, v6}, Llwi;-><init>(Llwp;Ljava/util/List;Llul;I)V

    invoke-static {v4, v5, v0}, Ladr;->c(Lapt;Ljava/util/concurrent/Callable;Loku;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_2

    return-object v1

    :cond_2
    :goto_2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llyg;

    iget-object v4, v4, Llyg;->b:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4}, Lljr;->ao(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Llwq;

    iget-wide v6, v6, Llwq;->k:J

    invoke-static {v6, v7}, Lolp;->e(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    invoke-static {p3, v5}, Lljr;->an(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_3

    :cond_4
    iput-object p1, v0, Llwg;->a:Ljava/lang/Object;

    iput-object p2, v0, Llwg;->b:Ljava/lang/Object;

    iput-object v3, v0, Llwg;->e:Llul;

    const/4 v2, 0x2

    iput v2, v0, Llwg;->d:I

    invoke-virtual {p0, p3, p2, v0}, Llwh;->c(Ljava/util/List;Llul;Loku;)Ljava/lang/Object;

    move-result-object p0

    if-eq p0, v1, :cond_7

    move-object p0, p2

    :goto_5
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1}, Lljr;->ao(Ljava/lang/Iterable;)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Llyg;

    iget-object v0, p3, Llyg;->a:Llyf;

    iget-object p3, p3, Llyg;->b:Ljava/util/List;

    iget-object v4, v0, Llyf;->t:Llwz;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/16 v11, 0x37

    move-object v7, p0

    invoke-static/range {v4 .. v11}, Llwz;->a(Llwz;Lnyy;Lnyy;Llul;Llvk;DI)Llwz;

    move-result-object v1

    const v2, 0x2fffff

    invoke-static {v0, v3, v3, v1, v2}, Llyf;->c(Llyf;Lluq;Ljava/lang/String;Llwz;I)Llyf;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p3}, Lljr;->ao(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llwq;

    iget-object v4, v2, Llwq;->j:Llwz;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/16 v11, 0x37

    move-object v7, p0

    invoke-static/range {v4 .. v11}, Llwz;->a(Llwz;Lnyy;Lnyy;Llul;Llvk;DI)Llwz;

    move-result-object v4

    const/16 v5, 0x5ff

    invoke-static {v2, v3, v3, v4, v5}, Llwq;->a(Llwq;Ljava/lang/String;Ljava/lang/String;Llwz;I)Llwq;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_5
    new-instance p3, Llyg;

    invoke-direct {p3, v0, v1}, Llyg;-><init>(Llyf;Ljava/util/List;)V

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    return-object p2

    :cond_7
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/util/List;Llul;Loku;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public abstract c(Ljava/util/List;Llul;Loku;)Ljava/lang/Object;
.end method
