.class public final Llwc;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field private final c:Llzz;

.field private final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Llyh;Llzz;Llyz;Lkrn;[B[B)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llwc;->d:Ljava/lang/Object;

    iput-object p2, p0, Llwc;->c:Llzz;

    iput-object p3, p0, Llwc;->a:Ljava/lang/Object;

    iput-object p4, p0, Llwc;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Llzz;Llwh;Ljava/io/File;Llvr;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llwc;->c:Llzz;

    iput-object p2, p0, Llwc;->a:Ljava/lang/Object;

    iput-object p3, p0, Llwc;->d:Ljava/lang/Object;

    iput-object p4, p0, Llwc;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Llzy;Llyg;Loku;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Llwa;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Llwa;

    iget v1, v0, Llwa;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Llwa;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Llwa;

    invoke-direct {v0, p0, p3}, Llwa;-><init>(Llwc;Loku;)V

    :goto_0
    iget-object p3, v0, Llwa;->a:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Llwa;->c:I

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    invoke-static {p2}, Lljr;->ac(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x1

    iput p3, v0, Llwa;->c:I

    invoke-virtual {p0, p1, p2, v0}, Llwc;->b(Llzy;Ljava/util/List;Loku;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_1

    return-object v1

    :cond_1
    :goto_1
    check-cast p3, Ljava/util/List;

    invoke-static {p3}, Lljr;->ah(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Llzy;Ljava/util/List;Loku;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    instance-of v2, v0, Llwb;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Llwb;

    iget v3, v2, Llwb;->g:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Llwb;->g:I

    goto :goto_0

    :cond_0
    new-instance v2, Llwb;

    invoke-direct {v2, v1, v0}, Llwb;-><init>(Llwc;Loku;)V

    :goto_0
    iget-object v0, v2, Llwb;->e:Ljava/lang/Object;

    sget-object v3, Lolc;->a:Lolc;

    iget v4, v2, Llwb;->g:I

    const/16 v5, 0x8

    const/4 v6, 0x1

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v2, v2, Llwb;->a:Ljava/lang/Object;

    check-cast v2, Ljava/io/IOException;

    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_1
    iget-object v2, v2, Llwb;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_2
    iget-object v4, v2, Llwb;->j:Ljava/util/List;

    iget-object v6, v2, Llwb;->i:Ljava/util/List;

    iget-object v8, v2, Llwb;->d:Ljava/lang/Object;

    check-cast v8, Llzz;

    iget-object v9, v2, Llwb;->c:Ljava/lang/Object;

    check-cast v9, Lodt;

    iget-object v10, v2, Llwb;->b:Ljava/lang/Object;

    check-cast v10, Lojd;

    iget-object v11, v2, Llwb;->h:Llzy;

    iget-object v12, v2, Llwb;->a:Ljava/lang/Object;

    check-cast v12, Llwc;

    :try_start_0
    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :pswitch_3
    iget-object v4, v2, Llwb;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v6, v2, Llwb;->b:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget-object v8, v2, Llwb;->h:Llzy;

    iget-object v9, v2, Llwb;->a:Ljava/lang/Object;

    check-cast v9, Llwc;

    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V

    move-object v11, v8

    move-object v12, v9

    goto/16 :goto_7

    :pswitch_4
    iget-object v2, v2, Llwb;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_5
    iget-object v4, v2, Llwb;->j:Ljava/util/List;

    iget-object v6, v2, Llwb;->i:Ljava/util/List;

    iget-object v8, v2, Llwb;->d:Ljava/lang/Object;

    check-cast v8, Llzz;

    iget-object v9, v2, Llwb;->c:Ljava/lang/Object;

    check-cast v9, Lodt;

    iget-object v10, v2, Llwb;->b:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v11, v2, Llwb;->h:Llzy;

    iget-object v12, v2, Llwb;->a:Ljava/lang/Object;

    check-cast v12, Llwc;

    :try_start_1
    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v10

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_5

    :pswitch_6
    iget-object v2, v2, Llwb;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_7
    iget-object v4, v2, Llwb;->i:Ljava/util/List;

    iget-object v8, v2, Llwb;->d:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    iget-object v9, v2, Llwb;->c:Ljava/lang/Object;

    check-cast v9, Llzz;

    iget-object v10, v2, Llwb;->b:Ljava/lang/Object;

    check-cast v10, Lodt;

    iget-object v11, v2, Llwb;->h:Llzy;

    iget-object v12, v2, Llwb;->a:Ljava/lang/Object;

    check-cast v12, Llwc;

    :try_start_2
    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v4, v12

    move-object v12, v11

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v12, v11

    goto/16 :goto_c

    :pswitch_8
    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object v9, v1, Llwc;->c:Llzz;

    invoke-static/range {p2 .. p2}, Lkwp;->t(Ljava/util/List;)Lojd;

    move-result-object v0

    sget-object v10, Lodt;->s:Lodt;

    iget-object v4, v0, Lojd;->a:Ljava/lang/Object;

    move-object v8, v4

    check-cast v8, Ljava/util/List;

    iget-object v0, v0, Lojd;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    :try_start_3
    iget-object v0, v1, Llwc;->a:Ljava/lang/Object;

    sget-object v11, Llul;->e:Llul;

    iput-object v1, v2, Llwb;->a:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    move-object/from16 v12, p1

    :try_start_4
    iput-object v12, v2, Llwb;->h:Llzy;

    iput-object v10, v2, Llwb;->b:Ljava/lang/Object;

    iput-object v9, v2, Llwb;->c:Ljava/lang/Object;

    iput-object v8, v2, Llwb;->d:Ljava/lang/Object;

    iput-object v4, v2, Llwb;->i:Ljava/util/List;

    iput v6, v2, Llwb;->g:I

    check-cast v0, Llwh;

    move-object/from16 v13, p2

    invoke-virtual {v0, v13, v11, v2}, Llwh;->a(Ljava/util/List;Llul;Loku;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-ne v0, v3, :cond_1

    return-object v3

    :cond_1
    move-object v4, v1

    :goto_1
    check-cast v0, Ljava/util/List;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Llyg;

    iget-object v13, v4, Llwc;->b:Ljava/lang/Object;

    iget-object v13, v4, Llwc;->d:Ljava/lang/Object;

    iget-object v11, v11, Llyg;->a:Llyf;

    iget-wide v14, v11, Llyf;->u:J

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resource_"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    check-cast v13, Ljava/io/File;

    invoke-static {v13, v7}, Lone;->g(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    new-instance v11, Loob;

    invoke-direct {v11, v7, v6}, Loob;-><init>(Ljava/io/File;I)V

    invoke-interface {v11}, Looc;->a()Ljava/util/Iterator;

    move-result-object v7

    const/4 v11, 0x1

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v14

    const/4 v15, 0x0

    if-nez v14, :cond_2

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_3

    :cond_2
    if-eqz v11, :cond_3

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    :cond_4
    if-eqz v11, :cond_5

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v0, Lojd;

    invoke-direct {v0, v8, v9}, Lojd;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v6, v0, Lojd;->a:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget-object v0, v0, Lojd;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v8, v4, Llwc;->c:Llzz;

    invoke-static {v6}, Lkwp;->t(Ljava/util/List;)Lojd;

    move-result-object v7

    sget-object v9, Lodt;->s:Lodt;

    iget-object v10, v7, Lojd;->a:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v7, v7, Lojd;->b:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    :try_start_5
    iget-object v11, v4, Llwc;->a:Ljava/lang/Object;

    sget-object v13, Llul;->f:Llul;

    iput-object v4, v2, Llwb;->a:Ljava/lang/Object;

    iput-object v12, v2, Llwb;->h:Llzy;

    iput-object v0, v2, Llwb;->b:Ljava/lang/Object;

    iput-object v9, v2, Llwb;->c:Ljava/lang/Object;

    iput-object v8, v2, Llwb;->d:Ljava/lang/Object;

    iput-object v10, v2, Llwb;->i:Ljava/util/List;

    iput-object v7, v2, Llwb;->j:Ljava/util/List;

    const/4 v14, 0x3

    iput v14, v2, Llwb;->g:I

    check-cast v11, Llwh;

    invoke-virtual {v11, v6, v13, v2}, Llwh;->a(Ljava/util/List;Llul;Loku;)Ljava/lang/Object;

    move-result-object v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eq v6, v3, :cond_8

    move-object v11, v12

    move-object v12, v4

    move-object/from16 v16, v6

    move-object v6, v0

    move-object/from16 v0, v16

    :goto_4
    move-object v4, v0

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lkwp;->t(Ljava/util/List;)Lojd;

    move-result-object v0

    iget-object v7, v0, Lojd;->a:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v0, v0, Lojd;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v8, v12, Llwc;->c:Llzz;

    sget-object v9, Lodt;->h:Lodt;

    invoke-static {v11, v7, v0, v9, v5}, Llzy;->e(Llzy;Ljava/util/Collection;Ljava/util/Collection;Lodt;I)Llur;

    move-result-object v0

    iput-object v12, v2, Llwb;->a:Ljava/lang/Object;

    iput-object v11, v2, Llwb;->h:Llzy;

    iput-object v6, v2, Llwb;->b:Ljava/lang/Object;

    iput-object v4, v2, Llwb;->c:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v2, Llwb;->d:Ljava/lang/Object;

    iput-object v7, v2, Llwb;->i:Ljava/util/List;

    iput-object v7, v2, Llwb;->j:Ljava/util/List;

    const/4 v7, 0x5

    iput v7, v2, Llwb;->g:I

    invoke-virtual {v8, v0, v2}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v3, :cond_7

    goto :goto_7

    :cond_7
    return-object v3

    :cond_8
    return-object v3

    :catchall_3
    move-exception v0

    move-object v4, v7

    move-object v6, v10

    move-object v11, v12

    :goto_5
    instance-of v5, v0, Ljava/util/concurrent/CancellationException;

    if-nez v5, :cond_9

    invoke-virtual {v11, v6, v4, v9, v0}, Llzy;->a(Ljava/util/Collection;Ljava/util/Collection;Lodt;Ljava/lang/Throwable;)Llur;

    move-result-object v4

    iput-object v0, v2, Llwb;->a:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v2, Llwb;->h:Llzy;

    iput-object v5, v2, Llwb;->b:Ljava/lang/Object;

    iput-object v5, v2, Llwb;->c:Ljava/lang/Object;

    iput-object v5, v2, Llwb;->d:Ljava/lang/Object;

    iput-object v5, v2, Llwb;->i:Ljava/util/List;

    iput-object v5, v2, Llwb;->j:Ljava/util/List;

    const/4 v5, 0x4

    iput v5, v2, Llwb;->g:I

    invoke-virtual {v8, v4, v2}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_9

    return-object v3

    :cond_9
    move-object v2, v0

    :goto_6
    throw v2

    :cond_a
    sget-object v6, Lojx;->a:Lojx;

    move-object v11, v12

    move-object v12, v4

    move-object v4, v6

    move-object v6, v0

    :goto_7
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {v6}, Lkwp;->t(Ljava/util/List;)Lojd;

    move-result-object v10

    iget-object v8, v12, Llwc;->c:Llzz;

    sget-object v9, Lodt;->s:Lodt;

    iget-object v0, v10, Lojd;->a:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    iget-object v0, v10, Lojd;->b:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/util/List;

    :try_start_6
    iget-object v0, v12, Llwc;->a:Ljava/lang/Object;

    sget-object v13, Llul;->g:Llul;

    iput-object v12, v2, Llwb;->a:Ljava/lang/Object;

    iput-object v11, v2, Llwb;->h:Llzy;

    iput-object v10, v2, Llwb;->b:Ljava/lang/Object;

    iput-object v9, v2, Llwb;->c:Ljava/lang/Object;

    iput-object v8, v2, Llwb;->d:Ljava/lang/Object;

    iput-object v4, v2, Llwb;->i:Ljava/util/List;

    iput-object v7, v2, Llwb;->j:Ljava/util/List;

    const/4 v14, 0x6

    iput v14, v2, Llwb;->g:I

    check-cast v0, Llwh;

    invoke-virtual {v0, v6, v13, v2}, Llwh;->a(Ljava/util/List;Llul;Loku;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eq v0, v3, :cond_c

    :goto_8
    iget-object v0, v10, Lojd;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v4, v10, Lojd;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    new-instance v6, Ljava/io/IOException;

    const-string v7, "File deletion failed"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v7, v12, Llwc;->c:Llzz;

    sget-object v8, Lodt;->v:Lodt;

    invoke-virtual {v11, v0, v4, v8, v6}, Llzy;->a(Ljava/util/Collection;Ljava/util/Collection;Lodt;Ljava/lang/Throwable;)Llur;

    move-result-object v0

    iput-object v6, v2, Llwb;->a:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v2, Llwb;->h:Llzy;

    iput-object v4, v2, Llwb;->b:Ljava/lang/Object;

    iput-object v4, v2, Llwb;->c:Ljava/lang/Object;

    iput-object v4, v2, Llwb;->d:Ljava/lang/Object;

    iput-object v4, v2, Llwb;->i:Ljava/util/List;

    iput-object v4, v2, Llwb;->j:Ljava/util/List;

    iput v5, v2, Llwb;->g:I

    invoke-virtual {v7, v0, v2}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_b

    return-object v3

    :cond_b
    move-object v2, v6

    :goto_9
    throw v2

    :cond_c
    return-object v3

    :catchall_4
    move-exception v0

    move-object v6, v4

    move-object v4, v7

    :goto_a
    instance-of v5, v0, Ljava/util/concurrent/CancellationException;

    if-nez v5, :cond_d

    invoke-virtual {v11, v6, v4, v9, v0}, Llzy;->a(Ljava/util/Collection;Ljava/util/Collection;Lodt;Ljava/lang/Throwable;)Llur;

    move-result-object v4

    iput-object v0, v2, Llwb;->a:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v2, Llwb;->h:Llzy;

    iput-object v5, v2, Llwb;->b:Ljava/lang/Object;

    iput-object v5, v2, Llwb;->c:Ljava/lang/Object;

    iput-object v5, v2, Llwb;->d:Ljava/lang/Object;

    iput-object v5, v2, Llwb;->i:Ljava/util/List;

    iput-object v5, v2, Llwb;->j:Ljava/util/List;

    const/4 v5, 0x7

    iput v5, v2, Llwb;->g:I

    invoke-virtual {v8, v4, v2}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_d

    return-object v3

    :cond_d
    move-object v2, v0

    :goto_b
    throw v2

    :cond_e
    return-object v4

    :catchall_5
    move-exception v0

    goto :goto_c

    :catchall_6
    move-exception v0

    move-object/from16 v12, p1

    :goto_c
    instance-of v5, v0, Ljava/util/concurrent/CancellationException;

    if-nez v5, :cond_f

    invoke-virtual {v12, v8, v4, v10, v0}, Llzy;->a(Ljava/util/Collection;Ljava/util/Collection;Lodt;Ljava/lang/Throwable;)Llur;

    move-result-object v4

    iput-object v0, v2, Llwb;->a:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v2, Llwb;->h:Llzy;

    iput-object v5, v2, Llwb;->b:Ljava/lang/Object;

    iput-object v5, v2, Llwb;->c:Ljava/lang/Object;

    iput-object v5, v2, Llwb;->d:Ljava/lang/Object;

    iput-object v5, v2, Llwb;->i:Ljava/util/List;

    const/4 v5, 0x2

    iput v5, v2, Llwb;->g:I

    invoke-virtual {v9, v4, v2}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_f

    return-object v3

    :cond_f
    move-object v2, v0

    :goto_d
    goto :goto_f

    :goto_e
    throw v2

    :goto_f
    goto :goto_e

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
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

.method public final c(Lmdd;Ljava/lang/String;Loku;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p3, Lmcm;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lmcm;

    iget v2, v0, Lmcm;->c:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v0, Lmcm;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lmcm;

    invoke-direct {v0, p0, p3, v1}, Lmcm;-><init>(Llwc;Loku;[B)V

    :goto_0
    iget-object p3, v0, Lmcm;->b:Ljava/lang/Object;

    sget-object v2, Lolc;->a:Lolc;

    iget v3, v0, Lmcm;->c:I

    packed-switch v3, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object p1, v0, Lmcm;->a:Ljava/lang/Object;

    check-cast p1, Lmdd;

    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    iget-object p1, v0, Lmcm;->d:Lmdd;

    iget-object p2, v0, Lmcm;->a:Ljava/lang/Object;

    check-cast p2, Llwc;

    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p3, p0, Llwc;->c:Llzz;

    new-instance v9, Lmcn;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lmcn;-><init>(Llwc;Lmdd;Ljava/lang/String;Loku;[B)V

    iput-object p0, v0, Lmcm;->a:Ljava/lang/Object;

    iput-object p1, v0, Lmcm;->d:Lmdd;

    const/4 p2, 0x1

    iput p2, v0, Lmcm;->c:I

    invoke-static {p3, p1, v9, v0}, Llyh;->i(Llzz;Lmdd;Lomk;Loku;)Ljava/lang/Object;

    move-result-object p3

    if-eq p3, v2, :cond_1

    move-object p2, p0

    :goto_1
    check-cast p3, Llyf;

    invoke-static {p1, p3}, Lmdd;->a(Lmdd;Llyf;)Lmdd;

    move-result-object p1

    iget-object p2, p2, Llwc;->c:Llzz;

    sget-object p3, Lodt;->g:Lodt;

    iput-object p1, v0, Lmcm;->a:Ljava/lang/Object;

    iput-object v1, v0, Lmcm;->d:Lmdd;

    const/4 v3, 0x2

    iput v3, v0, Lmcm;->c:I

    invoke-static {p2, p1, p3, v1, v0}, Llyh;->h(Llzz;Lmdd;Lodt;Ljava/lang/Throwable;Loku;)Ljava/lang/Object;

    move-result-object p2

    if-eq p2, v2, :cond_1

    :goto_2
    return-object p1

    :cond_1
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lmdd;Loku;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lmco;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lmco;

    iget v2, v0, Lmco;->c:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v0, Lmco;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lmco;

    invoke-direct {v0, p0, p2, v1}, Lmco;-><init>(Llwc;Loku;[B)V

    :goto_0
    iget-object p2, v0, Lmco;->b:Ljava/lang/Object;

    sget-object v2, Lolc;->a:Lolc;

    iget v3, v0, Lmco;->c:I

    packed-switch v3, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object p1, v0, Lmco;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/IllegalStateException;

    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    iget-object p1, v0, Lmco;->e:Ljava/lang/IllegalStateException;

    iget-object v3, v0, Lmco;->d:Lmdd;

    iget-object v4, v0, Lmco;->a:Ljava/lang/Object;

    check-cast v4, Llwc;

    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v3

    goto :goto_1

    :pswitch_2
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v3, "UploadAttachmentComplete for resource"

    invoke-direct {p2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Llwc;->c:Llzz;

    sget-object v4, Lodt;->B:Lodt;

    iput-object p0, v0, Lmco;->a:Ljava/lang/Object;

    iput-object p1, v0, Lmco;->d:Lmdd;

    iput-object p2, v0, Lmco;->e:Ljava/lang/IllegalStateException;

    const/4 v5, 0x1

    iput v5, v0, Lmco;->c:I

    invoke-static {v3, p1, v4, p2, v0}, Llyh;->h(Llzz;Lmdd;Lodt;Ljava/lang/Throwable;Loku;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_2

    move-object v4, p0

    :goto_1
    iget-object v3, v4, Llwc;->c:Llzz;

    new-instance v5, Lmcp;

    invoke-direct {v5, v4, p1, v1, v1}, Lmcp;-><init>(Llwc;Lmdd;Loku;[B)V

    iput-object p2, v0, Lmco;->a:Ljava/lang/Object;

    iput-object v1, v0, Lmco;->d:Lmdd;

    iput-object v1, v0, Lmco;->e:Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    iput v1, v0, Lmco;->c:I

    invoke-static {v3, p1, v5, v0}, Llyh;->i(Llzz;Lmdd;Lomk;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_1

    return-object v2

    :cond_1
    move-object p1, p2

    :goto_2
    throw p1

    :cond_2
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lmdd;Lmdc;Lmdf;Loku;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p4, Lmcq;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lmcq;

    iget v2, v0, Lmcq;->c:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v0, Lmcq;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lmcq;

    invoke-direct {v0, p0, p4, v1}, Lmcq;-><init>(Llwc;Loku;[B)V

    :goto_0
    iget-object p4, v0, Lmcq;->b:Ljava/lang/Object;

    sget-object v2, Lolc;->a:Lolc;

    iget v3, v0, Lmcq;->c:I

    packed-switch v3, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object p1, v0, Lmcq;->a:Ljava/lang/Object;

    goto :goto_1

    :pswitch_1
    iget-object p1, v0, Lmcq;->a:Ljava/lang/Object;

    :goto_1
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p4}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_2
    iget-object p1, v0, Lmcq;->g:Lods;

    iget-object p2, v0, Lmcq;->f:Lodt;

    iget-object p3, v0, Lmcq;->e:Lmdc;

    iget-object v3, v0, Lmcq;->d:Lmdd;

    iget-object v4, v0, Lmcq;->a:Ljava/lang/Object;

    check-cast v4, Llwc;

    invoke-static {p4}, Lljr;->aO(Ljava/lang/Object;)V

    move-object v7, p3

    move-object v5, v4

    move-object p3, p1

    move-object p1, v3

    goto :goto_2

    :pswitch_3
    invoke-static {p4}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p4, p3, Lmdf;->a:Lodt;

    iget-object p3, p3, Lmdf;->b:Ljava/lang/Throwable;

    iget-object v3, p0, Llwc;->c:Llzz;

    iput-object p0, v0, Lmcq;->a:Ljava/lang/Object;

    iput-object p1, v0, Lmcq;->d:Lmdd;

    iput-object p2, v0, Lmcq;->e:Lmdc;

    iput-object p4, v0, Lmcq;->f:Lodt;

    move-object v4, p3

    check-cast v4, Lods;

    iput-object v4, v0, Lmcq;->g:Lods;

    const/4 v4, 0x1

    iput v4, v0, Lmcq;->c:I

    invoke-static {v3, p1, p4, p3, v0}, Llyh;->h(Llzz;Lmdd;Lodt;Ljava/lang/Throwable;Loku;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_2

    move-object v5, p0

    move-object v7, p2

    move-object p2, p4

    :goto_2
    sget-object p4, Lodt;->a:Lodt;

    invoke-virtual {p2}, Lodt;->ordinal()I

    move-result p2

    packed-switch p2, :pswitch_data_1

    iget-object p2, v5, Llwc;->c:Llzz;

    new-instance p4, Lmct;

    invoke-direct {p4, v5, p1, v1, v1}, Lmct;-><init>(Llwc;Lmdd;Loku;[B)V

    iput-object p3, v0, Lmcq;->a:Ljava/lang/Object;

    iput-object v1, v0, Lmcq;->d:Lmdd;

    iput-object v1, v0, Lmcq;->e:Lmdc;

    iput-object v1, v0, Lmcq;->f:Lodt;

    iput-object v1, v0, Lmcq;->g:Lods;

    const/4 v1, 0x4

    iput v1, v0, Lmcq;->c:I

    invoke-static {p2, p1, p4, v0}, Llyh;->i(Llzz;Lmdd;Lomk;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_1

    return-object v2

    :pswitch_4
    iget-object p2, v5, Llwc;->c:Llzz;

    new-instance p4, Lmcr;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p4

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lmcr;-><init>(Llwc;Lmdd;Lmdc;Loku;[B)V

    iput-object p3, v0, Lmcq;->a:Ljava/lang/Object;

    iput-object v1, v0, Lmcq;->d:Lmdd;

    iput-object v1, v0, Lmcq;->e:Lmdc;

    iput-object v1, v0, Lmcq;->f:Lodt;

    iput-object v1, v0, Lmcq;->g:Lods;

    const/4 v1, 0x2

    iput v1, v0, Lmcq;->c:I

    invoke-static {p2, p1, p4, v0}, Llyh;->i(Llzz;Lmdd;Lomk;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_1

    return-object v2

    :pswitch_5
    iget-object p2, v5, Llwc;->c:Llzz;

    new-instance p4, Lmcs;

    invoke-direct {p4, v5, p1, v1, v1}, Lmcs;-><init>(Llwc;Lmdd;Loku;[B)V

    iput-object p3, v0, Lmcq;->a:Ljava/lang/Object;

    iput-object v1, v0, Lmcq;->d:Lmdd;

    iput-object v1, v0, Lmcq;->e:Lmdc;

    iput-object v1, v0, Lmcq;->f:Lodt;

    iput-object v1, v0, Lmcq;->g:Lods;

    const/4 v1, 0x3

    iput v1, v0, Lmcq;->c:I

    invoke-static {p2, p1, p4, v0}, Llyh;->i(Llzz;Lmdd;Lomk;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_1

    return-object v2

    :cond_1
    move-object p1, p3

    :goto_3
    throw p1

    :cond_2
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final f(Lmdd;Ljava/lang/String;Loku;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p3, Lmcu;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lmcu;

    iget v1, v0, Lmcu;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lmcu;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lmcu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p3, v1}, Lmcu;-><init>(Llwc;Loku;[B)V

    :goto_0
    iget-object p3, v0, Lmcu;->a:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Lmcu;->b:I

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object p1, v0, Lmcu;->c:Lmdd;

    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p3}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p3, p1, Lmdd;->a:Llyf;

    iget-object p3, p3, Llyf;->p:Ljava/lang/String;

    invoke-static {p2, p3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Llwc;->c:Llzz;

    new-instance v8, Lmcv;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lmcv;-><init>(Llwc;Lmdd;Ljava/lang/String;Loku;[B)V

    iput-object p1, v0, Lmcu;->c:Lmdd;

    const/4 p2, 0x1

    iput p2, v0, Lmcu;->b:I

    invoke-static {p3, p1, v8, v0}, Llyh;->i(Llzz;Lmdd;Lomk;Loku;)Ljava/lang/Object;

    move-result-object p3

    if-eq p3, v1, :cond_1

    :goto_1
    check-cast p3, Llyf;

    invoke-static {p1, p3}, Lmdd;->a(Lmdd;Llyf;)Lmdd;

    move-result-object p1

    goto :goto_2

    :cond_1
    return-object v1

    :cond_2
    :goto_2
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Lmdd;Lmdc;JLoku;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p5, Lmcw;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lmcw;

    iget v1, v0, Lmcw;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lmcw;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lmcw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p5, v1}, Lmcw;-><init>(Llwc;Loku;[B)V

    :goto_0
    iget-object p5, v0, Lmcw;->a:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Lmcw;->b:I

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object p1, v0, Lmcw;->c:Lmdd;

    invoke-static {p5}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p5}, Lljr;->aO(Ljava/lang/Object;)V

    invoke-virtual {p2, p3, p4}, Lmdc;->a(J)D

    move-result-wide v5

    iget-object p2, p0, Llwc;->c:Llzz;

    new-instance p3, Lmcx;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p3

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lmcx;-><init>(Llwc;Lmdd;DLoku;[B)V

    iput-object p1, v0, Lmcw;->c:Lmdd;

    const/4 p4, 0x1

    iput p4, v0, Lmcw;->b:I

    invoke-static {p2, p1, p3, v0}, Llyh;->i(Llzz;Lmdd;Lomk;Loku;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_1

    return-object v1

    :cond_1
    :goto_1
    check-cast p5, Llyf;

    invoke-static {p1, p5}, Lmdd;->a(Lmdd;Llyf;)Lmdd;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Llzy;Lobs;Lmdc;Llyf;Ljava/util/List;Loku;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p6, Lmcz;

    if-eqz v0, :cond_0

    move-object v0, p6

    check-cast v0, Lmcz;

    iget v1, v0, Lmcz;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lmcz;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lmcz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p6, v1}, Lmcz;-><init>(Llwc;Loku;[B)V

    :goto_0
    iget-object p6, v0, Lmcz;->a:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Lmcz;->b:I

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object p1, v0, Lmcz;->c:Lonk;

    invoke-static {p6}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p6}, Lljr;->aO(Ljava/lang/Object;)V

    new-instance p6, Lmdd;

    invoke-direct {p6, p4, p5, p1}, Lmdd;-><init>(Llyf;Ljava/util/List;Llzy;)V

    iget-object p1, p0, Llwc;->d:Ljava/lang/Object;

    invoke-virtual {p2}, Lnve;->J()[B

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p4, p4, Llyf;->p:Ljava/lang/String;

    new-instance p5, Lodp;

    invoke-direct {p5, p2}, Lodp;-><init>([B)V

    check-cast p1, Llyh;

    const-string p2, "https://mobile-vision-f250-uploads.googleapis.com/upload/assemble"

    invoke-virtual {p1, p5, p4, p2}, Llyh;->d(Lodj;Ljava/lang/String;Ljava/lang/String;)Lott;

    move-result-object p1

    new-instance p2, Lonk;

    invoke-direct {p2}, Lonk;-><init>()V

    iput-object p6, p2, Lonk;->a:Ljava/lang/Object;

    new-instance p4, Lotr;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lotr;-><init>(Lonk;Llwc;Lmdc;I[B)V

    iput-object p2, v0, Lmcz;->c:Lonk;

    const/4 p3, 0x1

    iput p3, v0, Lmcz;->b:I

    check-cast p1, Lovi;

    invoke-static {p1, p4, v0}, Lovi;->d(Lovi;Lotu;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v1, :cond_1

    move-object p1, p2

    :goto_1
    iget-object p1, p1, Lonk;->a:Ljava/lang/Object;

    check-cast p1, Lmdd;

    iget-object p1, p1, Lmdd;->a:Llyf;

    return-object p1

    :cond_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
