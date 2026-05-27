.class public abstract Llyl;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic b(Llyl;Loku;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p1, Llyj;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Llyj;

    iget v1, v0, Llyj;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Llyj;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Llyj;

    invoke-direct {v0, p0, p1}, Llyj;-><init>(Llyl;Loku;)V

    :goto_0
    iget-object p1, v0, Llyj;->a:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Llyj;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_1
    iget-object p0, v0, Llyj;->d:Llys;

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_2
    iget-object p0, v0, Llyj;->d:Llys;

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    move-object v8, p0

    check-cast v8, Llys;

    iput-object v8, v0, Llyj;->d:Llys;

    iput v6, v0, Llyj;->b:I

    sget-object v10, Llvk;->f:Llvk;

    new-array p1, v4, [Llvk;

    sget-object v2, Llvk;->c:Llvk;

    aput-object v2, p1, v3

    sget-object v2, Llvk;->d:Llvk;

    aput-object v2, p1, v6

    sget-object v2, Llvk;->e:Llvk;

    aput-object v2, p1, v5

    invoke-static {p1}, Lljr;->az([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v9

    sget-object v11, Llul;->c:Llul;

    iget-object p1, v8, Llys;->a:Lapt;

    new-instance v2, Llyr;

    const/4 v12, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Llyr;-><init>(Llys;Ljava/util/Set;Llvk;Llul;I)V

    invoke-static {p1, v2, v0}, Ladr;->c(Lapt;Ljava/util/concurrent/Callable;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v1, :cond_4

    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-lez p1, :cond_3

    move-object v8, p0

    check-cast v8, Llys;

    iput-object v8, v0, Llyj;->d:Llys;

    iput v5, v0, Llyj;->b:I

    sget-object v11, Llvk;->f:Llvk;

    new-array p1, v5, [Lluo;

    sget-object v2, Lluo;->a:Lluo;

    aput-object v2, p1, v3

    sget-object v2, Lluo;->b:Lluo;

    aput-object v2, p1, v6

    invoke-static {p1}, Lljr;->az([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v9

    new-array p1, v4, [Llvk;

    sget-object v2, Llvk;->c:Llvk;

    aput-object v2, p1, v3

    sget-object v2, Llvk;->d:Llvk;

    aput-object v2, p1, v6

    sget-object v2, Llvk;->e:Llvk;

    aput-object v2, p1, v5

    invoke-static {p1}, Lljr;->az([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v10

    iget-object p1, v8, Llys;->a:Lapt;

    new-instance v2, Llyr;

    const/4 v12, 0x2

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Llyr;-><init>(Llys;Ljava/util/Set;Ljava/util/Set;Llvk;I)V

    invoke-static {p1, v2, v0}, Ladr;->c(Lapt;Ljava/util/concurrent/Callable;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v1, :cond_2

    :goto_2
    const/4 p1, 0x0

    iput-object p1, v0, Llyj;->d:Llys;

    iput v4, v0, Llyj;->b:I

    sget-object p1, Llvk;->f:Llvk;

    sget-object v2, Llul;->c:Llul;

    const-string v3, "\n      SELECT * FROM ResourceEntity\n      WHERE\n        status_uploadState = ?\n        AND (\n          status_airlockFileState IS NOT ?\n          OR namespaceId IS NULL\n          OR partitionId IS NULL\n        )\n    "

    invoke-static {v3, v5}, Lapy;->a(Ljava/lang/String;I)Lapy;

    move-result-object v3

    invoke-static {p1}, Llyc;->w(Llvk;)I

    move-result p1

    int-to-long v7, p1

    invoke-virtual {v3, v6, v7, v8}, Lapy;->e(IJ)V

    invoke-static {v2}, Llyc;->a(Llul;)I

    move-result p1

    int-to-long v7, p1

    invoke-virtual {v3, v5, v7, v8}, Lapy;->e(IJ)V

    invoke-static {}, Lafj;->g()Landroid/os/CancellationSignal;

    move-result-object p1

    check-cast p0, Llys;

    iget-object v2, p0, Llys;->a:Lapt;

    new-instance v4, Llyo;

    invoke-direct {v4, p0, v3}, Llyo;-><init>(Llys;Lapy;)V

    invoke-static {v2, v6, p1, v4, v0}, Ladr;->b(Lapt;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_1

    return-object v1

    :cond_1
    :goto_3
    return-object p1

    :cond_2
    return-object v1

    :cond_3
    sget-object p0, Lojx;->a:Lojx;

    return-object p0

    :cond_4
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic d(Llyl;Loku;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p1, Llyk;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Llyk;

    iget v1, v0, Llyk;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Llyk;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Llyk;

    invoke-direct {v0, p0, p1}, Llyk;-><init>(Llyl;Loku;)V

    :goto_0
    iget-object p1, v0, Llyk;->b:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Llyk;->c:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, v0, Llyk;->d:Ljava/util/List;

    iget-object v0, v0, Llyk;->a:Ljava/lang/Object;

    check-cast v0, Llyf;

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_1
    iget-object p0, v0, Llyk;->a:Ljava/lang/Object;

    check-cast p0, Llyl;

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_2
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iput-object p0, v0, Llyk;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, v0, Llyk;->c:I

    new-array v2, v3, [Llvk;

    sget-object v5, Llvk;->c:Llvk;

    const/4 v6, 0x0

    aput-object v5, v2, v6

    sget-object v5, Llvk;->e:Llvk;

    aput-object v5, v2, p1

    invoke-static {v2}, Lljr;->az([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    sget-object v5, Llul;->c:Llul;

    invoke-static {}, Lafc;->l()Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n      SELECT * FROM ResourceEntity\n      WHERE\n        status_uploadState IN ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v7

    invoke-static {v6, v7}, Lafc;->m(Ljava/lang/StringBuilder;I)V

    const-string v8, ")\n        AND status_airlockFileState IS ?\n        AND namespaceId IS NOT NULL\n        AND partitionId IS NOT NULL\n      ORDER BY status_uploadToF250RequestedEpochTimestamp ASC\n      LIMIT 1\n    "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/2addr v7, p1

    invoke-static {v6, v7}, Lapy;->a(Ljava/lang/String;I)Lapy;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v8, 0x1

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Llvk;

    invoke-static {v9}, Llyc;->w(Llvk;)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v6, v8, v9, v10}, Lapy;->e(IJ)V

    add-int/2addr v8, p1

    goto :goto_1

    :cond_1
    invoke-static {v5}, Llyc;->a(Llul;)I

    move-result v2

    int-to-long v8, v2

    invoke-virtual {v6, v7, v8, v9}, Lapy;->e(IJ)V

    invoke-static {}, Lafj;->g()Landroid/os/CancellationSignal;

    move-result-object v2

    move-object v5, p0

    check-cast v5, Llys;

    iget-object v7, v5, Llys;->a:Lapt;

    new-instance v8, Llyq;

    invoke-direct {v8, v5, v6}, Llyq;-><init>(Llys;Lapy;)V

    invoke-static {v7, p1, v2, v8, v0}, Ladr;->b(Lapt;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v1, :cond_3

    :goto_2
    check-cast p1, Llyg;

    if-nez p1, :cond_2

    return-object v4

    :cond_2
    iget-object v2, p1, Llyg;->a:Llyf;

    iget-object p1, p1, Llyg;->b:Ljava/util/List;

    iget-wide v5, v2, Llyf;->u:J

    iput-object v2, v0, Llyk;->a:Ljava/lang/Object;

    iput-object p1, v0, Llyk;->d:Ljava/util/List;

    iput v3, v0, Llyk;->c:I

    sget-object v3, Llvk;->d:Llvk;

    invoke-virtual {p0, v5, v6, v3, v0}, Llyl;->f(JLlvk;Loku;)Ljava/lang/Object;

    move-result-object p0

    if-eq p0, v1, :cond_3

    move-object p0, p1

    move-object v0, v2

    :goto_3
    iget-object v5, v0, Llyf;->t:Llwz;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Llvk;->d:Llvk;

    const-wide/16 v10, 0x0

    const/16 v12, 0x2f

    invoke-static/range {v5 .. v12}, Llwz;->a(Llwz;Lnyy;Lnyy;Llul;Llvk;DI)Llwz;

    move-result-object p1

    const v1, 0x2fffff

    invoke-static {v0, v4, v4, p1, v1}, Llyf;->c(Llyf;Lluq;Ljava/lang/String;Llwz;I)Llyf;

    move-result-object p1

    new-instance v0, Llyg;

    invoke-direct {v0, p1, p0}, Llyg;-><init>(Llyf;Ljava/util/List;)V

    return-object v0

    :cond_3
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Loku;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public c(Loku;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public abstract e(Llvk;Loku;)Ljava/lang/Object;
.end method

.method public abstract f(JLlvk;Loku;)Ljava/lang/Object;
.end method
