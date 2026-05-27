.class final Llea;
.super Ljava/lang/Object;

# interfaces
.implements Lleb;


# instance fields
.field private final a:Lldy;

.field private final b:Lnou;


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;Llep;Llel;Landroid/os/Handler;ZLandroid/view/Surface;Z)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p5, :cond_0

    sget-object p5, Lhop;->l:Lhop;

    const/4 p6, 0x1

    move-object v3, p5

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 p5, 0x0

    if-eqz p6, :cond_1

    new-instance v0, Lhga;

    const/16 v1, 0x11

    invoke-direct {v0, p6, v1}, Lhga;-><init>(Landroid/view/Surface;I)V

    move-object v3, v0

    goto :goto_0

    :cond_1
    const/4 p6, 0x0

    move-object v3, p6

    :goto_0
    const/4 v4, 0x0

    :goto_1
    const-string p5, "mime"

    invoke-virtual {p1, p5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    new-instance p6, Lldx;

    invoke-static {p5}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    sget-boolean p5, Llat;->a:Z

    move-object v0, p6

    move-object v2, p1

    move-object v5, p4

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lldx;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Lmqi;ZLandroid/os/Handler;Z)V

    iput-object p6, p0, Llea;->a:Lldy;

    move-object p1, p6

    check-cast p1, Lldx;

    iget-object p1, p6, Lldx;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_3

    iput-object p3, p6, Lldx;->o:Llel;

    new-instance p1, Llev;

    invoke-direct {p1, p2}, Llev;-><init>(Llep;)V

    move-object p2, p6

    check-cast p2, Lldx;

    iget-object p2, p6, Lldx;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_2

    iput-object p1, p6, Lldx;->n:Lleu;

    iget-object p1, p1, Llev;->b:Lnph;

    iput-object p1, p0, Llea;->b:Lnou;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not allowed to update the frame processor after start."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not allowed to update the listener after start."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Llea;->a:Lldy;

    check-cast v0, Lldx;

    iget-object v0, v0, Lldx;->c:Landroid/view/Surface;

    return-object v0
.end method

.method public final b()Lldz;
    .locals 1

    iget-object v0, p0, Llea;->a:Lldy;

    invoke-interface {v0}, Lldy;->a()Lldz;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lnou;
    .locals 1

    iget-object v0, p0, Llea;->b:Lnou;

    return-object v0
.end method

.method public final d()V
    .locals 8

    iget-object v0, p0, Llea;->a:Lldy;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    const/4 v4, 0x3

    const-string v5, "AsynchMediaCodec"

    if-gt v1, v4, :cond_1

    :try_start_0
    move-object v6, v0

    check-cast v6, Lldx;

    iget-object v6, v6, Lldx;->a:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->start()V

    move-object v6, v0

    check-cast v6, Lldx;

    iget-object v6, v6, Lldx;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object v6, v0

    check-cast v6, Lldx;

    iget-object v6, v6, Lldx;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    move-object v6, v0

    check-cast v6, Lldx;

    iget-object v6, v6, Lldx;->o:Llel;

    invoke-interface {v6}, Llel;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    const-string v6, "Exception occurred while trying to start codec"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-ge v1, v4, :cond_0

    const-string v4, "Trying to start codec again."

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v3, :cond_4

    const-string v1, "Failed to start codec"

    invoke-static {v5, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    instance-of v1, v3, Landroid/media/MediaCodec$CodecException;

    if-eqz v1, :cond_2

    move-object v2, v3

    check-cast v2, Landroid/media/MediaCodec$CodecException;

    goto :goto_2

    :cond_2
    :goto_2
    check-cast v0, Lldx;

    iget-object v1, v0, Lldx;->j:Lldw;

    iget-object v0, v0, Lldx;->a:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v2}, Lldw;->onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V

    instance-of v0, v3, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_3

    check-cast v3, Ljava/lang/RuntimeException;

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    move-object v3, v0

    :goto_3
    throw v3

    :cond_4
    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Llea;->a:Lldy;

    check-cast v0, Lldx;

    iget-object v1, v0, Lldx;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lldx;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lldx;->d()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lldx;->f()V

    :cond_0
    :goto_0
    iget-object v0, v0, Lldx;->e:Lnph;

    invoke-static {v0}, Lnsy;->C(Lnou;)Lnou;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
