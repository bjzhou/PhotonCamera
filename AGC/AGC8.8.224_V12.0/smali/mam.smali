.class public final Lmam;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.work.F250AutoWorker$doWork$2"
    c = "F250AutoWorker.kt"
    d = "invokeSuspend"
    e = {
        0x30,
        0x33,
        0x34,
        0x35,
        0x3a,
        0x3e
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;Loku;)V
    .locals 0

    iput-object p1, p0, Lmam;->c:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Loln;-><init>(ILoku;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lopu;

    check-cast p2, Loku;

    invoke-virtual {p0, p1, p2}, Lolf;->c(Ljava/lang/Object;Loku;)Loku;

    move-result-object p1

    sget-object p2, Lojk;->a:Lojk;

    check-cast p1, Lmam;

    invoke-virtual {p1, p2}, Lmam;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Lmam;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_1
    iget-object v1, p0, Lmam;->a:Ljava/lang/Object;

    :try_start_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :pswitch_2
    iget-object v1, p0, Lmam;->a:Ljava/lang/Object;

    :try_start_1
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :pswitch_3
    iget-object v1, p0, Lmam;->a:Ljava/lang/Object;

    :try_start_2
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :pswitch_4
    iget-object v1, p0, Lmam;->a:Ljava/lang/Object;

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    new-instance p1, Llzy;

    iget-object v1, p0, Lmam;->c:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;

    iget-object v1, v1, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;->g:Lkrn;

    sget-object v4, Llup;->a:Llup;

    invoke-direct {p1, v1, v4, v3, v3}, Llzy;-><init>(Lkrn;Lllj;[B[B)V

    iget-object v1, p0, Lmam;->c:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;

    iget-object v1, v1, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;->h:Llzz;

    sget-object v4, Lodt;->n:Lodt;

    const/16 v5, 0xb

    invoke-static {p1, v3, v3, v4, v5}, Llzy;->e(Llzy;Ljava/util/Collection;Ljava/util/Collection;Lodt;I)Llur;

    move-result-object v4

    iput-object p1, p0, Lmam;->a:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, p0, Lmam;->b:I

    invoke-virtual {v1, v4, p0}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_3

    move-object v1, p1

    :goto_0
    :try_start_3
    iget-object p1, p0, Lmam;->c:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;

    iput-object v1, p0, Lmam;->a:Ljava/lang/Object;

    iput v2, p0, Lmam;->b:I

    move-object v4, v1

    check-cast v4, Llzy;

    invoke-virtual {p1, v4, p0}, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;->k(Llzy;Loku;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eq p1, v0, :cond_0

    :goto_1
    :try_start_4
    iget-object p1, p0, Lmam;->c:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;

    iput-object v1, p0, Lmam;->a:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, p0, Lmam;->b:I

    move-object v4, v1

    check-cast v4, Llzy;

    invoke-virtual {p1, v4, p0}, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;->i(Llzy;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v0, :cond_0

    :goto_2
    iget-object p1, p0, Lmam;->c:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;

    iput-object v1, p0, Lmam;->a:Ljava/lang/Object;

    const/4 v4, 0x4

    iput v4, p0, Lmam;->b:I

    move-object v4, v1

    check-cast v4, Llzy;

    invoke-virtual {p1, v4, p0}, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;->j(Llzy;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v0, :cond_0

    :goto_3
    invoke-static {}, Ldr;->e()Ldr;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    :cond_0
    return-object v0

    :catchall_1
    move-exception p1

    :goto_4
    instance-of v4, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v4, :cond_2

    iget-object p1, p0, Lmam;->c:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;

    iget-object v1, p1, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;->h:Llzz;

    new-instance v2, Llzy;

    iget-object p1, p1, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;->g:Lkrn;

    sget-object v4, Llvf;->a:Llvf;

    invoke-direct {v2, p1, v4, v3, v3}, Llzy;-><init>(Lkrn;Lllj;[B[B)V

    invoke-static {v2}, Llzy;->d(Llzy;)Llur;

    move-result-object p1

    iput-object v3, p0, Lmam;->a:Ljava/lang/Object;

    const/4 v2, 0x5

    iput v2, p0, Lmam;->b:I

    invoke-virtual {v1, p1, p0}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    :cond_1
    :goto_5
    invoke-static {}, Ldr;->d()Ldr;

    move-result-object p1

    goto :goto_7

    :cond_2
    iget-object v4, p0, Lmam;->c:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;

    iget-object v4, v4, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;->h:Llzz;

    sget-object v5, Lodt;->F:Lodt;

    check-cast v1, Llzy;

    const/16 v6, 0xc

    invoke-static {v1, v5, p1, v3, v6}, Llzy;->c(Llzy;Lodt;Ljava/lang/Throwable;Llux;I)Llur;

    move-result-object p1

    iput-object v3, p0, Lmam;->a:Ljava/lang/Object;

    const/4 v1, 0x6

    iput v1, p0, Lmam;->b:I

    invoke-virtual {v4, p1, p0}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_3
    return-object v0

    :cond_4
    :goto_6
    iget-object p1, p0, Lmam;->c:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;

    invoke-virtual {p1}, Laxp;->d()I

    move-result p1

    if-ge p1, v2, :cond_5

    invoke-static {}, Ldr;->d()Ldr;

    move-result-object p1

    goto :goto_7

    :cond_5
    invoke-static {}, Ldr;->c()Ldr;

    move-result-object p1

    :goto_7
    return-object p1

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

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 1

    new-instance p1, Lmam;

    iget-object v0, p0, Lmam;->c:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;

    invoke-direct {p1, v0, p2}, Lmam;-><init>(Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250AutoWorker;Loku;)V

    return-object p1
.end method
