.class public final Ljmp;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static b:Ljava/lang/Boolean;

.field public static final c:Ljava/util/Map;

.field public static final d:Lcom/google/android/apps/camera/legacy/lightcycle/panorama/LightCycle$LightCycleProgressCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_14

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
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    sput-object v0, Ljmp;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    sput-object v0, Ljmp;->d:Lcom/google/android/apps/camera/legacy/lightcycle/panorama/LightCycle$LightCycleProgressCallback;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
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

    :goto_8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_16

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
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/legacy/lightcycle/panorama/LightCycle$LightCycleProgressCallback;-><init>(Ljmo;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sput-object v0, Ljmp;->b:Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    new-instance v0, Lcom/google/android/apps/camera/legacy/lightcycle/panorama/LightCycle$LightCycleProgressCallback;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

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

    :goto_11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

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

    :goto_14
    const v0, 0x8

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

    :goto_15
    const/4 v1, 0x0

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
    sput-object v0, Ljmp;->c:Ljava/util/Map;

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

.method public static a()I
    .locals 3

    goto/32 :goto_2

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

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    sget-object v0, Ljmp;->a:Ljava/lang/Object;

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

    :goto_7
    monitor-enter v0

    nop

    nop

    :try_start_0
    sget-object v1, Ljmp;->b:Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->DeviceOrientationStatus()I

    move-result v1

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return v1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "State is not ready."

    nop

    nop

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    nop

    nop

    :catchall_0
    move-exception v1

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    throw v1

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

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

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

.method public static b(Ljava/lang/String;F)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->ResetForPhotoSphereCapture(Ljava/lang/String;F)V

    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    sput-object p0, Ljmp;->b:Ljava/lang/Boolean;

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Ljmp;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
