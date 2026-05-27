.class public final Lmay;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.work.F250Worker$doWork$2"
    c = "F250Worker.kt"
    d = "invokeSuspend"
    e = {
        0x3c,
        0x3f,
        0x40,
        0x41,
        0x46,
        0x4d,
        0x51,
        0x54
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;Loku;)V
    .locals 0

    iput-object p1, p0, Lmay;->c:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;

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

    check-cast p1, Lmay;

    invoke-virtual {p1, p2}, Lmay;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Lmay;->b:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_0
    iget-object v1, p0, Lmay;->a:Ljava/lang/Object;

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_2
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_3
    iget-object v1, p0, Lmay;->a:Ljava/lang/Object;

    :try_start_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :pswitch_4
    iget-object v1, p0, Lmay;->a:Ljava/lang/Object;

    :try_start_1
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :pswitch_5
    iget-object v1, p0, Lmay;->a:Ljava/lang/Object;

    :try_start_2
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :pswitch_6
    iget-object v1, p0, Lmay;->a:Ljava/lang/Object;

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_7
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    new-instance p1, Llzy;

    iget-object v1, p0, Lmay;->c:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;

    iget-object v1, v1, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;->g:Lkrn;

    sget-object v3, Llvj;->a:Llvj;

    invoke-direct {p1, v1, v3, v2, v2}, Llzy;-><init>(Lkrn;Lllj;[B[B)V

    iget-object v1, p0, Lmay;->c:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;

    iget-object v1, v1, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;->j:Llzz;

    sget-object v3, Lodt;->m:Lodt;

    const/16 v4, 0xb

    invoke-static {p1, v2, v2, v3, v4}, Llzy;->e(Llzy;Ljava/util/Collection;Ljava/util/Collection;Lodt;I)Llur;

    move-result-object v3

    iput-object p1, p0, Lmay;->a:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, p0, Lmay;->b:I

    invoke-virtual {v1, v3, p0}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_6

    move-object v1, p1

    :goto_0
    :try_start_3
    iget-object p1, p0, Lmay;->c:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;

    iput-object v1, p0, Lmay;->a:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, p0, Lmay;->b:I

    move-object v3, v1

    check-cast v3, Llzy;

    invoke-virtual {p1, v3, p0}, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;->i(Llzy;Loku;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eq p1, v0, :cond_0

    :goto_1
    :try_start_4
    iget-object p1, p0, Lmay;->c:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;

    iput-object v1, p0, Lmay;->a:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, p0, Lmay;->b:I

    move-object v3, v1

    check-cast v3, Llzy;

    invoke-virtual {p1, v3, p0}, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;->j(Llzy;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v0, :cond_0

    :goto_2
    iget-object p1, p0, Lmay;->c:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;

    iput-object v1, p0, Lmay;->a:Ljava/lang/Object;

    const/4 v3, 0x4

    iput v3, p0, Lmay;->b:I

    move-object v3, v1

    check-cast v3, Llzy;

    invoke-virtual {p1, v3, p0}, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;->k(Llzy;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v0, :cond_0

    :goto_3
    invoke-static {}, Ldr;->e()Ldr;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_9

    :cond_0
    return-object v0

    :catchall_1
    move-exception p1

    :goto_4
    instance-of v3, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_2

    sget-object p1, Lorm;->a:Lorm;

    new-instance v1, Lmax;

    iget-object v3, p0, Lmay;->c:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;

    invoke-direct {v1, v3, v2}, Lmax;-><init>(Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;Loku;)V

    iput-object v2, p0, Lmay;->a:Ljava/lang/Object;

    const/4 v2, 0x5

    iput v2, p0, Lmay;->b:I

    invoke-static {p1, v1, p0}, Lone;->h(Lola;Lomo;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    :cond_1
    :goto_5
    check-cast p1, Ldr;

    goto :goto_9

    :cond_2
    iget-object v3, p0, Lmay;->c:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;

    invoke-virtual {v3}, Laxp;->d()I

    move-result v3

    const/16 v4, 0xa

    const/16 v5, 0xc

    if-ge v3, v4, :cond_4

    iget-object v3, p0, Lmay;->c:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;

    iget-object v3, v3, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;->j:Llzz;

    sget-object v4, Lodt;->E:Lodt;

    check-cast v1, Llzy;

    invoke-static {v1, v4, p1, v2, v5}, Llzy;->c(Llzy;Lodt;Ljava/lang/Throwable;Llux;I)Llur;

    move-result-object p1

    iput-object v2, p0, Lmay;->a:Ljava/lang/Object;

    const/4 v1, 0x6

    iput v1, p0, Lmay;->b:I

    invoke-virtual {v3, p1, p0}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_6
    iget-object p1, p0, Lmay;->c:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;

    invoke-virtual {p1}, Laxp;->d()I

    invoke-static {}, Ldr;->d()Ldr;

    move-result-object p1

    goto :goto_9

    :cond_4
    iget-object v3, p0, Lmay;->c:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;

    iget-object v3, v3, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;->j:Llzz;

    sget-object v4, Lodt;->G:Lodt;

    move-object v6, v1

    check-cast v6, Llzy;

    invoke-static {v6, v4, p1, v2, v5}, Llzy;->c(Llzy;Lodt;Ljava/lang/Throwable;Llux;I)Llur;

    move-result-object p1

    iput-object v1, p0, Lmay;->a:Ljava/lang/Object;

    const/4 v4, 0x7

    iput v4, p0, Lmay;->b:I

    invoke-virtual {v3, p1, p0}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v0, :cond_5

    :goto_7
    iget-object p1, p0, Lmay;->c:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;

    iput-object v2, p0, Lmay;->a:Ljava/lang/Object;

    const/16 v2, 0x8

    iput v2, p0, Lmay;->b:I

    check-cast v1, Llzy;

    invoke-virtual {p1, v1, p0}, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;->j(Llzy;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_5
    return-object v0

    :cond_6
    return-object v0

    :cond_7
    :goto_8
    invoke-static {}, Ldr;->c()Ldr;

    move-result-object p1

    :goto_9
    return-object p1

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

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 1

    new-instance p1, Lmay;

    iget-object v0, p0, Lmay;->c:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;

    invoke-direct {p1, v0, p2}, Lmay;-><init>(Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;Loku;)V

    return-object p1
.end method
