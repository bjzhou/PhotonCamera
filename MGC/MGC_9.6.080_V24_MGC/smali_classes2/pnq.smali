.class public final Lpnq;
.super Lpnd;
.source "PG"

# interfaces
.implements Lpro;


# instance fields
.field private final a:Landroid/hardware/camera2/TotalCaptureResult;

.field private volatile b:Ljava/util/Map;

.field private volatile c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    goto/32 :goto_2

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

    :goto_1
    iput-object v0, p0, Lpnq;->b:Ljava/util/Map;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Lpnd;-><init>(Landroid/hardware/camera2/CaptureResult;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lpnq;->a:Landroid/hardware/camera2/TotalCaptureResult;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    iput-object v0, p0, Lpnq;->c:Ljava/util/Map;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final dy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpnq;->a:Landroid/hardware/camera2/TotalCaptureResult;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop
.end method

.method public final h()Ljava/util/Map;
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lpnq;->c:Ljava/util/Map;

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lpnq;->a:Landroid/hardware/camera2/TotalCaptureResult;

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/TotalCaptureResult;->getPhysicalCameraResults()Ljava/util/Map;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lsjf;->j(Ljava/util/Map;)Lsjf;

    move-result-object v0

    nop

    nop

    new-instance v1, Lkzr;

    nop

    nop

    nop

    const/16 v2, 0x14

    nop

    invoke-direct {v1, v2}, Lkzr;-><init>(I)V

    invoke-virtual {v0, v1}, Lsjf;->i(Ljava/util/function/Predicate;)Lsjf;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lnha;

    nop

    const/16 v3, 0x13

    nop

    invoke-direct {v1, v3}, Lnha;-><init>(I)V

    invoke-virtual {v0, v1}, Lsjf;->c(Ljava/util/function/Function;)Lsjf;

    move-result-object v0

    nop

    nop

    new-instance v1, Lngh;

    nop

    nop

    nop

    nop

    const/16 v3, 0xd

    nop

    nop

    invoke-direct {v1, v3}, Lngh;-><init>(I)V

    invoke-virtual {v0, v1}, Lsjf;->d(Ljava/util/function/BiFunction;)Lj$/util/stream/Stream;

    move-result-object v0

    nop

    new-instance v1, Lnha;

    nop

    nop

    invoke-direct {v1, v2}, Lnha;-><init>(I)V

    new-instance v2, Lpnp;

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v3}, Lpnp;-><init>(I)V

    invoke-static {v1, v2}, Lrvj;->a(Ljava/util/function/Function;Ljava/util/function/Function;)Lj$/util/stream/Collector;

    move-result-object v1

    nop

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lryh;

    nop

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lpnq;->c:Ljava/util/Map;

    nop

    :cond_0
    monitor-exit p0

    nop

    goto :goto_9

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    const v1, 0x20

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

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lpnq;->c:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    throw v0

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    return-object v0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop
.end method

.method public final i()Ljava/util/Map;
    .locals 5

    goto/32 :goto_c

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lpnq;->b:Ljava/util/Map;

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

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x19

    nop

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

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0xc

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

    :goto_d
    monitor-enter p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lpnq;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_8

    nop

    :goto_10
    goto :goto_11

    nop

    nop

    nop

    :catchall_1
    :try_start_0
    invoke-virtual {v4}, Landroid/hardware/camera2/TotalCaptureResult;->getPhysicalCameraResults()Ljava/util/Map;

    move-result-object v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_11
    :try_start_1
    invoke-static {v0}, Lsjf;->j(Ljava/util/Map;)Lsjf;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lszs;

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2}, Lszs;-><init>(I)V

    invoke-virtual {v0, v1}, Lsjf;->i(Ljava/util/function/Predicate;)Lsjf;

    move-result-object v0

    nop

    nop

    new-instance v1, Lpnp;

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    invoke-direct {v1, v2}, Lpnp;-><init>(I)V

    invoke-virtual {v0, v1}, Lsjf;->c(Ljava/util/function/Function;)Lsjf;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lngh;

    nop

    nop

    const/16 v2, 0xe

    nop

    invoke-direct {v1, v2}, Lngh;-><init>(I)V

    invoke-virtual {v0, v1}, Lsjf;->d(Ljava/util/function/BiFunction;)Lj$/util/stream/Stream;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lnha;

    nop

    nop

    nop

    nop

    const/16 v2, 0x14

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2}, Lnha;-><init>(I)V

    new-instance v2, Lpnp;

    nop

    const/4 v3, 0x2

    nop

    invoke-direct {v2, v3}, Lpnp;-><init>(I)V

    invoke-static {v1, v2}, Lrvj;->a(Ljava/util/function/Function;Ljava/util/function/Function;)Lj$/util/stream/Collector;

    move-result-object v1

    nop

    nop

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lryh;

    nop

    nop

    nop

    iput-object v0, p0, Lpnq;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    :goto_12
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_2

    nop

    :catchall_2
    move-exception v0

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    new-instance v0, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_2

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v4, p0, Lpnq;->a:Landroid/hardware/camera2/TotalCaptureResult;

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-virtual {v4}, Landroid/hardware/camera2/TotalCaptureResult;->getPhysicalCameraTotalResults()Ljava/util/Map;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_10

    nop

    nop
.end method

.method public final j()Lpic;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lpic;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    :goto_2
    iget-object p0, p0, Lpnq;->a:Landroid/hardware/camera2/TotalCaptureResult;

    nop

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

    :goto_3
    invoke-direct {v0, p0}, Lpic;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_8

    nop

    nop

    :goto_0
    goto/32 :goto_10

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v1, "TotalCaptureResult"

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    invoke-direct {v0, v1}, Lrsr;-><init>(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    new-instance v0, Lrsr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v1, "SequenceNumber"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lrsr;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lpnd;->e()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1, v2, v3}, Lrsr;->f(Ljava/lang/String;J)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lpnd;->d()I

    move-result p0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1, p0}, Lrsr;->e(Ljava/lang/String;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_13
    const-string v1, "FrameNumber"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method
