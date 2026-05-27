.class public final Lmbc;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.work.F250Worker$uploadAllValidResources$latestUploads$1"
    c = "F250Worker.kt"
    d = "invokeSuspend"
    e = {
        0x9b,
        0xc3,
        0x9d
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field f:I

.field final synthetic g:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;

.field final synthetic h:Llzy;

.field private synthetic i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;Llzy;Loku;)V
    .locals 0

    iput-object p1, p0, Lmbc;->g:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;

    iput-object p2, p0, Lmbc;->h:Llzy;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Loln;-><init>(ILoku;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lotu;

    check-cast p2, Loku;

    invoke-virtual {p0, p1, p2}, Lolf;->c(Ljava/lang/Object;Loku;)Loku;

    move-result-object p1

    sget-object p2, Lojk;->a:Lojk;

    check-cast p1, Lmbc;

    invoke-virtual {p1, p2}, Lmbc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Lmbc;->f:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lmbc;->i:Ljava/lang/Object;

    check-cast v1, Lotu;

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    move-object p1, p0

    move-object v7, v1

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lmbc;->i:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_1
    iget-object v1, p0, Lmbc;->e:Ljava/lang/Object;

    iget-object v3, p0, Lmbc;->d:Ljava/lang/Object;

    iget-object v4, p0, Lmbc;->c:Ljava/lang/Object;

    iget-object v5, p0, Lmbc;->b:Ljava/lang/Object;

    iget-object v6, p0, Lmbc;->a:Ljava/lang/Object;

    iget-object v7, p0, Lmbc;->i:Ljava/lang/Object;

    check-cast v7, Lotu;

    :try_start_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    move-object v0, p0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v1

    move-object v1, v0

    move-object v0, p1

    move-object p1, p0

    goto/16 :goto_2

    :pswitch_2
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Lmbc;->i:Ljava/lang/Object;

    check-cast p1, Lotu;

    move-object v7, p1

    move-object p1, p0

    :goto_0
    invoke-interface {p1}, Loku;->d()Lola;

    move-result-object v1

    invoke-static {v1}, Lolp;->U(Lola;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lmbc;->g:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;

    iget-object v6, v1, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;->j:Llzz;

    iget-object v5, p1, Lmbc;->h:Llzy;

    sget-object v3, Lojx;->a:Lojx;

    sget-object v4, Lodt;->q:Lodt;

    :try_start_1
    iget-object v1, v1, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;->h:Llyl;

    iput-object v7, p1, Lmbc;->i:Ljava/lang/Object;

    iput-object v6, p1, Lmbc;->a:Ljava/lang/Object;

    iput-object v5, p1, Lmbc;->b:Ljava/lang/Object;

    iput-object v3, p1, Lmbc;->c:Ljava/lang/Object;

    iput-object v3, p1, Lmbc;->d:Ljava/lang/Object;

    iput-object v4, p1, Lmbc;->e:Ljava/lang/Object;

    const/4 v8, 0x1

    iput v8, p1, Lmbc;->f:I

    invoke-virtual {v1, p1}, Llyl;->c(Loku;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v1, v0, :cond_1

    move-object v9, v0

    move-object v0, p1

    move-object p1, v1

    move-object v1, v9

    :goto_1
    check-cast p1, Llyg;

    if-eqz p1, :cond_3

    iput-object v7, v0, Lmbc;->i:Ljava/lang/Object;

    iput-object v2, v0, Lmbc;->a:Ljava/lang/Object;

    iput-object v2, v0, Lmbc;->b:Ljava/lang/Object;

    iput-object v2, v0, Lmbc;->c:Ljava/lang/Object;

    iput-object v2, v0, Lmbc;->d:Ljava/lang/Object;

    iput-object v2, v0, Lmbc;->e:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, v0, Lmbc;->f:I

    invoke-interface {v7, p1, v0}, Lotu;->a(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_0

    return-object v1

    :cond_0
    move-object p1, v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    return-object v0

    :catchall_1
    move-exception v1

    move-object v7, v6

    move-object v6, v5

    move-object v5, v3

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_2
    instance-of v8, v0, Ljava/util/concurrent/CancellationException;

    if-nez v8, :cond_2

    check-cast v6, Llzy;

    check-cast v4, Lodt;

    invoke-virtual {v6, v5, v3, v4, v0}, Llzy;->a(Ljava/util/Collection;Ljava/util/Collection;Lodt;Ljava/lang/Throwable;)Llur;

    move-result-object v3

    iput-object v0, p1, Lmbc;->i:Ljava/lang/Object;

    iput-object v2, p1, Lmbc;->a:Ljava/lang/Object;

    iput-object v2, p1, Lmbc;->b:Ljava/lang/Object;

    iput-object v2, p1, Lmbc;->c:Ljava/lang/Object;

    iput-object v2, p1, Lmbc;->d:Ljava/lang/Object;

    iput-object v2, p1, Lmbc;->e:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, p1, Lmbc;->f:I

    check-cast v7, Llzz;

    invoke-virtual {v7, v3, p1}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    :goto_3
    throw v0

    :cond_3
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 3

    new-instance v0, Lmbc;

    iget-object v1, p0, Lmbc;->g:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;

    iget-object v2, p0, Lmbc;->h:Llzy;

    invoke-direct {v0, v1, v2, p2}, Lmbc;-><init>(Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;Llzy;Loku;)V

    iput-object p1, v0, Lmbc;->i:Ljava/lang/Object;

    return-object v0
.end method
