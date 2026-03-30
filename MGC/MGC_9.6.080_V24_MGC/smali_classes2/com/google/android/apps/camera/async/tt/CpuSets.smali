.class public final Lcom/google/android/apps/camera/async/tt/CpuSets;
.super Ljava/lang/Object;
.source "PG"


# direct methods
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

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static a(I)Loeq;
    .locals 4

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    cmp-long p0, v0, v2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    const/4 p0, 0x0

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

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    new-instance p0, Loeq;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    const-wide/16 v2, 0x0

    nop

    nop

    goto/32 :goto_1

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz p0, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    invoke-static {p0, v0}, Lcom/google/android/apps/camera/async/tt/CpuSets;->nativeDropCpuFromSet(II)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, v0, v1}, Loeq;-><init>(J)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x13

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_10
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x6

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method private static native nativeDropCpuFromSet(II)J
.end method

.method public static native nativeRestoreCpuSet(IJ)V
.end method
