.class public final Lmcl;
.super Ljava/lang/Object;

# interfaces
.implements Lmcf;


# instance fields
.field public final a:Ldqx;

.field private final b:Llzz;

.field private final c:Lmaf;

.field private final d:Llyz;

.field private final e:Llwc;

.field private final f:Llzs;

.field private final g:Lkrn;

.field private final h:Llwc;

.field private final i:Landroidx/wear/ambient/AmbientMode$AmbientController;


# direct methods
.method public constructor <init>(Llzz;Lmaf;Llyz;Llwc;Llwc;Ldqx;Llzs;Lkrn;Landroidx/wear/ambient/AmbientMode$AmbientController;[B[B[B[B)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmcl;->b:Llzz;

    iput-object p2, p0, Lmcl;->c:Lmaf;

    iput-object p3, p0, Lmcl;->d:Llyz;

    iput-object p4, p0, Lmcl;->h:Llwc;

    iput-object p5, p0, Lmcl;->e:Llwc;

    iput-object p6, p0, Lmcl;->a:Ldqx;

    iput-object p7, p0, Lmcl;->f:Llzs;

    iput-object p8, p0, Lmcl;->g:Lkrn;

    iput-object p9, p0, Lmcl;->i:Landroidx/wear/ambient/AmbientMode$AmbientController;

    return-void
.end method


# virtual methods
.method public final a(Llzy;Llyg;Loku;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    instance-of v4, v3, Lmck;

    const/high16 v5, -0x80000000

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lmck;

    iget v6, v4, Lmck;->e:I

    and-int v7, v6, v5

    if-eqz v7, :cond_0

    sub-int/2addr v6, v5

    iput v6, v4, Lmck;->e:I

    goto :goto_0

    :cond_0
    new-instance v4, Lmck;

    invoke-direct {v4, v1, v3}, Lmck;-><init>(Lmcl;Loku;)V

    :goto_0
    iget-object v3, v4, Lmck;->c:Ljava/lang/Object;

    sget-object v13, Lolc;->a:Lolc;

    iget v6, v4, Lmck;->e:I

    const/4 v7, 0x1

    const/4 v14, 0x0

    packed-switch v6, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {v3}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    iget-object v0, v4, Lmck;->g:Ljava/util/List;

    iget-object v2, v4, Lmck;->b:Ljava/lang/Object;

    check-cast v2, Llyf;

    iget-object v5, v4, Lmck;->f:Llzy;

    iget-object v6, v4, Lmck;->a:Ljava/lang/Object;

    check-cast v6, Lmcl;

    invoke-static {v3}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_2
    iget-object v0, v4, Lmck;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v3}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_3
    iget-object v2, v4, Lmck;->l:Ljava/util/List;

    iget-object v5, v4, Lmck;->k:Llzz;

    iget-object v6, v4, Lmck;->j:Lodt;

    iget-object v0, v4, Lmck;->i:Lmdc;

    iget-object v7, v4, Lmck;->h:Lobs;

    iget-object v8, v4, Lmck;->g:Ljava/util/List;

    iget-object v9, v4, Lmck;->b:Ljava/lang/Object;

    check-cast v9, Llyf;

    iget-object v10, v4, Lmck;->f:Llzy;

    iget-object v11, v4, Lmck;->a:Ljava/lang/Object;

    check-cast v11, Lmcl;

    :try_start_0
    invoke-static {v3}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v9

    move-object v5, v10

    move-object v14, v11

    move-object v9, v0

    move-object v0, v8

    move-object v8, v7

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :pswitch_4
    iget-object v0, v4, Lmck;->g:Ljava/util/List;

    iget-object v2, v4, Lmck;->b:Ljava/lang/Object;

    check-cast v2, Llyf;

    iget-object v6, v4, Lmck;->f:Llzy;

    iget-object v7, v4, Lmck;->a:Ljava/lang/Object;

    check-cast v7, Lmcl;

    invoke-static {v3}, Lljr;->aO(Ljava/lang/Object;)V

    move-object v8, v0

    move-object v10, v6

    goto/16 :goto_3

    :pswitch_5
    iget-object v0, v4, Lmck;->b:Ljava/lang/Object;

    check-cast v0, Llyf;

    iget-object v2, v4, Lmck;->f:Llzy;

    iget-object v6, v4, Lmck;->a:Ljava/lang/Object;

    check-cast v6, Lmcl;

    invoke-static {v3}, Lljr;->aO(Ljava/lang/Object;)V

    move-object v7, v6

    goto :goto_2

    :pswitch_6
    iget-object v0, v4, Lmck;->b:Ljava/lang/Object;

    check-cast v0, Llyg;

    iget-object v2, v4, Lmck;->f:Llzy;

    iget-object v6, v4, Lmck;->a:Ljava/lang/Object;

    check-cast v6, Lmcl;

    invoke-static {v3}, Lljr;->aO(Ljava/lang/Object;)V

    move-object/from16 v16, v2

    move-object v2, v0

    move-object/from16 v0, v16

    goto :goto_1

    :pswitch_7
    invoke-static {v3}, Lljr;->aO(Ljava/lang/Object;)V

    iput-object v1, v4, Lmck;->a:Ljava/lang/Object;

    iput-object v0, v4, Lmck;->f:Llzy;

    iput-object v2, v4, Lmck;->b:Ljava/lang/Object;

    iput v7, v4, Lmck;->e:I

    invoke-virtual {v1, v0, v2, v4}, Lmcl;->b(Llzy;Llyg;Loku;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v13, :cond_a

    move-object v6, v1

    :goto_1
    iget-object v3, v2, Llyg;->a:Llyf;

    iget-object v2, v2, Llyg;->b:Ljava/util/List;

    iput-object v6, v4, Lmck;->a:Ljava/lang/Object;

    iput-object v0, v4, Lmck;->f:Llzy;

    iput-object v3, v4, Lmck;->b:Ljava/lang/Object;

    const/4 v8, 0x2

    iput v8, v4, Lmck;->e:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    sget v9, Louj;->a:I

    invoke-static {v8, v7, v9}, Lonm;->h(III)I

    move-result v7

    new-instance v8, Lotw;

    invoke-direct {v8, v2}, Lotw;-><init>(Ljava/lang/Iterable;)V

    new-instance v2, Lmcj;

    invoke-direct {v2, v6, v0, v3, v14}, Lmcj;-><init>(Lmcl;Llzy;Llyf;Loku;)V

    invoke-static {v8, v7, v2}, Lljz;->g(Lott;ILomo;)Lott;

    move-result-object v2

    invoke-static {v2, v4}, Lone;->v(Lott;Loku;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v13, :cond_a

    move-object v7, v6

    move-object/from16 v16, v2

    move-object v2, v0

    move-object v0, v3

    move-object/from16 v3, v16

    :goto_2
    check-cast v3, Ljava/util/List;

    iput-object v7, v4, Lmck;->a:Ljava/lang/Object;

    iput-object v2, v4, Lmck;->f:Llzy;

    iput-object v0, v4, Lmck;->b:Ljava/lang/Object;

    iput-object v3, v4, Lmck;->g:Ljava/util/List;

    const/4 v6, 0x3

    iput v6, v4, Lmck;->e:I

    invoke-virtual {v7, v2, v0, v3, v4}, Lmcl;->c(Llzy;Llyf;Ljava/util/List;Loku;)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v13, :cond_a

    move-object v10, v2

    move-object v8, v3

    move-object v3, v6

    move-object v2, v0

    :goto_3
    check-cast v3, Lobs;

    new-instance v0, Lmdc;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v6

    const-string v9, "serialized size must be non-negative, was "

    if-eqz v6, :cond_2

    invoke-virtual {v3, v14}, Lnws;->M(Lnyo;)I

    move-result v5

    if-ltz v5, :cond_1

    goto :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v6, v3, Lnws;->aI:I

    const v11, 0x7fffffff

    and-int/2addr v6, v11

    if-eq v6, v11, :cond_3

    move v5, v6

    goto :goto_4

    :cond_3
    invoke-virtual {v3, v14}, Lnws;->M(Lnyo;)I

    move-result v6

    if-ltz v6, :cond_9

    iget v9, v3, Lnws;->aI:I

    and-int/2addr v5, v9

    or-int/2addr v5, v6

    iput v5, v3, Lnws;->aI:I

    move v5, v6

    :goto_4
    invoke-direct {v0, v2, v5}, Lmdc;-><init>(Llyf;I)V

    iget-object v5, v7, Lmcl;->b:Llzz;

    sget-object v6, Lodt;->s:Lodt;

    invoke-static {v2}, Lljr;->ae(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    :try_start_1
    iget-object v11, v7, Lmcl;->d:Llyz;

    const-wide/16 v14, 0x0

    invoke-virtual {v0, v14, v15}, Lmdc;->a(J)D

    move-result-wide v14

    iput-object v7, v4, Lmck;->a:Ljava/lang/Object;

    iput-object v10, v4, Lmck;->f:Llzy;

    iput-object v2, v4, Lmck;->b:Ljava/lang/Object;

    iput-object v8, v4, Lmck;->g:Ljava/util/List;

    iput-object v3, v4, Lmck;->h:Lobs;

    iput-object v0, v4, Lmck;->i:Lmdc;

    iput-object v6, v4, Lmck;->j:Lodt;

    iput-object v5, v4, Lmck;->k:Llzz;

    iput-object v9, v4, Lmck;->l:Ljava/util/List;

    const/4 v12, 0x4

    iput v12, v4, Lmck;->e:I

    invoke-virtual {v11, v2, v14, v15, v4}, Llyz;->h(Llyf;DLoku;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v5, v13, :cond_7

    move-object v9, v0

    move-object v14, v7

    move-object v0, v8

    move-object v8, v3

    move-object v3, v5

    move-object v5, v10

    :goto_5
    move-object v10, v3

    check-cast v10, Llyf;

    iget-object v6, v14, Lmcl;->h:Llwc;

    iput-object v14, v4, Lmck;->a:Ljava/lang/Object;

    iput-object v5, v4, Lmck;->f:Llzy;

    iput-object v2, v4, Lmck;->b:Ljava/lang/Object;

    iput-object v0, v4, Lmck;->g:Ljava/util/List;

    const/4 v3, 0x0

    iput-object v3, v4, Lmck;->h:Lobs;

    iput-object v3, v4, Lmck;->i:Lmdc;

    iput-object v3, v4, Lmck;->j:Lodt;

    iput-object v3, v4, Lmck;->k:Llzz;

    iput-object v3, v4, Lmck;->l:Ljava/util/List;

    const/4 v3, 0x6

    iput v3, v4, Lmck;->e:I

    move-object v7, v5

    move-object v11, v0

    move-object v12, v4

    invoke-virtual/range {v6 .. v12}, Llwc;->h(Llzy;Lobs;Lmdc;Llyf;Ljava/util/List;Loku;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v13, :cond_6

    move-object v6, v14

    :goto_6
    check-cast v3, Llyf;

    new-instance v7, Llyg;

    invoke-direct {v7, v3, v0}, Llyg;-><init>(Llyf;Ljava/util/List;)V

    iget-boolean v0, v2, Llyf;->m:Z

    if-eqz v0, :cond_5

    iget-object v0, v6, Lmcl;->e:Llwc;

    const/4 v2, 0x0

    iput-object v2, v4, Lmck;->a:Ljava/lang/Object;

    iput-object v2, v4, Lmck;->f:Llzy;

    iput-object v2, v4, Lmck;->b:Ljava/lang/Object;

    iput-object v2, v4, Lmck;->g:Ljava/util/List;

    const/4 v2, 0x7

    iput v2, v4, Lmck;->e:I

    invoke-virtual {v0, v5, v7, v4}, Llwc;->a(Llzy;Llyg;Loku;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v13, :cond_4

    return-object v13

    :cond_4
    :goto_7
    return-object v3

    :cond_5
    return-object v7

    :cond_6
    return-object v13

    :cond_7
    return-object v13

    :catchall_1
    move-exception v0

    move-object v2, v9

    :goto_8
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_8

    invoke-virtual {v10, v2, v8, v6, v0}, Llzy;->a(Ljava/util/Collection;Ljava/util/Collection;Lodt;Ljava/lang/Throwable;)Llur;

    move-result-object v2

    iput-object v0, v4, Lmck;->a:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, v4, Lmck;->f:Llzy;

    iput-object v3, v4, Lmck;->b:Ljava/lang/Object;

    iput-object v3, v4, Lmck;->g:Ljava/util/List;

    iput-object v3, v4, Lmck;->h:Lobs;

    iput-object v3, v4, Lmck;->i:Lmdc;

    iput-object v3, v4, Lmck;->j:Lodt;

    iput-object v3, v4, Lmck;->k:Llzz;

    iput-object v3, v4, Lmck;->l:Ljava/util/List;

    const/4 v3, 0x5

    iput v3, v4, Lmck;->e:I

    invoke-virtual {v5, v2, v4}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v13, :cond_8

    return-object v13

    :cond_8
    :goto_9
    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    return-object v13

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Llzy;Llyg;Loku;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p3, Lmch;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lmch;

    iget v1, v0, Lmch;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lmch;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lmch;

    invoke-direct {v0, p0, p3}, Lmch;-><init>(Lmcl;Loku;)V

    :goto_0
    iget-object p3, v0, Lmch;->f:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Lmch;->h:I

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object p1, v0, Lmch;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_1
    iget-object p1, v0, Lmch;->i:Ljava/util/List;

    iget-object p2, v0, Lmch;->e:Ljava/lang/Object;

    check-cast p2, Llzz;

    iget-object v2, v0, Lmch;->d:Ljava/lang/Object;

    check-cast v2, Lodt;

    iget-object v3, v0, Lmch;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    iget-object v4, v0, Lmch;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v0, Lmch;->a:Ljava/lang/Object;

    check-cast v5, Llzy;

    :try_start_0
    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p3

    move-object v6, p1

    move-object p1, p3

    goto/16 :goto_4

    :pswitch_2
    iget-object p1, v0, Lmch;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/IllegalStateException;

    iget-object p2, v0, Lmch;->d:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    iget-object v2, v0, Lmch;->c:Ljava/lang/Object;

    check-cast v2, Llyf;

    iget-object v3, v0, Lmch;->b:Ljava/lang/Object;

    check-cast v3, Llzy;

    iget-object v4, v0, Lmch;->a:Ljava/lang/Object;

    check-cast v4, Lmcl;

    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    move-object p3, p2

    move-object v8, v3

    move-object v3, p1

    move-object p1, v8

    goto/16 :goto_2

    :pswitch_3
    iget-object p1, v0, Lmch;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p2, v0, Lmch;->c:Ljava/lang/Object;

    check-cast p2, Llyf;

    iget-object v2, v0, Lmch;->b:Ljava/lang/Object;

    check-cast v2, Llzy;

    iget-object v3, v0, Lmch;->a:Ljava/lang/Object;

    check-cast v3, Lmcl;

    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    move-object v4, v3

    move-object v8, p3

    move-object p3, p1

    move-object p1, v2

    move-object v2, p2

    move-object p2, v8

    goto :goto_1

    :pswitch_4
    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object v2, p2, Llyg;->a:Llyf;

    iget-object p3, p2, Llyg;->b:Ljava/util/List;

    iget-object v3, v2, Llyf;->t:Llwz;

    iget-object v3, v3, Llwz;->e:Llvk;

    sget-object v4, Lmcg;->a:[I

    invoke-virtual {v3}, Llvk;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lmcl;->c:Lmaf;

    invoke-static {p2}, Lljr;->ac(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p0, v0, Lmch;->a:Ljava/lang/Object;

    iput-object p1, v0, Lmch;->b:Ljava/lang/Object;

    iput-object v2, v0, Lmch;->c:Ljava/lang/Object;

    iput-object p3, v0, Lmch;->d:Ljava/lang/Object;

    iput v4, v0, Lmch;->h:I

    invoke-virtual {v3, p1, p2, v0}, Lmaf;->a(Llzy;Ljava/util/List;Loku;)Ljava/lang/Object;

    move-result-object p2

    if-eq p2, v1, :cond_1

    move-object v4, p0

    :goto_1
    check-cast p2, Lmad;

    iget-object p2, p2, Lmad;->b:Ljava/lang/Throwable;

    move-object v3, p2

    goto :goto_2

    :cond_1
    return-object v1

    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    iget-object v3, v2, Llyf;->t:Llwz;

    iget-object v3, v3, Llwz;->e:Llvk;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource upload state invalid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lmcl;->b:Llzz;

    sget-object v4, Lodt;->t:Lodt;

    const/16 v5, 0x8

    invoke-static {p1, v4, p2, v2, v5}, Llzy;->c(Llzy;Lodt;Ljava/lang/Throwable;Llux;I)Llur;

    move-result-object v4

    iput-object p0, v0, Lmch;->a:Ljava/lang/Object;

    iput-object p1, v0, Lmch;->b:Ljava/lang/Object;

    iput-object v2, v0, Lmch;->c:Ljava/lang/Object;

    iput-object p3, v0, Lmch;->d:Ljava/lang/Object;

    iput-object p2, v0, Lmch;->e:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, v0, Lmch;->h:I

    invoke-virtual {v3, v4, v0}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_6

    move-object v4, p0

    move-object v3, p2

    :goto_2
    if-eqz v3, :cond_5

    iget-object p2, v4, Lmcl;->b:Llzz;

    sget-object v5, Lodt;->s:Lodt;

    invoke-static {v2}, Lljr;->ae(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    :try_start_1
    iget-object v4, v4, Lmcl;->d:Llyz;

    iput-object p1, v0, Lmch;->a:Ljava/lang/Object;

    iput-object p3, v0, Lmch;->b:Ljava/lang/Object;

    iput-object v3, v0, Lmch;->c:Ljava/lang/Object;

    iput-object v5, v0, Lmch;->d:Ljava/lang/Object;

    iput-object p2, v0, Lmch;->e:Ljava/lang/Object;

    iput-object v6, v0, Lmch;->i:Ljava/util/List;

    const/4 v7, 0x3

    iput v7, v0, Lmch;->h:I

    invoke-virtual {v4, v2, v0}, Llyz;->a(Llyf;Loku;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_3
    throw v3

    :catchall_1
    move-exception v2

    move-object v4, p3

    move-object v8, v5

    move-object v5, p1

    move-object p1, v2

    move-object v2, v8

    :goto_4
    instance-of p3, p1, Ljava/util/concurrent/CancellationException;

    if-nez p3, :cond_4

    invoke-virtual {v5, v6, v4, v2, p1}, Llzy;->a(Ljava/util/Collection;Ljava/util/Collection;Lodt;Ljava/lang/Throwable;)Llur;

    move-result-object p3

    iput-object p1, v0, Lmch;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v0, Lmch;->b:Ljava/lang/Object;

    iput-object v2, v0, Lmch;->c:Ljava/lang/Object;

    iput-object v2, v0, Lmch;->d:Ljava/lang/Object;

    iput-object v2, v0, Lmch;->e:Ljava/lang/Object;

    iput-object v2, v0, Lmch;->i:Ljava/util/List;

    const/4 v2, 0x4

    iput v2, v0, Lmch;->h:I

    invoke-virtual {p2, p3, v0}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_5
    throw p1

    :cond_5
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :cond_6
    return-object v1

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

.method public final c(Llzy;Llyf;Ljava/util/List;Loku;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p4

    instance-of v3, v2, Lmci;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lmci;

    iget v4, v3, Lmci;->c:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lmci;->c:I

    goto :goto_0

    :cond_0
    new-instance v3, Lmci;

    invoke-direct {v3, v1, v2}, Lmci;-><init>(Lmcl;Loku;)V

    :goto_0
    iget-object v2, v3, Lmci;->a:Ljava/lang/Object;

    sget-object v4, Lolc;->a:Lolc;

    iget v5, v3, Lmci;->c:I

    const/4 v7, 0x1

    packed-switch v5, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v3, Lmci;->f:Ljava/util/List;

    iget-object v4, v3, Lmci;->e:Llyf;

    iget-object v3, v3, Lmci;->d:Lmcl;

    invoke-static {v2}, Lljr;->aO(Ljava/lang/Object;)V

    move-object v5, v0

    move-object v0, v4

    goto :goto_1

    :pswitch_1
    invoke-static {v2}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object v2, v0, Llyf;->l:Lnty;

    if-eqz v2, :cond_1

    move-object/from16 v5, p3

    move-object v3, v1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    iget-object v2, v0, Llyf;->o:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, v1, Lmcl;->f:Llzs;

    iput-object v1, v3, Lmci;->d:Lmcl;

    iput-object v0, v3, Lmci;->e:Llyf;

    move-object/from16 v5, p3

    iput-object v5, v3, Lmci;->f:Ljava/util/List;

    iput v7, v3, Lmci;->c:I

    move-object/from16 v8, p1

    invoke-virtual {v2, v8, v3}, Llzs;->b(Llzy;Loku;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_2

    return-object v4

    :cond_2
    move-object v3, v1

    :goto_1
    check-cast v2, Lluh;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lluh;->a:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    move-object/from16 v5, p3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_5

    move-object v3, v1

    goto :goto_2

    :cond_5
    move-object v3, v1

    const/4 v2, 0x0

    :goto_2
    iget-object v4, v0, Llyf;->l:Lnty;

    if-eqz v4, :cond_7

    sget-object v2, Lnty;->d:Lnty;

    invoke-static {v4, v2}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_5

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_7
    if-nez v2, :cond_9

    iget-object v4, v0, Llyf;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_9
    :goto_3
    sget-object v4, Lnty;->d:Lnty;

    invoke-virtual {v4}, Lnws;->O()Lnwn;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_b

    iget-object v8, v4, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_a
    iget-object v8, v4, Lnwn;->b:Lnws;

    check-cast v8, Lnty;

    const/4 v9, 0x3

    iput v9, v8, Lnty;->a:I

    iput-object v2, v8, Lnty;->b:Ljava/lang/Object;

    :cond_b
    iget-object v2, v4, Lnwn;->b:Lnws;

    check-cast v2, Lnty;

    iget-object v2, v2, Lnty;->c:Lnxa;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Llyf;->n:Ljava/util/List;

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v2}, Lljr;->ao(Ljava/lang/Iterable;)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnef;

    invoke-virtual {v9}, Lnef;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    iget-object v2, v4, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_d
    iget-object v2, v4, Lnwn;->b:Lnws;

    check-cast v2, Lnty;

    iget-object v9, v2, Lnty;->c:Lnxa;

    invoke-interface {v9}, Lnxa;->c()Z

    move-result v10

    if-nez v10, :cond_e

    invoke-static {v9}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v9

    iput-object v9, v2, Lnty;->c:Lnxa;

    :cond_e
    iget-object v2, v2, Lnty;->c:Lnxa;

    invoke-static {v8, v2}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v2

    check-cast v4, Lnty;

    :goto_5
    sget-object v2, Lobs;->k:Lobs;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    check-cast v2, Lnwp;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v0, Llyf;->v:Loja;

    invoke-interface {v8}, Loja;->a()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lntw;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v2, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_f

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_f
    iget-object v9, v2, Lnwp;->b:Lnws;

    check-cast v9, Lobs;

    iput-object v8, v9, Lobs;->b:Lntw;

    iget v8, v9, Lobs;->a:I

    or-int/2addr v8, v7

    iput v8, v9, Lobs;->a:I

    iget-object v8, v0, Llyf;->w:Lluq;

    if-eqz v8, :cond_12

    invoke-virtual {v8}, Lluq;->b()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v2, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_10

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_10
    iget-object v9, v2, Lnwp;->b:Lnws;

    check-cast v9, Lobs;

    iget v10, v9, Lobs;->a:I

    or-int/lit8 v10, v10, 0x2

    iput v10, v9, Lobs;->a:I

    iput-object v8, v9, Lobs;->c:Ljava/lang/String;

    iget-object v8, v2, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_11

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_11
    iget-object v8, v2, Lnwp;->b:Lnws;

    check-cast v8, Lobs;

    iget v9, v8, Lobs;->a:I

    or-int/lit16 v9, v9, 0x80

    iput v9, v8, Lobs;->a:I

    iput-boolean v7, v8, Lobs;->g:Z

    :cond_12
    iget-object v8, v0, Llyf;->s:Lntv;

    if-eqz v8, :cond_14

    iget-object v9, v2, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_13

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_13
    iget-object v9, v2, Lnwp;->b:Lnws;

    check-cast v9, Lobs;

    iput-object v8, v9, Lobs;->f:Lntv;

    iget v8, v9, Lobs;->a:I

    or-int/lit8 v8, v8, 0x40

    iput v8, v9, Lobs;->a:I

    :cond_14
    iget-object v8, v0, Llyf;->r:Lobn;

    if-eqz v8, :cond_16

    iget-object v9, v2, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_15

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_15
    iget-object v9, v2, Lnwp;->b:Lnws;

    check-cast v9, Lobs;

    iput-object v8, v9, Lobs;->e:Lobn;

    iget v8, v9, Lobs;->a:I

    or-int/lit8 v8, v8, 0x20

    iput v8, v9, Lobs;->a:I

    :cond_16
    sget-object v8, Lntz;->e:Lntz;

    invoke-virtual {v8}, Lnws;->O()Lnwn;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v0, Llyf;->k:Lnwf;

    if-nez v9, :cond_18

    if-nez v4, :cond_18

    iget-object v4, v8, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_17
    iget-object v4, v8, Lnwn;->b:Lnws;

    check-cast v4, Lntz;

    iget v9, v4, Lntz;->a:I

    or-int/2addr v9, v7

    iput v9, v4, Lntz;->a:I

    iput-boolean v7, v4, Lntz;->b:Z

    goto/16 :goto_6

    :cond_18
    if-eqz v9, :cond_1c

    sget-object v10, Lntx;->d:Lntx;

    invoke-virtual {v10}, Lnws;->O()Lnwn;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v10, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_19

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_19
    iget-object v11, v10, Lnwn;->b:Lnws;

    check-cast v11, Lntx;

    iput-object v9, v11, Lntx;->b:Lnwf;

    iget v9, v11, Lntx;->a:I

    or-int/2addr v9, v7

    iput v9, v11, Lntx;->a:I

    iget-object v9, v3, Lmcl;->g:Lkrn;

    invoke-static {v9}, Lllj;->e(Lkrn;)Lnyy;

    move-result-object v9

    iget-object v11, v10, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_1a

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_1a
    iget-object v11, v10, Lnwn;->b:Lnws;

    check-cast v11, Lntx;

    iput-object v9, v11, Lntx;->c:Lnyy;

    iget v9, v11, Lntx;->a:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v11, Lntx;->a:I

    invoke-virtual {v10}, Lnwn;->i()Lnws;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v9, Lntx;

    iget-object v10, v8, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_1b

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_1b
    iget-object v10, v8, Lnwn;->b:Lnws;

    check-cast v10, Lntz;

    iput-object v9, v10, Lntz;->c:Lntx;

    iget v9, v10, Lntz;->a:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v10, Lntz;->a:I

    :cond_1c
    if-eqz v4, :cond_1e

    iget-object v9, v8, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_1d

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_1d
    iget-object v9, v8, Lnwn;->b:Lnws;

    check-cast v9, Lntz;

    iput-object v4, v9, Lntz;->d:Lnty;

    iget v4, v9, Lntz;->a:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v9, Lntz;->a:I

    :cond_1e
    :goto_6
    invoke-virtual {v8}, Lnwn;->i()Lnws;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Lntz;

    iget-object v8, v2, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_1f

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_1f
    iget-object v8, v2, Lnwp;->b:Lnws;

    check-cast v8, Lobs;

    iput-object v4, v8, Lobs;->d:Lntz;

    iget v4, v8, Lobs;->a:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v8, Lobs;->a:I

    iget-object v4, v8, Lobs;->h:Lnxa;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Llwq;

    iget-object v10, v9, Llwq;->b:Lluo;

    sget-object v11, Lluo;->a:Lluo;

    if-ne v10, v11, :cond_2d

    sget-object v10, Lobp;->g:Lobp;

    invoke-virtual {v10}, Lnws;->O()Lnwn;

    move-result-object v10

    check-cast v10, Lnwp;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v9, Llwq;->c:Llun;

    if-eqz v11, :cond_21

    invoke-virtual {v11}, Lluq;->b()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v10, Lnwn;->b:Lnws;

    invoke-virtual {v12}, Lnws;->ac()Z

    move-result v12

    if-nez v12, :cond_20

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_20
    iget-object v12, v10, Lnwp;->b:Lnws;

    check-cast v12, Lobp;

    iget v13, v12, Lobp;->a:I

    or-int/2addr v13, v7

    iput v13, v12, Lobp;->a:I

    iput-object v11, v12, Lobp;->b:Ljava/lang/String;

    :cond_21
    iget-object v11, v9, Llwq;->d:Ljava/lang/String;

    if-eqz v11, :cond_23

    iget-object v12, v10, Lnwn;->b:Lnws;

    invoke-virtual {v12}, Lnws;->ac()Z

    move-result v12

    if-nez v12, :cond_22

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_22
    iget-object v12, v10, Lnwp;->b:Lnws;

    check-cast v12, Lobp;

    iget v13, v12, Lobp;->a:I

    or-int/lit8 v13, v13, 0x2

    iput v13, v12, Lobp;->a:I

    iput-object v11, v12, Lobp;->c:Ljava/lang/String;

    :cond_23
    new-instance v11, Ljava/io/FileInputStream;

    iget-object v12, v3, Lmcl;->i:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v12, v9}, Landroidx/wear/ambient/AmbientMode$AmbientController;->s(Llwq;)Ljava/io/File;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/16 v13, 0x100

    :goto_8
    new-array v14, v13, [B

    const/4 v7, 0x0

    :goto_9
    if-ge v7, v13, :cond_25

    sub-int v6, v13, v7

    invoke-virtual {v11, v14, v7, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v15, -0x1

    if-ne v6, v15, :cond_24

    goto :goto_a

    :cond_24
    add-int/2addr v7, v6

    goto :goto_9

    :cond_25
    :goto_a
    if-nez v7, :cond_26

    const/4 v6, 0x0

    goto :goto_b

    :cond_26
    const/4 v6, 0x0

    invoke-static {v14, v6, v7}, Lnvt;->v([BII)Lnvt;

    move-result-object v6

    :goto_b
    if-nez v6, :cond_2c

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v6

    if-nez v6, :cond_27

    sget-object v6, Lnvt;->b:Lnvt;

    goto :goto_c

    :cond_27
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-static {v7, v6}, Lnvt;->s(Ljava/util/Iterator;I)Lnvt;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_c
    const/4 v7, 0x0

    invoke-static {v11, v7}, Lolp;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v10, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_28

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_28
    iget-object v11, v10, Lnwp;->b:Lnws;

    check-cast v11, Lobp;

    iget v12, v11, Lobp;->a:I

    or-int/lit8 v12, v12, 0x4

    iput v12, v11, Lobp;->a:I

    iput-object v6, v11, Lobp;->d:Lnvt;

    iget-object v6, v9, Llwq;->e:Lobn;

    if-eqz v6, :cond_2a

    iget-object v9, v10, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_29

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_29
    iget-object v9, v10, Lnwp;->b:Lnws;

    check-cast v9, Lobp;

    iput-object v6, v9, Lobp;->e:Lobn;

    iget v6, v9, Lobp;->a:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v9, Lobp;->a:I

    :cond_2a
    iget-object v6, v10, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_2b

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_2b
    iget-object v6, v10, Lnwp;->b:Lnws;

    check-cast v6, Lobp;

    iget v9, v6, Lobp;->a:I

    or-int/lit8 v9, v9, 0x10

    iput v9, v6, Lobp;->a:I

    const/4 v9, 0x1

    iput-boolean v9, v6, Lobp;->f:Z

    invoke-virtual {v10}, Lnwn;->i()Lnws;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Lobp;

    goto :goto_d

    :cond_2c
    const/4 v7, 0x0

    :try_start_1
    invoke-interface {v12, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v13

    const/16 v6, 0x2000

    invoke-static {v13, v6}, Ljava/lang/Math;->min(II)I

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x1

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v11, v2}, Lolp;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_2d
    const/4 v7, 0x0

    move-object v6, v7

    :goto_d
    if-eqz v6, :cond_2e

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    goto/16 :goto_7

    :cond_2e
    const/4 v7, 0x1

    goto/16 :goto_7

    :cond_2f
    const/4 v7, 0x0

    iget-object v3, v2, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_30

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_30
    iget-object v3, v2, Lnwp;->b:Lnws;

    check-cast v3, Lobs;

    iget-object v6, v3, Lobs;->h:Lnxa;

    invoke-interface {v6}, Lnxa;->c()Z

    move-result v8

    if-nez v8, :cond_31

    invoke-static {v6}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v6

    iput-object v6, v3, Lobs;->h:Lnxa;

    :cond_31
    iget-object v3, v3, Lobs;->h:Lnxa;

    invoke-static {v4, v3}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    iget-object v3, v2, Lnwp;->b:Lnws;

    check-cast v3, Lobs;

    iget-object v3, v3, Lobs;->i:Lnxa;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_32
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Llwq;

    iget-object v6, v5, Llwq;->b:Lluo;

    sget-object v8, Lluo;->b:Lluo;

    if-ne v6, v8, :cond_3b

    sget-object v6, Lobq;->g:Lobq;

    invoke-virtual {v6}, Lnws;->O()Lnwn;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v5, Llwq;->c:Llun;

    if-eqz v8, :cond_34

    invoke-virtual {v8}, Lluq;->b()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v6, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_33

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_33
    iget-object v9, v6, Lnwn;->b:Lnws;

    check-cast v9, Lobq;

    iget v10, v9, Lobq;->a:I

    const/4 v11, 0x1

    or-int/2addr v10, v11

    iput v10, v9, Lobq;->a:I

    iput-object v8, v9, Lobq;->b:Ljava/lang/String;

    :cond_34
    iget-object v8, v5, Llwq;->d:Ljava/lang/String;

    if-eqz v8, :cond_36

    iget-object v9, v6, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_35

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_35
    iget-object v9, v6, Lnwn;->b:Lnws;

    check-cast v9, Lobq;

    iget v10, v9, Lobq;->a:I

    or-int/lit8 v10, v10, 0x2

    iput v10, v9, Lobq;->a:I

    iput-object v8, v9, Lobq;->c:Ljava/lang/String;

    :cond_36
    iget-object v8, v5, Llwq;->h:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v6, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_37

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_37
    iget-object v9, v6, Lnwn;->b:Lnws;

    move-object v10, v9

    check-cast v10, Lobq;

    iget v11, v10, Lobq;->a:I

    or-int/lit8 v11, v11, 0x4

    iput v11, v10, Lobq;->a:I

    iput-object v8, v10, Lobq;->d:Ljava/lang/String;

    iget-object v5, v5, Llwq;->e:Lobn;

    if-eqz v5, :cond_39

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_38

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_38
    iget-object v8, v6, Lnwn;->b:Lnws;

    check-cast v8, Lobq;

    iput-object v5, v8, Lobq;->e:Lobn;

    iget v5, v8, Lobq;->a:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v8, Lobq;->a:I

    :cond_39
    iget-object v5, v6, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_3a

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_3a
    iget-object v5, v6, Lnwn;->b:Lnws;

    check-cast v5, Lobq;

    iget v8, v5, Lobq;->a:I

    or-int/lit8 v8, v8, 0x20

    iput v8, v5, Lobq;->a:I

    const/4 v8, 0x1

    iput-boolean v8, v5, Lobq;->f:Z

    invoke-virtual {v6}, Lnwn;->i()Lnws;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Lobq;

    goto :goto_f

    :cond_3b
    const/4 v8, 0x1

    move-object v5, v7

    :goto_f
    if-eqz v5, :cond_32

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    :cond_3c
    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_3d

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_3d
    iget-object v4, v2, Lnwp;->b:Lnws;

    check-cast v4, Lobs;

    iget-object v5, v4, Lobs;->i:Lnxa;

    invoke-interface {v5}, Lnxa;->c()Z

    move-result v6

    if-nez v6, :cond_3e

    invoke-static {v5}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v5

    iput-object v5, v4, Lobs;->i:Lnxa;

    :cond_3e
    iget-object v4, v4, Lobs;->i:Lnxa;

    invoke-static {v3, v4}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    iget-object v0, v0, Llyf;->q:Lobo;

    if-eqz v0, :cond_41

    iget-object v3, v2, Lnwp;->b:Lnws;

    check-cast v3, Lobs;

    iget-object v3, v3, Lobs;->j:Lnxa;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lobo;->a:Lnxa;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_3f

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_3f
    iget-object v3, v2, Lnwp;->b:Lnws;

    check-cast v3, Lobs;

    iget-object v4, v3, Lobs;->j:Lnxa;

    invoke-interface {v4}, Lnxa;->c()Z

    move-result v5

    if-nez v5, :cond_40

    invoke-static {v4}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v4

    iput-object v4, v3, Lobs;->j:Lnxa;

    :cond_40
    iget-object v3, v3, Lobs;->j:Lnxa;

    invoke-static {v0, v3}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    :cond_41
    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lobs;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
