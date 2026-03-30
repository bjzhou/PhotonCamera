.class public Lcom/google/ar/core/Frame;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final ANCHORS_EMPTY_LIST:Ljava/util/ArrayList;

.field static final PLANES_EMPTY_LIST:Ljava/util/ArrayList;

.field private static final TAG:Ljava/lang/String; = "ARCore-Frame"


# instance fields
.field private eisTransforms:Lcom/google/ar/core/EisTransforms;

.field private lightEstimate:Lcom/google/ar/core/LightEstimate;

.field nativeHandle:J

.field final nativeSymbolTableHandle:J

.field final session:Lcom/google/ar/core/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lcom/google/ar/core/Frame;->PLANES_EMPTY_LIST:Ljava/util/ArrayList;

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

    :goto_2
    sput-object v0, Lcom/google/ar/core/Frame;->ANCHORS_EMPTY_LIST:Ljava/util/ArrayList;

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
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method

.method protected constructor <init>()V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-wide v0, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

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

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    :goto_7
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_0

    nop

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

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v2, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x0

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

    :goto_b
    iput-wide v0, p0, Lcom/google/ar/core/Frame;->nativeSymbolTableHandle:J

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x1f

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

    :goto_d
    const v0, 0x1c

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

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public constructor <init>(Lcom/google/ar/core/Session;)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iget-wide v0, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_2
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    const v1, 0xc

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

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, v1}, Lcom/google/ar/core/Frame;->nativeCreateFrame(J)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    invoke-direct {p0, p1, v0, v1}, Lcom/google/ar/core/Frame;-><init>(Lcom/google/ar/core/Session;J)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lcom/google/ar/core/Session;J)V
    .locals 0

    goto/32 :goto_3

    nop

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

    :goto_1
    iget-wide p1, p1, Lcom/google/ar/core/Session;->nativeSymbolTableHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-wide p1, p0, Lcom/google/ar/core/Frame;->nativeSymbolTableHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-wide p2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

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

