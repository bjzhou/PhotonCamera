.class final Lhcx;
.super Landroid/os/CountDownTimer;


# instance fields
.field final synthetic a:Landroid/graphics/PointF;

.field final synthetic b:Lhcz;


# direct methods
.method public constructor <init>(Lhcz;JJLandroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lhcx;->b:Lhcz;

    iput-object p6, p0, Lhcx;->a:Landroid/graphics/PointF;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 5

    iget-object v0, p0, Lhcx;->b:Lhcz;

    iget-boolean v1, v0, Lhcz;->i:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lhcz;->j:Landroid/os/CountDownTimer;

    iget-object v0, v0, Lhcz;->c:Lhdi;

    invoke-virtual {v0}, Lhdi;->a()V

    iget-object v0, p0, Lhcx;->b:Lhcz;

    sget-object v1, Lmpx;->a:Lmpx;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lhcz;->h:Ljava/util/concurrent/Callable;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lihc;

    iget-object v0, v0, Lihc;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lhcz;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    const-string v3, "Grabbing viewfinder screenshot failed."

    const/16 v4, 0xd8e

    invoke-static {v2, v3, v4, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhcx;->b:Lhcz;

    iget-object v0, v0, Lhcz;->b:Lfbz;

    const/16 v2, 0x1a

    const/16 v3, 0x8

    invoke-interface {v0, v2, v3}, Lfbz;->Z(II)V

    iget-object v0, p0, Lhcx;->b:Lhcz;

    iget-object v0, v0, Lhcz;->l:Lnom;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lnom;->f(I)V

    iget-object v0, p0, Lhcx;->b:Lhcz;

    iget-object v0, v0, Lhcz;->d:Lhzh;

    invoke-static {}, Lnup;->c()Loem;

    move-result-object v2

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, v2, Loem;->g:Ljava/lang/Object;

    iget-object v1, p0, Lhcx;->a:Landroid/graphics/PointF;

    iput-object v1, v2, Loem;->e:Ljava/lang/Object;

    invoke-virtual {v2}, Loem;->b()Lnup;

    move-result-object v1

    iput-object v1, v0, Lhzh;->h:Lnup;

    iget-object v0, p0, Lhcx;->b:Lhcz;

    iget-object v0, v0, Lhcz;->e:Lflf;

    sget-object v1, Lika;->k:Lika;

    invoke-interface {v0, v1}, Lflf;->b(Lika;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lhcx;->b:Lhcz;

    iget-object v0, v0, Lhcz;->d:Lhzh;

    invoke-virtual {v0}, Lhzh;->f()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final onTick(J)V
    .locals 0

    return-void
.end method
