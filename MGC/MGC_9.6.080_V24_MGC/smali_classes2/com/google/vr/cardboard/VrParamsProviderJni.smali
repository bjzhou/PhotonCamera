.class public Lcom/google/vr/cardboard/VrParamsProviderJni;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    nop
.end method

.method private static a(JLandroid/util/DisplayMetrics;FI)V
    .locals 8

    goto/32 :goto_10

    nop

    nop

    :goto_0
    invoke-static/range {v0 .. v7}, Lcom/google/vr/cardboard/VrParamsProviderJni;->nativeUpdateNativeDisplayParamsPointer(JIIFFFI)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    :goto_2
    move-wide v0, p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v3, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    move v6, p3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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
    move v7, p4

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    iget v5, p2, Landroid/util/DisplayMetrics;->ydpi:F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_e
    iget v4, p2, Landroid/util/DisplayMetrics;->xdpi:F

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    iget v2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    const v1, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method private static native nativeUpdateNativeDisplayParamsPointer(JIIFFFI)V
.end method

.method private static readDeviceParams(Landroid/content/Context;)[B
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ltrr;->e()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Lrgw;->aA(Landroid/content/Context;)Ltrr;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0}, Ltrr;->b()Ltsn;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Ltis;->h()[B

    move-result-object p0

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
.end method

.method private static readDisplayParams(Landroid/content/Context;J)V
    .locals 5

    goto/32 :goto_24

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

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1
    if-eq p0, v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    :goto_2
    invoke-static {v0}, Ltcw;->k(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    move-result-object v2

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Ltcw;->l(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0}, Ltcw;->j(Ltso;)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v1}, Ltcw;->j(Ltso;)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p1, p2, v2, v1, p0}, Lcom/google/vr/cardboard/VrParamsProviderJni;->a(JLandroid/util/DisplayMetrics;FI)V

    goto/32 :goto_8

    nop

    nop

    :goto_c
    iget v4, v1, Ltso;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_d
    const-string v3, "getSafeInsetRight"

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_11
    invoke-static {p0, v0}, Ltrb;->a(Ljava/lang/String;Ljava/lang/Object;)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz p0, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_16
    and-int/lit8 v4, v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_17
    invoke-interface {v0}, Ltrr;->c()Ltso;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v0, 0x0

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

    :goto_19
    const-string v3, "getSafeInsetBottom"

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    and-int/2addr v4, v3

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

    :goto_1b
    if-nez v4, :cond_2

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1c
    iget v4, v1, Ltso;->c:F

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1d
    invoke-static {v3, v0}, Ltrb;->a(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_33

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

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_31

    nop

    :goto_20
    invoke-static {p1, p2, p0, v0, v1}, Lcom/google/vr/cardboard/VrParamsProviderJni;->a(JLandroid/util/DisplayMetrics;FI)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_22
    invoke-static {p0}, Lrgw;->aA(Landroid/content/Context;)Ltrr;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string p0, "getSafeInsetTop"

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

    nop

    :goto_24
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const-string p0, "VrParamsProviderJni"

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v3, 0x1

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_28
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_29
    add-int/2addr p0, v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2a
    sget-object v0, Lcom/google/android/apps/camera/ui/captureframe/UrAR/NrBoRltj;->IEuBnTHegN:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2b
    iput v4, v2, Landroid/util/DisplayMetrics;->xdpi:F

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v4, :cond_5

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_5
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v0}, Ltrr;->e()V

    goto/32 :goto_3

    nop

    nop

    :goto_2f
    iput v4, v2, Landroid/util/DisplayMetrics;->ydpi:F

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_a

    nop

    nop

    :goto_31
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto :goto_38

    nop

    :goto_34
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {p0, v0}, Ltrb;->a(Ljava/lang/String;Ljava/lang/Object;)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_37
    invoke-static {v3, v0}, Ltrb;->a(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v0

    nop

    nop

    :goto_38
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget v4, v1, Ltso;->b:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    sget v4, Ltrb;->a:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3b
    iget v4, v1, Ltso;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_3c
    const-string p0, "getSafeInsetLeft"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3d
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method private static readSdkConfigurationParams(Landroid/content/Context;)[B
    .locals 4

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_2f

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    or-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_a

    nop

    nop

    :goto_7
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    throw p0

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

    nop

    :goto_a
    sget-object v0, Ltse;->c:Lsji;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    monitor-enter v1

    nop

    :try_start_0
    sput-object v0, Ltse;->b:Lsji;

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_d
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v1

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    throw p0

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v0, Ltsq;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_15
    check-cast v1, Ltsq;

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

    :goto_16
    invoke-virtual {v1}, Ltis;->h()[B

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_17
    or-int/lit8 v1, v1, 0x2

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_19
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v0, "SdkConfigurationReader"

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v1, v3, Ltsq;->b:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1c
    iput v2, v1, Ltsq;->b:I

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1e
    invoke-interface {p0, v0}, Ltrr;->a(Ltsq;)Lsji;

    move-result-object v0

    nop

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

    :goto_1f
    rem-int v0, v0, v1

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

    nop

    :goto_20
    iput v1, v3, Ltsq;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_21
    move-object v3, v2

    nop

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

    :goto_22
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_3
    goto/32 :goto_10

    nop

    :goto_23
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const-class v0, Ltse;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_27
    iget v2, v1, Ltsq;->b:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_28
    check-cast v3, Ltsq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_29
    sget-object v0, Ltsq;->a:Ltsq;

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

    :goto_2a
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v1

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

    :goto_2b
    iput-object v2, v1, Ltsq;->c:Ljava/lang/String;

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

    :goto_2c
    sget-object v1, Ltse;->b:Lsji;

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :goto_2f
    goto/32 :goto_39

    nop

    nop

    :goto_30
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_31
    sget-object v1, Lcom/integrity/annotations/Obhj/bbLWXEJrNl;->ZdgLpg:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {p0}, Ltrr;->e()V

    goto/32 :goto_2c

    nop

    nop

    :goto_34
    const/4 v1, 0x0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const v1, 0x3

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iput-object v1, v3, Ltsq;->d:Lsji;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    sget-object v0, Ltse;->a:Lsji;

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_38
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    sget-object v1, Ltse;->b:Lsji;

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    goto :goto_2d

    nop

    nop

    nop

    :cond_4
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_39
    const-class v1, Ltse;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const-string v2, "1.229.0"

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    sget-object v1, Ltse;->a:Lsji;

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

    :goto_3c
    invoke-static {p0}, Lrgw;->aA(Landroid/content/Context;)Ltrr;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_3d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop
.end method

.method private static readUserPrefs(Landroid/content/Context;)[B
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Ltrr;->e()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ltis;->h()[B

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

    :goto_5
    invoke-static {p0}, Lrgw;->aA(Landroid/content/Context;)Ltrr;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0}, Ltrr;->d()Ltsp;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method private static writeDeviceParams(Landroid/content/Context;[B)Z
    .locals 4

    goto/32 :goto_4

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    invoke-static {}, Ltjv;->a()Ltjv;

    move-result-object v1

    nop

    nop

    nop

    sget-object v2, Ltsn;->a:Ltsn;

    nop

    array-length v3, p1

    nop

    nop

    invoke-static {v2, p1, v0, v3, v1}, Ltkg;->q(Ltkg;[BIILtjv;)Ltkg;

    move-result-object p1

    nop

    nop

    nop

    invoke-static {p1}, Ltkg;->E(Ltkg;)V

    check-cast p1, Ltsn;

    nop

    nop

    nop

    goto :goto_2

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    goto/16 :goto_d

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, p1}, Ltrr;->f(Ltsn;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ltky; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

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

    :goto_4
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    goto :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    :try_start_1
    const-string v1, "VrParamsProviderJni"

    nop

    nop

    nop

    nop

    nop

    const-string v2, "Error parsing protocol buffer: "

    nop

    nop

    nop

    invoke-static {p1, v2}, Lmf;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    goto/32 :goto_12

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_f
    throw p1

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_12
    invoke-interface {p0}, Ltrr;->e()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p0}, Ltrr;->e()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p0}, Lrgw;->aA(Landroid/content/Context;)Ltrr;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method
