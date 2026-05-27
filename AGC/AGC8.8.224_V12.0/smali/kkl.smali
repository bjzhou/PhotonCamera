.class public final Lkkl;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;


# instance fields
.field private final a:Lkol;


# direct methods
.method public constructor <init>(Lkol;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    iput-object p1, p0, Lkkl;->a:Lkol;

    return-void
.end method


# virtual methods
.method public final onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 3

    :try_start_0
    iget-object p1, p0, Lkkl;->a:Lkol;

    new-instance v0, Lkkq;

    invoke-direct {v0, p2}, Lkkq;-><init>(Landroid/hardware/camera2/CaptureRequest;)V

    invoke-static {v0}, Lkjl;->g(Lkop;)Ljava/lang/Long;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Lkjk;

    iget-object v0, v0, Lkjk;->c:Lkjl;

    iget-object v0, v0, Lkjl;->a:Lkbc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureBufferLost_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lkjk;

    iget-object v0, v0, Lkjk;->b:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkfj;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lkjk;

    iget-object v0, v0, Lkjk;->a:Lmws;

    invoke-virtual {v0, p2}, Lmws;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p3, p4, p5}, Lkfg;->bh(Lkfj;J)V

    move-object p3, p1

    check-cast p3, Lkjk;

    iget-object p3, p3, Lkjk;->c:Lkjl;

    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object p4, p1

    check-cast p4, Lkjk;

    iget-object p4, p4, Lkjk;->c:Lkjl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lkjl;->i(J)V

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    check-cast p1, Lkjk;

    iget-object p1, p1, Lkjk;->c:Lkjl;

    iget-object p1, p1, Lkjl;->a:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lkgd;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3

    :try_start_0
    iget-object p1, p0, Lkkl;->a:Lkol;

    new-instance v0, Lkkq;

    invoke-direct {v0, p2}, Lkkq;-><init>(Landroid/hardware/camera2/CaptureRequest;)V

    new-instance p2, Lkle;

    invoke-direct {p2, p3}, Lkle;-><init>(Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-static {v0}, Lkjl;->g(Lkop;)Ljava/lang/Long;

    move-result-object p3

    move-object v0, p1

    check-cast v0, Lkjk;

    iget-object v0, v0, Lkjk;->c:Lkjl;

    iget-object v0, v0, Lkjl;->a:Lkbc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureCompleted_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lkjk;

    iget-object v0, v0, Lkjk;->a:Lmws;

    invoke-virtual {v0, p3}, Lmws;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p2}, Lkfg;->bC(Lkou;)V

    move-object p2, p1

    check-cast p2, Lkjk;

    iget-object p2, p2, Lkjk;->c:Lkjl;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object v0, p1

    check-cast v0, Lkjk;

    iget-object v0, v0, Lkjk;->c:Lkjl;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lkjl;->i(J)V

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    check-cast p1, Lkjk;

    iget-object p1, p1, Lkjk;->c:Lkjl;

    iget-object p1, p1, Lkjl;->a:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lkgd;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lkkl;->a:Lkol;

    new-instance v0, Lkkq;

    invoke-direct {v0, p2}, Lkkq;-><init>(Landroid/hardware/camera2/CaptureRequest;)V

    new-instance p2, Lkkp;

    invoke-direct {p2, p3}, Lkkp;-><init>(Landroid/hardware/camera2/CaptureFailure;)V

    invoke-interface {p1, v0, p2}, Lkol;->b(Lkop;Lkkp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lkgd;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 3

    :try_start_0
    iget-object p1, p0, Lkkl;->a:Lkol;

    new-instance v0, Lkkq;

    invoke-direct {v0, p2}, Lkkq;-><init>(Landroid/hardware/camera2/CaptureRequest;)V

    new-instance p2, Lkkt;

    invoke-direct {p2, p3}, Lkkt;-><init>(Landroid/hardware/camera2/CaptureResult;)V

    invoke-static {v0}, Lkjl;->g(Lkop;)Ljava/lang/Long;

    move-result-object p3

    move-object v0, p1

    check-cast v0, Lkjk;

    iget-object v0, v0, Lkjk;->c:Lkjl;

    iget-object v0, v0, Lkjl;->a:Lkbc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureProgressed_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lkjk;

    iget-object v0, v0, Lkjk;->a:Lmws;

    invoke-virtual {v0, p3}, Lmws;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkfg;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, p2}, Lkfg;->br(Lkoq;)V

    check-cast p1, Lkjk;

    iget-object p1, p1, Lkjk;->c:Lkjl;

    iget-object p1, p1, Lkjl;->a:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lkgd;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 5

    :try_start_0
    iget-object p1, p0, Lkkl;->a:Lkol;

    move-object v0, p1

    check-cast v0, Lkjk;

    iget-object v0, v0, Lkjk;->c:Lkjl;

    iget-object v0, v0, Lkjl;->a:Lkbc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureSequenceAborted_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lkjk;

    iget-object v0, v0, Lkjk;->a:Lmws;

    invoke-virtual {v0}, Lmws;->r()Lmwn;

    move-result-object v0

    invoke-virtual {v0}, Lmwn;->cz()Lnac;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkfg;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p2}, Lkfg;->bs(JI)V

    goto :goto_0

    :cond_0
    check-cast p1, Lkjk;

    iget-object p1, p1, Lkjk;->c:Lkjl;

    iget-object p1, p1, Lkjl;->a:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lkgd;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 9

    :try_start_0
    iget-object p1, p0, Lkkl;->a:Lkol;

    move-object v0, p1

    check-cast v0, Lkjk;

    iget-object v0, v0, Lkjk;->c:Lkjl;

    iget-object v0, v0, Lkjl;->a:Lkbc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureSequenceCompleted_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lkjk;

    iget-object v0, v0, Lkjk;->a:Lmws;

    invoke-virtual {v0}, Lmws;->r()Lmwn;

    move-result-object v0

    invoke-virtual {v0}, Lmwn;->cz()Lnac;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkfg;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move v6, p2

    move-wide v7, p3

    invoke-virtual/range {v3 .. v8}, Lkfg;->bt(JIJ)V

    goto :goto_0

    :cond_0
    check-cast p1, Lkjk;

    iget-object p1, p1, Lkjk;->c:Lkjl;

    iget-object p1, p1, Lkjl;->a:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lkgd;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 9

    :try_start_0
    iget-object p1, p0, Lkkl;->a:Lkol;

    new-instance v0, Lkkq;

    invoke-direct {v0, p2}, Lkkq;-><init>(Landroid/hardware/camera2/CaptureRequest;)V

    invoke-static {v0}, Lkjl;->g(Lkop;)Ljava/lang/Long;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Lkjk;

    iget-object v0, v0, Lkjk;->c:Lkjl;

    iget-object v0, v0, Lkjl;->a:Lkbc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureStarted_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    new-instance v0, Lkeg;

    move-object v1, p1

    check-cast v1, Lkjk;

    iget-object v1, v1, Lkjk;->c:Lkjl;

    invoke-virtual {v1}, Lkjl;->f()J

    move-result-wide v7

    move-object v2, v0

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v2 .. v8}, Lkeg;-><init>(JJJ)V

    move-object p3, p1

    check-cast p3, Lkjk;

    iget-object p3, p3, Lkjk;->a:Lmws;

    invoke-virtual {p3, p2}, Lmws;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkfg;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lkfg;->bv(Lkeg;)V

    check-cast p1, Lkjk;

    iget-object p1, p1, Lkjk;->c:Lkjl;

    iget-object p1, p1, Lkjl;->a:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lkgd;->e(Ljava/lang/Throwable;)V

    return-void
.end method
