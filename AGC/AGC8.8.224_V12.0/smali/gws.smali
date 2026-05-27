.class public final Lgws;
.super Lgwp;


# direct methods
.method public constructor <init>(Lgwc;Ljava/lang/String;Lcjf;Lgxr;)V
    .locals 7

    sget-object v1, Lgya;->l:Lgya;

    const/4 v5, 0x0

    sget-object v6, Lmpx;->a:Lmpx;

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v6}, Lgwc;->a(Lgya;Ljava/lang/String;Lcjf;Lgxr;Lgpv;Lmqp;)Lgwd;

    move-result-object p1

    invoke-direct {p0, p1}, Lgwp;-><init>(Lgwd;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized S(Lkaf;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lgwp;->S(Lkaf;)V

    invoke-virtual {p0}, Lgwp;->M()V

    iget-object p1, p0, Lgwp;->b:Lgwd;

    invoke-virtual {p0}, Lgwp;->h()Lgxy;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgwd;->H(Lgxy;)V

    invoke-virtual {p0}, Lgwp;->o()Lgwm;

    move-result-object p1

    invoke-virtual {p0}, Lgwp;->i()Lgya;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lfcr;->b(Lgya;Lnjo;Ljava/lang/Float;)Lfce;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgwm;->c(Lfce;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized r([BLhkt;)Lnou;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "saveAndFinish"

    invoke-virtual {p0, v0}, Lgwp;->H(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgwp;->J()Ljew;

    move-result-object v0

    invoke-virtual {v0}, Ljew;->ad()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Ignoring saveAndFinish. CaptureSession has been deleted or canceled."

    invoke-virtual {p0, p1}, Lgwp;->I(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgwp;->p()Lnou;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lgwp;->J()Ljew;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    filled-new-array {v2, v1}, [I

    move-result-object v2

    invoke-virtual {v0, v2}, Ljew;->ag([I)V

    invoke-virtual {p0}, Lgwp;->e()Lcjf;

    move-result-object v0

    invoke-virtual {v0}, Lcjf;->b()Lmqp;

    move-result-object v0

    iput-object v0, p2, Lhkt;->d:Lmqp;

    invoke-virtual {p0}, Lgwp;->J()Ljew;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljew;->ah(I)V

    iget-object p2, p2, Lhkt;->c:Lmqp;

    invoke-virtual {p2}, Lmqp;->f()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/libraries/camera/exif/ExifInterface;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lgwp;->k()Lhjc;

    move-result-object v0

    check-cast v0, Lhjd;

    iput-object p2, v0, Lhjd;->g:Lcom/google/android/libraries/camera/exif/ExifInterface;

    :cond_1
    invoke-virtual {p0}, Lgwp;->f()Lgxn;

    move-result-object p2

    invoke-virtual {p0}, Lgwp;->F()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lgwr;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lgwr;-><init>(Lgws;[BLgxn;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lgwp;->p()Lnou;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
