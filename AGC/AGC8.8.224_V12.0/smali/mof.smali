.class public final Lmof;
.super Ljava/lang/Object;

# interfaces
.implements Lotu;


# instance fields
.field final synthetic a:Lomo;

.field final synthetic b:Lotd;

.field final synthetic c:Loxv;

.field private d:I


# direct methods
.method public constructor <init>(Lotd;Loxv;Lomo;)V
    .locals 0

    iput-object p1, p0, Lmof;->b:Lotd;

    iput-object p2, p0, Lmof;->c:Loxv;

    iput-object p3, p0, Lmof;->a:Lomo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Loku;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget v5, v0, Lmof;->d:I

    add-int/lit8 v1, v5, 0x1

    iput v1, v0, Lmof;->d:I

    if-ltz v5, :cond_13

    iget-object v7, v0, Lmof;->b:Lotd;

    new-instance v8, Lmoe;

    iget-object v2, v0, Lmof;->a:Lomo;

    const/4 v6, 0x0

    move-object v1, v8

    move-object/from16 v3, p1

    move-object v4, v7

    invoke-direct/range {v1 .. v6}, Lmoe;-><init>(Lomo;Ljava/lang/Object;Lotd;ILoku;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v7, v2, v8, v1}, Lone;->j(Lopu;Lola;Lomo;I)Lora;

    iget-object v1, v0, Lmof;->c:Loxv;

    iget-object v3, v1, Loxv;->c:Loon;

    invoke-virtual {v3}, Loon;->a()I

    move-result v3

    if-lez v3, :cond_0

    sget-object v1, Lojk;->a:Lojk;

    goto/16 :goto_6

    :cond_0
    invoke-static/range {p2 .. p2}, Lolp;->g(Loku;)Loku;

    move-result-object v3

    invoke-static {v3}, Lonm;->n(Loku;)Lopa;

    move-result-object v3

    :goto_0
    iget-object v4, v1, Loxv;->a:Loop;

    iget-object v4, v4, Loop;->a:Ljava/lang/Object;

    check-cast v4, Lowe;

    iget-object v5, v1, Loxv;->b:Looo;

    invoke-virtual {v5}, Looo;->b()J

    move-result-wide v5

    iget-object v7, v1, Loxv;->a:Loop;

    sget v8, Loxw;->f:I

    int-to-long v8, v8

    div-long v8, v5, v8

    :goto_1
    move-object v10, v4

    :goto_2
    iget-wide v11, v10, Lowe;->b:J

    cmp-long v13, v11, v8

    if-ltz v13, :cond_1

    invoke-virtual {v10}, Lowe;->g()Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    invoke-virtual {v10}, Lowe;->a()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lowd;->a:Loxb;

    if-ne v11, v12, :cond_f

    move-object v10, v12

    :cond_2
    invoke-static {v10}, Lowz;->a(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-static {v10}, Lowz;->b(Ljava/lang/Object;)Lowe;

    move-result-object v11

    :goto_3
    iget-object v12, v7, Loop;->a:Ljava/lang/Object;

    check-cast v12, Lowe;

    iget-wide v13, v12, Lowe;->b:J

    move-object/from16 p2, v3

    iget-wide v2, v11, Lowe;->b:J

    cmp-long v15, v13, v2

    if-ltz v15, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v11}, Lowe;->h()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v3, p2

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v7, v12, v11}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v12}, Lowe;->f()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v12}, Lowe;->c()V

    goto :goto_4

    :cond_5
    invoke-virtual {v11}, Lowe;->f()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v11}, Lowe;->c()V

    :cond_6
    move-object/from16 v3, p2

    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    move-object/from16 p2, v3

    :cond_8
    :goto_4
    invoke-static {v10}, Lowz;->b(Ljava/lang/Object;)Lowe;

    move-result-object v2

    sget v3, Loxw;->f:I

    int-to-long v3, v3

    rem-long/2addr v5, v3

    long-to-int v3, v5

    iget-object v4, v2, Lowe;->d:Llhz;

    invoke-virtual {v4, v3}, Llhz;->o(I)Loop;

    move-result-object v4

    move-object/from16 v12, p2

    const/4 v13, 0x0

    invoke-virtual {v4, v13, v12}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v1, Loxu;

    invoke-direct {v1, v2, v3}, Loxu;-><init>(Lowe;I)V

    invoke-interface {v12, v1}, Looz;->a(Lomk;)V

    goto :goto_5

    :cond_9
    sget-object v4, Loxw;->b:Loxb;

    sget-object v5, Loxw;->c:Loxb;

    iget-object v2, v2, Lowe;->d:Llhz;

    invoke-virtual {v2, v3}, Llhz;->o(I)Loop;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lojk;->a:Lojk;

    iget-object v1, v1, Loxv;->d:Lomk;

    invoke-interface {v12, v2, v1}, Looz;->b(Ljava/lang/Object;Lomk;)V

    goto :goto_5

    :cond_a
    sget-boolean v2, Lopw;->a:Z

    iget-object v2, v1, Loxv;->c:Loon;

    invoke-virtual {v2}, Loon;->a()I

    move-result v2

    if-lez v2, :cond_e

    sget-object v2, Lojk;->a:Lojk;

    iget-object v1, v1, Loxv;->d:Lomk;

    invoke-interface {v12, v2, v1}, Looz;->b(Ljava/lang/Object;Lomk;)V

    :goto_5
    invoke-virtual {v12}, Lopa;->m()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lolc;->a:Lolc;

    if-eq v1, v2, :cond_b

    sget-object v1, Lojk;->a:Lojk;

    :cond_b
    if-eq v1, v2, :cond_c

    sget-object v1, Lojk;->a:Lojk;

    :cond_c
    :goto_6
    sget-object v2, Lolc;->a:Lolc;

    if-ne v1, v2, :cond_d

    return-object v1

    :cond_d
    sget-object v1, Lojk;->a:Lojk;

    return-object v1

    :cond_e
    move-object v3, v12

    move-object v2, v13

    goto/16 :goto_0

    :cond_f
    move-object v13, v2

    move-object v12, v3

    check-cast v11, Lowe;

    if-eqz v11, :cond_10

    move-object v10, v11

    move-object v3, v12

    move-object v2, v13

    goto/16 :goto_2

    :cond_10
    iget-wide v2, v10, Lowe;->b:J

    const-wide/16 v14, 0x1

    add-long/2addr v2, v14

    invoke-static {v2, v3, v10}, Loxw;->a(JLowe;)Lowe;

    move-result-object v2

    invoke-virtual {v10, v2}, Lowe;->e(Lowe;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v10}, Lowe;->g()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v10}, Lowe;->c()V

    :cond_11
    move-object v10, v2

    move-object v3, v12

    move-object v2, v13

    goto/16 :goto_2

    :cond_12
    move-object v3, v12

    move-object v2, v13

    goto/16 :goto_2

    :cond_13
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Index overflow has happened"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw v1

    :goto_8
    goto :goto_7
.end method
