.class final Lcom/google/ar/core/ArCoreApkJniAdapter;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic a:I

.field private static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_0
    const-class v2, Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget v1, v1, Lrqn;->G:I

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

    :goto_2
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-class v2, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-class v2, Lcom/google/ar/core/exceptions/UnavailableArcoreNotInstalledException;

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

    :goto_5
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_b

    nop

    nop

    :goto_6
    sget-object v1, Lrqn;->n:Lrqn;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_26

    nop

    nop

    :goto_9
    sget-object v1, Lrqn;->D:Lrqn;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_a
    iget v1, v1, Lrqn;->G:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v1, Lrqn;->E:Lrqn;

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

    :goto_c
    const-class v2, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;

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
    sget-object v1, Lrqn;->F:Lrqn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_f
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_14
    const-class v2, Lcom/google/ar/core/exceptions/UnavailableApkTooOldException;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    const-class v2, Lcom/google/ar/core/exceptions/UnavailableSdkTooOldException;

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

    :goto_16
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_18
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_d

    nop

    nop

    :goto_19
    sget-object v1, Lrqn;->C:Lrqn;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1b
    const v0, 0x20

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget v1, v1, Lrqn;->G:I

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1e
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1f
    const-class v2, Lcom/google/ar/core/exceptions/ResourceExhaustedException;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_21
    iget v1, v1, Lrqn;->G:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget v1, v1, Lrqn;->G:I

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget v1, v1, Lrqn;->G:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_25
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_29
    sget-object v1, Lrqn;->B:Lrqn;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2a
    sput-object v0, Lcom/google/ar/core/ArCoreApkJniAdapter;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_29

    nop

    nop

    :goto_2c
    iget v1, v1, Lrqn;->G:I

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

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

    :goto_2f
    sget-object v1, Lrqn;->b:Lrqn;

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
.end method

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

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

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method private static a(Ljava/lang/Throwable;)I
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_2
    sget-object p0, Lrqn;->c:Lrqn;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v1, "Exception details:"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    const-string v0, "ARCore-ArCoreApkJniAdap"

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    :goto_7
    iget p0, p0, Lrqn;->G:I

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

    nop

    :goto_8
    sget-object v0, Lcom/google/ar/core/ArCoreApkJniAdapter;->b:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    const v1, 0xf

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

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

    :goto_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_17

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_11
    add-int v0, v0, v1

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
    check-cast p0, Ljava/lang/Integer;

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

    :goto_13
    if-nez v1, :cond_1

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

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_15
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

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

    nop

    :goto_16
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method static checkAvailability(Landroid/content/Context;)I
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/google/ar/core/ArCoreApk;->getInstance()Lcom/google/ar/core/ArCoreApk;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p0}, Lcom/google/ar/core/ArCoreApk;->checkAvailability(Landroid/content/Context;)Lcom/google/ar/core/ArCoreApk$Availability;

    move-result-object p0

    nop

    iget p0, p0, Lcom/google/ar/core/ArCoreApk$Availability;->nativeCode:I

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    :goto_2
    sget-object p0, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Lcom/google/ar/core/ArCoreApkJniAdapter;->a(Ljava/lang/Throwable;)I

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iget p0, p0, Lcom/google/ar/core/ArCoreApk$Availability;->nativeCode:I

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
.end method

