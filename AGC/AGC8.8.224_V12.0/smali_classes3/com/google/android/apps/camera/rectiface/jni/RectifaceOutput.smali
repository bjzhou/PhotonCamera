.class public final Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;
.super Ljava/lang/Object;


# instance fields
.field public final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lgtl;->a()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->initializeImpl()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->a:J

    return-void
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

    iget-wide v0, p0, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->getFaceConformalityAfterShapeCorrectionImpl(JI)F

    move-result p1

    return p1
.end method

.method public final b(I)F
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->getFaceConformalityBeforeShapeCorrectionImpl(JI)F

    move-result p1

    return p1
.end method

.method public final c()I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->a:J

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->getAnglerfishFallbackStatusSizeImpl(J)I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->a:J

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->getCameraFovInDegreeImpl(J)I

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->a:J

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->getFaceConformalityAfterShapeCorrectionSizeImpl(J)I

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->a:J

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->getFaceConformalityBeforeShapeCorrectionSizeImpl(J)I

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->a:J

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->getFaceDistortionCorrectionProcessingTimeMsImpl(J)I

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->a:J

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->getPortraitRelightingTimeMsImpl(J)I

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->a:J

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->getSegmentationTimeMsImpl(J)I

    move-result v0

    return v0
.end method

.method public final j()I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->a:J

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->getShapeCorrectionModeImpl(J)I

    move-result v0

    return v0
.end method

.method public final k()V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->a:J

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/rectiface/jni/RectifaceOutput;->releaseImpl(J)V

    return-void
.end method
