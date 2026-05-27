.class public final Lmai;
.super Ljava/lang/Object;


# instance fields
.field private final a:Llzz;

.field private final b:Llww;

.field private final c:Llzx;

.field private final d:Lmaf;


# direct methods
.method public constructor <init>(Llzz;Llww;Llzx;Lmaf;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmai;->a:Llzz;

    iput-object p2, p0, Lmai;->b:Llww;

    iput-object p3, p0, Lmai;->c:Llzx;

    iput-object p4, p0, Lmai;->d:Lmaf;

    return-void
.end method

.method public static synthetic a(Lmai;Llzy;Ljava/util/List;Laxf;Loku;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    instance-of v3, v2, Lmah;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lmah;

    iget v4, v3, Lmah;->i:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lmah;->i:I

    goto :goto_0

    :cond_0
    new-instance v3, Lmah;

    invoke-direct {v3, v0, v2}, Lmah;-><init>(Lmai;Loku;)V

    :goto_0
    iget-object v2, v3, Lmah;->g:Ljava/lang/Object;

    sget-object v4, Lolc;->a:Lolc;

    iget v5, v3, Lmah;->i:I

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v3, Lmah;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, v3, Lmah;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v3, v3, Lmah;->a:Ljava/lang/Object;

    check-cast v3, Llzy;

    invoke-static {v2}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_1
    iget-object v0, v3, Lmah;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v2}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_2
    iget-object v1, v3, Lmah;->k:Lodt;

    iget-object v5, v3, Lmah;->j:Lmah;

    iget-object v0, v3, Lmah;->f:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Llzz;

    iget-object v0, v3, Lmah;->e:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Ljava/util/List;

    iget-object v0, v3, Lmah;->d:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/util/List;

    iget-object v0, v3, Lmah;->c:Ljava/lang/Object;

    check-cast v0, Laxf;

    iget-object v10, v3, Lmah;->b:Ljava/lang/Object;

    check-cast v10, Llzy;

    iget-object v11, v3, Lmah;->a:Ljava/lang/Object;

    check-cast v11, Lmai;

    :try_start_0
    invoke-static {v2}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v0

    move-object v0, v8

    move-object v1, v9

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :pswitch_3
    iget-object v0, v3, Lmah;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v2}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_4
    iget-object v0, v3, Lmah;->f:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lodt;

    iget-object v0, v3, Lmah;->e:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Llzz;

    iget-object v0, v3, Lmah;->d:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/util/List;

    iget-object v0, v3, Lmah;->c:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Ljava/util/List;

    iget-object v0, v3, Lmah;->b:Ljava/lang/Object;

    check-cast v0, Lmad;

    iget-object v9, v3, Lmah;->a:Ljava/lang/Object;

    check-cast v9, Llzy;

    :try_start_1
    invoke-static {v2}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    goto/16 :goto_4

    :pswitch_5
    iget-object v0, v3, Lmah;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    iget-object v1, v3, Lmah;->d:Ljava/lang/Object;

    check-cast v1, Lmai;

    iget-object v5, v3, Lmah;->c:Ljava/lang/Object;

    check-cast v5, Laxf;

    iget-object v7, v3, Lmah;->b:Ljava/lang/Object;

    check-cast v7, Llzy;

    iget-object v8, v3, Lmah;->a:Ljava/lang/Object;

    check-cast v8, Lmai;

    invoke-static {v2}, Lljr;->aO(Ljava/lang/Object;)V

    move-object/from16 v16, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v7

    move-object/from16 v7, v16

    goto :goto_1

    :pswitch_6
    invoke-static {v2}, Lljr;->aO(Ljava/lang/Object;)V

    sget-object v2, Llvk;->b:Llvk;

    invoke-static {v2}, Lljr;->S(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    iget-object v5, v0, Lmai;->d:Lmaf;

    iput-object v0, v3, Lmah;->a:Ljava/lang/Object;

    iput-object v1, v3, Lmah;->b:Ljava/lang/Object;

    move-object/from16 v7, p3

    iput-object v7, v3, Lmah;->c:Ljava/lang/Object;

    iput-object v0, v3, Lmah;->d:Ljava/lang/Object;

    iput-object v2, v3, Lmah;->e:Ljava/lang/Object;

    const/4 v8, 0x1

    iput v8, v3, Lmah;->i:I

    move-object/from16 v8, p2

    invoke-virtual {v5, v1, v8, v3}, Lmaf;->a(Llzy;Ljava/util/List;Loku;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v4, :cond_10

    move-object v8, v0

    move-object/from16 v16, v7

    move-object v7, v5

    move-object/from16 v5, v16

    :goto_1
    check-cast v7, Lmad;

    iget-object v9, v7, Lmad;->b:Ljava/lang/Throwable;

    if-eqz v9, :cond_4

    iget-object v2, v7, Lmad;->a:Ljava/util/Map;

    sget-object v5, Llvk;->f:Llvk;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lkwp;->t(Ljava/util/List;)Lojd;

    move-result-object v2

    iget-object v5, v2, Lojd;->a:Ljava/lang/Object;

    move-object v8, v5

    check-cast v8, Ljava/util/List;

    iget-object v2, v2, Lojd;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v5, v0, Lmai;->a:Llzz;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Lodt;->q:Lodt;

    goto :goto_2

    :cond_1
    sget-object v9, Lodt;->s:Lodt;

    :goto_2
    :try_start_2
    iget-object v0, v0, Lmai;->b:Llww;

    iput-object v1, v3, Lmah;->a:Ljava/lang/Object;

    iput-object v7, v3, Lmah;->b:Ljava/lang/Object;

    iput-object v8, v3, Lmah;->c:Ljava/lang/Object;

    iput-object v2, v3, Lmah;->d:Ljava/lang/Object;

    iput-object v5, v3, Lmah;->e:Ljava/lang/Object;

    iput-object v9, v3, Lmah;->f:Ljava/lang/Object;

    const/4 v10, 0x2

    iput v10, v3, Lmah;->i:I

    invoke-virtual {v0, v8, v2, v3}, Llww;->a(Ljava/util/List;Ljava/util/List;Loku;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v0, v4, :cond_2

    return-object v4

    :cond_2
    move-object v0, v7

    :goto_3
    iget-object v0, v0, Lmad;->b:Ljava/lang/Throwable;

    throw v0

    :catchall_2
    move-exception v0

    move-object v7, v2

    move-object/from16 v16, v9

    move-object v9, v1

    move-object/from16 v1, v16

    :goto_4
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_3

    invoke-virtual {v9, v8, v7, v1, v0}, Llzy;->a(Ljava/util/Collection;Ljava/util/Collection;Lodt;Ljava/lang/Throwable;)Llur;

    move-result-object v1

    iput-object v0, v3, Lmah;->a:Ljava/lang/Object;

    iput-object v6, v3, Lmah;->b:Ljava/lang/Object;

    iput-object v6, v3, Lmah;->c:Ljava/lang/Object;

    iput-object v6, v3, Lmah;->d:Ljava/lang/Object;

    iput-object v6, v3, Lmah;->e:Ljava/lang/Object;

    iput-object v6, v3, Lmah;->f:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, v3, Lmah;->i:I

    invoke-virtual {v5, v1, v3}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_3

    return-object v4

    :cond_3
    :goto_5
    throw v0

    :cond_4
    instance-of v0, v2, Ljava/util/Collection;

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_f

    :cond_5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Llvk;

    iget-object v10, v7, Lmad;->a:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Llvk;

    iget-object v10, v7, Lmad;->a:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-nez v9, :cond_7

    sget-object v9, Lojx;->a:Lojx;

    :cond_7
    invoke-static {v0, v9}, Lljr;->an(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_6

    :cond_8
    invoke-static {v0}, Lkwp;->t(Ljava/util/List;)Lojd;

    move-result-object v0

    iget-object v2, v0, Lojd;->a:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Ljava/util/List;

    iget-object v0, v0, Lojd;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    iget-object v7, v8, Lmai;->a:Llzz;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lodt;->q:Lodt;

    goto :goto_7

    :cond_9
    sget-object v0, Lodt;->s:Lodt;

    :goto_7
    move-object v10, v0

    :try_start_3
    iget-object v0, v8, Lmai;->b:Llww;

    iget-object v11, v1, Llzy;->a:Lnyy;

    iput-object v8, v3, Lmah;->a:Ljava/lang/Object;

    iput-object v1, v3, Lmah;->b:Ljava/lang/Object;

    iput-object v5, v3, Lmah;->c:Ljava/lang/Object;

    iput-object v9, v3, Lmah;->d:Ljava/lang/Object;

    iput-object v2, v3, Lmah;->e:Ljava/lang/Object;

    iput-object v7, v3, Lmah;->f:Ljava/lang/Object;

    iput-object v3, v3, Lmah;->j:Lmah;

    iput-object v10, v3, Lmah;->k:Lodt;

    const/4 v12, 0x4

    iput v12, v3, Lmah;->i:I

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v9}, Lljr;->ao(Ljava/lang/Iterable;)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Llyf;

    iget-wide v14, v14, Llyf;->u:J

    invoke-static {v14, v15}, Lolp;->e(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_a
    sget-object v13, Llvk;->c:Llvk;

    invoke-virtual {v0, v12, v13, v11, v3}, Llww;->c(Ljava/util/List;Llvk;Lnyy;Loku;)Ljava/lang/Object;

    move-result-object v0

    sget-object v11, Lolc;->a:Lolc;

    if-ne v0, v11, :cond_b

    goto :goto_9

    :cond_b
    sget-object v0, Lojk;->a:Lojk;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_9
    if-eq v0, v4, :cond_d

    move-object v10, v1

    move-object v0, v2

    move-object v11, v8

    move-object v1, v9

    :goto_a
    iget-object v2, v11, Lmai;->c:Llzx;

    iput-object v10, v3, Lmah;->a:Ljava/lang/Object;

    iput-object v1, v3, Lmah;->b:Ljava/lang/Object;

    iput-object v0, v3, Lmah;->c:Ljava/lang/Object;

    iput-object v6, v3, Lmah;->d:Ljava/lang/Object;

    iput-object v6, v3, Lmah;->e:Ljava/lang/Object;

    iput-object v6, v3, Lmah;->f:Ljava/lang/Object;

    iput-object v6, v3, Lmah;->j:Lmah;

    iput-object v6, v3, Lmah;->k:Lodt;

    const/4 v7, 0x6

    iput v7, v3, Lmah;->i:I

    invoke-interface {v2, v10, v5, v3}, Llzx;->b(Llzy;Laxf;Loku;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v4, :cond_d

    move-object v3, v10

    :goto_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lljr;->ao(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llyf;

    iget-object v7, v4, Llyf;->t:Llwz;

    sget-object v11, Llvk;->c:Llvk;

    iget-object v8, v3, Llzy;->a:Lnyy;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    const/16 v14, 0x2d

    invoke-static/range {v7 .. v14}, Llwz;->a(Llwz;Lnyy;Lnyy;Llul;Llvk;DI)Llwz;

    move-result-object v5

    const v7, 0x2fffff

    invoke-static {v4, v6, v6, v5, v7}, Llyf;->c(Llyf;Lluq;Ljava/lang/String;Llwz;I)Llyf;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_c
    invoke-static {v2, v0}, Lljr;->aM(Ljava/lang/Object;Ljava/lang/Object;)Lojd;

    move-result-object v0

    goto :goto_10

    :cond_d
    return-object v4

    :catchall_3
    move-exception v0

    move-object v8, v2

    move-object v5, v3

    move-object/from16 v16, v10

    move-object v10, v1

    move-object/from16 v1, v16

    :goto_d
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_e

    invoke-virtual {v10, v9, v8, v1, v0}, Llzy;->a(Ljava/util/Collection;Ljava/util/Collection;Lodt;Ljava/lang/Throwable;)Llur;

    move-result-object v1

    iput-object v0, v3, Lmah;->a:Ljava/lang/Object;

    iput-object v6, v3, Lmah;->b:Ljava/lang/Object;

    iput-object v6, v3, Lmah;->c:Ljava/lang/Object;

    iput-object v6, v3, Lmah;->d:Ljava/lang/Object;

    iput-object v6, v3, Lmah;->e:Ljava/lang/Object;

    iput-object v6, v3, Lmah;->f:Ljava/lang/Object;

    iput-object v6, v3, Lmah;->j:Lmah;

    iput-object v6, v3, Lmah;->k:Lodt;

    const/4 v2, 0x5

    iput v2, v3, Lmah;->i:I

    invoke-virtual {v7, v1, v5}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_e

    return-object v4

    :cond_e
    :goto_e
    throw v0

    :cond_f
    :goto_f
    sget-object v0, Lojx;->a:Lojx;

    invoke-static {v0, v0}, Lljr;->aM(Ljava/lang/Object;Ljava/lang/Object;)Lojd;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_10
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
