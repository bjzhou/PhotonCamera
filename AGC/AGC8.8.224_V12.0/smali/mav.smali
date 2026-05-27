.class public final Lmav;
.super Ljava/lang/Object;

# interfaces
.implements Llzx;


# instance fields
.field private final a:Llzz;

.field private final b:Lkrn;

.field private final c:Loja;


# direct methods
.method public constructor <init>(Logd;Llzz;Lkrn;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmav;->a:Llzz;

    iput-object p3, p0, Lmav;->b:Lkrn;

    new-instance p2, Lmau;

    invoke-direct {p2, p1}, Lmau;-><init>(Logd;)V

    invoke-static {p2}, Lljr;->aP(Lolz;)Loja;

    move-result-object p1

    iput-object p1, p0, Lmav;->c:Loja;

    return-void
.end method

.method private final d()Laxw;
    .locals 1

    iget-object v0, p0, Lmav;->c:Loja;

    invoke-interface {v0}, Loja;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxw;

    return-object v0
.end method


# virtual methods
.method public final a(Llzy;Lnyy;Loku;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    instance-of v2, v0, Lmas;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lmas;

    iget v3, v2, Lmas;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lmas;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Lmas;

    invoke-direct {v2, v1, v0}, Lmas;-><init>(Lmav;Loku;)V

    :goto_0
    iget-object v0, v2, Lmas;->c:Ljava/lang/Object;

    sget-object v3, Lolc;->a:Lolc;

    iget v4, v2, Lmas;->e:I

    const/4 v6, 0x2

    const-string v7, "F250_AUTO_WORKER_TAG"

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_1
    iget-object v2, v2, Lmas;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_14

    :pswitch_2
    iget-object v4, v2, Lmas;->g:Lodt;

    iget-object v6, v2, Lmas;->i:Lojx;

    iget-object v7, v2, Lmas;->h:Lojx;

    iget-object v8, v2, Lmas;->b:Ljava/lang/Object;

    check-cast v8, Llzz;

    iget-object v10, v2, Lmas;->f:Llzy;

    iget-object v11, v2, Lmas;->a:Ljava/lang/Object;

    check-cast v11, Lmav;

    :try_start_0
    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_11

    :catchall_0
    move-exception v0

    goto/16 :goto_13

    :pswitch_3
    iget-object v4, v2, Lmas;->b:Ljava/lang/Object;

    check-cast v4, Lnyy;

    iget-object v10, v2, Lmas;->f:Llzy;

    iget-object v11, v2, Lmas;->a:Ljava/lang/Object;

    check-cast v11, Lmav;

    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_4
    iget-object v4, v2, Lmas;->b:Ljava/lang/Object;

    check-cast v4, Lnyy;

    iget-object v10, v2, Lmas;->f:Llzy;

    iget-object v11, v2, Lmas;->a:Ljava/lang/Object;

    check-cast v11, Lmav;

    :try_start_1
    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v18, v10

    move-object v10, v4

    move-object/from16 v4, v18

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v18, v10

    move-object v10, v4

    move-object/from16 v4, v18

    goto :goto_4

    :pswitch_5
    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V

    :try_start_2
    invoke-direct/range {p0 .. p0}, Lmav;->d()Laxw;

    move-result-object v0

    invoke-virtual {v0, v7}, Laxw;->a(Ljava/lang/String;)Lnou;

    move-result-object v0

    iput-object v1, v2, Lmas;->a:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object/from16 v4, p1

    :try_start_3
    iput-object v4, v2, Lmas;->f:Llzy;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v10, p2

    :try_start_4
    iput-object v10, v2, Lmas;->b:Ljava/lang/Object;

    iput v8, v2, Lmas;->e:I

    invoke-static {v0, v2}, Lljz;->I(Lnou;Loku;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-ne v0, v3, :cond_1

    return-object v3

    :cond_1
    move-object v11, v1

    :goto_1
    :try_start_5
    check-cast v0, Ljava/util/List;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_3

    :catchall_4
    move-exception v0

    goto :goto_2

    :catchall_5
    move-exception v0

    move-object/from16 v4, p1

    :goto_2
    move-object/from16 v10, p2

    :goto_3
    move-object v11, v1

    :goto_4
    iget-object v12, v11, Lmav;->a:Llzz;

    sget-object v13, Lodt;->x:Lodt;

    const/16 v14, 0xc

    invoke-static {v4, v13, v0, v9, v14}, Llzy;->c(Llzy;Lodt;Ljava/lang/Throwable;Llux;I)Llur;

    move-result-object v0

    iput-object v11, v2, Lmas;->a:Ljava/lang/Object;

    iput-object v4, v2, Lmas;->f:Llzy;

    iput-object v10, v2, Lmas;->b:Ljava/lang/Object;

    iput v6, v2, Lmas;->e:I

    invoke-virtual {v12, v0, v2}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v3, :cond_15

    move-object/from16 v18, v10

    move-object v10, v4

    move-object/from16 v4, v18

    :goto_5
    sget-object v0, Lojx;->a:Lojx;

    move-object/from16 v18, v10

    move-object v10, v4

    move-object/from16 v4, v18

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    invoke-interface {v0, v12}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Laxv;

    iget v13, v13, Laxv;->b:I

    if-ne v13, v8, :cond_2

    goto :goto_7

    :cond_3
    move-object v12, v9

    :goto_7
    check-cast v12, Laxv;

    if-eqz v12, :cond_5

    iget-object v0, v12, Laxv;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lolp;->n(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    if-eqz v13, :cond_4

    goto :goto_8

    :cond_5
    move-object v13, v9

    :goto_8
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v13, v14}, Lnzs;->b(J)Lnyy;

    move-result-object v0

    goto :goto_9

    :cond_6
    sget-object v0, Lnzs;->b:Lnyy;

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v12, :cond_7

    const/4 v6, 0x4

    goto :goto_c

    :cond_7
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lnzs;->c(Lnyy;)V

    invoke-static {v0}, Lnzs;->c(Lnyy;)V

    iget-wide v12, v10, Lnyy;->a:J

    iget-wide v14, v0, Lnyy;->a:J

    cmp-long v16, v12, v14

    cmp-long v17, v12, v14

    if-eqz v17, :cond_8

    goto :goto_b

    :cond_8
    iget v12, v10, Lnyy;->b:I

    iget v0, v0, Lnyy;->b:I

    if-ne v12, v0, :cond_9

    const/16 v16, 0x0

    goto :goto_b

    :cond_9
    if-ge v12, v0, :cond_a

    :goto_a
    const/4 v6, 0x1

    goto :goto_c

    :cond_a
    const/16 v16, 0x1

    :goto_b
    if-gez v16, :cond_b

    goto :goto_a

    :cond_b
    :goto_c
    new-instance v0, Laxx;

    const-class v8, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;

    invoke-direct {v0, v8}, Laxx;-><init>(Ljava/lang/Class;)V

    iget-object v8, v11, Lmav;->b:Lkrn;

    invoke-static {v8}, Lllj;->e(Lkrn;)Lnyy;

    move-result-object v8

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lnzs;->c(Lnyy;)V

    invoke-static {v10}, Lnzs;->c(Lnyy;)V

    iget-wide v12, v10, Lnyy;->a:J

    iget-wide v14, v8, Lnyy;->a:J

    invoke-static {v12, v13, v14, v15}, Lnsy;->ae(JJ)J

    move-result-wide v12

    iget v14, v10, Lnyy;->b:I

    iget v8, v8, Lnyy;->b:I

    move v15, v6

    int-to-long v5, v14

    move-object/from16 p1, v10

    int-to-long v9, v8

    sub-long/2addr v5, v9

    long-to-int v9, v5

    move v10, v14

    move/from16 p2, v15

    int-to-long v14, v9

    cmp-long v17, v5, v14

    if-nez v17, :cond_14

    invoke-static {v12, v13, v9}, Lnzq;->a(JI)Lnwf;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lnzq;->b:Lnwf;

    invoke-static {v5, v6}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-wide v12, 0x7fffffffffffffffL

    if-eqz v6, :cond_c

    move-wide v5, v12

    goto :goto_d

    :cond_c
    sget-object v6, Lnzq;->a:Lnwf;

    invoke-static {v5, v6}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-wide/high16 v5, -0x8000000000000000L

    :goto_d
    goto :goto_e

    :cond_d
    invoke-static {v5}, Lnzq;->b(Lnwf;)V

    iget-wide v14, v5, Lnwf;->a:J

    const-wide/16 v8, 0x3e8

    invoke-static {v14, v15, v8, v9}, Lnsy;->ad(JJ)J

    move-result-wide v8

    iget v5, v5, Lnwf;->b:I

    const v6, 0xf4240

    div-int/2addr v5, v6

    int-to-long v5, v5

    invoke-static {v8, v9, v5, v6}, Lnsy;->ac(JJ)J

    move-result-wide v5

    :goto_e
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v0, Laxx;->b:Lbcj;

    invoke-virtual {v8, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    iput-wide v5, v9, Lbcj;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v12, v5

    iget-object v8, v0, Laxx;->b:Lbcj;

    iget-wide v8, v8, Lbcj;->f:J

    cmp-long v10, v5, v8

    if-lez v10, :cond_13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lnzs;->b:Lnyy;

    move-object/from16 v10, p1

    invoke-static {v10, v5}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move-wide v8, v12

    goto :goto_f

    :cond_e
    sget-object v5, Lnzs;->a:Lnyy;

    invoke-static {v10, v5}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-wide/high16 v8, -0x8000000000000000L

    :goto_f
    goto :goto_10

    :cond_f
    invoke-static {v10}, Lnzs;->a(Lnyy;)J

    move-result-wide v8

    :goto_10
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Laxx;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Laxx;->b()Lva;

    move-result-object v0

    iget-object v8, v11, Lmav;->a:Llzz;

    sget-object v5, Lodt;->w:Lodt;

    sget-object v6, Lojx;->a:Lojx;

    :try_start_6
    invoke-direct {v11}, Lmav;->d()Laxw;

    move-result-object v9

    move/from16 v10, p2

    invoke-virtual {v9, v7, v10, v0}, Laxw;->d(Ljava/lang/String;ILva;)Laxu;

    move-result-object v0

    check-cast v0, Layn;

    iget-object v0, v0, Layn;->c:Lbej;

    iput-object v11, v2, Lmas;->a:Ljava/lang/Object;

    iput-object v4, v2, Lmas;->f:Llzy;

    iput-object v8, v2, Lmas;->b:Ljava/lang/Object;

    iput-object v6, v2, Lmas;->h:Lojx;

    iput-object v6, v2, Lmas;->i:Lojx;

    iput-object v5, v2, Lmas;->g:Lodt;

    const/4 v7, 0x3

    iput v7, v2, Lmas;->e:I

    invoke-static {v0, v2}, Lljz;->I(Lnou;Loku;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-ne v0, v3, :cond_10

    return-object v3

    :cond_10
    move-object v10, v4

    :goto_11
    iget-object v0, v11, Lmav;->a:Llzz;

    sget-object v4, Lodt;->e:Lodt;

    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-static {v10, v6, v6, v4, v5}, Llzy;->e(Llzy;Ljava/util/Collection;Ljava/util/Collection;Lodt;I)Llur;

    move-result-object v4

    iput-object v6, v2, Lmas;->a:Ljava/lang/Object;

    iput-object v6, v2, Lmas;->f:Llzy;

    iput-object v6, v2, Lmas;->b:Ljava/lang/Object;

    iput-object v6, v2, Lmas;->h:Lojx;

    iput-object v6, v2, Lmas;->i:Lojx;

    iput-object v6, v2, Lmas;->g:Lodt;

    const/4 v5, 0x5

    iput v5, v2, Lmas;->e:I

    invoke-virtual {v0, v4, v2}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_11

    return-object v3

    :cond_11
    :goto_12
    sget-object v0, Lojk;->a:Lojk;

    return-object v0

    :catchall_6
    move-exception v0

    move-object v10, v4

    move-object v4, v5

    move-object v7, v6

    :goto_13
    instance-of v5, v0, Ljava/util/concurrent/CancellationException;

    if-nez v5, :cond_12

    invoke-virtual {v10, v7, v6, v4, v0}, Llzy;->a(Ljava/util/Collection;Ljava/util/Collection;Lodt;Ljava/lang/Throwable;)Llur;

    move-result-object v4

    iput-object v0, v2, Lmas;->a:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v2, Lmas;->f:Llzy;

    iput-object v5, v2, Lmas;->b:Ljava/lang/Object;

    iput-object v5, v2, Lmas;->h:Lojx;

    iput-object v5, v2, Lmas;->i:Lojx;

    iput-object v5, v2, Lmas;->g:Lodt;

    const/4 v5, 0x4

    iput v5, v2, Lmas;->e:I

    invoke-virtual {v8, v4, v2}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_12

    return-object v3

    :cond_12
    move-object v2, v0

    :goto_14
    throw v2

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The given initial delay is too large and will cause an overflow!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "overflow: checkedSubtract("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    return-object v3

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

.method public final b(Llzy;Laxf;Loku;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p3, Lmat;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lmat;

    iget v1, v0, Lmat;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lmat;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lmat;

    invoke-direct {v0, p0, p3}, Lmat;-><init>(Lmav;Loku;)V

    :goto_0
    iget-object p3, v0, Lmat;->c:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Lmat;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v5, "F250_WORKER_TAG"

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_1
    iget-object p1, v0, Lmat;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_2
    iget-object p1, v0, Lmat;->g:Lodt;

    iget-object p2, v0, Lmat;->i:Lojx;

    iget-object v2, v0, Lmat;->h:Lojx;

    iget-object v3, v0, Lmat;->b:Ljava/lang/Object;

    check-cast v3, Llzz;

    iget-object v4, v0, Lmat;->f:Llzy;

    iget-object v5, v0, Lmat;->a:Ljava/lang/Object;

    check-cast v5, Lmav;

    :try_start_0
    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception p3

    move-object v10, p3

    move-object p3, p1

    move-object p1, v10

    goto/16 :goto_9

    :pswitch_3
    iget-object p1, v0, Lmat;->b:Ljava/lang/Object;

    check-cast p1, Laxf;

    iget-object p2, v0, Lmat;->f:Llzy;

    iget-object v2, v0, Lmat;->a:Ljava/lang/Object;

    check-cast v2, Lmav;

    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_4
    iget-object p1, v0, Lmat;->b:Ljava/lang/Object;

    check-cast p1, Laxf;

    iget-object p2, v0, Lmat;->f:Llzy;

    iget-object v2, v0, Lmat;->a:Ljava/lang/Object;

    check-cast v2, Lmav;

    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_5
    iget-object p1, v0, Lmat;->b:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Laxf;

    iget-object p1, v0, Lmat;->f:Llzy;

    iget-object v2, v0, Lmat;->a:Ljava/lang/Object;

    check-cast v2, Lmav;

    :try_start_1
    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p3

    goto :goto_2

    :pswitch_6
    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    :try_start_2
    invoke-direct {p0}, Lmav;->d()Laxw;

    move-result-object p3

    invoke-virtual {p3, v5}, Laxw;->a(Ljava/lang/String;)Lnou;

    move-result-object p3

    iput-object p0, v0, Lmat;->a:Ljava/lang/Object;

    iput-object p1, v0, Lmat;->f:Llzy;

    iput-object p2, v0, Lmat;->b:Ljava/lang/Object;

    iput v3, v0, Lmat;->e:I

    invoke-static {p3, v0}, Lljz;->I(Lnou;Loku;)Ljava/lang/Object;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ne p3, v1, :cond_1

    return-object v1

    :cond_1
    move-object v2, p0

    :goto_1
    :try_start_3
    check-cast p3, Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v10, p2

    move-object p2, p1

    move-object p1, v10

    goto :goto_4

    :catchall_2
    move-exception p3

    goto :goto_2

    :catchall_3
    move-exception p3

    move-object v2, p0

    :goto_2
    iget-object v7, v2, Lmav;->a:Llzz;

    sget-object v8, Lodt;->x:Lodt;

    const/16 v9, 0xc

    invoke-static {p1, v8, p3, v6, v9}, Llzy;->c(Llzy;Lodt;Ljava/lang/Throwable;Llux;I)Llur;

    move-result-object p3

    iput-object v2, v0, Lmat;->a:Ljava/lang/Object;

    iput-object p1, v0, Lmat;->f:Llzy;

    iput-object p2, v0, Lmat;->b:Ljava/lang/Object;

    iput v4, v0, Lmat;->e:I

    invoke-virtual {v7, p3, v0}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object p3

    if-eq p3, v1, :cond_9

    move-object v10, p2

    move-object p2, p1

    move-object p1, v10

    :goto_3
    sget-object p3, Lojx;->a:Lojx;

    :goto_4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {p3, v7}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p3

    :cond_2
    invoke-interface {p3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Laxv;

    iget v8, v8, Laxv;->b:I

    invoke-static {v8}, Lej;->f(I)Z

    move-result v8

    xor-int/2addr v8, v3

    if-eqz v8, :cond_2

    goto :goto_5

    :cond_3
    move-object v7, v6

    :goto_5
    check-cast v7, Laxv;

    if-eqz v7, :cond_5

    iget-object p3, v7, Laxv;->a:Ljava/util/Set;

    invoke-virtual {p1}, Laxf;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    iput-object v2, v0, Lmat;->a:Ljava/lang/Object;

    iput-object p2, v0, Lmat;->f:Llzy;

    iput-object p1, v0, Lmat;->b:Ljava/lang/Object;

    const/4 p3, 0x3

    iput p3, v0, Lmat;->e:I

    invoke-virtual {v2, p2, v0}, Lmav;->c(Llzy;Loku;)Ljava/lang/Object;

    move-result-object p3

    if-eq p3, v1, :cond_4

    goto :goto_6

    :cond_4
    return-object v1

    :cond_5
    :goto_6
    new-instance p3, Laxx;

    const-class v3, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;

    invoke-direct {p3, v3}, Laxx;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p3, Laxx;->b:Lbcj;

    iput-object p1, v3, Lbcj;->i:Laxf;

    invoke-virtual {p1}, Laxf;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Laxx;->a(Ljava/lang/String;)V

    invoke-virtual {p3}, Laxx;->b()Lva;

    move-result-object p1

    iget-object v3, v2, Lmav;->a:Llzz;

    sget-object p3, Lodt;->w:Lodt;

    sget-object v7, Lojx;->a:Lojx;

    :try_start_4
    invoke-direct {v2}, Lmav;->d()Laxw;

    move-result-object v8

    invoke-virtual {v8, v5, v4, p1}, Laxw;->d(Ljava/lang/String;ILva;)Laxu;

    move-result-object p1

    check-cast p1, Layn;

    iget-object p1, p1, Layn;->c:Lbej;

    iput-object v2, v0, Lmat;->a:Ljava/lang/Object;

    iput-object p2, v0, Lmat;->f:Llzy;

    iput-object v3, v0, Lmat;->b:Ljava/lang/Object;

    iput-object v7, v0, Lmat;->h:Lojx;

    iput-object v7, v0, Lmat;->i:Lojx;

    iput-object p3, v0, Lmat;->g:Lodt;

    const/4 v4, 0x4

    iput v4, v0, Lmat;->e:I

    invoke-static {p1, v0}, Lljz;->I(Lnou;Loku;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v4, p2

    move-object v5, v2

    :goto_7
    iget-object p1, v5, Lmav;->a:Llzz;

    sget-object p2, Lodt;->d:Lodt;

    const/16 p3, 0xb

    invoke-static {v4, v6, v6, p2, p3}, Llzy;->e(Llzy;Ljava/util/Collection;Ljava/util/Collection;Lodt;I)Llur;

    move-result-object p2

    iput-object v6, v0, Lmat;->a:Ljava/lang/Object;

    iput-object v6, v0, Lmat;->f:Llzy;

    iput-object v6, v0, Lmat;->b:Ljava/lang/Object;

    iput-object v6, v0, Lmat;->h:Lojx;

    iput-object v6, v0, Lmat;->i:Lojx;

    iput-object v6, v0, Lmat;->g:Lodt;

    const/4 p3, 0x6

    iput p3, v0, Lmat;->e:I

    invoke-virtual {p1, p2, v0}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    :goto_8
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :catchall_4
    move-exception p1

    move-object v4, p2

    move-object p2, v7

    move-object v2, p2

    :goto_9
    instance-of v5, p1, Ljava/util/concurrent/CancellationException;

    if-nez v5, :cond_8

    invoke-virtual {v4, v2, p2, p3, p1}, Llzy;->a(Ljava/util/Collection;Ljava/util/Collection;Lodt;Ljava/lang/Throwable;)Llur;

    move-result-object p2

    iput-object p1, v0, Lmat;->a:Ljava/lang/Object;

    iput-object v6, v0, Lmat;->f:Llzy;

    iput-object v6, v0, Lmat;->b:Ljava/lang/Object;

    iput-object v6, v0, Lmat;->h:Lojx;

    iput-object v6, v0, Lmat;->i:Lojx;

    iput-object v6, v0, Lmat;->g:Lodt;

    const/4 p3, 0x5

    iput p3, v0, Lmat;->e:I

    invoke-virtual {v3, p2, v0}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    return-object v1

    :cond_8
    :goto_a
    throw p1

    :cond_9
    return-object v1

    nop

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

.method public final c(Llzy;Loku;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lmar;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lmar;

    iget v1, v0, Lmar;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lmar;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lmar;

    invoke-direct {v0, p0, p2}, Lmar;-><init>(Lmav;Loku;)V

    :goto_0
    iget-object p2, v0, Lmar;->b:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Lmar;->d:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_1
    iget-object p1, v0, Lmar;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_2
    iget-object p1, v0, Lmar;->g:Lodt;

    iget-object v2, v0, Lmar;->i:Lojx;

    iget-object v4, v0, Lmar;->h:Lojx;

    iget-object v5, v0, Lmar;->f:Llzz;

    iget-object v6, v0, Lmar;->e:Llzy;

    iget-object v7, v0, Lmar;->a:Ljava/lang/Object;

    check-cast v7, Lmav;

    :try_start_0
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v6

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    goto :goto_3

    :pswitch_3
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object v5, p0, Lmav;->a:Llzz;

    sget-object p2, Lodt;->w:Lodt;

    sget-object v2, Lojx;->a:Lojx;

    :try_start_1
    invoke-direct {p0}, Lmav;->d()Laxw;

    move-result-object v4

    invoke-virtual {v4}, Laxw;->c()Laxu;

    move-result-object v4

    check-cast v4, Layn;

    iget-object v4, v4, Layn;->c:Lbej;

    iput-object p0, v0, Lmar;->a:Ljava/lang/Object;

    iput-object p1, v0, Lmar;->e:Llzy;

    iput-object v5, v0, Lmar;->f:Llzz;

    iput-object v2, v0, Lmar;->h:Lojx;

    iput-object v2, v0, Lmar;->i:Lojx;

    iput-object p2, v0, Lmar;->g:Lodt;

    const/4 v6, 0x1

    iput v6, v0, Lmar;->d:I

    invoke-static {v4, v0}, Lljz;->I(Lnou;Loku;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p2, v1, :cond_1

    return-object v1

    :cond_1
    move-object v7, p0

    :goto_1
    iget-object p2, v7, Lmav;->a:Llzz;

    sget-object v2, Lodt;->c:Lodt;

    const/16 v4, 0xb

    invoke-static {p1, v3, v3, v2, v4}, Llzy;->e(Llzy;Ljava/util/Collection;Ljava/util/Collection;Lodt;I)Llur;

    move-result-object p1

    iput-object v3, v0, Lmar;->a:Ljava/lang/Object;

    iput-object v3, v0, Lmar;->e:Llzy;

    iput-object v3, v0, Lmar;->f:Llzz;

    iput-object v3, v0, Lmar;->h:Lojx;

    iput-object v3, v0, Lmar;->i:Lojx;

    iput-object v3, v0, Lmar;->g:Lodt;

    const/4 v2, 0x3

    iput v2, v0, Lmar;->d:I

    invoke-virtual {p2, p1, v0}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    :goto_2
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :catchall_1
    move-exception v4

    move-object v6, p1

    move-object p1, v4

    move-object v4, v2

    :goto_3
    instance-of v7, p1, Ljava/util/concurrent/CancellationException;

    if-nez v7, :cond_3

    invoke-virtual {v6, v4, v2, p2, p1}, Llzy;->a(Ljava/util/Collection;Ljava/util/Collection;Lodt;Ljava/lang/Throwable;)Llur;

    move-result-object p2

    iput-object p1, v0, Lmar;->a:Ljava/lang/Object;

    iput-object v3, v0, Lmar;->e:Llzy;

    iput-object v3, v0, Lmar;->f:Llzz;

    iput-object v3, v0, Lmar;->h:Lojx;

    iput-object v3, v0, Lmar;->i:Lojx;

    iput-object v3, v0, Lmar;->g:Lodt;

    const/4 v2, 0x2

    iput v2, v0, Lmar;->d:I

    invoke-virtual {v5, p2, v0}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_4
    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
