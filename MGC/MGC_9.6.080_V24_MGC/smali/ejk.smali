.class public final Lejk;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;


# direct methods
.method private final 19e596a3e324281407eb5c11093c0152m(Ljava/lang/String;Z)Lrp;
    .locals 9

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    :try_start_0
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {p1}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v2, p0, Lejk;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    const-string v3, "camera"

    nop

    check-cast v2, Landroid/content/Context;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

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

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_13

    nop

    nop

    :goto_8
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    :try_start_2
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->INFO_DEVICE_STATE_SENSOR_ORIENTATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_6

    nop

    :goto_a
    const-string v3, "#readCameraMetadata"

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_3
    sget-object v3, Ltyy;->a:Ltyy;

    nop

    nop

    nop

    nop

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Ljava/util/LinkedHashSet;

    nop

    nop

    nop

    invoke-static {v4}, Lrkm;->R(I)I

    move-result v8

    nop

    nop

    invoke-direct {v7, v8}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-virtual {v7, v3}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v7, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_e

    nop

    nop

    nop

    nop

    :catchall_0
    :goto_d
    move-object v7, v5

    nop

    nop

    :goto_e
    if-nez v7, :cond_2

    nop

    nop

    iget-object v3, p0, Lejk;->b:Ljava/lang/Object;

    nop

    check-cast v3, Lfdn;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    goto :goto_f

    nop

    :cond_2
    iget-object v3, p0, Lejk;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lfdn;

    nop

    nop

    iget-object v3, v3, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v6

    nop

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    nop

    nop

    nop

    invoke-static {v6}, Lrkm;->R(I)I

    move-result v6

    nop

    nop

    nop

    new-instance v8, Ljava/util/LinkedHashSet;

    nop

    nop

    nop

    invoke-direct {v8, v6}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-virtual {v8, v3}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    invoke-static {v8, v7}, Lrkm;->aG(Ljava/util/Collection;Ljava/lang/Iterable;)V

    move-object v3, v8

    nop

    :goto_f
    new-instance v6, Lrp;

    nop

    nop

    invoke-direct {v6, p1, v2, p0, v3}, Lrp;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;Lejk;Ljava/util/Set;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    sub-long/2addr v2, v0

    nop

    invoke-static {p1}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const-string p0, "%."

    nop

    const-string v0, "f ms"

    nop

    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, p0, v0}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    long-to-double v0, v2

    nop

    nop

    nop

    const-wide v2, 0x412e848000000000L    # 1000000.0

    nop

    nop

    nop

    nop

    nop

    div-double/2addr v0, v2

    nop

    nop

    nop

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    invoke-static {v5, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    return-object v6

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x21

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string p2, "Failed to load metadata for "

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_14
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_15
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 4

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x7f080140

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v1, p0, Lejk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x7f08013d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    const v1, 0x7f0800f3

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

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_6
    const v2, 0x7f0800f6

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    new-array v1, v0, [I

    nop

    fill-array-data v1, :array_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_9
    const v2, 0x7f08013f

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

    :goto_a
    const v1, 0x7f0800fd

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

    :goto_b
    filled-new-array {v0, v1}, [I

    move-result-object v0

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

    :goto_c
    iput-object v0, p0, Lejk;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_d
    const v3, 0x7f0800fc

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_e
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    const v1, 0x11

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

    :goto_11
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v0, p0, Lejk;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Lejk;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_15
    iput-object v0, p0, Lejk;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_16
    const v1, 0x7f080123

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x12

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_18
    const v0, 0x7f080136

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_19
    const v0, 0x7f080102

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_23

    nop

    :cond_0
    goto/32 :goto_22

    nop

    :goto_1c
    const v0, 0x7f0800f7

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object v0, p0, Lejk;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1e
    new-array v0, v0, [I

    nop

    nop

    nop

    fill-array-data v0, :array_1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    :array_0
    .array-data 4
        0x7f08010b
        0x7f08012e
        0x7f080112
        0x7f08010d
        0x7f08010e
        0x7f080111
        0x7f080110
    .end array-data

    :array_1
    .array-data 4
        0x7f08013c
        0x7f08013e
        0x7f080104
        0x7f080138
        0x7f080139
        0x7f08013a
        0x7f08013b
    .end array-data

    :goto_20
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v2, 0x7f080124

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lejk;Lud;Lfdn;Lkg;)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lejk;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_8

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
    iput-object p1, p0, Lejk;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput-object p1, p0, Lejk;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lejk;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p4, p0, Lejk;->b:Ljava/lang/Object;

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

    :goto_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p3, p0, Lejk;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    new-instance p1, Landroid/util/ArrayMap;

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

    :goto_b
    new-instance p1, Landroid/util/ArrayMap;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance p1, Landroid/util/ArrayMap;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Lejp;Landroid/view/WindowId;Lejy;Landroid/animation/Animator;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lejk;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

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
    iput-object p6, p0, Lejk;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lejk;->a:Ljava/lang/Object;

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p4, p0, Lejk;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p3, p0, Lejk;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p5, p0, Lejk;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public constructor <init>(Lufs;Lufp;Ljava/util/concurrent/Executor;Lufp;Luaz;Luaz;)V
    .locals 0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    const/4 p2, 0x5

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

    :goto_1
    iput-object p2, p0, Lejk;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    const/4 p2, 0x6

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
    invoke-direct {p1, p5, p2}, Lmx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_11

    nop

    nop

    :goto_4
    new-instance p2, Ltxz;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p2, p1}, Ltxz;-><init>(Luaz;)V

    goto/32 :goto_1

    nop

    nop

    :goto_6
    iput-object p3, p0, Lejk;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p1, p6, p2}, Lmx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p1, Lmx;

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

    :goto_9
    invoke-direct {p2, p1}, Ltxz;-><init>(Luaz;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    iput-object p2, p0, Lejk;->a:Ljava/lang/Object;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p1, Lmx;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    iput-object p1, p0, Lejk;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p2, p0, Lejk;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p4, p0, Lejk;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance p2, Ltxz;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final d([II)Z
    .locals 3

    goto/32 :goto_16

    nop

    nop

    :goto_0
    array-length v2, p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move v1, v0

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_2

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lt v1, v2, :cond_0

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    aget v2, p0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    return v0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    :goto_e
    if-eq v2, p1, :cond_2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    return p0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int/lit8 v1, v1, 0x1

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

    :goto_12
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_12

    nop

    nop

    :goto_16
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method public static final e(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 6

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    filled-new-array {v1, v2, v4, v5}, [[I

    move-result-object v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, p1}, Ldtz;->c(II)I

    move-result v3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4
    sget-object v2, Llq;->c:[I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0, p1}, Ldtz;->c(II)I

    move-result v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p1, v1, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    filled-new-array {p0, v3, v0, p1}, [I

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    invoke-static {p0, v1}, Llq;->a(Landroid/content/Context;I)I

    move-result p0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
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

    :goto_b
    goto/32 :goto_d

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_e
    return-object p1

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    const v1, 0x7f040170

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_11
    new-instance p1, Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v1, Llq;->a:[I

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

    :goto_13
    sget-object v4, Llq;->b:[I

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

    :goto_14
    invoke-static {p0, v0}, Llq;->b(Landroid/content/Context;I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_16
    sget-object v5, Llq;->e:[I

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_17
    const v0, 0x7f040175

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final f(Lle;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;
    .locals 4

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x7f080133

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/32 :goto_16

    nop

    nop

    :goto_3
    const/4 v1, 0x0

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
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_6
    return-object p2

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_8
    move-object p1, v2

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/32 :goto_11

    nop

    nop

    :goto_c
    const/high16 p1, 0x1020000

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_e
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_f
    instance-of p1, v0, Landroid/graphics/drawable/BitmapDrawable;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_34

    nop

    nop

    :goto_12
    if-eq p1, p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x7f080132

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_7

    nop

    nop

    :goto_18
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_1b
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 p0, 0x2

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

    :goto_1d
    aput-object p1, v2, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto :goto_24

    nop

    :goto_1f
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_21
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, p1, v1}, Lle;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_23
    invoke-direct {p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_24
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {p2, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_26
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_2
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_28
    if-eq p1, p2, :cond_3

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p2, p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p2, v1, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0, p1, v0}, Lle;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2e
    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v2, 0x3

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_18

    nop

    :goto_31
    goto/16 :goto_9

    nop

    :goto_32
    goto/32 :goto_13

    nop

    nop

    :goto_33
    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_34
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_35
    const p1, 0x102000d

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

    :goto_36
    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    rem-int v0, v0, v1

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_38
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_39
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_3c
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_3e
    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto/32 :goto_8

    nop

    nop

    :goto_3f
    const p1, 0x102000f

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_40
    aput-object p0, v2, v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p2, v0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_42
    if-eq v2, p2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_43
    aput-object v0, v2, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_44
    new-instance v3, Landroid/graphics/Canvas;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_45
    invoke-direct {p2, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_47
    new-instance v2, Landroid/graphics/Canvas;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_5
    goto/32 :goto_17

    nop

    :goto_49
    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-eq v2, p2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final g(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1
    goto/32 :goto_16

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_4
    invoke-static {v2, v3, v0}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-array v0, v0, [Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

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

    :goto_d
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    const/16 v2, 0x21e

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    sget-object p2, Lhn;->a:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_12
    aput-object v1, v0, v3

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

    :goto_13
    check-cast p1, Landroid/graphics/PorterDuffColorFilter;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_5

    nop

    nop

    :goto_17
    aput-object p2, v0, v2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_1

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/os/Handler;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    check-cast p0, Landroid/os/Handler;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ltxs;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget-object p0, p0, Lejk;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final b()Ljava/util/concurrent/Executor;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lejk;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ltxs;->a()Ljava/lang/Object;

    move-result-object p0

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

    :goto_3
    return-object p0

    nop

    nop
.end method

.method public final c(Ljava/lang/String;)Lrp;
    .locals 2

    goto/32 :goto_13

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    :try_start_0
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lejk;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lejk;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v1, Landroid/util/ArrayMap;

    nop

    nop

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lrp;

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    goto :goto_d

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_3
    monitor-exit v0

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1, v0}, Lejk;->19e596a3e324281407eb5c11093c0152m(Ljava/lang/String;Z)Lrp;

    move-result-object v1

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p1}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :try_start_4
    invoke-direct {p0, p1, v1}, Lejk;->19e596a3e324281407eb5c11093c0152m(Ljava/lang/String;Z)Lrp;

    move-result-object v1

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lejk;->f:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    const-string v1, "#awaitMetadata"

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0xc

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    throw p0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    return-object v1

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_6
    monitor-exit v0

    nop

    throw p0

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    const v0, 0x20

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

    :goto_14
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    :goto_16
    goto :goto_d

    nop

    nop

    :goto_17
    :try_start_7
    iget-object v1, p0, Lejk;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v1, Lud;

    nop

    nop

    nop

    invoke-virtual {v1}, Lud;->a()Z

    move-result v1

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_6

    nop

    nop

    nop
.end method
