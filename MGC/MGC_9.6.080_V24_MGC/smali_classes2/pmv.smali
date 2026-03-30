.class public final Lpmv;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "PG"


# instance fields
.field private final a:Lpll;


# direct methods
.method public constructor <init>(Lpll;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lpmv;->a:Lpll;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    invoke-static {p0}, Lpic;->j(Ljava/lang/Throwable;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    :goto_5
    :try_start_0
    iget-object p0, p0, Lpmv;->a:Lpll;

    nop

    nop

    nop

    nop

    nop

    new-instance p1, Lpnb;

    nop

    invoke-direct {p1, p2}, Lpnb;-><init>(Landroid/hardware/camera2/CaptureRequest;)V

    invoke-static {p1}, Lplm;->h(Lprj;)Ljava/lang/Long;

    move-result-object p1

    nop

    nop

    nop

    nop

    iget-object p2, p0, Lpll;->c:Lplm;

    nop

    nop

    nop

    iget-object p2, p2, Lplm;->a:Lpdf;

    nop

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    sget-object v0, Lcom/google/android/apps/camera/ui/remotecontrol/Gizr/bXyemjIV;->Ufoj:Ljava/lang/String;

    nop

    nop

    nop

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-interface {p2, v0}, Lpdf;->f(Ljava/lang/String;)V

    iget-object p2, p0, Lpll;->b:Ljava/util/Map;

    nop

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    nop

    check-cast p2, Lphh;

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p0, Lpll;->a:Lrzd;

    nop

    invoke-virtual {p3, p1}, Lrzd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    check-cast p3, Lpuq;

    nop

    nop

    nop

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, p2, p4, p5}, Lpuq;->cH(Lphh;J)V

    iget-object p2, p0, Lpll;->c:Lplm;

    nop

    monitor-enter p2

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p3, p0, Lpll;->c:Lplm;

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    nop

    invoke-virtual {p3, p4, p5}, Lplm;->k(J)V

    monitor-exit p2

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lpll;->c:Lplm;

    nop

    nop

    iget-object p0, p0, Lplm;->a:Lpdf;

    nop

    nop

    nop

    invoke-interface {p0}, Lpdf;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_3
    monitor-exit p2

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x10

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    :goto_0
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0}, Lpic;->j(Ljava/lang/Throwable;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_0
    monitor-exit p3

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    :try_start_2
    iget-object p0, p0, Lpmv;->a:Lpll;

    nop

    new-instance p1, Lpnb;

    nop

    nop

    invoke-direct {p1, p2}, Lpnb;-><init>(Landroid/hardware/camera2/CaptureRequest;)V

    new-instance p2, Lpnq;

    nop

    nop

    nop

    invoke-direct {p2, p3}, Lpnq;-><init>(Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-static {p1}, Lplm;->h(Lprj;)Ljava/lang/Long;

    move-result-object p1

    nop

    nop

    nop

    nop

    iget-object p3, p0, Lpll;->c:Lplm;

    nop

    nop

    iget-object p3, p3, Lplm;->a:Lpdf;

    nop

    const-string v0, "onCaptureCompleted_"

    nop

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-interface {p3, v0}, Lpdf;->f(Ljava/lang/String;)V

    iget-object p3, p0, Lpll;->a:Lrzd;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p3, p1}, Lrzd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    nop

    check-cast p3, Lpuq;

    nop

    nop

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, p2}, Lpuq;->a(Lpro;)V

    iget-object p3, p0, Lpll;->c:Lplm;

    nop

    nop

    nop

    monitor-enter p3

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lpll;->c:Lplm;

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2}, Lplm;->k(J)V

    monitor-exit p3

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object p1, p0, Lpll;->c:Lplm;

    nop

    nop

    iget-object p1, p1, Lplm;->a:Lpdf;

    nop

    invoke-interface {p1}, Lpdf;->g()V

    iget-object p0, p0, Lpll;->c:Lplm;

    nop

    iget-object p0, p0, Lplm;->f:Lpkm;

    nop

    invoke-interface {p2}, Lpro;->e()J

    move-result-wide p1

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1, p2}, Lpkm;->a(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_8

    nop

    nop
.end method

.method public final onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 4

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    :goto_8
    :try_start_0
    iget-object p0, p0, Lpmv;->a:Lpll;

    nop

    nop

    nop

    nop

    nop

    new-instance p1, Lpnb;

    nop

    nop

    nop

    invoke-direct {p1, p2}, Lpnb;-><init>(Landroid/hardware/camera2/CaptureRequest;)V

    new-instance p2, Lpna;

    nop

    nop

    nop

    invoke-direct {p2, p3}, Lpna;-><init>(Landroid/hardware/camera2/CaptureFailure;)V

    invoke-virtual {p0, p1, p2}, Lpll;->b(Lprj;Lpna;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v2, v3, v0}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    const/16 v2, 0x3dc

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    return-void

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_e
    new-array v0, v0, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    aput-object p0, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public final onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_3
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    :try_start_0
    iget-object p0, p0, Lpmv;->a:Lpll;

    nop

    nop

    nop

    nop

    nop

    new-instance p1, Lpnb;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p1, p2}, Lpnb;-><init>(Landroid/hardware/camera2/CaptureRequest;)V

    new-instance p2, Lpnd;

    nop

    invoke-direct {p2, p3}, Lpnd;-><init>(Landroid/hardware/camera2/CaptureResult;)V

    invoke-static {p1}, Lplm;->h(Lprj;)Ljava/lang/Long;

    move-result-object p1

    nop

    iget-object p3, p0, Lpll;->c:Lplm;

    nop

    nop

    iget-object p3, p3, Lplm;->a:Lpdf;

    nop

    nop

    nop

    nop

    nop

    const-string v0, "onCaptureProgressed_"

    nop

    nop

    nop

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p3, v0}, Lpdf;->f(Ljava/lang/String;)V

    iget-object p3, p0, Lpll;->a:Lrzd;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p3, p1}, Lrzd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    check-cast p1, Lpuq;

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2}, Lpuq;->cR(Lprk;)V

    iget-object p0, p0, Lpll;->c:Lplm;

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lplm;->a:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Lpdf;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    invoke-static {p0}, Lpic;->j(Ljava/lang/Throwable;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x5

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lpmv;->a:Lpll;

    nop

    iget-object p1, p0, Lpll;->c:Lplm;

    nop

    nop

    iget-object p1, p1, Lplm;->a:Lpdf;

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Lcom/integrity/annotations/Obhj/bbLWXEJrNl;->rUfJrDIdcP:Ljava/lang/String;

    nop

    nop

    invoke-static {p2, v0}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-interface {p1, v0}, Lpdf;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lpll;->a:Lrzd;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lryh;->s()Lryy;

    move-result-object p1

    nop

    invoke-virtual {p1}, Lryy;->em()Lscp;

    move-result-object p1

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lpuq;

    nop

    nop

    nop

    invoke-virtual {v0, p2}, Lpuq;->cS(I)V

    goto :goto_0

    nop

    nop

    :cond_0
    iget-object p0, p0, Lpll;->c:Lplm;

    nop

    iget-object p0, p0, Lplm;->a:Lpdf;

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Lpdf;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Lpic;->j(Ljava/lang/Throwable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lpmv;->a:Lpll;

    nop

    nop

    iget-object p1, p0, Lpll;->c:Lplm;

    nop

    iget-object p1, p1, Lplm;->a:Lpdf;

    nop

    const-string v0, "onCaptureSequenceCompleted_"

    nop

    nop

    nop

    nop

    nop

    invoke-static {p2, v0}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lpdf;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lpll;->a:Lrzd;

    nop

    nop

    nop

    invoke-virtual {p1}, Lryh;->s()Lryy;

    move-result-object p1

    nop

    nop

    invoke-virtual {p1}, Lryy;->em()Lscp;

    move-result-object p1

    nop

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Ljava/util/Map$Entry;

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Lpuq;

    nop

    nop

    invoke-virtual {v0, p2, p3, p4}, Lpuq;->cT(IJ)V

    goto :goto_0

    nop

    nop

    :cond_0
    iget-object p0, p0, Lpll;->c:Lplm;

    nop

    nop

    iget-object p0, p0, Lplm;->a:Lpdf;

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Lpdf;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Lpic;->j(Ljava/lang/Throwable;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 8

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Lpic;->j(Ljava/lang/Throwable;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    :goto_7
    :try_start_0
    iget-object p0, p0, Lpmv;->a:Lpll;

    nop

    nop

    nop

    new-instance p1, Lpnb;

    nop

    nop

    nop

    invoke-direct {p1, p2}, Lpnb;-><init>(Landroid/hardware/camera2/CaptureRequest;)V

    invoke-static {p1}, Lplm;->h(Lprj;)Ljava/lang/Long;

    move-result-object p1

    nop

    nop

    iget-object p2, p0, Lpll;->c:Lplm;

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p2, Lplm;->a:Lpdf;

    nop

    const-string v0, "onCaptureStarted_"

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-interface {p2, v0}, Lpdf;->f(Ljava/lang/String;)V

    new-instance p2, Lpgi;

    nop

    iget-object v0, p0, Lpll;->c:Lplm;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lplm;->g()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    move-object v1, p2

    nop

    move-wide v2, p3

    nop

    nop

    nop

    move-wide v4, p5

    nop

    nop

    nop

    invoke-direct/range {v1 .. v7}, Lpgi;-><init>(JJJ)V

    iget-object p3, p0, Lpll;->a:Lrzd;

    nop

    nop

    nop

    nop

    invoke-virtual {p3, p1}, Lrzd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    check-cast p1, Lpuq;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2}, Lpuq;->l(Lpgi;)V

    iget-object p1, p0, Lpll;->c:Lplm;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lplm;->a:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lpdf;->g()V

    iget-object p0, p0, Lpll;->c:Lplm;

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lplm;->f:Lpkm;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lpkm;->d:Ljava/util/concurrent/ConcurrentSkipListSet;

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->size()I

    move-result p1

    nop

    nop

    nop

    int-to-long p1, p1

    nop

    nop

    nop

    nop

    const-wide/16 p3, 0x14

    nop

    cmp-long p1, p1, p3

    nop

    nop

    nop

    nop

    if-lez p1, :cond_1

    nop

    nop

    nop

    iget-object p1, p0, Lpkm;->d:Ljava/util/concurrent/ConcurrentSkipListSet;

    nop

    nop

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->first()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Lpkm;->d:Ljava/util/concurrent/ConcurrentSkipListSet;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lpkm;->d:Ljava/util/concurrent/ConcurrentSkipListSet;

    nop

    nop

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    :cond_2
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    nop

    nop

    nop

    nop

    if-eqz p2, :cond_3

    nop

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    check-cast p2, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    nop

    nop

    nop

    sub-long v0, p5, p2

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v2, 0xa

    nop

    nop

    cmp-long p4, v0, v2

    nop

    if-lez p4, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object p4, p0, Lpkm;->a:Lpcu;

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "completion pending for >= 10 frames"

    nop

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    invoke-interface {p4, p2}, Lpcu;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_8

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    :goto_a
    const v1, 0xf

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method
