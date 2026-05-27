.class public final Letj;
.super Ljava/lang/Object;

# interfaces
.implements Leoc;


# instance fields
.field final synthetic a:Lfbz;

.field final synthetic b:Lflo;

.field final synthetic c:Liff;

.field final synthetic d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic e:Letp;

.field final synthetic f:Lijx;


# direct methods
.method public constructor <init>(Letp;Lfbz;Lflo;Lijx;Liff;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    iput-object p1, p0, Letj;->e:Letp;

    iput-object p2, p0, Letj;->a:Lfbz;

    iput-object p3, p0, Letj;->b:Lflo;

    iput-object p4, p0, Letj;->f:Lijx;

    iput-object p5, p0, Letj;->c:Liff;

    iput-object p6, p0, Letj;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lnou;
    .locals 4

    iget-object v0, p0, Letj;->e:Letp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Letp;->B(Z)V

    add-int/lit8 v0, p1, -0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Letj;->a:Lfbz;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x5

    invoke-interface {v0, v3, v1, v2}, Lfbz;->an(IJ)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Letj;->a:Lfbz;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x4

    invoke-interface {v0, v3, v1, v2}, Lfbz;->an(IJ)V

    :goto_0
    iget-object v0, p0, Letj;->b:Lflo;

    invoke-interface {v0, p1}, Lflo;->a(I)Lnou;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(I)Lnou;
    .locals 3

    iget-object v0, p0, Letj;->f:Lijx;

    iget-boolean v0, v0, Lijx;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Letj;->b:Lflo;

    invoke-interface {v0, p1}, Lflo;->b(I)Lnou;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Ljvd;->o(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lerm;

    const/16 v2, 0xf

    invoke-direct {v1, p0, v2}, Lerm;-><init>(Letj;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p1

    :cond_0
    iget-object p1, p0, Letj;->a:Lfbz;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lfbz;->an(IJ)V

    iget-object p1, p0, Letj;->f:Lijx;

    invoke-virtual {p1}, Lijx;->a()V

    iget-object p1, p0, Letj;->c:Liff;

    invoke-interface {p1}, Liff;->P()V

    iget-object p1, p0, Letj;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Letj;->e:Letp;

    iget-object p1, p1, Letp;->D:Lflp;

    invoke-virtual {p1}, Lflp;->c()V

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1

    return-object p1
.end method
