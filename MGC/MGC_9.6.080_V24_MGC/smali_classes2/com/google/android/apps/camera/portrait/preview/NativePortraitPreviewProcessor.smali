.class public final Lcom/google/android/apps/camera/portrait/preview/NativePortraitPreviewProcessor;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

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

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    :goto_5
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-wide v0, p0, Lcom/google/android/apps/camera/portrait/preview/NativePortraitPreviewProcessor;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    const v1, 0x7

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
.end method

.method public static native create([B)J
.end method

.method private static native destroy(J)V
.end method

.method public static native nativeProcess(JLandroid/hardware/HardwareBuffer;Landroid/hardware/HardwareBuffer;[BLandroid/hardware/HardwareBuffer;)Z
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/16 v0, 0x0

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

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, v1}, Lcom/google/android/apps/camera/portrait/preview/NativePortraitPreviewProcessor;->destroy(J)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    :goto_6
    iget-wide v0, p0, Lcom/google/android/apps/camera/portrait/preview/NativePortraitPreviewProcessor;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    const v0, 0xe

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    return-void

    nop

    nop

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
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    iput-wide v0, p0, Lcom/google/android/apps/camera/portrait/preview/NativePortraitPreviewProcessor;->a:J

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop
.end method
