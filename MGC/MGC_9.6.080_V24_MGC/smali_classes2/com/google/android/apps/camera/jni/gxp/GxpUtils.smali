.class public Lcom/google/android/apps/camera/jni/gxp/GxpUtils;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lsdb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

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
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    sput-object v0, Lcom/google/android/apps/camera/jni/gxp/GxpUtils;->a:Lsdb;

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

    :goto_3
    const-string v0, "com.google.android.apps.camera.jni.gxp.GxpUtils"

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
.end method

.method private constructor <init>()V
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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a()Z
    .locals 5

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Lcom/google/android/apps/camera/jni/gxp/GxpUtils;->b()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2
    if-eq v1, v3, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {}, Lcom/google/android/apps/camera/jni/gxp/GxpUtils;->getVersionNative()[I

    move-result-object v0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

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

    :goto_5
    const/16 v4, 0x7dc

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v1, v4}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_7
    const/16 v1, 0x7db

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_8
    return v3

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-array v0, v2, [I

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_29

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_e
    const v1, 0x20

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

    :goto_f
    if-gt v1, v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v2, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_11
    invoke-static {}, Lcom/google/android/apps/camera/jni/gxp/GxpUtils;->b()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    return v2

    nop

    nop

    :goto_13
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v1, "Error releasing."

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

    :goto_15
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    :goto_16
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    aget v0, v0, v3

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

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_13

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
    aget v1, v0, v3

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v4, "Error loading version: %s"

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object v0, Lcom/google/android/apps/camera/jni/gxp/GxpUtils;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_21
    array-length v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_22
    if-lt v0, v1, :cond_4

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_4
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_23
    if-le v1, v3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_24
    sget-object v1, Lcom/google/android/apps/camera/jni/gxp/GxpUtils;->a:Lsdb;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_25
    goto/16 :goto_9

    nop

    :goto_26
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_28
    aget v1, v0, v2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    array-length v1, v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    aget v1, v0, v2

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

    :goto_2b
    check-cast v1, Lscz;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

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

    :goto_2d
    invoke-interface {v1, v4, v0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast v0, Lscz;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2f
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_30
    invoke-static {}, Lcom/google/android/apps/camera/jni/gxp/GxpUtils;->releaseNative()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-gt v1, v3, :cond_6

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_6
    goto/32 :goto_28

    nop

    nop

    nop
.end method

.method public static declared-synchronized b()V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const v0, 0x5

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    :goto_5
    monitor-enter v0

    nop

    nop

    :try_start_0
    const-class v1, Lcom/google/android/apps/camera/jni/gxp/GxpUtils;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "gcastartup"

    nop

    nop

    nop

    nop

    invoke-static {v1, v2}, Lpco;->a(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/camera/jni/gxp/GxpUtils;->initializeNative()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-exit v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    const-class v0, Lcom/google/android/apps/camera/jni/gxp/GxpUtils;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v1

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    throw v1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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
.end method

.method static native getVersionNative()[I
.end method

.method static native initializeNative()Z
.end method

.method static native releaseNative()Z
.end method
