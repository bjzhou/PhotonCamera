.class public final Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Llto;->a()V

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

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-wide v0, p0, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->a:J

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    :goto_5
    invoke-static {}, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->initializeImpl()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    const v0, 0x1b

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
    add-int v0, v0, v1

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
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_9
    const v1, 0x1f

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public static native getAnglerfishFallbackStatusImpl(JI)I
.end method

.method private static native getAnglerfishFallbackStatusSizeImpl(J)I
.end method

.method private static native getCameraFovInDegreeImpl(J)I
.end method

.method private static native getFaceConformalityAfterShapeCorrectionImpl(JI)F
.end method

.method private static native getFaceConformalityAfterShapeCorrectionSizeImpl(J)I
.end method

.method private static native getFaceConformalityBeforeShapeCorrectionImpl(JI)F
.end method

.method private static native getFaceConformalityBeforeShapeCorrectionSizeImpl(J)I
.end method

.method private static native getFaceDistortionCorrectionProcessingTimeMsImpl(J)I
.end method

.method public static native getIsAnglerfishAppliedImpl(J)Z
.end method

.method private static native getPortraitRelightingTimeMsImpl(J)I
.end method

.method private static native getSegmentationTimeMsImpl(J)I
.end method

.method private static native getShapeCorrectionModeImpl(J)I
.end method

.method private static native initializeImpl()J
.end method

.method private static native releaseImpl(J)V
.end method


# virtual methods
.method public final a(I)F
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x3

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
    const v1, 0x1f

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

    :goto_2
    goto/32 :goto_4

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return p0

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
    iget-wide v0, p0, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->a:J

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

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v1, p1}, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->getFaceConformalityAfterShapeCorrectionImpl(JI)F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(I)F
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-wide v0, p0, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    :goto_8
    invoke-static {v0, v1, p1}, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->getFaceConformalityBeforeShapeCorrectionImpl(JI)F

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    const v1, 0x20

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
.end method

.method public final c()I
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    invoke-static {v0, v1}, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->getAnglerfishFallbackStatusSizeImpl(J)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    iget-wide v0, p0, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->a:J

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_4
    goto/32 :goto_b

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
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_0

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    :goto_9
    const v0, 0x16

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()I
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    nop

    nop

    :goto_2
    iget-wide v0, p0, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->a:J

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    const v0, 0x9

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

    :goto_8
    goto/32 :goto_6

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    :goto_a
    const v1, 0x7

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

    :goto_b
    invoke-static {v0, v1}, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->getCameraFovInDegreeImpl(J)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final e()I
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xe

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-static {v0, v1}, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->getFaceConformalityAfterShapeCorrectionSizeImpl(J)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_4
    return p0

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v0, p0, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final f()I
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v0, p0, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    invoke-static {v0, v1}, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->getFaceConformalityBeforeShapeCorrectionSizeImpl(J)I

    move-result p0

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
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x12

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
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop
.end method

.method public final g()I
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

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

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_2
    invoke-static {v0, v1}, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->getFaceDistortionCorrectionProcessingTimeMsImpl(J)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    const v0, 0x16

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

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

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
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-wide v0, p0, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->a:J

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    const v1, 0xc

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

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h()I
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v0, p0, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->a:J

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
    const v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    const v1, 0x1b

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

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, v1}, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->getPortraitRelightingTimeMsImpl(J)I

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    :goto_8
    goto/32 :goto_0

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
    if-lez v0, :cond_0

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

    :goto_b
    add-int v0, v0, v1

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
.end method

.method public final i()I
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    iget-wide v0, p0, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->a:J

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

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

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    const v1, 0x17

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0, v1}, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->getSegmentationTimeMsImpl(J)I

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j()I
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v0, p0, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->a:J

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, v1}, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->getShapeCorrectionModeImpl(J)I

    move-result p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    const v0, 0x1d

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    const v1, 0x5

    nop

    goto/32 :goto_b

    nop

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

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public final k()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

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

    :goto_2
    return-void

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

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    const v1, 0x11

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, v1}, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->releaseImpl(J)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1e

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

    :goto_b
    iget-wide v0, p0, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->a:J

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method