.method static checkAvailabilityAsync(Landroid/content/Context;JJ)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/ar/core/ArCoreApkJniAdapter$$ExternalSyntheticLambda0;-><init>(JJ)V

    :try_start_0
    invoke-static {}, Lcom/google/ar/core/ArCoreApk;->getInstance()Lcom/google/ar/core/ArCoreApk;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    new-instance p2, Lrpw;

    nop

    nop

    nop

    move-object p3, p1

    nop

    nop

    nop

    nop

    nop

    check-cast p3, Lrpx;

    nop

    nop

    nop

    nop

    invoke-direct {p2, p3, v0}, Lrpw;-><init>(Lrpx;Ljava/util/function/Consumer;)V

    check-cast p1, Lrpx;

    nop

    nop

    nop

    invoke-virtual {p1, p0, p2}, Lrpx;->b(Landroid/content/Context;Lcom/google/ar/core/ArCoreApk$ICheckAvailabilityCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    invoke-direct {p1, v0}, Lcom/google/ar/core/ArCoreApkJniAdapter$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    new-instance p0, Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    new-instance p1, Lcom/google/ar/core/ArCoreApkJniAdapter$$ExternalSyntheticLambda1;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Lcom/google/ar/core/ArCoreApkJniAdapter;->a(Ljava/lang/Throwable;)I

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
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

    goto/32 :goto_5

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lcom/google/ar/core/ArCoreApkJniAdapter$$ExternalSyntheticLambda0;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static native nativeInvokeAvailabilityCallback(JJI)V
.end method

.method static requestInstall(Landroid/app/Activity;Z[I)I
    .locals 3

    goto/32 :goto_7

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    :try_start_0
    invoke-static {}, Lcom/google/ar/core/ArCoreApk;->getInstance()Lcom/google/ar/core/ArCoreApk;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    move-object v1, v0

    nop

    check-cast v1, Lrpx;

    nop

    invoke-virtual {v1, p0}, Lrpx;->e(Landroid/content/Context;)Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    sget-object v1, Lcom/google/ar/core/ArCoreApk$InstallBehavior;->REQUIRED:Lcom/google/ar/core/ArCoreApk$InstallBehavior;

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

    :cond_0
    sget-object v1, Lcom/google/ar/core/ArCoreApk$InstallBehavior;->OPTIONAL:Lcom/google/ar/core/ArCoreApk$InstallBehavior;

    nop

    nop

    :goto_3
    move-object v2, v0

    nop

    nop

    nop

    check-cast v2, Lrpx;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, p0}, Lrpx;->e(Landroid/content/Context;)Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lcom/google/ar/core/ArCoreApk$UserMessageType;->APPLICATION:Lcom/google/ar/core/ArCoreApk$UserMessageType;

    nop

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    sget-object v2, Lcom/google/ar/core/ArCoreApk$UserMessageType;->USER_ALREADY_INFORMED:Lcom/google/ar/core/ArCoreApk$UserMessageType;

    nop

    :goto_4
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/ar/core/ArCoreApk;->requestInstall(Landroid/app/Activity;ZLcom/google/ar/core/ArCoreApk$InstallBehavior;Lcom/google/ar/core/ArCoreApk$UserMessageType;)Lcom/google/ar/core/ArCoreApk$InstallStatus;

    move-result-object p0

    nop

    nop

    iget p0, p0, Lcom/google/ar/core/ArCoreApk$InstallStatus;->nativeCode:I

    nop

    nop

    nop

    nop

    nop

    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    aput p0, p2, p1

    nop

    nop

    sget-object p0, Lrqn;->a:Lrqn;

    nop

    nop

    iget p0, p0, Lrqn;->G:I

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x19

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    :goto_7
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    :goto_a
    invoke-static {p0}, Lcom/google/ar/core/ArCoreApkJniAdapter;->a(Ljava/lang/Throwable;)I

    move-result p0

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

    :goto_b
    return p0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop
.end method

.method static requestInstallCustom(Landroid/app/Activity;ZII[I)I
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/google/ar/core/ArCoreApk;->getInstance()Lcom/google/ar/core/ArCoreApk;

    move-result-object v0

    nop

    invoke-static {p2}, Lcom/google/ar/core/ArCoreApk$InstallBehavior;->forNumber(I)Lcom/google/ar/core/ArCoreApk$InstallBehavior;

    move-result-object p2

    nop

    invoke-static {p3}, Lcom/google/ar/core/ArCoreApk$UserMessageType;->forNumber(I)Lcom/google/ar/core/ArCoreApk$UserMessageType;

    move-result-object p3

    nop

    nop

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/ar/core/ArCoreApk;->requestInstall(Landroid/app/Activity;ZLcom/google/ar/core/ArCoreApk$InstallBehavior;Lcom/google/ar/core/ArCoreApk$UserMessageType;)Lcom/google/ar/core/ArCoreApk$InstallStatus;

    move-result-object p0

    nop

    nop

    nop

    nop

    iget p0, p0, Lcom/google/ar/core/ArCoreApk$InstallStatus;->nativeCode:I

    nop

    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    aput p0, p4, p1

    nop

    nop

    nop

    nop

    sget-object p0, Lrqn;->a:Lrqn;

    nop

    nop

    nop

    iget p0, p0, Lrqn;->G:I

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

    :goto_0
    invoke-static {p0}, Lcom/google/ar/core/ArCoreApkJniAdapter;->a(Ljava/lang/Throwable;)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop
.end method
