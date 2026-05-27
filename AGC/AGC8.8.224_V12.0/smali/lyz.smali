.class public abstract Llyz;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic b(Llyz;Llyf;Loku;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Llyu;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Llyu;

    iget v1, v0, Llyu;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Llyu;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Llyu;

    invoke-direct {v0, p0, p2}, Llyu;-><init>(Llyz;Loku;)V

    :goto_0
    iget-object p2, v0, Llyu;->a:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Llyu;->b:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    iget-object p1, v0, Llyu;->c:Llyf;

    iget-object p0, v0, Llyu;->e:Llzn;

    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    iget-wide v4, p1, Llyf;->u:J

    sget-object p2, Llvk;->f:Llvk;

    move-object v2, p0

    check-cast v2, Llzn;

    iput-object v2, v0, Llyu;->e:Llzn;

    iput-object p1, v0, Llyu;->c:Llyf;

    iput v3, v0, Llyu;->b:I

    invoke-virtual {p0, v4, v5, p2, v0}, Llyz;->n(JLlvk;Loku;)Ljava/lang/Object;

    move-result-object p2

    if-eq p2, v1, :cond_2

    :goto_1
    iget-wide v8, p1, Llyf;->u:J

    const/4 p1, 0x0

    iput-object p1, v0, Llyu;->e:Llzn;

    iput-object p1, v0, Llyu;->c:Llyf;

    const/4 p1, 0x2

    iput p1, v0, Llyu;->b:I

    sget-object v7, Llvk;->f:Llvk;

    new-array p1, p1, [Lluo;

    sget-object p2, Lluo;->a:Lluo;

    const/4 v2, 0x0

    aput-object p2, p1, v2

    sget-object p2, Lluo;->b:Lluo;

    aput-object p2, p1, v3

    invoke-static {p1}, Lljr;->az([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    move-object v5, p0

    check-cast v5, Llzn;

    iget-object p0, v5, Llzn;->a:Lapt;

    new-instance p1, Llzf;

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Llzf;-><init>(Llzn;Ljava/util/Set;Llvk;J)V

    invoke-static {p0, p1, v0}, Ladr;->c(Lapt;Ljava/util/concurrent/Callable;Loku;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_1

    return-object v1

    :cond_1
    :goto_2
    sget-object p0, Lojk;->a:Lojk;

    return-object p0

    :cond_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic d(Llyz;Llyf;Llwq;Loku;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p3, Llyv;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Llyv;

    iget v1, v0, Llyv;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Llyv;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Llyv;

    invoke-direct {v0, p0, p3}, Llyv;-><init>(Llyz;Loku;)V

    :goto_0
    iget-object p3, v0, Llyv;->a:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Llyv;->b:I

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    iget-object p2, v0, Llyv;->c:Llwq;

    iget-object p0, v0, Llyv;->e:Llzn;

    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    iget-wide v2, p1, Llyf;->u:J

    sget-object p1, Llvk;->e:Llvk;

    move-object p3, p0

    check-cast p3, Llzn;

    iput-object p3, v0, Llyv;->e:Llzn;

    iput-object p2, v0, Llyv;->c:Llwq;

    const/4 p3, 0x1

    iput p3, v0, Llyv;->b:I

    invoke-virtual {p0, v2, v3, p1, v0}, Llyz;->n(JLlvk;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v1, :cond_2

    :goto_1
    iget-object v2, p2, Llwq;->j:Llwz;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Llvk;->e:Llvk;

    const-wide/16 v7, 0x0

    const/16 v9, 0x2f

    invoke-static/range {v2 .. v9}, Llwz;->a(Llwz;Lnyy;Lnyy;Llul;Llvk;DI)Llwz;

    move-result-object p1

    const/16 p3, 0x5ff

    const/4 v2, 0x0

    invoke-static {p2, v2, v2, p1, p3}, Llwq;->a(Llwq;Ljava/lang/String;Ljava/lang/String;Llwz;I)Llwq;

    move-result-object p1

    iput-object v2, v0, Llyv;->e:Llzn;

    iput-object v2, v0, Llyv;->c:Llwq;

    const/4 p2, 0x2

    iput p2, v0, Llyv;->b:I

    invoke-virtual {p0, p1, v0}, Llyz;->g(Llwq;Loku;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_1

    return-object v1

    :cond_1
    :goto_2
    sget-object p0, Lojk;->a:Lojk;

    return-object p0

    :cond_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic k(Llyz;Llyf;Llwq;ZLomk;Loku;)Ljava/lang/Object;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p5

    instance-of v2, v1, Llyx;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Llyx;

    iget v3, v2, Llyx;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Llyx;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Llyx;

    invoke-direct {v2, p0, v1}, Llyx;-><init>(Llyz;Loku;)V

    :goto_0
    iget-object v1, v2, Llyx;->d:Ljava/lang/Object;

    sget-object v3, Lolc;->a:Lolc;

    iget v4, v2, Llyx;->e:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-wide v3, v2, Llyx;->c:D

    iget-boolean v0, v2, Llyx;->b:Z

    iget-object v2, v2, Llyx;->a:Ljava/lang/Object;

    check-cast v2, Llyf;

    invoke-static {v1}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_1
    iget-wide v7, v2, Llyx;->c:D

    iget-boolean v0, v2, Llyx;->b:Z

    iget-object v4, v2, Llyx;->f:Llyf;

    iget-object v9, v2, Llyx;->a:Ljava/lang/Object;

    check-cast v9, Llyz;

    invoke-static {v1}, Lljr;->aO(Ljava/lang/Object;)V

    move-wide v10, v7

    goto/16 :goto_3

    :pswitch_2
    iget-boolean v0, v2, Llyx;->b:Z

    iget-object v4, v2, Llyx;->g:Lomk;

    iget-object v7, v2, Llyx;->f:Llyf;

    iget-object v8, v2, Llyx;->a:Ljava/lang/Object;

    check-cast v8, Llyz;

    invoke-static {v1}, Lljr;->aO(Ljava/lang/Object;)V

    move-object v9, v8

    goto :goto_2

    :pswitch_3
    iget-boolean v0, v2, Llyx;->b:Z

    iget-object v4, v2, Llyx;->g:Lomk;

    iget-object v7, v2, Llyx;->f:Llyf;

    iget-object v8, v2, Llyx;->a:Ljava/lang/Object;

    check-cast v8, Llyz;

    invoke-static {v1}, Lljr;->aO(Ljava/lang/Object;)V

    move-object v1, v7

    move v7, v0

    move-object v0, v8

    goto :goto_1

    :pswitch_4
    invoke-static {v1}, Lljr;->aO(Ljava/lang/Object;)V

    iput-object v0, v2, Llyx;->a:Ljava/lang/Object;

    move-object/from16 v1, p1

    iput-object v1, v2, Llyx;->f:Llyf;

    move-object/from16 v4, p4

    iput-object v4, v2, Llyx;->g:Lomk;

    move/from16 v7, p3

    iput-boolean v7, v2, Llyx;->b:Z

    iput v5, v2, Llyx;->e:I

    move-object/from16 v8, p2

    invoke-virtual {p0, v8, v2}, Llyz;->g(Llwq;Loku;)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, v3, :cond_4

    :goto_1
    iget-wide v8, v1, Llyf;->u:J

    iput-object v0, v2, Llyx;->a:Ljava/lang/Object;

    iput-object v1, v2, Llyx;->f:Llyf;

    iput-object v4, v2, Llyx;->g:Lomk;

    iput-boolean v7, v2, Llyx;->b:Z

    const/4 v10, 0x2

    iput v10, v2, Llyx;->e:I

    invoke-virtual {v0, v8, v9, v2}, Llyz;->f(JLoku;)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, v3, :cond_4

    move-object v9, v0

    move v0, v7

    move-object v7, v1

    move-object v1, v8

    :goto_2
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    invoke-static {v10, v11}, Lolp;->d(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v4, v1}, Lomk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    iget-wide v12, v7, Llyf;->u:J

    iput-object v9, v2, Llyx;->a:Ljava/lang/Object;

    iput-object v7, v2, Llyx;->f:Llyf;

    iput-object v6, v2, Llyx;->g:Lomk;

    iput-boolean v0, v2, Llyx;->b:Z

    iput-wide v10, v2, Llyx;->c:D

    const/4 v1, 0x3

    iput v1, v2, Llyx;->e:I

    move-object p0, v9

    move-wide/from16 p1, v12

    move-wide/from16 p3, v10

    move-object/from16 p5, v2

    invoke-virtual/range {p0 .. p5}, Llyz;->i(JDLoku;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v3, :cond_4

    move-object v4, v7

    :goto_3
    if-eqz v0, :cond_2

    iget-wide v7, v4, Llyf;->u:J

    sget-object v1, Llvk;->e:Llvk;

    iput-object v4, v2, Llyx;->a:Ljava/lang/Object;

    iput-object v6, v2, Llyx;->f:Llyf;

    iput-boolean v5, v2, Llyx;->b:Z

    iput-wide v10, v2, Llyx;->c:D

    const/4 v5, 0x4

    iput v5, v2, Llyx;->e:I

    invoke-virtual {v9, v7, v8, v1, v2}, Llyz;->n(JLlvk;Loku;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v3, :cond_1

    move-object v2, v4

    move-wide v3, v10

    :goto_4
    move-wide v12, v3

    move-object v4, v2

    goto :goto_5

    :cond_1
    return-object v3

    :cond_2
    move-wide v12, v10

    :goto_5
    iget-object v7, v4, Llyf;->t:Llwz;

    if-eqz v0, :cond_3

    sget-object v0, Llvk;->e:Llvk;

    move-object v11, v0

    goto :goto_6

    :cond_3
    iget-object v0, v7, Llwz;->e:Llvk;

    move-object v11, v0

    :goto_6
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v14, 0xf

    invoke-static/range {v7 .. v14}, Llwz;->a(Llwz;Lnyy;Lnyy;Llul;Llvk;DI)Llwz;

    move-result-object v0

    const v1, 0x2fffff

    invoke-static {v4, v6, v6, v0, v1}, Llyf;->c(Llyf;Lluq;Ljava/lang/String;Llwz;I)Llyf;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic o(Llyz;Llyf;Llwq;Lomk;Loku;)Ljava/lang/Object;
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Llyz;->j(Llyf;Llwq;ZLomk;Loku;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Llyf;Loku;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public c(Llyf;Llwq;Loku;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public abstract e(JDLlvk;Loku;)Ljava/lang/Object;
.end method

.method public abstract f(JLoku;)Ljava/lang/Object;
.end method

.method public abstract g(Llwq;Loku;)Ljava/lang/Object;
.end method

.method public final h(Llyf;DLoku;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p4, Llyw;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Llyw;

    iget v1, v0, Llyw;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Llyw;->d:I

    move-object v6, v0

    goto :goto_0

    :cond_0
    new-instance v0, Llyw;

    invoke-direct {v0, p0, p4}, Llyw;-><init>(Llyz;Loku;)V

    move-object v6, v0

    :goto_0
    iget-object p4, v6, Llyw;->b:Ljava/lang/Object;

    sget-object v0, Lolc;->a:Lolc;

    iget v1, v6, Llyw;->d:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-wide p2, v6, Llyw;->a:D

    iget-object p1, v6, Llyw;->e:Llyf;

    invoke-static {p4}, Lljr;->aO(Ljava/lang/Object;)V

    move-wide v5, p2

    goto :goto_1

    :pswitch_1
    invoke-static {p4}, Lljr;->aO(Ljava/lang/Object;)V

    iget-wide v2, p1, Llyf;->u:J

    iput-object p1, v6, Llyw;->e:Llyf;

    iput-wide p2, v6, Llyw;->a:D

    const/4 p4, 0x1

    iput p4, v6, Llyw;->d:I

    move-object v1, p0

    move-wide v4, p2

    invoke-virtual/range {v1 .. v6}, Llyz;->i(JDLoku;)Ljava/lang/Object;

    move-result-object p4

    if-eq p4, v0, :cond_1

    move-wide v5, p2

    :goto_1
    iget-object v0, p1, Llyf;->t:Llwz;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x1f

    invoke-static/range {v0 .. v7}, Llwz;->a(Llwz;Lnyy;Lnyy;Llul;Llvk;DI)Llwz;

    move-result-object p2

    const p3, 0x2fffff

    const/4 p4, 0x0

    invoke-static {p1, p4, p4, p2, p3}, Llyf;->c(Llyf;Lluq;Ljava/lang/String;Llwz;I)Llyf;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract i(JDLoku;)Ljava/lang/Object;
.end method

.method public j(Llyf;Llwq;ZLomk;Loku;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final l(Llyf;Ljava/lang/String;Loku;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Llyy;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Llyy;

    iget v1, v0, Llyy;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Llyy;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Llyy;

    invoke-direct {v0, p0, p3}, Llyy;-><init>(Llyz;Loku;)V

    :goto_0
    iget-object p3, v0, Llyy;->a:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Llyy;->c:I

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object p2, v0, Llyy;->e:Ljava/lang/String;

    iget-object p1, v0, Llyy;->d:Llyf;

    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    iget-wide v2, p1, Llyf;->u:J

    iput-object p1, v0, Llyy;->d:Llyf;

    iput-object p2, v0, Llyy;->e:Ljava/lang/String;

    const/4 p3, 0x1

    iput p3, v0, Llyy;->c:I

    invoke-virtual {p0, v2, v3, p2, v0}, Llyz;->m(JLjava/lang/String;Loku;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_1

    return-object v1

    :cond_1
    :goto_1
    const/4 p3, 0x0

    const v0, 0x3effff

    invoke-static {p1, p3, p2, p3, v0}, Llyf;->c(Llyf;Lluq;Ljava/lang/String;Llwz;I)Llyf;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract m(JLjava/lang/String;Loku;)Ljava/lang/Object;
.end method

.method public abstract n(JLlvk;Loku;)Ljava/lang/Object;
.end method

.method public final p(Llyf;Lluq;Lnyy;Loku;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p4, Llyt;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Llyt;

    iget v1, v0, Llyt;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Llyt;->c:I

    move-object v7, v0

    goto :goto_0

    :cond_0
    new-instance v0, Llyt;

    invoke-direct {v0, p0, p4}, Llyt;-><init>(Llyz;Loku;)V

    move-object v7, v0

    :goto_0
    iget-object p4, v7, Llyt;->a:Ljava/lang/Object;

    sget-object v0, Lolc;->a:Lolc;

    iget v1, v7, Llyt;->c:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object p3, v7, Llyt;->e:Lnyy;

    iget-object p2, v7, Llyt;->f:Lluq;

    iget-object p1, v7, Llyt;->d:Llyf;

    invoke-static {p4}, Lljr;->aO(Ljava/lang/Object;)V

    move-object v2, p3

    goto :goto_1

    :pswitch_1
    invoke-static {p4}, Lljr;->aO(Ljava/lang/Object;)V

    iget-wide v2, p1, Llyf;->u:J

    iput-object p1, v7, Llyt;->d:Llyf;

    iput-object p2, v7, Llyt;->f:Lluq;

    iput-object p3, v7, Llyt;->e:Lnyy;

    const/4 p4, 0x1

    iput p4, v7, Llyt;->c:I

    sget-object v6, Llvk;->g:Llvk;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v7}, Llyz;->q(JLluq;Lnyy;Llvk;Loku;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v0, :cond_1

    return-object v0

    :cond_1
    move-object v2, p3

    :goto_1
    iget-object v0, p1, Llyf;->t:Llwz;

    const/4 v1, 0x0

    const/4 v3, 0x0

    sget-object v4, Llvk;->g:Llvk;

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/16 v7, 0xb

    invoke-static/range {v0 .. v7}, Llwz;->a(Llwz;Lnyy;Lnyy;Llul;Llvk;DI)Llwz;

    move-result-object p3

    const/4 p4, 0x0

    const v0, 0x2ffeff

    invoke-static {p1, p2, p4, p3, v0}, Llyf;->c(Llyf;Lluq;Ljava/lang/String;Llwz;I)Llyf;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract q(JLluq;Lnyy;Llvk;Loku;)Ljava/lang/Object;
.end method
