.class public final Liof;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method private final declared-synchronized 37a7c1022dd4ee310e3894924745702em(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    iget-object v0, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/util/List;

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Liof;->b:Ljava/lang/Object;

    nop

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    :goto_b
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object v0

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_0

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

    :goto_3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Ljava/util/HashMap;

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

    :goto_5
    iput-object v0, p0, Liof;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/preference/Preference;)V
    .locals 1

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Liof;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    const-string v0, "camera.onscreen_logcat_filter"

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
.end method

.method public constructor <init>(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

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

    :goto_1
    iput-object p2, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iput-object p1, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/view/ViewStub;Lhoh;)V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    :goto_1
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

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

    :goto_2
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0}, Lfwm;->b()Lhoh;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    :goto_a
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v0}, Lhxh;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Lhxh;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, v0}, Lhxh;->setClipToOutline(Z)V

    goto/32 :goto_15

    nop

    nop

    :goto_e
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    :goto_f
    if-nez v0, :cond_2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_10
    iput-object p2, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_11
    invoke-virtual {p2, v0}, Lhoh;->p(Lhmn;)Z

    move-result v0

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

    :goto_12
    check-cast p1, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_13
    iput-object p1, p0, Liof;->a:Ljava/lang/Object;

    nop

    :goto_14
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto :goto_14

    nop

    :goto_16
    goto/32 :goto_25

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    instance-of v1, v0, Lfwm;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x7f0804de

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1a
    sget-object v1, Lhmq;->bb:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p1, Lhxh;->j:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1d
    sget-object v0, Lhmp;->f:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v0, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v0, Lfwm;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_24
    iput-object v0, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_25
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_26
    const v1, 0xe

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lcom/google/googlex/gcam/Tuning;Lpro;)V
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    const-string p1, "STATISTICS_FACES not present in metadata."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p2, v1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v1, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p2, :cond_0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v1, p1, v0, v2, v3}, Lnib;-><init>([Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;J)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p2, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_a
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_c
    const-string p1, "SCALER_CROP_REGION not present in metadata."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v1, Lnib;

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

    :goto_e
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_10
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_11
    iput-object p1, p0, Liof;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {p2, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p2, p1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_15
    check-cast p1, [Landroid/hardware/camera2/params/Face;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    throw p0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    :goto_1b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1d
    const v1, 0x11

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_29

    nop

    nop

    :goto_20
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_3

    nop

    nop

    :goto_22
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_24
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_25
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    :goto_26
    throw p0

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lduz;)V
    .locals 2

    goto/32 :goto_8

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

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-direct {p1, v1, v1}, Lfdn;-><init>([B[B)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Liof;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    :goto_7
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x19

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    :goto_d
    iput-object v0, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    new-instance p1, Lfdn;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Lfom;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, p1}, Lfom;-><init>(Lduz;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method public constructor <init>(Lfdo;Loyn;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Liof;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Liof;->b:Ljava/lang/Object;

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
.end method

.method public constructor <init>(Lhoh;Loyd;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p1, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    sget-object p1, Lsvj;->a:Lsvj;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    invoke-virtual {p0, p2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_6

    nop

    nop

    :goto_5
    invoke-direct {p2, p1, v0}, Lgbf;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_4

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    new-instance p2, Lgbe;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Ltkg;->m()Ltkb;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p2, Lgbf;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    invoke-interface {p2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    invoke-virtual {p0, p2}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p0

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

    :goto_d
    invoke-direct {p2, v0}, Lgbe;-><init>(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p1, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
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

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput-object p2, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput-object p1, p0, Liof;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;[B)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p2, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;[C)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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

    :goto_2
    iput-object p1, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;[S)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-object p2, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lkog;Ljava/util/Map;)V
    .locals 0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_a

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Liof;->b:Ljava/lang/Object;

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

    :goto_7
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_8
    check-cast p1, Loze;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    iput-object p1, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Llvw;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Loyn;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

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

    :goto_3
    iput-object p1, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    const-string p1, "off"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Ltxm;Ltxm;[B[B)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

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

    :goto_2
    iput-object p1, p0, Liof;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5

    nop

    nop

    :goto_5
    iput-object p2, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>([B)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p1, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public constructor <init>([B[B)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    new-instance p1, Lwu;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p1}, Lwu;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop
.end method

.method public constructor <init>([B[B[B)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    new-instance p1, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    new-instance p1, Lfdn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Liof;->a:Ljava/lang/Object;

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

    :goto_7
    invoke-direct {p1, p2}, Lfdn;-><init>([B)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public constructor <init>([B[B[B[B)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Liof;->a:Ljava/lang/Object;

    nop

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

    :goto_1
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Liof;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    new-instance p1, Ljava/util/HashMap;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    new-instance p1, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>([C)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v0, 0xa

    nop

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

    nop

    :goto_2
    invoke-direct {p1, v0, v1}, Lfts;-><init>(J)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Liof;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Liof;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-wide/16 v0, 0x3e8

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    const v1, 0xe

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

    nop

    nop

    :goto_9
    invoke-direct {p1, v0}, Lfna;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_d
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    :goto_10
    invoke-static {v0, p1}, Lfud;->a(ILftz;)Lduz;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance p1, Lfna;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_12
    new-instance p1, Lfts;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x0

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
.end method

.method public static A(Landroid/media/AudioDeviceInfo;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getId()I

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public static final E(Lprw;)Lcom/google/android/libraries/oliveoil/gl/EGLImage;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lprw;->f()Landroid/hardware/HardwareBuffer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p0, p0}, Lgdi;-><init>(Landroid/hardware/HardwareBuffer;Landroid/hardware/HardwareBuffer;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    :goto_4
    new-instance v0, Lgdi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public static final G()V
    .locals 1

    goto/32 :goto_1

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
    sget-object v0, Lhlw;->a:Lhmo;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static final Q(Landroid/graphics/ImageDecoder$Source;IILfjp;)Lflx;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p1, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    return-object p1

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lfpa;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p0, Landroid/graphics/drawable/AnimatedImageDrawable;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    invoke-direct {p1, p0, p2}, Lfqv;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    instance-of p1, p0, Landroid/graphics/drawable/AnimatedImageDrawable;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0, v0}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    const-string p2, "Received unexpected drawable type for animated image, failing: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_d
    new-instance p1, Lfqv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

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

    :goto_f
    new-instance p1, Ljava/io/IOException;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, p1, p2, p3}, Lfpa;-><init>(IILfjp;)V

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public static final R(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;)Z
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_a

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    :goto_2
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ANIMATED_WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ANIMATED_AVIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-ne p0, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eq p0, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public static varargs Z([Ljava/lang/String;)Liof;
    .locals 17

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

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

    goto/32 :goto_9

    nop

    nop

    :goto_5
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    throw v1

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    :goto_a
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    move-object/from16 v0, p0

    nop

    nop

    nop

    :try_start_0
    array-length v1, v0

    nop

    nop

    nop

    nop

    new-array v2, v1, [Lurj;

    nop

    nop

    nop

    new-instance v3, Lurh;

    nop

    nop

    invoke-direct {v3}, Lurh;-><init>()V

    const/4 v4, 0x0

    nop

    nop

    nop

    move v5, v4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    array-length v6, v0

    nop

    nop

    nop

    nop

    if-ge v5, v6, :cond_9

    nop

    nop

    nop

    nop

    aget-object v6, v0, v5

    nop

    nop

    nop

    sget-object v7, Lfew;->a:[Ljava/lang/String;

    nop

    nop

    invoke-virtual {v3}, Lurh;->p()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    nop

    move v9, v4

    nop

    nop

    nop

    nop

    move v10, v9

    nop

    nop

    :goto_d
    if-ge v9, v8, :cond_5

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    nop

    nop

    const/16 v12, 0x80

    nop

    nop

    nop

    if-ge v11, v12, :cond_1

    nop

    nop

    nop

    nop

    nop

    aget-object v11, v7, v11

    nop

    nop

    nop

    nop

    if-eqz v11, :cond_4

    nop

    nop

    nop

    nop

    goto :goto_e

    nop

    nop

    :cond_1
    const/16 v12, 0x2028

    nop

    nop

    nop

    nop

    nop

    if-ne v11, v12, :cond_2

    nop

    nop

    const-string v11, "\\u2028"

    nop

    nop

    nop

    nop

    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    const/16 v12, 0x2029

    nop

    nop

    nop

    nop

    if-ne v11, v12, :cond_4

    nop

    nop

    const-string v11, "\\u2029"

    nop

    nop

    nop

    :goto_e
    if-ge v10, v9, :cond_3

    nop

    nop

    nop

    invoke-virtual {v3, v6, v10, v9}, Lurh;->r(Ljava/lang/String;II)V

    :cond_3
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v11, v4, v10}, Lurh;->r(Ljava/lang/String;II)V

    add-int/lit8 v10, v9, 0x1

    nop

    nop

    nop

    nop

    :cond_4
    add-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    nop

    goto :goto_d

    nop

    nop

    nop

    :cond_5
    if-ge v10, v8, :cond_6

    nop

    nop

    invoke-virtual {v3, v6, v10, v8}, Lurh;->r(Ljava/lang/String;II)V

    :cond_6
    invoke-virtual {v3}, Lurh;->p()V

    invoke-virtual {v3}, Lurh;->b()B

    iget-wide v6, v3, Lurh;->b:J

    nop

    nop

    nop

    nop

    const-wide/16 v8, 0x0

    nop

    nop

    nop

    nop

    cmp-long v8, v6, v8

    nop

    if-ltz v8, :cond_8

    nop

    nop

    nop

    const-wide/32 v8, 0x7fffffff

    nop

    nop

    nop

    nop

    cmp-long v8, v6, v8

    nop

    nop

    nop

    nop

    nop

    if-gtz v8, :cond_8

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v8, 0x1000

    nop

    cmp-long v8, v6, v8

    nop

    nop

    if-ltz v8, :cond_7

    nop

    nop

    long-to-int v8, v6

    nop

    nop

    nop

    invoke-virtual {v3, v8}, Lurh;->h(I)Lurj;

    move-result-object v8

    nop

    nop

    invoke-virtual {v3, v6, v7}, Lurh;->k(J)V

    goto :goto_f

    nop

    nop

    :cond_7
    new-instance v8, Lurj;

    nop

    nop

    invoke-virtual {v3, v6, v7}, Lurh;->m(J)[B

    move-result-object v6

    nop

    invoke-direct {v8, v6}, Lurj;-><init>([B)V

    :goto_f
    aput-object v8, v2, v5

    nop

    add-int/lit8 v5, v5, 0x1

    nop

    goto/16 :goto_c

    nop

    :cond_8
    const-string v0, "byteCount: "

    nop

    invoke-static {v6, v7, v0}, Lmf;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    new-instance v1, Ljava/lang/IllegalArgumentException;

    nop

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    nop

    nop

    nop

    nop

    :cond_9
    new-instance v3, Liof;

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, [Ljava/lang/String;

    nop

    nop

    nop

    sget-object v5, Lurm;->c:Lucu;

    nop

    nop

    nop

    invoke-static {v2}, Lrkm;->bb([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    nop

    nop

    invoke-static {v10}, Lrkm;->ak(Ljava/util/List;)V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    nop

    nop

    nop

    nop

    new-instance v13, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-direct {v13, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v4

    nop

    nop

    nop

    nop

    :goto_10
    if-ge v7, v6, :cond_a

    nop

    const/4 v8, -0x1

    nop

    nop

    nop

    nop

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    nop

    nop

    nop

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    nop

    nop

    goto :goto_10

    nop

    :cond_a
    move v6, v4

    nop

    move v7, v6

    nop

    nop

    nop

    :goto_11
    if-ge v6, v1, :cond_b

    nop

    nop

    aget-object v8, v2, v6

    nop

    nop

    nop

    add-int/lit8 v9, v7, 0x1

    nop

    nop

    nop

    invoke-static {v10, v8}, Lrkm;->aH(Ljava/util/List;Ljava/lang/Comparable;)I

    move-result v8

    nop

    nop

    nop

    nop

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    nop

    nop

    invoke-interface {v13, v8, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    nop

    nop

    move v7, v9

    nop

    nop

    nop

    goto :goto_11

    nop

    nop

    nop

    :cond_b
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    check-cast v6, Lurj;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lurj;->b()I

    move-result v6

    nop

    nop

    nop

    if-lez v6, :cond_14

    nop

    nop

    nop

    nop

    move v6, v4

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    nop

    nop

    nop

    nop

    if-ge v6, v7, :cond_f

    nop

    nop

    nop

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    check-cast v7, Lurj;

    nop

    add-int/lit8 v8, v6, 0x1

    nop

    nop

    nop

    nop

    nop

    move v9, v8

    nop

    nop

    :goto_13
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    nop

    nop

    if-ge v9, v11, :cond_e

    nop

    nop

    nop

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    check-cast v11, Lurj;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Lurj;->b()I

    move-result v12

    nop

    invoke-virtual {v11, v7, v12}, Lurj;->g(Lurj;I)Z

    move-result v12

    nop

    nop

    nop

    nop

    nop

    if-eqz v12, :cond_e

    nop

    nop

    nop

    invoke-virtual {v11}, Lurj;->b()I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Lurj;->b()I

    move-result v14

    nop

    nop

    nop

    if-eq v12, v14, :cond_d

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    check-cast v11, Ljava/lang/Number;

    nop

    nop

    nop

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    nop

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    nop

    check-cast v12, Ljava/lang/Number;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    nop

    nop

    nop

    if-le v11, v12, :cond_c

    nop

    nop

    nop

    invoke-interface {v10, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v13, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    check-cast v11, Ljava/lang/Number;

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    goto :goto_13

    nop

    nop

    nop

    :cond_c
    add-int/lit8 v9, v9, 0x1

    nop

    nop

    goto/16 :goto_13

    nop

    nop

    nop

    :cond_d
    const-string v0, "duplicate option: "

    nop

    nop

    invoke-static {v11}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    new-instance v1, Ljava/lang/IllegalArgumentException;

    nop

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    nop

    nop

    nop

    :cond_e
    move v6, v8

    nop

    goto/16 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_f
    new-instance v14, Lurh;

    nop

    nop

    nop

    nop

    invoke-direct {v14}, Lurh;-><init>()V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    nop

    nop

    const-wide/16 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    const/4 v11, 0x0

    nop

    nop

    nop

    move-object v8, v14

    nop

    nop

    nop

    invoke-virtual/range {v5 .. v13}, Lucu;->B(JLurh;ILjava/util/List;IILjava/util/List;)V

    invoke-static {v14}, Lucu;->C(Lurh;)J

    move-result-wide v5

    nop

    long-to-int v5, v5

    nop

    nop

    nop

    nop

    nop

    new-array v6, v5, [I

    nop

    :goto_14
    if-lt v4, v5, :cond_10

    nop

    nop

    nop

    new-instance v4, Lurm;

    nop

    nop

    nop

    nop

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, [Lurj;

    nop

    nop

    invoke-direct {v4, v1, v6}, Lurm;-><init>([Lurj;[I)V

    invoke-direct {v3, v0, v4}, Liof;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    nop

    nop

    nop

    nop

    nop

    :cond_10
    iget-wide v7, v14, Lurh;->b:J

    nop

    nop

    nop

    nop

    const-wide/16 v9, 0x4

    nop

    nop

    nop

    nop

    cmp-long v11, v7, v9

    nop

    nop

    nop

    if-ltz v11, :cond_13

    nop

    nop

    iget-object v11, v14, Lurh;->a:Lurq;

    nop

    nop

    nop

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v12, v11, Lurq;->b:I

    nop

    nop

    nop

    iget v13, v11, Lurq;->c:I

    nop

    nop

    nop

    nop

    nop

    sub-int v15, v13, v12

    nop

    move-object/from16 p0, v0

    nop

    nop

    nop

    move/from16 v16, v1

    nop

    nop

    int-to-long v0, v15

    nop

    nop

    cmp-long v0, v0, v9

    nop

    nop

    nop

    if-gez v0, :cond_11

    nop

    nop

    nop

    nop

    invoke-virtual {v14}, Lurh;->b()B

    move-result v0

    nop

    and-int/lit16 v0, v0, 0xff

    nop

    nop

    nop

    nop

    shl-int/lit8 v0, v0, 0x18

    nop

    nop

    nop

    invoke-virtual {v14}, Lurh;->b()B

    move-result v1

    nop

    nop

    and-int/lit16 v1, v1, 0xff

    nop

    nop

    nop

    shl-int/lit8 v1, v1, 0x10

    nop

    nop

    nop

    nop

    or-int/2addr v0, v1

    nop

    nop

    nop

    nop

    invoke-virtual {v14}, Lurh;->b()B

    move-result v1

    nop

    nop

    nop

    and-int/lit16 v1, v1, 0xff

    nop

    nop

    nop

    shl-int/lit8 v1, v1, 0x8

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v14}, Lurh;->b()B

    move-result v1

    nop

    nop

    and-int/lit16 v1, v1, 0xff

    nop

    nop

    nop

    nop

    or-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_11
    iget-object v0, v11, Lurq;->a:[B

    nop

    add-int/lit8 v1, v12, 0x1

    nop

    nop

    nop

    nop

    aget-byte v9, v0, v12

    nop

    nop

    nop

    nop

    nop

    and-int/lit16 v9, v9, 0xff

    nop

    nop

    nop

    shl-int/lit8 v9, v9, 0x18

    nop

    nop

    nop

    add-int/lit8 v10, v12, 0x2

    nop

    aget-byte v1, v0, v1

    nop

    nop

    nop

    nop

    and-int/lit16 v1, v1, 0xff

    nop

    shl-int/lit8 v1, v1, 0x10

    nop

    nop

    or-int/2addr v1, v9

    nop

    nop

    add-int/lit8 v9, v12, 0x3

    nop

    nop

    nop

    nop

    nop

    aget-byte v10, v0, v10

    nop

    and-int/lit16 v10, v10, 0xff

    nop

    nop

    nop

    shl-int/lit8 v10, v10, 0x8

    nop

    or-int/2addr v1, v10

    nop

    nop

    add-int/lit8 v12, v12, 0x4

    nop

    nop

    nop

    nop

    aget-byte v0, v0, v9

    nop

    nop

    and-int/lit16 v0, v0, 0xff

    nop

    or-int/2addr v0, v1

    nop

    const-wide/16 v9, -0x4

    nop

    nop

    nop

    nop

    nop

    add-long/2addr v7, v9

    nop

    nop

    nop

    iput-wide v7, v14, Lurh;->b:J

    nop

    nop

    nop

    if-ne v12, v13, :cond_12

    nop

    invoke-virtual {v11}, Lurq;->a()Lurq;

    move-result-object v1

    nop

    iput-object v1, v14, Lurh;->a:Lurq;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v11}, Lurr;->b(Lurq;)V

    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_12
    iput v12, v11, Lurq;->b:I

    nop

    nop

    :goto_15
    aput v0, v6, v4

    nop

    nop

    add-int/lit8 v4, v4, 0x1

    nop

    nop

    move-object/from16 v0, p0

    nop

    move/from16 v1, v16

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_14

    nop

    :cond_13
    new-instance v0, Ljava/io/EOFException;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    nop

    nop

    nop

    :cond_14
    const-string v0, "the empty byte string is not a supported option"

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    new-instance v1, Ljava/lang/AssertionError;

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method private static final ab(Ljava/util/concurrent/Future;)Lltn;
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    if-nez v1, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    check-cast p0, Lltn;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-object v0

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    instance-of p0, p0, Ljava/lang/InterruptedException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_d
    const v1, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    :goto_f
    move-object v0, p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_18

    nop

    nop

    :goto_13
    goto/32 :goto_11

    nop

    nop

    :goto_14
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x0

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

    :goto_17
    invoke-interface {p0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :goto_18
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_19
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final n()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    sget-object v0, Lhnn;->a:Lhmn;

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static final o()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    sget-object v0, Lhna;->a:Lhmo;

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

    :goto_1
    sget-object v0, Lhmz;->a:Lhmo;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method


# virtual methods
.method public final B(Lpnx;Lozg;Loze;Z)Lozv;
    .locals 9

    goto/32 :goto_b

    nop

    nop

    :goto_0
    sget-object v1, Lhly;->a:Lhmo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, p2}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6
    check-cast p0, Lrsx;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_8
    sget-object v5, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0}, Lhoh;->o(Lhmn;)Z

    move-result v7

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    check-cast p0, Lhoh;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    const v0, 0x11

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Lhif;->g()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_e
    move-object v4, p3

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_f
    move-object v1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v0, Lhoh;

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

    :goto_12
    iget-object p0, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_16
    check-cast v0, Lhif;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

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

    :goto_18
    move v8, p4

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_19
    iget-object p0, p0, Lhif;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v0, Lhly;->s:Lhmn;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Liof;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move-object v2, p1

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

    :goto_1d
    check-cast p0, Lozv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1e
    invoke-static {v0}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Lrsx;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_20
    const v1, 0x14

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, v0, Lhif;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_23
    check-cast v0, Lhif;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast p0, Lhif;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static/range {v1 .. v8}, Lolx;->aS(Lozg;Lpnx;ILoze;Lrss;Lrss;ZZ)Lrss;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_26
    const-string p2, "No supported CamcorderProfile."

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_27
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_13

    nop

    nop
.end method

.method public final C(Loze;Lozg;)Z
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Liof;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    check-cast p0, Ljava/util/List;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final varargs D([Lqka;)Lqjy;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Lqjy;->e(Lqht;[Lqka;)Lqjy;

    move-result-object p0

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

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final F(II)Lqjs;
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p1, Ljava/lang/AssertionError;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    const-string v0, "\n"

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/io/InputStreamReader;

    nop

    nop

    nop

    iget-object v3, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Landroid/content/Context;

    nop

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    nop

    nop

    new-instance v2, Ljava/io/InputStreamReader;

    nop

    iget-object v3, p0, Liof;->a:Ljava/lang/Object;

    nop

    check-cast v3, Landroid/content/Context;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p2

    nop

    nop

    nop

    nop

    invoke-direct {v2, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-static {v1}, Lj$/io/BufferedReaderRetargetClass;->lines(Ljava/io/BufferedReader;)Lj$/util/stream/Stream;

    move-result-object p2

    nop

    nop

    invoke-static {v0}, Lj$/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Lj$/util/stream/Collector;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    check-cast p2, Ljava/lang/String;

    nop

    nop

    invoke-static {p1}, Lj$/io/BufferedReaderRetargetClass;->lines(Ljava/io/BufferedReader;)Lj$/util/stream/Stream;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lj$/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Lj$/util/stream/Collector;

    move-result-object v0

    nop

    nop

    invoke-interface {v2, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

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

    iget-object v2, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    new-instance v3, Lqjc;

    nop

    nop

    nop

    nop

    invoke-direct {v3, v2}, Lqjc;-><init>(Lqht;)V

    iget-object v2, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-static {v2, p2}, Lqjs;->h(Lqht;Ljava/lang/String;)Lqjs;

    move-result-object p2

    nop

    nop

    new-instance v2, Lqlr;

    nop

    nop

    invoke-direct {v2, p2}, Lqlr;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Lqjc;->a(Lqlt;)V

    iget-object p0, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-static {p0, v0}, Lqjs;->b(Lqht;Ljava/lang/String;)Lqjs;

    move-result-object p0

    nop

    nop

    nop

    new-instance p2, Lqlr;

    nop

    nop

    nop

    nop

    invoke-direct {p2, p0}, Lqlr;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p2}, Lqjc;->a(Lqlt;)V

    invoke-virtual {v3}, Lqjc;->b()Lqjs;

    move-result-object p0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_5
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x1d

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

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

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

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw p1

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    :goto_b
    const v0, 0x1e

    nop

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

    :goto_c
    goto :goto_d

    nop

    :catchall_1
    move-exception p1

    nop

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d
    throw p0

    nop

    nop

    nop

    nop
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p0

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

    nop

    nop

    :goto_e
    goto :goto_f

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_7
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f
    throw p0

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_11
    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop
.end method

.method public final H()V
    .locals 2

    goto/32 :goto_1f

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v1, v0}, Llyv;->d(Llyp;Ljava/lang/Object;)V

    :goto_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5
    if-nez v1, :cond_1

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

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, v0, Lkvu;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    invoke-static {v0}, Lfwt;->c(Landroid/content/Intent;)Lkvu;

    move-result-object v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v1, v0}, Llyv;->d(Llyp;Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    :goto_b
    check-cast p0, Llyv;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x1a

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_18

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v0}, Lfwt;->c(Landroid/content/Intent;)Lkvu;

    move-result-object v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, v0, Lkvu;->d:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v1, Llyr;->v:Llzh;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    const-string v1, "com.google.assistant.extra.CAMERA_FLASH_MODE"

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_14
    invoke-static {v0}, Lfwt;->j(Landroid/content/Intent;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_15
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    :goto_18
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v1, Llyr;->w:Llzh;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Lfdn;->h()Landroid/content/Intent;

    move-result-object v0

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

    nop

    :goto_1b
    check-cast p0, Llyv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1c
    check-cast v0, Lfdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1d
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    :goto_1e
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1f
    const v0, 0xc

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop
.end method

.method public final synthetic I(Lokp;)Lfyb;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x6

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    iget-object v1, p0, Liof;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lfxn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_7
    iget-object p0, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p0, Liai;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Liai;->b()Landroid/content/Context;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    const v1, 0x15

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_b
    invoke-direct {v0, v1, p0, p1}, Lfxn;-><init>(Lixe;Landroid/content/Context;Lokp;)V

    goto/32 :goto_4

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    check-cast v1, Lixe;

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final declared-synchronized J(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 5

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_6
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    nop

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    iget-object v3, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Ljava/util/List;

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    :cond_2
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    if-eqz v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lhdn;

    nop

    invoke-virtual {v3, p1, p2}, Lhdn;->p(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_2

    nop

    nop

    iget-object v3, v3, Lhdn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_8

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    goto/32 :goto_0

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

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final declared-synchronized K(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 5

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    :goto_4
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_2

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Ljava/lang/String;

    nop

    iget-object v3, p0, Liof;->b:Ljava/lang/Object;

    nop

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Ljava/util/List;

    nop

    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    :cond_1
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    if-eqz v3, :cond_0

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Lhdn;

    nop

    nop

    invoke-virtual {v3, p1, p2}, Lhdn;->p(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_1

    nop

    iget-object v4, v3, Lhdn;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    nop

    if-nez v4, :cond_1

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lhdn;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_9
    goto :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    :goto_d
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized L(Ljava/lang/String;Lfjr;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    invoke-direct {p0, p1}, Liof;->37a7c1022dd4ee310e3894924745702em(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    nop

    nop

    nop

    new-instance v0, Lhdn;

    nop

    nop

    nop

    nop

    invoke-direct {v0, p3, p4, p2}, Lhdn;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lfjr;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final declared-synchronized M(Ljava/util/List;)V
    .locals 5

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    nop

    iget-object v1, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Liof;->a:Ljava/lang/Object;

    nop

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_0

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    iget-object v3, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    nop

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_2
    if-ge v2, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Ljava/lang/String;

    nop

    nop

    nop

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    if-nez v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v4, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x14

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

    :goto_4
    throw p1

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_2

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

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

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_3

    nop

    goto/32 :goto_f

    nop

    :cond_3
    goto/32 :goto_e

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    const v0, 0x18

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final N(Landroid/graphics/Bitmap;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Liof;->b:Ljava/lang/Object;

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

    nop

    :goto_1
    invoke-interface {p0, p1}, Lfmf;->d(Landroid/graphics/Bitmap;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public final O([B)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lfmm;

    nop

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
    invoke-virtual {p0, p1}, Lfmm;->c(Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final P(I)[B
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, v0}, Lfmm;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Lfmm;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    const-class v0, [B

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, [B

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

    :goto_5
    iget-object p0, p0, Liof;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final declared-synchronized S(Ljava/lang/Class;)Ljava/util/List;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-object p1

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v0, Lfom;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Lfom;->c(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final declared-synchronized T(Ljava/lang/Class;)Ljava/util/List;
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1a

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

    nop

    :goto_4
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    :try_start_0
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Already cached loaders for model: "

    nop

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_a
    const v1, 0x1c

    nop

    goto/32 :goto_b

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

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    nop

    :try_start_2
    iget-object v0, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v0, Lfdn;

    nop

    iget-object v0, v0, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lfdn;

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    goto :goto_d

    nop

    nop

    :cond_2
    iget-object v0, v0, Lfdn;->a:Ljava/lang/Object;

    nop

    :goto_d
    if-nez v0, :cond_0

    nop

    nop

    iget-object v0, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v0, Lfom;

    nop

    invoke-virtual {v0, p1}, Lfom;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    iget-object v1, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    new-instance v2, Lfdn;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v0}, Lfdn;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lfdn;

    nop

    nop

    nop

    iget-object v1, v1, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lfdn;

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    if-eqz v1, :cond_3

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    monitor-exit p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized U(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lfom;

    nop

    nop

    invoke-virtual {v0, p1, p2, p3}, Lfom;->d(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    iget-object p1, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast p1, Lfdn;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final V(Lfjl;)Ljava/lang/String;
    .locals 9

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0}, Lduz;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_4
    iget-object v0, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Liof;->a:Ljava/lang/Object;

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

    nop

    :goto_6
    monitor-enter v2

    nop

    :try_start_0
    iget-object p0, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    check-cast p0, Lfts;

    nop

    nop

    nop

    invoke-virtual {p0, p1, v1}, Lfts;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    nop

    return-object v1

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v2

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v2, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_9

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit v2

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw p1

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0, v0}, Lduz;->b(Ljava/lang/Object;)Z

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v2, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x17

    nop

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

    nop

    :goto_f
    check-cast v0, Lfnb;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_12
    invoke-interface {v2, v0}, Lduz;->b(Ljava/lang/Object;)Z

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_14
    throw p0

    nop

    nop

    :catchall_3
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_3
    monitor-exit v0

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/32 :goto_0

    nop

    nop

    :goto_15
    goto/32 :goto_1

    nop

    :goto_16
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_18
    invoke-static {v0}, Lfsh;->r(Ljava/lang/Object;)V

    :try_start_4
    iget-object v1, v0, Lfnb;->a:Ljava/security/MessageDigest;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v1}, Lfjl;->a(Ljava/security/MessageDigest;)V

    iget-object v1, v0, Lfnb;->a:Ljava/security/MessageDigest;

    nop

    nop

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    nop

    nop

    sget-object v2, Lftw;->b:[C

    nop

    nop

    nop

    nop

    monitor-enter v2

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    sget-object v3, Lftw;->b:[C

    nop

    nop

    const/4 v4, 0x0

    nop

    :goto_19
    array-length v5, v1

    nop

    nop

    if-ge v4, v5, :cond_2

    nop

    aget-byte v5, v1, v4

    nop

    and-int/lit16 v6, v5, 0xff

    nop

    nop

    nop

    add-int v7, v4, v4

    nop

    nop

    nop

    nop

    sget-object v8, Lftw;->a:[C

    nop

    nop

    nop

    nop

    ushr-int/lit8 v6, v6, 0x4

    nop

    nop

    nop

    aget-char v6, v8, v6

    nop

    nop

    nop

    nop

    aput-char v6, v3, v7

    nop

    nop

    nop

    add-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    and-int/lit8 v5, v5, 0xf

    nop

    nop

    nop

    aget-char v5, v8, v5

    nop

    nop

    nop

    nop

    aput-char v5, v3, v7

    nop

    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_2
    new-instance v1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([C)V

    monitor-exit v2

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_6
    iget-object v1, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lfts;

    nop

    invoke-virtual {v1, p1}, Lfts;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Ljava/lang/String;

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method

.method public final W(Ljava/lang/String;)V
    .locals 5

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v2, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Lofu;

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lfsh;->r(Ljava/lang/Object;)V

    iget v3, v2, Lofu;->a:I

    nop

    nop

    nop

    nop

    if-lez v3, :cond_4

    nop

    nop

    add-int/lit8 v3, v3, -0x1

    nop

    iput v3, v2, Lofu;->a:I

    nop

    nop

    nop

    nop

    if-nez v3, :cond_2

    nop

    iget-object v1, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Lofu;

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    if-eqz v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    move-object v0, p1

    nop

    nop

    nop

    check-cast v0, Lfdn;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    monitor-enter v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object v3, p1

    nop

    nop

    nop

    nop

    check-cast v3, Lfdn;

    nop

    iget-object v3, v3, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    nop

    nop

    nop

    nop

    const/16 v4, 0xa

    nop

    if-ge v3, v4, :cond_0

    nop

    nop

    nop

    nop

    check-cast p1, Lfdn;

    nop

    iget-object p1, p1, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {p1, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    nop

    nop

    nop

    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but actually removed: "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", safeKey: "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :cond_2
    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_f

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

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

    :goto_5
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x8

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x14

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v1, "Cannot release a lock that is not held, safeKey: "

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_3

    nop

    goto/32 :goto_c

    nop

    :cond_3
    goto/32 :goto_b

    nop

    :goto_a
    sget-object v0, Lcom/google/android/apps/camera/jni/microvideotonemap/EeD/yHEIcF;->UAu:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_c

    nop

    :goto_e
    return-void

    nop

    nop

    :cond_4
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", interestedThreads: "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    iget-object p0, v2, Lofu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    throw p1

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public final X(Z)Ljava/util/Map;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    goto :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Liof;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final Y(Lfjl;Lflp;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Liof;->X(Z)Ljava/util/Map;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-boolean v0, p2, Lflp;->d:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final a(Lpro;)F
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lkdp;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    array-length v0, p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    const/16 v1, 0xe

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_9
    aget p0, p0, p1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lgct;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_d
    if-gtz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    check-cast p0, [F

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, p1}, Liof;->b(Lpro;)Lpnu;

    move-result-object p1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_12
    iget-object p0, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, p1, v1}, Lgct;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lkdp;->b:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_18
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {p1, p0}, Lpnu;->o(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p0, Landroid/util/Range;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1f
    int-to-float p0, p0

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    :goto_22
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1b

    nop

    nop

    nop
.end method

.method public final aa([F)Liof;
    .locals 9

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sub-float/2addr v3, v8

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_1
    invoke-static {v4, v3}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_18

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v3, [I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_8
    neg-int v4, v4

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_9
    array-length v3, p1

    nop

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

    :goto_a
    if-eq v4, v6, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_2d

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    :goto_d
    invoke-direct {p0, p1, v0, v1}, Liof;-><init>(Ljava/lang/Object;Ljava/lang/Object;[C)V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_e
    iget-object v5, p0, Liof;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_f
    aget v8, v6, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lt v2, v3, :cond_1

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

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v3, [I

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance p0, Liof;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_16
    array-length v6, v5

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v3, v7, v4}, Landroidx/wear/ambient/SharedLibraryVersion;->g(FII)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_19
    aget v7, v5, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v6, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1b
    if-gez v4, :cond_2

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

    :cond_2
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1c
    if-eqz v4, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1d
    add-int/lit8 v7, v4, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1e
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v3, p0, Liof;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_20
    check-cast v6, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_21
    goto :goto_18

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-array v0, v0, [I

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v3, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_25
    aget v3, v3, v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_26
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3b

    nop

    :goto_27
    check-cast v5, [I

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_28
    aget v3, p1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_29
    iget-object v4, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    return-object p0

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2c
    move v2, v1

    nop

    :goto_2d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    aget v4, v5, v4

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    aget v3, v3, v4

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_30
    add-int/lit8 v6, v6, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_31
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_32
    aget v3, v5, v6

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_33
    sub-float/2addr v6, v8

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_34
    aget v6, v6, v4

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_35
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_36
    check-cast v4, [F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    array-length v0, p1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_38
    add-int/lit8 v4, v4, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_39
    aput v3, v0, v2

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_3a
    const v0, 0x20

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_3d
    div-float/2addr v3, v6

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop
.end method

.method public final b(Lpro;)Lpnu;
    .locals 2

    goto/32 :goto_12

    nop

    nop

    :goto_0
    iget-object v0, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0, p1}, Lpnv;->d(Ljava/lang/String;)Lpnx;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p1}, Lpro;->b()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p1}, Lpnx;->b(Ljava/lang/String;)Lpnx;

    move-result-object v1

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_f
    if-eqz v1, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0, v1}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_11
    iget-object p0, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    const v0, 0xc

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_d

    nop

    nop
.end method

.method public final declared-synchronized c(Llxm;)Linc;
    .locals 5

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p0, Liof;->b:Ljava/lang/Object;

    nop

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Linc;

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    new-instance v0, Linc;

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    invoke-direct {v0, v1}, Linc;-><init>([B)V

    iget-object v2, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Liof;->a:Ljava/lang/Object;

    nop

    check-cast v2, Llvw;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, p1}, Llvw;->a(Llxm;)Llxa;

    move-result-object v2

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Llxa;->q()Lsui;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Lgfq;

    nop

    nop

    nop

    nop

    const/4 v4, 0x7

    nop

    invoke-direct {v3, p0, p1, v4, v1}, Lgfq;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[C)V

    sget-object p1, Lstd;->a:Lstd;

    nop

    nop

    invoke-static {v2, v3, p1}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    const v1, 0x6

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

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

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    :goto_b
    throw p1

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    return-object v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Ljava/lang/String;)Lqht;
    .locals 5

    goto/32 :goto_21

    nop

    nop

    :goto_0
    sget-object v1, Lhoa;->a:Lhoa;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Lqoe;->L()Lqfm;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3
    const-string v0, "Failed to create GLContext!"

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

    :goto_4
    if-eq p0, v1, :cond_0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, p1, p0, v1, v1}, Lqjs;-><init>(Lqht;Lqfs;[B[B)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p0, Lqiq;

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

    :goto_a
    new-instance v4, Lqfl;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v4, p1, v3}, Lqfl;-><init>(Ljava/lang/String;Lqfm;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p1, v1}, Lqoe;->E(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lqfs;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {p0}, Lqoe;->J(Lqfs;)Ljava/lang/Object;
    :try_end_0
    .catch Lqft; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2a

    nop

    nop

    :goto_d
    return-object p1

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lqft;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, p1}, Lqiq;-><init>(Lqht;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_10
    throw p1

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, v0}, Lqhy;->m(Lqjs;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v1, Lqid;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_15
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_10

    nop

    nop

    :goto_17
    iget-object p0, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_19
    invoke-static {}, Lqoe;->Q()Landroidx/wear/ambient/AmbientMode$AmbientController;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v4}, Lqfl;->a()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object p0, Lhmq;->a:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1e
    invoke-direct {p1, p0}, Lqis;-><init>(Lqht;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance p1, Lqis;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-instance p1, Lqic;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x20

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_22
    goto :goto_26

    nop

    nop

    :goto_23
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {p1, v4, v4}, Lqic;-><init>(Ljava/util/concurrent/Executor;Lqfl;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_13

    nop

    nop

    :goto_27
    sget-object v0, Lqjx;->a:Lqjx;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_28
    new-instance p1, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_29
    invoke-direct {v1, p1, v0, v2, p0}, Lqid;-><init>(Lqhy;Lqjx;Landroidx/wear/ambient/AmbientMode$AmbientController;Z)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance v0, Lqjs;

    nop

    goto/32 :goto_1a

    nop

    nop
.end method

.method public final e(Llxm;)Lrss;
    .locals 4

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Liof;->b:Ljava/lang/Object;

    nop

    check-cast v0, Ljava/util/HashMap;

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    nop

    goto/16 :goto_6

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v1, p0, Liof;->b:Ljava/lang/Object;

    nop

    check-cast v1, Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v1, Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    :try_start_2
    iget-object v1, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v1, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v1, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    return-object v0

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    monitor-exit p0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p1

    nop

    nop

    :try_start_3
    monitor-exit p0

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw p1

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    :goto_7
    const v1, 0x14

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_9
    throw v0

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_4
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_15

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    :try_start_5
    instance-of v0, v0, Ljava/lang/InterruptedException;

    nop

    nop

    if-eqz v0, :cond_1

    nop

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    nop

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_11

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    :goto_f
    throw p1

    nop

    nop

    :catchall_4
    move-exception v0

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

    nop

    :goto_10
    throw p1

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    monitor-enter p0

    nop

    nop

    :try_start_6
    iget-object v0, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Ljava/util/concurrent/Future;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v1, Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/util/concurrent/Future;

    nop

    nop

    nop

    monitor-exit p0

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/32 :goto_17

    nop

    nop

    :goto_14
    throw p1

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x15

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_2
    :try_start_7
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Liof;->ab(Ljava/util/concurrent/Future;)Lltn;

    move-result-object v1

    nop

    nop

    new-instance v2, Liof;

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    invoke-direct {v2, v0, v1, v3}, Liof;-><init>(Ljava/lang/Object;Ljava/lang/Object;[B)V

    invoke-static {v2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized f(Llxm;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    :try_start_0
    new-instance v0, Lsuu;

    nop

    nop

    invoke-direct {v0}, Lsuu;-><init>()V

    iget-object v1, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Lsuu;-><init>()V

    iget-object v1, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v1, Ljava/util/HashMap;

    nop

    nop

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    const v0, 0xe

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    throw p1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x6

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop
.end method

.method public final g(Llxm;Lrss;)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/util/HashMap;

    nop

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Lsuu;

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, p0}, Lsuu;->cancel(Z)Z

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_b
    sget-object p2, Lcom/google/android/apps/camera/debug/metrics/Rn/hhAHoOiyE;->AUytpgRxZtVt:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_f
    check-cast p0, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    const v1, 0x13

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, p0}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p0, Ljava/util/NoSuchElementException;

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

    nop

    :goto_14
    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

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

    :goto_15
    throw p1

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_17
    throw p0

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    :catchall_1
    move-exception p1

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_19
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_20

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    :goto_20
    monitor-enter p0

    nop

    nop

    :try_start_3
    iget-object p2, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    check-cast p2, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Liof;->a:Ljava/lang/Object;

    nop

    check-cast p2, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    check-cast p1, Lsuu;

    nop

    invoke-static {p1}, Liof;->ab(Ljava/util/concurrent/Future;)Lltn;

    move-result-object p1

    nop

    nop

    nop

    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lltn;->close()V

    :cond_3
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_19

    nop

    nop

    nop

    nop
.end method

.method public final h(Llxm;Lltn;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v0, Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Lsuu;

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

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
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, p2}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p2}, Lltn;->close()V

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz p1, :cond_1

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lltn;->close()V

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;->close()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    check-cast v0, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;

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

    :goto_5
    iget-object v0, p0, Liof;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop
.end method

.method public final j(Ljava/lang/String;)V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lowu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    :goto_2
    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Liof;->a:Ljava/lang/Object;

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    invoke-direct {v1, v0, p1, v2}, Lhfx;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v1, Lhfx;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    const/16 v2, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    :try_start_0
    iget-object v0, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    const-string v1, "display"

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Landroid/content/Context;

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Landroid/hardware/display/DisplayManager;

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    iget-object v0, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    iget-object v1, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    nop

    check-cast v1, Landroid/content/Context;

    nop

    nop

    invoke-virtual {v1, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x2

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_10
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
    iget-object p0, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_12
    invoke-virtual {p0, v1}, Lowu;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k()Z
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_2
    iget-object v0, p0, Liof;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v1, Lhmz;->k:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v0, Lhoh;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_8
    const/4 p0, 0x0

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_9
    check-cast v0, Lhoh;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    sget-object v1, Lhmz;->j:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    iget-boolean p0, p0, Lprb;->a:Z

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_10
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_17

    nop

    nop

    :goto_12
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    if-eqz p0, :cond_2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_15
    check-cast p0, Lprb;

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

    nop

    nop

    :goto_16
    return p0

    nop

    nop

    :goto_17
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_19
    const v1, 0x18

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1a
    return p0

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_8

    nop

    nop
.end method

.method public final l()Z
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x5

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4
    iget-object v1, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_b
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v1, Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v0, Lhna;->s:Lhmn;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1, v0}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Liof;->k()Z

    move-result p0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_13
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final m()Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lhmz;->x:Lhmn;

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

    :goto_1
    invoke-virtual {p0, v0}, Lhoh;->p(Lhmn;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    iget-object p0, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, Lhoh;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final p()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lmse;->h()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    check-cast p0, Lmse;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final q(Landroid/content/Intent;)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

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

    :catch_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    :goto_5
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x12

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    sget-object p1, Lrdj;->a:Lrdj;

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

    nop

    nop

    :goto_8
    const-string v1, "Could not find application for intent fulfillment."

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

    :goto_9
    invoke-virtual {p0}, Liof;->t()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    :try_start_0
    iget-object v0, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v0, Landroid/content/Context;

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1, p0, v1, v0}, Lrdj;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    check-cast p0, Liof;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-array v0, v0, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final varargs r(I[Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Landroid/content/Context;

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

    nop

    :goto_1
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Liof;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Liof;->s(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final s(Ljava/lang/String;)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    check-cast p0, Lowu;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_3
    const/4 v1, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lhfx;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Lowu;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    :goto_9
    iget-object p0, p0, Liof;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    const v0, 0x3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    :goto_d
    invoke-direct {v0, p0, p1, v1}, Lhfx;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_9

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

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
.end method

.method public final t()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Liof;->s(Ljava/lang/String;)V

    goto/32 :goto_3

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

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

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

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    :goto_7
    iget-object v0, p0, Liof;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    check-cast v0, Landroid/content/Context;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x7f1401b7

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x11

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

    :goto_c
    goto/32 :goto_4

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    const v1, 0x1d

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public final u(Lgqg;)Lsui;
    .locals 4

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v2, v0, v3, v1}, Lnjf;->b(Lpog;Lpck;Lpby;Lrss;)Lnjf;

    move-result-object v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_4
    iget-boolean v0, p1, Lgqg;->O:Z

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    :goto_a
    sget-object v1, Lrsa;->a:Lrsa;

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Lpoh;->g()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p0, Lnjb;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Lhdn;->n()I

    move-result v0

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
    const v0, 0xa

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

    :goto_12
    iget-object v0, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_15
    check-cast v0, Lhdn;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p1, p1, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_b

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_a

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1d
    iget-object v2, p1, Lgqg;->B:Lpog;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1e
    iget-object p1, p1, Lgqg;->W:Liof;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v1, :cond_2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_20
    check-cast p1, Lpoh;

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

    :goto_21
    invoke-static {v0}, Lpby;->j(Lpck;)Lpby;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_22
    invoke-virtual {p0, v0, p1}, Lnjb;->g(Lnjf;Ljava/lang/Integer;)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, p1, Lgqg;->f:Lpck;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-eq v0, v2, :cond_3

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_26
    const/16 v1, 0x23

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

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
.end method

.method public final v()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lmyz;

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

    :goto_1
    iget-object p0, p0, Liof;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lmyz;->a()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method

.method public final w()V
    .locals 14

    goto/32 :goto_55

    nop

    nop

    :goto_0
    iget-object v0, p0, Lhbq;->g:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lhbq;->f:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_4
    const v1, 0x7f0b0311

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x7f0b0313

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

    :goto_7
    iget-object v0, p0, Lhbq;->f:Landroid/view/View;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_8
    check-cast v0, Lcom/google/android/apps/camera/util/ui/GcaTextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v4}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    const v1, 0x7f0b0310

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v4, p0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lhbq;->h:Lcom/google/android/apps/camera/util/ui/GcaTextView;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lhbq;->f:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v12, p0, Lhbq;->e:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_12
    iput-object v0, p0, Lhbq;->j:Lcom/google/android/apps/camera/util/ui/GcaTextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_14
    const/16 v1, 0x24

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_15
    iput v0, p0, Lhbq;->n:I

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_16
    iput v0, p0, Lhbq;->o:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v6, Lmtj;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast v0, Landroid/widget/TextView;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x7f0b0314

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/ui/GcaTextView;->getCurrentTextColor()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object v0, p0, Lhbq;->l:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v9, p0, Lhbq;->c:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_1f
    const/4 v2, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v13, Lhbp;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_22
    const v1, 0x7f0b0312

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lhbq;->f:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_25
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_26
    const/4 v5, 0x0

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

    :goto_27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v0, Lgzs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_29
    iput-object v0, p0, Lhbq;->i:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_2a
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual/range {v0 .. v6}, Lmse;->q(IILandroid/view/View;Landroid/content/DialogInterface$OnDismissListener;Landroidx/wear/ambient/AmbientMode$AmbientController;Lrss;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0}, Lgzs;->b()V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const v1, 0x11

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2e
    sget-object v7, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v0, p0, Lhbq;->f:Landroid/view/View;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v1, p0, Lhbq;->f:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_31
    return-void

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v3, p0, Lhbq;->f:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_34
    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_35
    new-instance v1, Lgzp;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const v1, 0x7f0b030c

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_37
    check-cast p0, Lhbq;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_3a
    iget-object v0, p0, Lhbq;->c:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_3b
    iput-object v0, p0, Lhbq;->h:Lcom/google/android/apps/camera/util/ui/GcaTextView;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iput-object v0, p0, Lhbq;->p:Lgzs;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_3d
    iget-object v0, p0, Lhbq;->b:Lmse;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_3e
    sget-object v11, Lhbq;->a:Landroid/net/Uri;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v0, p0, Lhbq;->i:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_40
    iget-object v0, p0, Lhbq;->j:Lcom/google/android/apps/camera/util/ui/GcaTextView;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_42
    const v1, 0x7f0b0315

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

    :goto_43
    iget-object v10, p0, Lhbq;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    check-cast v0, Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v0, p0, Lhbq;->f:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_46
    invoke-direct {v1, v4, v2}, Lgzp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/ui/GcaTextView;->getCurrentTextColor()I

    move-result v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    move-object v6, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_49
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object v0, p0, Lhbq;->p:Lgzs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    check-cast v0, Lcom/google/android/apps/camera/util/ui/GcaTextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    move-object p0, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_4d
    iput-object v0, p0, Lhbq;->g:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4e
    iget-object v8, p0, Lhbq;->q:Lnar;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const v2, 0x7f140471

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_50
    iget-object v0, p0, Lhbq;->f:Landroid/view/View;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_51
    invoke-direct {v1, v4, v2}, Lgzp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_52
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    :goto_53
    check-cast v0, Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iput-object v0, p0, Lhbq;->k:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_55
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_56
    move-object v5, v0

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_57
    invoke-direct/range {v5 .. v13}, Lgzs;-><init>(Lmtj;Lrss;Lnar;Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/net/Uri;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)V

    goto/32 :goto_3c

    nop

    nop

    :goto_58
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_59
    iget-object v0, p0, Lhbq;->f:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5a
    const v2, 0x7f0b0316

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    new-instance v1, Lgzp;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_5c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_5d
    iput-object v0, p0, Lhbq;->f:Landroid/view/View;

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const v1, 0x7f0e00ee

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-direct {v13, v4, v1}, Lhbp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop
.end method

.method public final x()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Liof;->a:Ljava/lang/Object;

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

    :goto_1
    check-cast p0, Lmyz;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lmyz;->f()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final y()Landroid/media/AudioDeviceInfo;
    .locals 5

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    :goto_4
    invoke-static {v2}, Liof;->A(Landroid/media/AudioDeviceInfo;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_8
    return-object v2

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_1b

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    check-cast p0, Landroid/media/AudioManager;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    const v1, 0x1

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

    nop

    :goto_10
    array-length v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_11
    const/4 v2, 0x0

    nop

    nop

    :goto_12
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1d

    nop

    nop

    :goto_15
    if-lt v1, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0xc

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eq v3, v4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_18
    const/4 v4, 0x7

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_19
    aget-object v2, p0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object v2, Lhly;->a:Lhmo;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_2
    goto/32 :goto_13

    nop
.end method

.method public final z()Landroid/media/AudioDeviceInfo;
    .locals 7

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v6, 0x16

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1
    move-object v3, v4

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v4}, Liof;->A(Landroid/media/AudioDeviceInfo;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x11

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p0, Landroid/media/AudioManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_6
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    return-object v2

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_b
    move-object v3, v2

    nop

    nop

    :goto_c
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v6, 0xb

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    return-object v3

    nop

    :goto_f
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_10
    if-ne v5, v6, :cond_1

    nop

    goto/32 :goto_20

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_12
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    :goto_14
    goto/32 :goto_24

    nop

    nop

    :goto_15
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz v3, :cond_2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_18
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_19
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1a
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    aget-object v4, p0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v6, 0x3

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eq v5, v6, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_3
    :goto_20
    goto/32 :goto_3

    nop

    nop

    :goto_21
    if-lt v1, v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-eq v5, v6, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2c

    nop

    nop

    :goto_24
    iget-object p0, p0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_25
    if-eqz v2, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_26
    array-length v0, p0

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_27
    move-object v2, v4

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2c
    invoke-static {v4}, Liof;->A(Landroid/media/AudioDeviceInfo;)V

    goto/32 :goto_16

    nop

    nop
.end method
