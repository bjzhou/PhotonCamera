.class public final Lmbl;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.work.upload.F250UploadClient$upload$1"
    c = "F250UploadClient.kt"
    d = "invokeSuspend"
    e = {
        0x5f
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lodj;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Llyh;

.field private synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Llyh;Lodj;Ljava/lang/String;Loku;[B[B)V
    .locals 0

    iput-object p1, p0, Lmbl;->b:Ljava/lang/String;

    iput-object p2, p0, Lmbl;->e:Llyh;

    iput-object p3, p0, Lmbl;->c:Lodj;

    iput-object p4, p0, Lmbl;->d:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Loln;-><init>(ILoku;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lotd;

    check-cast p2, Loku;

    invoke-virtual {p0, p1, p2}, Lolf;->c(Ljava/lang/Object;Loku;)Loku;

    move-result-object p1

    sget-object p2, Lojk;->a:Lojk;

    check-cast p1, Lmbl;

    invoke-virtual {p1, p2}, Lmbl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Lmbl;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Lmbl;->f:Ljava/lang/Object;

    check-cast p1, Lotd;

    iget-object v1, p0, Lmbl;->b:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Lmbm;->a:Lnbj;

    iget-object v4, p0, Lmbl;->b:Ljava/lang/String;

    iget-object v7, p0, Lmbl;->c:Lodj;

    const-string v5, "PUT"

    new-instance v1, Lodo;

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lodo;-><init>(Ljava/lang/String;Ljava/lang/String;Lodl;Lodj;Z)V

    goto :goto_1

    :cond_0
    sget-object v1, Lmbm;->a:Lnbj;

    new-instance v6, Lodl;

    invoke-direct {v6}, Lodl;-><init>()V

    iget-object v1, p0, Lmbl;->c:Lodj;

    invoke-interface {v1}, Lodj;->d()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "X-Goog-Upload-Header-Content-Length"

    invoke-virtual {v6, v3, v1}, Lodl;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lmbl;->d:Ljava/lang/String;

    iget-object v7, p0, Lmbl;->c:Lodj;

    const-string v1, "POST"

    const-string v3, "put"

    invoke-static {v1, v3}, Lmoz;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "post"

    invoke-static {v1, v3}, Lmoz;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lmoz;->e(Z)V

    new-instance v1, Lodo;

    const-string v5, "POST"

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lodo;-><init>(Ljava/lang/String;Ljava/lang/String;Lodl;Lodj;Z)V

    :goto_1
    new-instance v3, Lmbo;

    invoke-direct {v3, p1}, Lmbo;-><init>(Lotd;)V

    const/high16 v4, 0x400000

    const/16 v5, 0xfa

    invoke-interface {v1, v3, v4, v5}, Lodq;->g(Llho;II)V

    new-instance v3, Lkhk;

    const/16 v4, 0xf

    invoke-direct {v3, v1, v4}, Lkhk;-><init>(Lodo;I)V

    invoke-static {v3}, Lnov;->a(Ljava/util/concurrent/Callable;)Lnov;

    move-result-object v3

    new-instance v4, Lnaa;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lnaa;-><init>([B)V

    const-string v5, "Scotty-Uploader-ResumableTransfer-%d"

    invoke-virtual {v4, v5}, Lnaa;->c(Ljava/lang/String;)V

    invoke-static {v4}, Lnaa;->d(Lnaa;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v4

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    new-instance v4, Lmbk;

    iget-object v5, p0, Lmbl;->c:Lodj;

    invoke-direct {v4, v1, v3, v5}, Lmbk;-><init>(Lodq;Lnou;Lodj;)V

    iput v2, p0, Lmbl;->a:I

    invoke-static {p1, v4, p0}, Lolp;->L(Lotd;Lolz;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_2
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 9

    new-instance v8, Lmbl;

    iget-object v1, p0, Lmbl;->b:Ljava/lang/String;

    iget-object v2, p0, Lmbl;->e:Llyh;

    iget-object v3, p0, Lmbl;->c:Lodj;

    iget-object v4, p0, Lmbl;->d:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lmbl;-><init>(Ljava/lang/String;Llyh;Lodj;Ljava/lang/String;Loku;[B[B)V

    iput-object p1, v8, Lmbl;->f:Ljava/lang/Object;

    return-object v8
.end method
