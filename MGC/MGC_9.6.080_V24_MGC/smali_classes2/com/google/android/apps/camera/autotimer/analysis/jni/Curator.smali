.class public Lcom/google/android/apps/camera/autotimer/analysis/jni/Curator;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/apps/camera/autotimer/analysis/jni/BaseCurator;


# instance fields
.field private pointer:J


# direct methods
.method public constructor <init>(Ltpy;)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    const v1, 0x6

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

    :goto_1
    goto/32 :goto_b

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    const-class v0, Lcom/google/android/apps/camera/autotimer/analysis/jni/Curator;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Ltis;->h()[B

    move-result-object p1

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

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, v1}, Lpco;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Lcom/google/android/apps/camera/autotimer/analysis/jni/Curator;->nativeAllocate()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_d
    const v0, 0xe

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_f
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/autotimer/analysis/jni/Curator;->nativeInitialize([B)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v1, "smartcapture_native"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method private native nativeAllocate()V
.end method

.method private native nativeDispose()V
.end method

.method private native nativeInitialize([B)V
.end method

.method private native nativeProcessImage(Lcom/google/android/apps/camera/autotimer/analysis/jni/AnalysisImage;[B)[B
.end method

.method private native nativeReset()V
.end method

.method private native nativeSetSaveAllowed(Z)V
.end method

.method private native nativeTriggerCapture()V
.end method

.method private native nativeUpdateCaptureTriggers([B)V
.end method

.method private native nativeUpdateIndividualCaptureTrigger(I)V
.end method


# virtual methods
.method public final a(Lprw;Ltpo;)Ltqo;
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1, p0, v1, p2, v0}, Ltkg;->q(Ltkg;[BIILtjv;)Ltkg;

    move-result-object p0

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

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0}, Ltkg;->E(Ltkg;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

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

    :goto_8
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_a
    array-length p2, p0

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
    sget-object v0, Ltjv;->a:Ltjv;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p2}, Ltis;->h()[B

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d
    sget-object v0, Ltjv;->a:Ltjv;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p0, Ltqo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    invoke-direct {v0, p1}, Lcom/google/android/apps/camera/autotimer/analysis/jni/AnalysisImage;-><init>(Lprw;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    sget-object p1, Ltqo;->a:Ltqo;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Lcom/google/android/apps/camera/autotimer/analysis/jni/AnalysisImage;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/camera/autotimer/analysis/jni/Curator;->nativeProcessImage(Lcom/google/android/apps/camera/autotimer/analysis/jni/AnalysisImage;[B)[B

    move-result-object p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_15
    sget-object v0, Ltlz;->a:Ltlz;

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

    :goto_16
    const v0, 0x16

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
.end method

.method public final b(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/autotimer/analysis/jni/Curator;->nativeSetSaveAllowed(Z)V

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

.method public final close()V
    .locals 0

    goto/32 :goto_1

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
    invoke-direct {p0}, Lcom/google/android/apps/camera/autotimer/analysis/jni/Curator;->nativeDispose()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public native nativeSetCaptureEnabled(Z)V
.end method
