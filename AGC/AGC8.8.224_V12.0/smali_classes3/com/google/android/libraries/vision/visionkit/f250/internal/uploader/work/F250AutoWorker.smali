.class public final Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;
.super Landroidx/work/CoroutineWorker;


# instance fields
.field public final g:Lkrn;

.field public final h:Llzz;

.field private final i:Llwr;

.field private final j:Lmai;

.field private final k:Llwc;

.field private final l:Llzx;

.field private final m:Lopq;


# direct methods
.method public constructor <init>(Lkrn;Llzz;Llwr;Lmai;Llwc;Llzx;Lopq;Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p8, p9}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;->g:Lkrn;

    iput-object p2, p0, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;->h:Llzz;

    iput-object p3, p0, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;->i:Llwr;

    iput-object p4, p0, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;->j:Lmai;

    iput-object p5, p0, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;->k:Llwc;

    iput-object p6, p0, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;->l:Llzx;

    iput-object p7, p0, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;->m:Lopq;

    return-void
.end method


# virtual methods
.method public final b(Loku;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lmal;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lmal;

    iget v1, v0, Lmal;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lmal;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lmal;

    invoke-direct {v0, p0, p1}, Lmal;-><init>(Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;Loku;)V

    :goto_0
    iget-object p1, v0, Lmal;->a:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Lmal;->c:I

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;->m:Lopq;

    new-instance v2, Lmam;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lmam;-><init>(Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;Loku;)V

    const/4 v3, 0x1

    iput v3, v0, Lmal;->c:I

    invoke-static {p1, v2, v0}, Lone;->h(Lola;Lomo;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_1

    return-object v1

    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Llzy;Loku;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    instance-of v3, v0, Lmak;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lmak;

    iget v4, v3, Lmak;->d:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lmak;->d:I

    goto :goto_0

    :cond_0
    new-instance v3, Lmak;

    invoke-direct {v3, v1, v0}, Lmak;-><init>(Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;Loku;)V

    :goto_0
    iget-object v0, v3, Lmak;->b:Ljava/lang/Object;

    sget-object v4, Lolc;->a:Lolc;

    iget v5, v3, Lmak;->d:I

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x0

    packed-switch v5, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_1
    iget-object v2, v3, Lmak;->e:Llzy;

    iget-object v5, v3, Lmak;->a:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;

    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_2
    iget-object v2, v3, Lmak;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_3
    iget-object v2, v3, Lmak;->g:Lodt;

    iget-object v5, v3, Lmak;->i:Lojx;

    iget-object v9, v3, Lmak;->h:Lojx;

    iget-object v10, v3, Lmak;->f:Llzz;

    iget-object v11, v3, Lmak;->e:Llzy;

    iget-object v12, v3, Lmak;->a:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;

    :try_start_0
    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v11

    move-object v5, v12

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v7, v9

    move-object v9, v2

    move-object v2, v11

    goto/16 :goto_4

    :pswitch_4
    invoke-static {v0}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object v10, v1, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;->h:Llzz;

    sget-object v5, Lojx;->a:Lojx;

    sget-object v9, Lodt;->q:Lodt;

    :try_start_1
    iget-object v0, v1, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;->i:Llwr;

    iget-object v11, v2, Llzy;->a:Lnyy;

    iput-object v1, v3, Lmak;->a:Ljava/lang/Object;

    iput-object v2, v3, Lmak;->e:Llzy;

    iput-object v10, v3, Lmak;->f:Llzz;

    iput-object v5, v3, Lmak;->h:Lojx;

    iput-object v5, v3, Lmak;->i:Lojx;

    iput-object v9, v3, Lmak;->g:Lodt;

    const/4 v12, 0x1

    iput v12, v3, Lmak;->d:I

    new-array v13, v7, [Llvk;

    sget-object v14, Llvk;->b:Llvk;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    sget-object v14, Llvk;->g:Llvk;

    aput-object v14, v13, v12

    sget-object v12, Llvk;->f:Llvk;

    aput-object v12, v13, v6

    invoke-static {v13}, Lljr;->az([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v12

    sget-object v13, Llul;->c:Llul;

    invoke-interface {v0, v11, v12, v13, v3}, Llwr;->b(Lnyy;Ljava/util/Set;Llul;Loku;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v4, :cond_1

    return-object v4

    :cond_1
    move-object v5, v1

    :goto_1
    check-cast v0, Ljava/util/List;

    iget-object v6, v5, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;->k:Llwc;

    iput-object v5, v3, Lmak;->a:Ljava/lang/Object;

    iput-object v2, v3, Lmak;->e:Llzy;

    iput-object v8, v3, Lmak;->f:Llzz;

    iput-object v8, v3, Lmak;->h:Lojx;

    iput-object v8, v3, Lmak;->i:Lojx;

    iput-object v8, v3, Lmak;->g:Lodt;

    iput v7, v3, Lmak;->d:I

    invoke-virtual {v6, v2, v0, v3}, Llwc;->b(Llzy;Ljava/util/List;Loku;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v4, :cond_3

    :goto_2
    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkwp;->t(Ljava/util/List;)Lojd;

    move-result-object v0

    iget-object v6, v0, Lojd;->a:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget-object v0, v0, Lojd;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v5, v5, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;->h:Llzz;

    sget-object v7, Lodt;->l:Lodt;

    const/16 v9, 0x8

    invoke-static {v2, v6, v0, v7, v9}, Llzy;->e(Llzy;Ljava/util/Collection;Ljava/util/Collection;Lodt;I)Llur;

    move-result-object v0

    iput-object v8, v3, Lmak;->a:Ljava/lang/Object;

    iput-object v8, v3, Lmak;->e:Llzy;

    const/4 v2, 0x4

    iput v2, v3, Lmak;->d:I

    invoke-virtual {v5, v0, v3}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_2

    return-object v4

    :cond_2
    :goto_3
    sget-object v0, Lojk;->a:Lojk;

    return-object v0

    :cond_3
    return-object v4

    :catchall_1
    move-exception v0

    move-object v7, v5

    :goto_4
    instance-of v11, v0, Ljava/util/concurrent/CancellationException;

    if-nez v11, :cond_4

    invoke-virtual {v2, v7, v5, v9, v0}, Llzy;->a(Ljava/util/Collection;Ljava/util/Collection;Lodt;Ljava/lang/Throwable;)Llur;

    move-result-object v2

    iput-object v0, v3, Lmak;->a:Ljava/lang/Object;

    iput-object v8, v3, Lmak;->e:Llzy;

    iput-object v8, v3, Lmak;->f:Llzz;

    iput-object v8, v3, Lmak;->h:Lojx;

    iput-object v8, v3, Lmak;->i:Lojx;

    iput-object v8, v3, Lmak;->g:Lodt;

    iput v6, v3, Lmak;->d:I

    invoke-virtual {v10, v2, v3}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_4

    return-object v4

    :cond_4
    move-object v2, v0

    :goto_5
    throw v2

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

.method public final j(Llzy;Loku;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Lman;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lman;

    iget v1, v0, Lman;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lman;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lman;

    invoke-direct {v0, p0, p2}, Lman;-><init>(Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;Loku;)V

    :goto_0
    iget-object p2, v0, Lman;->b:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Lman;->d:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_1
    iget-object p1, v0, Lman;->e:Llzy;

    iget-object v2, v0, Lman;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;

    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_2
    iget-object p1, v0, Lman;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_3
    iget-object p1, v0, Lman;->g:Lodt;

    iget-object v2, v0, Lman;->i:Lojx;

    iget-object v4, v0, Lman;->h:Lojx;

    iget-object v5, v0, Lman;->f:Llzz;

    iget-object v6, v0, Lman;->e:Llzy;

    iget-object v7, v0, Lman;->a:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;

    :try_start_0
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v6

    move-object v2, v7

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v9, p2

    move-object p2, p1

    move-object p1, v9

    goto :goto_4

    :pswitch_4
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;->h:Llzz;

    sget-object v2, Lojx;->a:Lojx;

    sget-object p2, Lodt;->q:Lodt;

    :try_start_1
    iget-object v4, p0, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;->i:Llwr;

    iget-object v6, p1, Llzy;->a:Lnyy;

    iput-object p0, v0, Lman;->a:Ljava/lang/Object;

    iput-object p1, v0, Lman;->e:Llzy;

    iput-object v5, v0, Lman;->f:Llzz;

    iput-object v2, v0, Lman;->h:Lojx;

    iput-object v2, v0, Lman;->i:Lojx;

    iput-object p2, v0, Lman;->g:Lodt;

    const/4 v7, 0x1

    iput v7, v0, Lman;->d:I

    sget-object v7, Llvk;->b:Llvk;

    sget-object v8, Llul;->c:Llul;

    invoke-interface {v4, v6, v7, v8, v0}, Llwr;->a(Lnyy;Llvk;Llul;Loku;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p2, v1, :cond_1

    return-object v1

    :cond_1
    move-object v2, p0

    :goto_1
    check-cast p2, Lnyy;

    if-eqz p2, :cond_3

    iget-object v4, v2, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;->l:Llzx;

    iput-object v2, v0, Lman;->a:Ljava/lang/Object;

    iput-object p1, v0, Lman;->e:Llzy;

    iput-object v3, v0, Lman;->f:Llzz;

    iput-object v3, v0, Lman;->h:Lojx;

    iput-object v3, v0, Lman;->i:Lojx;

    iput-object v3, v0, Lman;->g:Lodt;

    const/4 v5, 0x3

    iput v5, v0, Lman;->d:I

    invoke-interface {v4, p1, p2, v0}, Llzx;->a(Llzy;Lnyy;Loku;)Ljava/lang/Object;

    move-result-object p2

    if-eq p2, v1, :cond_2

    goto :goto_2

    :cond_2
    return-object v1

    :cond_3
    :goto_2
    iget-object p2, v2, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;->h:Llzz;

    invoke-static {p1}, Llzy;->d(Llzy;)Llur;

    move-result-object p1

    iput-object v3, v0, Lman;->a:Ljava/lang/Object;

    iput-object v3, v0, Lman;->e:Llzy;

    iput-object v3, v0, Lman;->f:Llzz;

    iput-object v3, v0, Lman;->h:Lojx;

    iput-object v3, v0, Lman;->i:Lojx;

    iput-object v3, v0, Lman;->g:Lodt;

    const/4 v2, 0x4

    iput v2, v0, Lman;->d:I

    invoke-virtual {p2, p1, v0}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_3
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :catchall_1
    move-exception v4

    move-object v6, p1

    move-object p1, v4

    move-object v4, v2

    :goto_4
    instance-of v7, p1, Ljava/util/concurrent/CancellationException;

    if-nez v7, :cond_5

    invoke-virtual {v6, v4, v2, p2, p1}, Llzy;->a(Ljava/util/Collection;Ljava/util/Collection;Lodt;Ljava/lang/Throwable;)Llur;

    move-result-object p2

    iput-object p1, v0, Lman;->a:Ljava/lang/Object;

    iput-object v3, v0, Lman;->e:Llzy;

    iput-object v3, v0, Lman;->f:Llzz;

    iput-object v3, v0, Lman;->h:Lojx;

    iput-object v3, v0, Lman;->i:Lojx;

    iput-object v3, v0, Lman;->g:Lodt;

    const/4 v2, 0x2

    iput v2, v0, Lman;->d:I

    invoke-virtual {v5, p2, v0}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_5
    throw p1

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

.method public final k(Llzy;Loku;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Lmao;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lmao;

    iget v1, v0, Lmao;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lmao;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lmao;

    invoke-direct {v0, p0, p2}, Lmao;-><init>(Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;Loku;)V

    :goto_0
    iget-object p2, v0, Lmao;->b:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Lmao;->d:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_1
    iget-object p1, v0, Lmao;->e:Llzy;

    iget-object v2, v0, Lmao;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;

    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_2
    iget-object p1, v0, Lmao;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_3
    iget-object p1, v0, Lmao;->g:Lodt;

    iget-object v2, v0, Lmao;->i:Lojx;

    iget-object v4, v0, Lmao;->h:Lojx;

    iget-object v5, v0, Lmao;->f:Llzz;

    iget-object v6, v0, Lmao;->e:Llzy;

    iget-object v7, v0, Lmao;->a:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;

    :try_start_0
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v6

    move-object v2, v7

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v9, p2

    move-object p2, p1

    move-object p1, v9

    goto :goto_4

    :pswitch_4
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;->h:Llzz;

    sget-object v2, Lojx;->a:Lojx;

    sget-object p2, Lodt;->q:Lodt;

    :try_start_1
    iget-object v4, p0, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;->i:Llwr;

    iget-object v6, p1, Llzy;->a:Lnyy;

    iput-object p0, v0, Lmao;->a:Ljava/lang/Object;

    iput-object p1, v0, Lmao;->e:Llzy;

    iput-object v5, v0, Lmao;->f:Llzz;

    iput-object v2, v0, Lmao;->h:Lojx;

    iput-object v2, v0, Lmao;->i:Lojx;

    iput-object p2, v0, Lmao;->g:Lodt;

    const/4 v7, 0x1

    iput v7, v0, Lmao;->d:I

    sget-object v7, Llvk;->b:Llvk;

    sget-object v8, Llul;->c:Llul;

    invoke-interface {v4, v6, v7, v8, v0}, Llwr;->c(Lnyy;Llvk;Llul;Loku;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p2, v1, :cond_1

    return-object v1

    :cond_1
    move-object v2, p0

    :goto_1
    check-cast p2, Ljava/util/List;

    iget-object v4, v2, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;->j:Lmai;

    sget-object v5, Llui;->a:Laxf;

    iput-object v2, v0, Lmao;->a:Ljava/lang/Object;

    iput-object p1, v0, Lmao;->e:Llzy;

    iput-object v3, v0, Lmao;->f:Llzz;

    iput-object v3, v0, Lmao;->h:Lojx;

    iput-object v3, v0, Lmao;->i:Lojx;

    iput-object v3, v0, Lmao;->g:Lodt;

    const/4 v6, 0x3

    iput v6, v0, Lmao;->d:I

    invoke-static {v4, p1, p2, v5, v0}, Lmai;->a(Lmai;Llzy;Ljava/util/List;Laxf;Loku;)Ljava/lang/Object;

    move-result-object p2

    if-eq p2, v1, :cond_3

    :goto_2
    check-cast p2, Lojd;

    iget-object v4, p2, Lojd;->a:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object p2, p2, Lojd;->b:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    iget-object v2, v2, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;->h:Llzz;

    sget-object v5, Lodt;->k:Lodt;

    const/16 v6, 0x8

    invoke-static {p1, v4, p2, v5, v6}, Llzy;->e(Llzy;Ljava/util/Collection;Ljava/util/Collection;Lodt;I)Llur;

    move-result-object p1

    iput-object v3, v0, Lmao;->a:Ljava/lang/Object;

    iput-object v3, v0, Lmao;->e:Llzy;

    const/4 p2, 0x4

    iput p2, v0, Lmao;->d:I

    invoke-virtual {v2, p1, v0}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    :goto_3
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :cond_3
    return-object v1

    :catchall_1
    move-exception v4

    move-object v6, p1

    move-object p1, v4

    move-object v4, v2

    :goto_4
    instance-of v7, p1, Ljava/util/concurrent/CancellationException;

    if-nez v7, :cond_4

    invoke-virtual {v6, v4, v2, p2, p1}, Llzy;->a(Ljava/util/Collection;Ljava/util/Collection;Lodt;Ljava/lang/Throwable;)Llur;

    move-result-object p2

    iput-object p1, v0, Lmao;->a:Ljava/lang/Object;

    iput-object v3, v0, Lmao;->e:Llzy;

    iput-object v3, v0, Lmao;->f:Llzz;

    iput-object v3, v0, Lmao;->h:Lojx;

    iput-object v3, v0, Lmao;->i:Lojx;

    iput-object v3, v0, Lmao;->g:Lodt;

    const/4 v2, 0x2

    iput v2, v0, Lmao;->d:I

    invoke-virtual {v5, p2, v0}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_5
    throw p1

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