.method private cf7baeeea582ea2341e0ec99cc3c72d2m([J)Ljava/util/List;
    .locals 7

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v6, Lcom/google/ar/core/HitResult;

    nop

    nop

    goto/32 :goto_10

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

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    :goto_5
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Ljava/util/ArrayList;

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
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_a
    array-length v1, p1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_b
    if-lt v2, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v5, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    invoke-direct {v6, v3, v4, v5}, Lcom/google/ar/core/HitResult;-><init>(JLcom/google/ar/core/Session;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    :goto_14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_16
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_17
    invoke-virtual {v6}, Lcom/google/ar/core/HitResult;->getTrackable()Lcom/google/ar/core/Trackable;

    move-result-object v3

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

    :goto_18
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    :goto_1a
    const v1, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1b
    aget-wide v3, p1, v2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private native nativeAcquireCameraImage(JJ)J
.end method

.method private native nativeAcquireDepthImage(JJ)J
.end method

.method private native nativeAcquireDepthImage16Bits(JJ)J
.end method

.method private native nativeAcquireDepthImagePrivate(JJ)J
.end method

.method private native nativeAcquireImageMetadata(JJ)J
.end method

.method private native nativeAcquireRawDepthConfidenceImage(JJ)J
.end method

.method private native nativeAcquireRawDepthImage(JJ)J
.end method

.method private native nativeAcquireRawDepthImage16Bits(JJ)J
.end method

.method private native nativeAcquireSegmentation(JJ)J
.end method

.method private native nativeAcquireSemanticConfidenceImage(JJ)J
.end method

.method private native nativeAcquireSemanticImage(JJ)J
.end method

.method private native nativeAcquireTrackData(JJ[B)[J
.end method

.method private native nativeAcquireUpdatedAnchors(JJ)[J
.end method

.method private static native nativeCreateFrame(J)J
.end method

.method private static native nativeDestroyFrame(JJ)V
.end method

.method private native nativeGetAndroidCameraTimestamp(JJ)J
.end method

.method private native nativeGetAndroidSensorPose(JJ)Lcom/google/ar/core/Pose;
.end method

.method private native nativeGetBackgroundSegmentationTextureName(JJ)I
.end method

.method private native nativeGetCameraTextureName(JJ)I
.end method

.method private native nativeGetEisTransforms(JJJ)V
.end method

.method private native nativeGetHardwareBuffer(JJ)Landroid/hardware/HardwareBuffer;
.end method

.method private native nativeGetImageFeatureCount(JJ)I
.end method

.method private native nativeGetImageMotionMagnitude(JJ)F
.end method

.method private native nativeGetLightEstimate(JJJ)V
.end method

.method private native nativeGetSemanticLabelFraction(JJI)F
.end method

.method private native nativeGetTimestamp(JJ)J
.end method

.method private native nativeHasDisplayGeometryChanged(JJ)Z
.end method

.method private native nativeRecordTrackData(JJ[B[B)V
.end method

.method private native nativeTransformCoordinates2dFloatArrayOrBuffer(JJILjava/lang/Object;ILjava/lang/Object;)V
.end method

.method private native nativeTransformCoordinates3dFloatArrayOrBuffer(JJILjava/lang/Object;ILjava/lang/Object;)V
.end method

.method private native nativeTransformDisplayUvCoords(JJLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
.end method


# virtual methods
.method public acquireCameraImage()Landroid/media/Image;
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v2, Lcom/google/ar/core/ArImage;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xe

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

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_5
    iget-object p0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeAcquireCameraImage(JJ)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    return-object v2

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    :goto_a
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v2, p0, v0, v1}, Lcom/google/ar/core/ArImage;-><init>(Lcom/google/ar/core/Session;J)V

    goto/32 :goto_7

    nop

    nop
.end method

.method public acquireDepthImage()Landroid/media/Image;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
    .end annotation

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeAcquireDepthImage(JJ)J

    move-result-wide v0

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

    :goto_3
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    const v1, 0x15

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v2, p0, v0, v1}, Lcom/google/ar/core/ArImage;-><init>(Lcom/google/ar/core/Session;J)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v2, Lcom/google/ar/core/ArImage;

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

    :goto_b
    iget-object p0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_f
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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
.end method

.method public acquireDepthImage16Bits()Landroid/media/Image;
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_1
    return-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeAcquireDepthImage16Bits(JJ)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_a

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

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    :goto_7
    invoke-direct {v2, p0, v0, v1}, Lcom/google/ar/core/ArImage;-><init>(Lcom/google/ar/core/Session;J)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    :goto_9
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v2, Lcom/google/ar/core/ArImage;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    const v0, 0xd

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    nop
.end method

.method public acquireDepthImagePrivate()Landroid/media/Image;
    .locals 4

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    :goto_2
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    new-instance v2, Lcom/google/ar/core/ArImage;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
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

    :cond_0
    goto/32 :goto_7

    nop

    :goto_6
    iget-object p0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    const v1, 0x1d

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

    :goto_c
    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    invoke-direct {v2, p0, v0, v1}, Lcom/google/ar/core/ArImage;-><init>(Lcom/google/ar/core/Session;J)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeAcquireDepthImagePrivate(JJ)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public acquirePointCloud()Lcom/google/ar/core/PointCloud;
    .locals 4

    goto/32 :goto_7

    nop

    nop

    :goto_0
    new-instance v2, Lcom/google/ar/core/PointCloud;

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

    :goto_1
    const v1, 0x11

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v2, p0, v0, v1}, Lcom/google/ar/core/PointCloud;-><init>(Lcom/google/ar/core/Session;J)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    const v0, 0x15

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

    :goto_8
    return-object v2

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeAcquirePointCloud(JJ)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_0

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

    :goto_c
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public acquireRawDepthConfidenceImage()Landroid/media/Image;
    .locals 4

    goto/32 :goto_a

    nop

    nop

    :goto_0
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

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

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_5
    return-object v2

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v2, Lcom/google/ar/core/ArImage;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeAcquireRawDepthConfidenceImage(JJ)J

    move-result-wide v0

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

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    invoke-direct {v2, p0, v0, v1}, Lcom/google/ar/core/ArImage;-><init>(Lcom/google/ar/core/Session;J)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

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

    :goto_10
    const v1, 0x6

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public acquireRawDepthImage()Landroid/media/Image;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
    .end annotation

    goto/32 :goto_5

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v2, Lcom/google/ar/core/ArImage;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x18

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

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_7
    iget-object p0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    return-object v2

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_c

    nop

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

    goto/32 :goto_6

    nop

    nop

    :goto_c
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v2, p0, v0, v1}, Lcom/google/ar/core/ArImage;-><init>(Lcom/google/ar/core/Session;J)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeAcquireRawDepthImage(JJ)J

    move-result-wide v0

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
.end method

.method public acquireRawDepthImage16Bits()Landroid/media/Image;
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

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
    iget-object p0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeAcquireRawDepthImage16Bits(JJ)J

    move-result-wide v0

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

    :goto_3
    const v0, 0x20

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

    :goto_4
    invoke-direct {v2, p0, v0, v1}, Lcom/google/ar/core/ArImage;-><init>(Lcom/google/ar/core/Session;J)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    const v1, 0x1a

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

    :cond_0
    goto/32 :goto_a

    nop

    :goto_9
    goto/32 :goto_b

    nop

    :goto_a
    goto/32 :goto_e

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object v2

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v2, Lcom/google/ar/core/ArImage;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
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

    nop
.end method

.method public acquireSegmentation()Lcom/google/ar/core/Segmentation;
    .locals 4

    goto/32 :goto_5

    nop

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

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v2, p0, v0, v1}, Lcom/google/ar/core/Segmentation;-><init>(Lcom/google/ar/core/Session;J)V

    goto/32 :goto_6

    nop

    nop

    :goto_3
    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x10

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

    :goto_6
    return-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0xc

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

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeAcquireSegmentation(JJ)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    :goto_10
    new-instance v2, Lcom/google/ar/core/Segmentation;

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public acquireSemanticConfidenceImage()Landroid/media/Image;
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xe

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    const v1, 0x1c

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object v2

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    :goto_5
    new-instance v2, Lcom/google/ar/core/ArImage;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
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

    :cond_0
    goto/32 :goto_7

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    invoke-direct {v2, p0, v0, v1}, Lcom/google/ar/core/ArImage;-><init>(Lcom/google/ar/core/Session;J)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeAcquireSemanticConfidenceImage(JJ)J

    move-result-wide v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    :goto_10
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public acquireSemanticImage()Landroid/media/Image;
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xb

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-object v2

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeAcquireSemanticImage(JJ)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_7
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v2, Lcom/google/ar/core/ArImage;

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
    iget-object p0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x16

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    invoke-direct {v2, p0, v0, v1}, Lcom/google/ar/core/ArImage;-><init>(Lcom/google/ar/core/Session;J)V

    goto/32 :goto_2

    nop

    nop

    :goto_e
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method protected finalize()V
    .locals 6

    goto/32 :goto_e

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    const v1, 0x2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v4, :cond_0

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

    :cond_0
    goto/32 :goto_12

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
    cmp-long v4, v0, v2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v0, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    invoke-static {v4, v5, v0, v1}, Lcom/google/ar/core/Frame;->nativeDestroyFrame(JJ)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeSymbolTableHandle:J

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getAndroidCameraTimestamp()J
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_4

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

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_4
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

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
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeGetAndroidCameraTimestamp(JJ)J

    move-result-wide v0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    return-wide v0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0xb

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public getAndroidSensorPose()Lcom/google/ar/core/Pose;
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

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

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_3
    goto/32 :goto_c

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

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeGetAndroidSensorPose(JJ)Lcom/google/ar/core/Pose;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    const v0, 0x9

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    const v1, 0x1

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

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public getBackgroundSegmentationTextureName()I
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    :goto_5
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeGetBackgroundSegmentationTextureName(JJ)I

    move-result p0

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

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_8
    return p0

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x13

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public getCamera()Lcom/google/ar/core/Camera;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, v1, p0}, Lcom/google/ar/core/Camera;-><init>(Lcom/google/ar/core/Session;Lcom/google/ar/core/Frame;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    const v0, 0x10

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_8
    const v1, 0x11

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lcom/google/ar/core/Camera;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

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

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getCameraTextureName()I
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

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

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_6
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

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

    nop

    :goto_c
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeGetCameraTextureName(JJ)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public getDepthRegionConfidence(IIII)F
    .locals 10

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

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

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_7
    move v7, p2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0xf

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move v9, p4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    invoke-virtual/range {v1 .. v9}, Lcom/google/ar/core/Frame;->nativeFrameGetDepthRegionConfidence(JJIIII)F

    move-result p0

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_d
    move v6, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    move v8, p3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    move-object v1, p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    :goto_11
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public getEisTransforms()Lcom/google/ar/core/EisTransforms;
    .locals 8

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lcom/google/ar/core/Frame;->eisTransforms:Lcom/google/ar/core/EisTransforms;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

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
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lcom/google/ar/core/Frame;->eisTransforms:Lcom/google/ar/core/EisTransforms;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    iget-object v0, p0, Lcom/google/ar/core/Frame;->eisTransforms:Lcom/google/ar/core/EisTransforms;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    invoke-static {v0}, Lcom/google/ar/core/EisTransforms;->create(Lcom/google/ar/core/Session;)Lcom/google/ar/core/EisTransforms;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x20

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

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

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

    :goto_12
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Lcom/google/ar/core/Frame;->eisTransforms:Lcom/google/ar/core/EisTransforms;

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_b

    nop

    nop

    :goto_15
    invoke-direct/range {v1 .. v7}, Lcom/google/ar/core/Frame;->nativeGetEisTransforms(JJJ)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Lcom/google/ar/core/EisTransforms;->getNativeHandle()J

    move-result-wide v6

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_4

    nop

    nop
.end method

.method public getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeGetHardwareBuffer(JJ)Landroid/hardware/HardwareBuffer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

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

    :goto_2
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_1

    nop

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

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
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
.end method

.method public getImageFeatureCount()I
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_2
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

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

    :goto_3
    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    :goto_5
    return p0

    nop

    nop

    :goto_6
    goto/32 :goto_4

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

    nop

    goto/32 :goto_1

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

    goto/32 :goto_7

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x10

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeGetImageFeatureCount(JJ)I

    move-result p0

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

    nop

    :goto_d
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public getImageMetadata()Lcom/google/ar/core/ImageMetadata;
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v2, Lcom/google/ar/core/ImageMetadata;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v2, v0, v1, p0}, Lcom/google/ar/core/ImageMetadata;-><init>(JLcom/google/ar/core/Session;)V

    goto/32 :goto_b

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_4
    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

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

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    const v0, 0x1d

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

    :goto_7
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object v2

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeAcquireImageMetadata(JJ)J

    move-result-wide v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

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

.method public getImageMotionMagnitude()F
    .locals 4

    goto/32 :goto_c

    nop

    nop

    :goto_0
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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
    goto/32 :goto_b

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    :goto_3
    const v1, 0xf

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

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

    :goto_7
    add-int v0, v0, v1

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

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeGetImageMotionMagnitude(JJ)F

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

    nop

    nop
.end method

.method public getLightEstimate()Lcom/google/ar/core/LightEstimate;
    .locals 8

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_18

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_e

    nop

    :goto_4
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct/range {v1 .. v7}, Lcom/google/ar/core/Frame;->nativeGetLightEstimate(JJJ)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_17

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    :goto_9
    iget-object p0, p0, Lcom/google/ar/core/Frame;->lightEstimate:Lcom/google/ar/core/LightEstimate;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    move-object v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v1, Lcom/google/ar/core/LightEstimate;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_d
    const v0, 0x4

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0xe

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lcom/google/ar/core/Frame;->lightEstimate:Lcom/google/ar/core/LightEstimate;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-wide v6, v0, Lcom/google/ar/core/LightEstimate;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lcom/google/ar/core/Frame;->lightEstimate:Lcom/google/ar/core/LightEstimate;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_15
    invoke-direct {v1, v0}, Lcom/google/ar/core/LightEstimate;-><init>(Lcom/google/ar/core/Session;)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    iput-object v1, p0, Lcom/google/ar/core/Frame;->lightEstimate:Lcom/google/ar/core/LightEstimate;

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public getSemanticLabelFraction(Lcom/google/ar/core/SemanticLabel;)F
    .locals 7

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1

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

    :goto_1
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/Frame;->nativeGetSemanticLabelFraction(JJI)F

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

    :goto_5
    move-object v1, p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    iget v6, p1, Lcom/google/ar/core/SemanticLabel;->nativeCode:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    goto/32 :goto_3

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

    nop

    nop

    :goto_d
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public getTimestamp()J
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    return-wide v0

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
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_8

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

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeGetTimestamp(JJ)J

    move-result-wide v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop
.end method

.method public getUpdatedAnchors()Ljava/util/Collection;
    .locals 4

    goto/32 :goto_b

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

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
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    :goto_3
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

    :goto_4
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    const v1, 0x13

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0}, Lcom/google/ar/core/Session;->convertNativeAnchorsToCollection([J)Ljava/util/Collection;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    :goto_b
    const v0, 0x3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeAcquireUpdatedAnchors(JJ)[J

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public getUpdatedTrackData(Ljava/util/UUID;)Ljava/util/Collection;
    .locals 7

    goto/32 :goto_a

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/Frame;->nativeAcquireTrackData(JJ[B)[J

    move-result-object p1

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

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    const/16 v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    iget-object p0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

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

    :goto_9
    goto/32 :goto_5

    nop

    nop

    :goto_a
    const v0, 0xf

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v2, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1}, Lcom/google/ar/core/Session;->convertNativeTrackDataToCollection([J)Ljava/util/Collection;

    move-result-object p0

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

    :goto_e
    return-object p0

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

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

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_14
    new-array v0, v0, [B

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    move-object v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_18
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

    :cond_0
    goto/32 :goto_4

    nop
.end method

.method public getUpdatedTrackables(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 8

    goto/32 :goto_11

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    move-object v2, p0

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

    :goto_2
    if-eq v0, v1, :cond_0

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-wide v3, v1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    :goto_6
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    iget-wide v5, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p1}, Lrqo;->a(Ljava/lang/Class;)Lrqo;

    move-result-object v0

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

    :goto_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_b
    iget v7, v0, Lrqo;->l:I

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

    :goto_c
    iget-object v1, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    sget-object v1, Lrqo;->b:Lrqo;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual/range {v2 .. v7}, Lcom/google/ar/core/Frame;->nativeAcquireUpdatedTrackables(JJI)[J

    move-result-object v0

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

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_11
    const v0, 0x16

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

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    :goto_16
    goto/32 :goto_c

    nop

    nop

    :goto_17
    invoke-virtual {p0, p1, v0}, Lcom/google/ar/core/Session;->convertNativeTrackablesToCollection(Ljava/lang/Class;[J)Ljava/util/Collection;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public hasDisplayGeometryChanged()Z
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_1
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

    nop

    :goto_2
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    :goto_3
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeHasDisplayGeometryChanged(JJ)Z

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

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    :goto_7
    goto/32 :goto_d

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    :goto_9
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

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
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop
.end method

.method public hitTest(FF)Ljava/util/List;
    .locals 8

    goto/32 :goto_f

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object v1, p0

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

    :goto_2
    invoke-direct {p0, p1}, Lcom/google/ar/core/Frame;->cf7baeeea582ea2341e0ec99cc3c72d2m([J)Ljava/util/List;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    move v6, p1

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

    :goto_4
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    :goto_7
    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    invoke-virtual/range {v1 .. v7}, Lcom/google/ar/core/Frame;->nativeHitTest(JJFF)[J

    move-result-object p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    :goto_d
    goto/32 :goto_c

    nop

    nop

    :goto_e
    move v7, p2

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

    :goto_f
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

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

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public hitTest(FFF)Ljava/util/List;
    .locals 9

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {v1 .. v8}, Lcom/google/ar/core/Frame;->nativeInstantHitTest(JJFFF)[J

    move-result-object p1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    move-object v1, p0

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

    :goto_3
    goto/32 :goto_c

    nop

    nop

    :goto_4
    move v7, p2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, p1}, Lcom/google/ar/core/Frame;->cf7baeeea582ea2341e0ec99cc3c72d2m([J)Ljava/util/List;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    const v0, 0x3

    nop

    nop

    goto/32 :goto_0

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

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_a
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
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

    nop

    :goto_e
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_f
    move v6, p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move v8, p3

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
.end method

.method public hitTest(Landroid/view/MotionEvent;)Ljava/util/List;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/google/ar/core/Frame;->hitTest(FF)Ljava/util/List;

    move-result-object p0

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

    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public hitTest([FI[FI)Ljava/util/List;
    .locals 10

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x12

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move v9, p4

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    move-object v6, p1

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
    move-object v1, p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    move v7, p2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual/range {v1 .. v9}, Lcom/google/ar/core/Frame;->nativeHitTestRay(JJ[FI[FI)[J

    move-result-object p1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    :goto_d
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

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    move-object v8, p3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0, p1}, Lcom/google/ar/core/Frame;->cf7baeeea582ea2341e0ec99cc3c72d2m([J)Ljava/util/List;

    move-result-object p0

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

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x16

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public hitTestInstantPlacement(FFF)Ljava/util/List;
    .locals 9

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move v6, p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    move v8, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, p1}, Lcom/google/ar/core/Frame;->cf7baeeea582ea2341e0ec99cc3c72d2m([J)Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x4

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

    :goto_d
    invoke-virtual/range {v1 .. v8}, Lcom/google/ar/core/Frame;->nativeHitTestInstantPlacement(JJFFF)[J

    move-result-object p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

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

    nop

    :goto_f
    move v7, p2

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

    :goto_10
    const v0, 0x17

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public native nativeAcquirePointCloud(JJ)J
.end method

.method public native nativeAcquireUpdatedTrackables(JJI)[J
.end method

.method public native nativeFrameGetDepthRegionConfidence(JJIIII)F
.end method

.method public native nativeHitTest(JJFF)[J
.end method

.method public native nativeHitTestInstantPlacement(JJFFF)[J
.end method

.method public native nativeHitTestRay(JJ[FI[FI)[J
.end method

.method public native nativeInstantHitTest(JJFFF)[J
.end method

.method public recordTrackData(Ljava/util/UUID;Ljava/nio/ByteBuffer;)V
    .locals 8

    goto/32 :goto_1b

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
    goto/32 :goto_24

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_6
    iget-wide v2, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    new-array v7, p1, [B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_9
    invoke-direct/range {v1 .. v7}, Lcom/google/ar/core/Frame;->nativeRecordTrackData(JJ[B[B)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_a
    move-object v1, p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_d
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    :goto_f
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move-object v1, p0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-wide v2, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_14
    invoke-direct/range {v1 .. v7}, Lcom/google/ar/core/Frame;->nativeRecordTrackData(JJ[B[B)V

    goto/32 :goto_0

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_16
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_17
    new-array v0, v0, [B

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p1, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1c
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_e

    nop

    :goto_1d
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1e
    return-void

    nop

    :goto_1f
    goto/32 :goto_7

    nop

    nop

    :goto_20
    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_23
    iget-object p1, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_26
    const/16 v0, 0x10

    nop

    nop

    goto/32 :goto_17

    nop

    nop
.end method

.method public transformCoordinates2d(Lcom/google/ar/core/Coordinates2d;Ljava/nio/FloatBuffer;Lcom/google/ar/core/Coordinates2d;Ljava/nio/FloatBuffer;)V
    .locals 10

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    move-object v7, p2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    :goto_4
    iget v8, p3, Lcom/google/ar/core/Coordinates2d;->nativeCode:I

    nop

    nop

    goto/32 :goto_a

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

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

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
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    move-object v1, p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v6, p1, Lcom/google/ar/core/Coordinates2d;->nativeCode:I

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

    :goto_c
    move-object v9, p4

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

    :goto_d
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

    :goto_e
    goto/32 :goto_8

    nop

    :goto_f
    const v1, 0x1a

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct/range {v1 .. v9}, Lcom/google/ar/core/Frame;->nativeTransformCoordinates2dFloatArrayOrBuffer(JJILjava/lang/Object;ILjava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0xb

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
.end method

.method public transformCoordinates2d(Lcom/google/ar/core/Coordinates2d;[FLcom/google/ar/core/Coordinates2d;[F)V
    .locals 10

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    move-object v7, p2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    move-object v1, p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v6, p1, Lcom/google/ar/core/Coordinates2d;->nativeCode:I

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

    :goto_6
    iget v8, p3, Lcom/google/ar/core/Coordinates2d;->nativeCode:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_a
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    const v1, 0x15

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    :goto_f
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move-object v9, p4

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

    nop

    :goto_11
    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

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

    :goto_12
    invoke-direct/range {v1 .. v9}, Lcom/google/ar/core/Frame;->nativeTransformCoordinates2dFloatArrayOrBuffer(JJILjava/lang/Object;ILjava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public transformCoordinates3d(Lcom/google/ar/core/Coordinates2d;Ljava/nio/FloatBuffer;Lcom/google/ar/core/Coordinates3d;Ljava/nio/FloatBuffer;)V
    .locals 10

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x17

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
    goto/32 :goto_5

    nop

    nop

    :goto_2
    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    iget v6, p1, Lcom/google/ar/core/Coordinates2d;->nativeCode:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

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

    :goto_a
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

    :cond_0
    goto/32 :goto_4

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object v1, p0

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

    :goto_e
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move-object v7, p2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    invoke-direct/range {v1 .. v9}, Lcom/google/ar/core/Frame;->nativeTransformCoordinates3dFloatArrayOrBuffer(JJILjava/lang/Object;ILjava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v8, p3, Lcom/google/ar/core/Coordinates3d;->nativeCode:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object v9, p4

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method public transformCoordinates3d(Lcom/google/ar/core/Coordinates2d;[FLcom/google/ar/core/Coordinates3d;[F)V
    .locals 10

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    iget v6, p1, Lcom/google/ar/core/Coordinates2d;->nativeCode:I

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

    :goto_1
    move-object v7, p2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    move-object v9, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-direct/range {v1 .. v9}, Lcom/google/ar/core/Frame;->nativeTransformCoordinates3dFloatArrayOrBuffer(JJILjava/lang/Object;ILjava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    return-void

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
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    :goto_9
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

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
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_d
    const v1, 0x13

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

    :goto_e
    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    iget v8, p3, Lcom/google/ar/core/Coordinates3d;->nativeCode:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
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

    :goto_12
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public transformDisplayUvCoords(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    goto/32 :goto_17

    nop

    nop

    :goto_0
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_18

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct/range {v1 .. v7}, Lcom/google/ar/core/Frame;->nativeTransformDisplayUvCoords(JJLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    const-string p1, "transformDisplayUvCoords currently requires direct buffers."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    move-object v7, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    move-object v6, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_13
    move-object v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    :goto_16
    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x11

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

    :goto_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    :goto_19
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop
.end method
