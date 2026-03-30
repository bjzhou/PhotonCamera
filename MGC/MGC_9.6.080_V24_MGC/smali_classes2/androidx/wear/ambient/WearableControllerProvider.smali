.class public Landroidx/wear/ambient/WearableControllerProvider;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static volatile a:Z


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
.end method

.method public constructor <init>([C)V
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

    :goto_1
    return-void

    nop
.end method

.method public static synthetic a(Luad;Lubo;)Lsui;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, p1, v1}, Leqr;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    new-instance v0, Leqr;

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

    :goto_4
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    :goto_8
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, La;->aq(Ldqq;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_d
    goto/32 :goto_7

    nop

    :goto_e
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
.end method


# virtual methods
.method public final getWearableController(Landroid/app/Activity;Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;)Lcom/google/android/wearable/compat/WearableActivityController;
    .locals 3

    goto/32 :goto_6

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

    nop

    :goto_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    :goto_5
    :try_start_0
    new-instance p0, Ljava/lang/NoSuchMethodException;

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    goto/32 :goto_e

    nop

    nop

    :goto_6
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    sput-boolean p0, Landroidx/wear/ambient/WearableControllerProvider;->a:Z

    nop

    nop

    :goto_8
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {}, Landroidx/wear/ambient/SharedLibraryVersion;->verifySharedLibraryPresent()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_a
    const-string p0, "."

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_e
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_f
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    const-string p1, "Could not find a required method for ambient support, likely due to proguard optimization. Please add com.google.android.wearable:wearable jar to the list of library jars for your project"

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0, p2, p1, v0}, Lcom/google/android/wearable/compat/WearableActivityController;-><init>(Ljava/lang/String;Landroid/app/Activity;Lcom/google/android/wearable/compat/WearableActivityController$AmbientCallback;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_b

    nop

    :goto_13
    invoke-direct {v0, p2}, Landroidx/wear/ambient/WearableControllerProvider$1;-><init>(Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_15
    :try_start_1
    const-class p2, Lcom/google/android/wearable/compat/WearableActivityController$AmbientCallback;

    nop

    nop

    nop

    nop

    const-string v1, "onEnterAmbient"

    nop

    const-class v2, Landroid/os/Bundle;

    nop

    nop

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    nop

    invoke-virtual {p2, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    nop

    nop

    nop

    nop

    const-string v1, ".onEnterAmbient"

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    nop

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-boolean p2, Landroidx/wear/ambient/WearableControllerProvider;->a:Z

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
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_19
    const-string p2, "WearableControllerProvider"

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez p0, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1b
    new-instance v0, Landroidx/wear/ambient/WearableControllerProvider$1;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez p2, :cond_2

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

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1d
    new-instance p0, Lcom/google/android/wearable/compat/WearableActivityController;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop
.end method
