.class public final synthetic Lead;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Leaf;

.field public final synthetic b:Lkou;


# direct methods
.method public synthetic constructor <init>(Leaf;Lkou;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lead;->a:Leaf;

    iput-object p2, p0, Lead;->b:Lkou;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v6, p0, Lead;->a:Leaf;

    iget-object v7, p0, Lead;->b:Lkou;

    monitor-enter v6

    :try_start_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v7, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {v7}, Lkou;->g()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkoq;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    move-object v1, v7

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "0"

    :cond_2
    move-object v8, v0

    iget v0, v6, Leaf;->b:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Leaf;->a:Lnak;

    goto/16 :goto_6

    :pswitch_0
    sget-object v0, Liuz;->r:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v0, :cond_4

    sget-object v0, Liuz;->s:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v0, :cond_4

    sget-object v0, Liuz;->q:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v1, v0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [J

    sget-object v0, Liuz;->r:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v1, v0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [I

    sget-object v0, Liuz;->s:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v1, v0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [I

    if-eqz v9, :cond_3

    if-eqz v10, :cond_3

    if-eqz v11, :cond_3

    const/4 v12, 0x0

    :goto_1
    array-length v0, v9

    if-ge v12, v0, :cond_c

    aget-wide v1, v9, v12

    aget v0, v10, v12

    int-to-float v3, v0

    aget v0, v11, v12

    int-to-float v4, v0

    move-object v0, v6

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Leaf;->i(JFFLjava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    sget-object v0, Leaf;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Null pointer for OIS data. OIS API version: 3"

    const/16 v2, 0x4d9

    invoke-static {v0, v1, v2}, Leab;->a(Lnaz;Ljava/lang/String;C)V

    goto/16 :goto_7

    :cond_4
    sget-object v0, Leaf;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Null OIS keys (version: 3)"

    const/16 v2, 0x4d5

    invoke-static {v0, v1, v2}, Leab;->a(Lnaz;Ljava/lang/String;C)V

    goto/16 :goto_7

    :pswitch_1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_OIS_SAMPLES:Landroid/hardware/camera2/CaptureResult$Key;

    if-nez v0, :cond_5

    sget-object v0, Leaf;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Null OIS key (version: 2)"

    const/16 v2, 0x4d4

    invoke-static {v0, v1, v2}, Leab;->a(Lnaz;Ljava/lang/String;C)V

    goto/16 :goto_7

    :cond_5
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_OIS_SAMPLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v1, v0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [Landroid/hardware/camera2/params/OisSample;

    if-eqz v9, :cond_6

    array-length v10, v9

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_c

    aget-object v0, v9, v11

    invoke-virtual {v0}, Landroid/hardware/camera2/params/OisSample;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/hardware/camera2/params/OisSample;->getXshift()F

    move-result v3

    invoke-virtual {v0}, Landroid/hardware/camera2/params/OisSample;->getYshift()F

    move-result v4

    move-object v0, v6

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Leaf;->i(JFFLjava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    sget-object v0, Leaf;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v2, "Null pointer for OIS data. OIS API version: 2"

    const/16 v3, 0x4d8

    invoke-static {v0, v2, v3}, Leab;->a(Lnaz;Ljava/lang/String;C)V

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v1, v0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    move-wide v1, v0

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v1, v0

    :goto_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Leaf;->i(JFFLjava/lang/String;)V

    goto/16 :goto_7

    :pswitch_2
    sget-object v0, Liuv;->g:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v0, :cond_9

    sget-object v0, Liuv;->h:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v0, :cond_9

    sget-object v0, Liuv;->d:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v1, v0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [J

    sget-object v0, Liuv;->g:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v1, v0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [F

    sget-object v0, Liuv;->h:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v1, v0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [F

    if-eqz v9, :cond_8

    if-eqz v10, :cond_8

    if-eqz v11, :cond_8

    const/4 v12, 0x0

    :goto_4
    array-length v0, v9

    if-ge v12, v0, :cond_c

    aget-wide v1, v9, v12

    aget v3, v10, v12

    aget v4, v11, v12

    move-object v0, v6

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Leaf;->i(JFFLjava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_8
    sget-object v0, Leaf;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Null pointer for OIS data. OIS API version: 1"

    const/16 v2, 0x4d7

    invoke-static {v0, v1, v2}, Leab;->a(Lnaz;Ljava/lang/String;C)V

    goto/16 :goto_7

    :cond_9
    sget-object v0, Leaf;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Null OIS keys (version: 1)"

    const/16 v2, 0x4d3

    invoke-static {v0, v1, v2}, Leab;->a(Lnaz;Ljava/lang/String;C)V

    goto/16 :goto_7

    :pswitch_3
    sget-object v0, Liuv;->e:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v0, :cond_b

    sget-object v0, Liuv;->f:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v0, :cond_b

    sget-object v0, Liuv;->d:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v1, v0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [J

    sget-object v0, Liuv;->e:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v1, v0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [I

    sget-object v0, Liuv;->f:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v1, v0}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [I

    if-eqz v9, :cond_a

    if-eqz v10, :cond_a

    if-eqz v11, :cond_a

    const/4 v12, 0x0

    :goto_5
    array-length v0, v9

    if-ge v12, v0, :cond_c

    aget-wide v1, v9, v12

    aget v0, v10, v12

    int-to-float v3, v0

    aget v0, v11, v12

    int-to-float v4, v0

    move-object v0, v6

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Leaf;->i(JFFLjava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_a
    sget-object v0, Leaf;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Null pointer for OIS data. OIS API version: 0"

    const/16 v2, 0x4d6

    invoke-static {v0, v1, v2}, Leab;->a(Lnaz;Ljava/lang/String;C)V

    goto :goto_7

    :cond_b
    sget-object v0, Leaf;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Null OIS keys (version: 0)"

    const/16 v2, 0x4d2

    invoke-static {v0, v1, v2}, Leab;->a(Lnaz;Ljava/lang/String;C)V

    goto :goto_7

    :goto_6
    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1}, Lnah;->H(Ljava/util/concurrent/TimeUnit;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x4d1

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "Invalid OIS API version: %d"

    iget v2, v6, Leaf;->b:I

    invoke-interface {v0, v1, v2}, Lnah;->p(Ljava/lang/String;I)V

    :cond_c
    :goto_7
    iget-object v0, v6, Leaf;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfg;

    invoke-virtual {v1, v7}, Lkfg;->bC(Lkou;)V

    goto :goto_8

    :cond_d
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
