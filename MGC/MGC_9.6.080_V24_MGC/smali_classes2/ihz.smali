.class public final synthetic Lihz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Liib;

.field public final synthetic b:Lpro;


# direct methods
.method public synthetic constructor <init>(Liib;Lpro;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lihz;->a:Liib;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lihz;->b:Lpro;

    nop

    nop

    nop

    goto/32 :goto_2

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

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 12

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_2
    monitor-enter v6

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-interface {p0, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    invoke-interface {p0}, Lpro;->h()Ljava/util/Map;

    move-result-object v1

    nop

    nop

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Lprk;

    nop

    nop

    nop

    nop

    nop

    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    const/4 v1, 0x0

    nop

    :goto_3
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    move-object v1, p0

    nop

    nop

    :cond_2
    if-nez v0, :cond_3

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    sget-object v0, Lcom/google/android/apps/camera/logging/PTc/RjdpW;->iPtBlXsg:Ljava/lang/String;

    nop

    nop

    nop

    :cond_3
    move-object v7, v0

    nop

    nop

    nop

    nop

    iget v0, v6, Liib;->b:I

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    const/16 v3, 0x2710

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_e

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    if-eq v0, v4, :cond_b

    nop

    nop

    nop

    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    if-eq v0, v4, :cond_7

    nop

    nop

    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    nop

    if-eq v0, v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Liib;->a:Lsdb;

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    invoke-interface {v0, v3, v1}, Lscz;->g(ILjava/util/concurrent/TimeUnit;)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    const/16 v1, 0x5ec

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Invalid OIS API version: %d"

    nop

    nop

    nop

    iget v2, v6, Liib;->b:I

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1, v2}, Lscz;->t(Ljava/lang/String;I)V

    goto/16 :goto_a

    nop

    nop

    :cond_4
    sget-object v0, Lnyo;->s:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    sget-object v0, Lnyo;->t:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    if-eqz v0, :cond_6

    nop

    sget-object v0, Lnyo;->r:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-interface {v1, v0}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    move-object v8, v0

    nop

    nop

    check-cast v8, [J

    nop

    nop

    sget-object v0, Lnyo;->s:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    invoke-interface {v1, v0}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    move-object v9, v0

    nop

    nop

    nop

    check-cast v9, [I

    nop

    nop

    nop

    sget-object v0, Lnyo;->t:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    invoke-interface {v1, v0}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    move-object v10, v0

    nop

    nop

    nop

    check-cast v10, [I

    nop

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_5

    nop

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_5

    nop

    nop

    nop

    nop

    nop

    if-eqz v10, :cond_5

    nop

    nop

    nop

    move v11, v2

    nop

    :goto_4
    array-length v0, v8

    nop

    nop

    if-ge v11, v0, :cond_11

    nop

    nop

    nop

    aget-wide v1, v8, v11

    nop

    nop

    nop

    aget v0, v9, v11

    nop

    nop

    int-to-float v3, v0

    nop

    aget v0, v10, v11

    nop

    nop

    nop

    nop

    nop

    int-to-float v4, v0

    nop

    nop

    nop

    nop

    move-object v0, v6

    nop

    nop

    move-object v5, v7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v0 .. v5}, Liib;->i(JFFLjava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_5
    sget-object v0, Liib;->a:Lsdb;

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    const-string v2, "Null pointer for OIS data. OIS API version: 3"

    nop

    nop

    nop

    const/16 v4, 0x5f4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v4, v0, v3, v1}, Lfey;->e(Ljava/lang/String;CLscz;CLjava/util/concurrent/TimeUnit;)V

    goto/16 :goto_a

    nop

    nop

    :cond_6
    sget-object v0, Liib;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "Null OIS keys (version: 3)"

    nop

    nop

    nop

    const/16 v4, 0x5f0

    nop

    nop

    nop

    invoke-static {v2, v4, v0, v3, v1}, Lfey;->e(Ljava/lang/String;CLscz;CLjava/util/concurrent/TimeUnit;)V

    goto/16 :goto_a

    nop

    :cond_7
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_OIS_SAMPLES:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_a

    nop

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_OIS_SAMPLES:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    invoke-interface {v1, v0}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    move-object v8, v0

    nop

    nop

    check-cast v8, [Landroid/hardware/camera2/params/OisSample;

    nop

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_8

    nop

    array-length v9, v8

    nop

    nop

    nop

    nop

    move v10, v2

    nop

    :goto_5
    if-ge v10, v9, :cond_11

    nop

    nop

    nop

    aget-object v0, v8, v10

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/params/OisSample;->getTimestamp()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/params/OisSample;->getXshift()F

    move-result v3

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/params/OisSample;->getYshift()F

    move-result v4

    nop

    nop

    nop

    move-object v0, v6

    nop

    nop

    nop

    move-object v5, v7

    nop

    nop

    invoke-virtual/range {v0 .. v5}, Liib;->i(JFFLjava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    nop

    nop

    nop

    goto :goto_5

    nop

    :cond_8
    sget-object v0, Liib;->a:Lsdb;

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    const-string v4, "Null pointer for OIS data. OIS API version: 2"

    nop

    nop

    nop

    const/16 v5, 0x5f3

    nop

    nop

    invoke-static {v4, v5, v0, v3, v2}, Lfey;->e(Ljava/lang/String;CLscz;CLjava/util/concurrent/TimeUnit;)V

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-interface {v1, v0}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Ljava/lang/Long;

    nop

    nop

    nop

    if-nez v0, :cond_9

    nop

    nop

    nop

    const-wide/16 v0, 0x0

    nop

    nop

    nop

    :goto_6
    move-wide v1, v0

    nop

    nop

    nop

    nop

    nop

    goto :goto_7

    nop

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    move-object v0, v6

    nop

    nop

    nop

    move-object v5, v7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v0 .. v5}, Liib;->i(JFFLjava/lang/String;)V

    goto/16 :goto_a

    nop

    nop

    :cond_a
    sget-object v0, Liib;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    const-string v2, "Null OIS key (version: 2)"

    nop

    nop

    nop

    nop

    const/16 v4, 0x5ef

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v4, v0, v3, v1}, Lfey;->e(Ljava/lang/String;CLscz;CLjava/util/concurrent/TimeUnit;)V

    goto/16 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_b
    sget-object v0, Lnyk;->g:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    if-eqz v0, :cond_d

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Lnyk;->h:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    if-eqz v0, :cond_d

    nop

    sget-object v0, Lnyk;->d:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-interface {v1, v0}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    move-object v8, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v8, [J

    nop

    nop

    nop

    nop

    sget-object v0, Lnyk;->g:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    invoke-interface {v1, v0}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    move-object v9, v0

    nop

    nop

    nop

    check-cast v9, [F

    nop

    sget-object v0, Lnyk;->h:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    invoke-interface {v1, v0}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    move-object v10, v0

    nop

    check-cast v10, [F

    nop

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_c

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_c

    nop

    nop

    if-eqz v10, :cond_c

    nop

    nop

    nop

    nop

    nop

    move v11, v2

    nop

    :goto_8
    array-length v0, v8

    nop

    if-ge v11, v0, :cond_11

    nop

    aget-wide v1, v8, v11

    nop

    nop

    nop

    aget v3, v9, v11

    nop

    nop

    aget v4, v10, v11

    nop

    nop

    move-object v0, v6

    nop

    nop

    nop

    move-object v5, v7

    nop

    invoke-virtual/range {v0 .. v5}, Liib;->i(JFFLjava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    nop

    nop

    nop

    nop

    goto :goto_8

    nop

    nop

    nop

    nop

    :cond_c
    sget-object v0, Liib;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    const-string v2, "Null pointer for OIS data. OIS API version: 1"

    nop

    const/16 v4, 0x5f2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v4, v0, v3, v1}, Lfey;->e(Ljava/lang/String;CLscz;CLjava/util/concurrent/TimeUnit;)V

    goto/16 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_d
    sget-object v0, Liib;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "Null OIS keys (version: 1)"

    nop

    nop

    nop

    nop

    nop

    const/16 v4, 0x5ee

    nop

    nop

    nop

    invoke-static {v2, v4, v0, v3, v1}, Lfey;->e(Ljava/lang/String;CLscz;CLjava/util/concurrent/TimeUnit;)V

    goto/16 :goto_a

    nop

    nop

    nop

    nop

    :cond_e
    sget-object v0, Lnyk;->e:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    if-eqz v0, :cond_10

    nop

    nop

    nop

    nop

    sget-object v0, Lnyk;->f:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_10

    nop

    nop

    nop

    sget-object v0, Lnyk;->d:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v0}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    move-object v8, v0

    nop

    nop

    nop

    check-cast v8, [J

    nop

    sget-object v0, Lnyk;->e:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-interface {v1, v0}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    move-object v9, v0

    nop

    check-cast v9, [I

    nop

    sget-object v0, Lnyk;->f:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    invoke-interface {v1, v0}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    move-object v10, v0

    nop

    nop

    check-cast v10, [I

    nop

    nop

    if-eqz v8, :cond_f

    nop

    if-eqz v9, :cond_f

    nop

    nop

    nop

    nop

    nop

    if-eqz v10, :cond_f

    nop

    move v11, v2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    array-length v0, v8

    nop

    nop

    nop

    if-ge v11, v0, :cond_11

    nop

    nop

    nop

    nop

    aget-wide v1, v8, v11

    nop

    nop

    aget v0, v9, v11

    nop

    nop

    int-to-float v3, v0

    nop

    aget v0, v10, v11

    nop

    nop

    nop

    nop

    nop

    int-to-float v4, v0

    nop

    nop

    nop

    move-object v0, v6

    nop

    nop

    move-object v5, v7

    nop

    nop

    invoke-virtual/range {v0 .. v5}, Liib;->i(JFFLjava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_f
    sget-object v0, Liib;->a:Lsdb;

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    const-string v2, "Null pointer for OIS data. OIS API version: 0"

    nop

    nop

    nop

    const/16 v4, 0x5f1

    nop

    nop

    nop

    invoke-static {v2, v4, v0, v3, v1}, Lfey;->e(Ljava/lang/String;CLscz;CLjava/util/concurrent/TimeUnit;)V

    goto :goto_a

    nop

    nop

    nop

    :cond_10
    sget-object v0, Liib;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "Null OIS keys (version: 0)"

    nop

    nop

    nop

    nop

    nop

    const/16 v4, 0x5ed

    nop

    nop

    nop

    invoke-static {v2, v4, v0, v3, v1}, Lfey;->e(Ljava/lang/String;CLscz;CLjava/util/concurrent/TimeUnit;)V

    :cond_11
    :goto_a
    iget-object v0, v6, Liib;->c:Ljava/util/Set;

    nop

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_12

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Lpuq;

    nop

    invoke-virtual {v1, p0}, Lpuq;->a(Lpro;)V

    goto :goto_b

    nop

    nop

    nop

    :cond_12
    monitor-exit v6

    nop

    nop

    nop

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

    nop

    nop

    monitor-exit v6

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_12

    nop

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

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v6, p0, Lihz;->a:Liib;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_13

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lihz;->b:Lpro;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_12
    throw p0

    nop

    :goto_13
    goto/32 :goto_14

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method
