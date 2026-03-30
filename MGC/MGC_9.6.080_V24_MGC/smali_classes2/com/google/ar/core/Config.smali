.class public Lcom/google/ar/core/Config;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final TAG:Ljava/lang/String; = "ARCore-Config"


# instance fields
.field nativeHandle:J

.field final nativeSymbolTableHandle:J

.field final session:Lcom/google/ar/core/Session;


# direct methods
.method protected constructor <init>()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-wide/16 v0, 0x0

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

    :goto_5
    goto/32 :goto_f

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    const v1, 0x1f

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
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-wide v0, p0, Lcom/google/ar/core/Config;->nativeSymbolTableHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
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

    nop

    :goto_b
    iput-wide v0, p0, Lcom/google/ar/core/Config;->nativeHandle:J

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
    iput-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    const v0, 0x19

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lcom/google/ar/core/Session;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iget-wide v0, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    :goto_1
    iput-wide v0, p0, Lcom/google/ar/core/Config;->nativeSymbolTableHandle:J

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1f

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

    :goto_9
    iput-wide v0, p0, Lcom/google/ar/core/Config;->nativeHandle:J

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

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, v1}, Lcom/google/ar/core/Config;->nativeCreate(J)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    iget-wide v0, p1, Lcom/google/ar/core/Session;->nativeSymbolTableHandle:J

    nop

    nop

    nop

    goto/32 :goto_1

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

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
.end method

.method constructor <init>(Lcom/google/ar/core/Session;J)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iget-wide p1, p1, Lcom/google/ar/core/Session;->nativeSymbolTableHandle:J

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-wide p2, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iput-wide p1, p0, Lcom/google/ar/core/Config;->nativeSymbolTableHandle:J

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

    :goto_5
    iput-object p1, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method private static native nativeCreate(J)J
.end method

.method private static native nativeDestroy(JJ)V
.end method

.method private native nativeGetAugmentedFaceMode(JJ)I
.end method

.method private native nativeGetAugmentedImageDatabase(JJ)J
.end method

.method private native nativeGetAugmentedRegionMode(JJ)I
.end method

.method private native nativeGetCloudAnchorMode(JJ)I
.end method

.method private native nativeGetDepthMode(JJ)I
.end method

.method private native nativeGetDepthModePrivate(JJ)I
.end method

.method private native nativeGetFlashMode(JJ)I
.end method

.method private native nativeGetFocusMode(JJ)I
.end method

.method private native nativeGetFrameDelayOverride(JJ)I
.end method

.method private native nativeGetGeospatialMode(JJJ)I
.end method

.method private native nativeGetImageStabilizationMode(JJ)I
.end method

.method private native nativeGetInstantPlacementMode(JJ)I
.end method

.method private native nativeGetInstantPlacementModePrivate(JJ)I
.end method

.method private native nativeGetLightEstimationMode(JJ)I
.end method

.method private native nativeGetMagicalSurfaceHitTestModePrivate(JJ)I
.end method

.method private native nativeGetPlaneFindingMode(JJ)I
.end method

.method private native nativeGetPowerMode(JJ)I
.end method

.method private native nativeGetSegmentationMode(JJ)I
.end method

.method private native nativeGetSemanticMode(JJ)I
.end method

.method private native nativeGetStreetscapeGeometryMode(JJJ)I
.end method

.method private native nativeGetTextureUpdateMode(JJ)I
.end method

.method private native nativeGetUpdateMode(JJ)I
.end method

.method private native nativeSetAugmentedFaceMode(JJI)V
.end method

.method private native nativeSetAugmentedImageDatabase(JJJ)V
.end method

.method private native nativeSetAugmentedRegionMode(JJI)V
.end method

.method private native nativeSetCloudAnchorMode(JJI)V
.end method

.method private native nativeSetDepthMode(JJI)V
.end method

.method private native nativeSetDepthModePrivate(JJI)V
.end method

.method private native nativeSetFlashMode(JJI)V
.end method

.method private native nativeSetFocusMode(JJI)V
.end method

.method private native nativeSetFrameDelayOverride(JJI)V
.end method

.method private native nativeSetGeospatialMode(JJJI)V
.end method

.method private native nativeSetGeospatialModeDeprecated(JJJI)V
.end method

.method private native nativeSetImageStabilizationMode(JJI)V
.end method

.method private native nativeSetInstantPlacementMode(JJI)V
.end method

.method private native nativeSetInstantPlacementModePrivate(JJI)V
.end method

.method private native nativeSetLightEstimationMode(JJI)V
.end method

.method private native nativeSetMagicalSurfaceHitTestModePrivate(JJI)V
.end method

.method private native nativeSetPlaneFindingMode(JJI)V
.end method

.method private native nativeSetPowerMode(JJI)V
.end method

.method private native nativeSetSegmentationMode(JJI)V
.end method

.method private native nativeSetSemanticMode(JJI)V
.end method

.method private native nativeSetStreetscapeGeometryMode(JJJI)V
.end method

.method private native nativeSetTextureUpdateMode(JJI)V
.end method

.method private native nativeSetUpdateMode(JJI)V
.end method


# virtual methods
.method protected finalize()V
    .locals 4

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v2, :cond_0

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
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_3
    cmp-long v2, v0, v2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    invoke-static {v2, v3, v0, v1}, Lcom/google/ar/core/Config;->nativeDestroy(JJ)V

    :goto_5
    goto/32 :goto_0

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

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

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

    :goto_a
    goto/32 :goto_e

    nop

    nop

    :goto_b
    const-wide/16 v2, 0x0

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

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x16

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
    iget-wide v0, p0, Lcom/google/ar/core/Config;->nativeHandle:J

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

    :goto_f
    iget-wide v2, p0, Lcom/google/ar/core/Config;->nativeSymbolTableHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    const v0, 0xa

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
.end method

.method public getAugmentedFaceMode()Lcom/google/ar/core/Config$AugmentedFaceMode;
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    invoke-static {p0}, Lcom/google/ar/core/Config$AugmentedFaceMode;->forNumber(I)Lcom/google/ar/core/Config$AugmentedFaceMode;

    move-result-object p0

    nop

    nop

    goto/32 :goto_b

    nop

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

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_5
    iget-wide v2, p0, Lcom/google/ar/core/Config;->nativeHandle:J

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

    :goto_6
    const v0, 0x7

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0xf

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    :goto_d
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Config;->nativeGetAugmentedFaceMode(JJ)I

    move-result p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

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
.end method

.method public getAugmentedImageDatabase()Lcom/google/ar/core/AugmentedImageDatabase;
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    :goto_2
    new-instance v2, Lcom/google/ar/core/AugmentedImageDatabase;

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

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_4
    invoke-direct {v2, p0, v0, v1}, Lcom/google/ar/core/AugmentedImageDatabase;-><init>(Lcom/google/ar/core/Session;J)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    iget-wide v2, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_9
    goto/32 :goto_1

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

    goto/32 :goto_3

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

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Config;->nativeGetAugmentedImageDatabase(JJ)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

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

    nop

    nop
.end method

.method public getAugmentedRegionMode()Lcom/google/ar/core/Config$AugmentedRegionMode;
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    :goto_2
    const v1, 0x13

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

    nop

    :goto_3
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Config;->nativeGetAugmentedRegionMode(JJ)I

    move-result p0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    iget-wide v2, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    invoke-static {p0}, Lcom/google/ar/core/Config$AugmentedRegionMode;->forNumber(I)Lcom/google/ar/core/Config$AugmentedRegionMode;

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

    :goto_7
    goto/32 :goto_1

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    const v0, 0x19

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

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_e
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public getCloudAnchorMode()Lcom/google/ar/core/Config$CloudAnchorMode;
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Config;->nativeGetCloudAnchorMode(JJ)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    :goto_5
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_7
    return-object p0

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    :goto_9
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

    :goto_a
    invoke-static {p0}, Lcom/google/ar/core/Config$CloudAnchorMode;->forNumber(I)Lcom/google/ar/core/Config$CloudAnchorMode;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-wide v2, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public getDepthMode()Lcom/google/ar/core/Config$DepthMode;
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_d

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
    invoke-static {p0}, Lcom/google/ar/core/Config$DepthMode;->forNumber(I)Lcom/google/ar/core/Config$DepthMode;

    move-result-object p0

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

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Config;->nativeGetDepthMode(JJ)I

    move-result p0

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

    :goto_7
    goto/32 :goto_5

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    iget-wide v2, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_c
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method public getDepthModePrivate()Lcom/google/ar/core/Config$DepthMode;
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1d

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Config;->nativeGetDepthModePrivate(JJ)I

    move-result p0

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

    :goto_3
    goto/32 :goto_a

    nop

    :goto_4
    goto/32 :goto_7

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

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    invoke-static {p0}, Lcom/google/ar/core/Config$DepthMode;->forNumber(I)Lcom/google/ar/core/Config$DepthMode;

    move-result-object p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    iget-wide v2, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

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

    :goto_b
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop
.end method

.method public getFlashMode()Lcom/google/ar/core/Config$FlashMode;
    .locals 4

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    const v0, 0x13

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

    nop

    :goto_3
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Config;->nativeGetFlashMode(JJ)I

    move-result p0

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
    const v1, 0xd

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    iget-wide v2, p0, Lcom/google/ar/core/Config;->nativeHandle:J

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

    :goto_7
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

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p0}, Lcom/google/ar/core/Config$FlashMode;->forNumber(I)Lcom/google/ar/core/Config$FlashMode;

    move-result-object p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public getFocusMode()Lcom/google/ar/core/Config$FocusMode;
    .locals 4

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lcom/google/ar/core/Config$FocusMode;->forNumber(I)Lcom/google/ar/core/Config$FocusMode;

    move-result-object p0

    nop

    nop

    goto/32 :goto_b

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

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
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

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_5
    iget-wide v2, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

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
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Config;->nativeGetFocusMode(JJ)I

    move-result p0

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

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public getFrameDelayOverride()I
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

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
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    iget-wide v2, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    :goto_8
    const v1, 0xc

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

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Config;->nativeGetFrameDelayOverride(JJ)I

    move-result p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

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

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_d
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
.end method

.method public getGeospatialMode()Lcom/google/ar/core/Config$GeospatialMode;
    .locals 8

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    iget-wide v4, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    iget-wide v2, p0, Lcom/google/ar/core/Config;->nativeSymbolTableHandle:J

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

    :goto_6
    iget-wide v6, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    invoke-direct/range {v1 .. v7}, Lcom/google/ar/core/Config;->nativeGetGeospatialMode(JJJ)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    :goto_a
    invoke-static {p0}, Lcom/google/ar/core/Config$GeospatialMode;->forNumber(I)Lcom/google/ar/core/Config$GeospatialMode;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    move-object v1, p0

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

    :goto_c
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

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
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_e
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    :goto_10
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method

.method public getImageStabilizationMode()Lcom/google/ar/core/Config$ImageStabilizationMode;
    .locals 4

    goto/32 :goto_c

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

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x16

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

    nop

    :goto_4
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_6
    invoke-static {p0}, Lcom/google/ar/core/Config$ImageStabilizationMode;->forNumber(I)Lcom/google/ar/core/Config$ImageStabilizationMode;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Config;->nativeGetImageStabilizationMode(JJ)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    iget-wide v2, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    const v0, 0x3

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

    :goto_d
    goto/32 :goto_1

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getInstantPlacementMode()Lcom/google/ar/core/Config$InstantPlacementMode;
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

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

    :goto_1
    const v0, 0xa

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iget-wide v2, p0, Lcom/google/ar/core/Config;->nativeHandle:J

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

    :goto_4
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Config;->nativeGetInstantPlacementMode(JJ)I

    move-result p0

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
    invoke-static {p0}, Lcom/google/ar/core/Config$InstantPlacementMode;->forNumber(I)Lcom/google/ar/core/Config$InstantPlacementMode;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
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

    :goto_a
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

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
    return-object p0

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public getInstantPlacementModePrivate()Lcom/google/ar/core/Config$InstantPlacementMode;
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    :goto_1
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Config;->nativeGetInstantPlacementModePrivate(JJ)I

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-static {p0}, Lcom/google/ar/core/Config$InstantPlacementMode;->forNumber(I)Lcom/google/ar/core/Config$InstantPlacementMode;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    const v1, 0x12

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

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

    :goto_5
    return-object p0

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-wide v2, p0, Lcom/google/ar/core/Config;->nativeHandle:J

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

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

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
    const v0, 0xd

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

    :goto_c
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

    :goto_d
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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
.end method

.method public getLightEstimationMode()Lcom/google/ar/core/Config$LightEstimationMode;
    .locals 4

    goto/32 :goto_6

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

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    iget-wide v2, p0, Lcom/google/ar/core/Config;->nativeHandle:J

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

    :goto_3
    const v1, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Config;->nativeGetLightEstimationMode(JJ)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    const v0, 0x8

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

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0}, Lcom/google/ar/core/Config$LightEstimationMode;->forNumber(I)Lcom/google/ar/core/Config$LightEstimationMode;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

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

    :goto_c
    return-object p0

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public getMagicalSurfaceHitTestModePrivate()Lcom/google/ar/core/Config$MagicalSurfaceHitTestMode;
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    :goto_1
    iget-wide v2, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

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

    :goto_3
    const v1, 0x6

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x15

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

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_a
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Config;->nativeGetMagicalSurfaceHitTestModePrivate(JJ)I

    move-result p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

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

    :goto_d
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    :goto_e
    invoke-static {p0}, Lcom/google/ar/core/Config$MagicalSurfaceHitTestMode;->forNumber(I)Lcom/google/ar/core/Config$MagicalSurfaceHitTestMode;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public getPlaneFindingMode()Lcom/google/ar/core/Config$PlaneFindingMode;
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v2, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_3

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

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x12

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

    :goto_3
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Config;->nativeGetPlaneFindingMode(JJ)I

    move-result p0

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

    :goto_4
    goto/32 :goto_8

    nop

    nop

    :goto_5
    goto/32 :goto_d

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

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    :goto_8
    goto/32 :goto_9

    nop

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
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    :goto_b
    invoke-static {p0}, Lcom/google/ar/core/Config$PlaneFindingMode;->forNumber(I)Lcom/google/ar/core/Config$PlaneFindingMode;

    move-result-object p0

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
    const v0, 0x2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop
.end method

.method public getPowerMode()Lcom/google/ar/core/Config$PowerMode;
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Config;->nativeGetPowerMode(JJ)I

    move-result p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_5

    nop

    :goto_3
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    :goto_4
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

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

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    :goto_7
    iget-wide v2, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x6

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

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    invoke-static {p0}, Lcom/google/ar/core/Config$PowerMode;->forNumber(I)Lcom/google/ar/core/Config$PowerMode;

    move-result-object p0

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
    return-object p0

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

    :goto_d
    const v0, 0x20

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public getSegmentationMode()Lcom/google/ar/core/Config$SegmentationMode;
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lcom/google/ar/core/Config$SegmentationMode;->forNumber(I)Lcom/google/ar/core/Config$SegmentationMode;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x6

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xe

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

    :goto_7
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_4

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
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

    :goto_a
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Config;->nativeGetSegmentationMode(JJ)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

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
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-wide v2, p0, Lcom/google/ar/core/Config;->nativeHandle:J

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

.method public getSemanticMode()Lcom/google/ar/core/Config$SemanticMode;
    .locals 4

    goto/32 :goto_4

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
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    :goto_4
    const v0, 0x12

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_8
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    invoke-static {p0}, Lcom/google/ar/core/Config$SemanticMode;->forNumber(I)Lcom/google/ar/core/Config$SemanticMode;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-wide v2, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Config;->nativeGetSemanticMode(JJ)I

    move-result p0

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

.method public getStreetscapeGeometryMode()Lcom/google/ar/core/Config$StreetscapeGeometryMode;
    .locals 8

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
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

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

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

    :goto_2
    invoke-static {p0}, Lcom/google/ar/core/Config$StreetscapeGeometryMode;->forNumber(I)Lcom/google/ar/core/Config$StreetscapeGeometryMode;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    invoke-direct/range {v1 .. v7}, Lcom/google/ar/core/Config;->nativeGetStreetscapeGeometryMode(JJJ)I

    move-result p0

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

    :goto_5
    return-object p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-wide v6, p0, Lcom/google/ar/core/Config;->nativeHandle:J

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

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-wide v2, p0, Lcom/google/ar/core/Config;->nativeSymbolTableHandle:J

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0xe

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move-object v1, p0

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

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    iget-wide v4, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public getTextureUpdateMode()Lcom/google/ar/core/Config$TextureUpdateMode;
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_1
    invoke-static {p0}, Lcom/google/ar/core/Config$TextureUpdateMode;->forNumber(I)Lcom/google/ar/core/Config$TextureUpdateMode;

    move-result-object p0

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
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Config;->nativeGetTextureUpdateMode(JJ)I

    move-result p0

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

    :goto_7
    goto/32 :goto_d

    nop

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
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x4

    nop

    goto/32 :goto_2

    nop

    nop

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

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-wide v2, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public getUpdateMode()Lcom/google/ar/core/Config$UpdateMode;
    .locals 4

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lcom/google/ar/core/Config$UpdateMode;->forNumber(I)Lcom/google/ar/core/Config$UpdateMode;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Config;->nativeGetUpdateMode(JJ)I

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const v0, 0x6

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-wide v2, p0, Lcom/google/ar/core/Config;->nativeHandle:J

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

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

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

    :goto_9
    goto/32 :goto_5

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

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

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop
.end method

.method public setAugmentedFaceMode(Lcom/google/ar/core/Config$AugmentedFaceMode;)Lcom/google/ar/core/Config;
    .locals 7

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    move-object v1, p0

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

    :goto_1
    return-object p0

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
    const v1, 0x10

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
    iget-wide v4, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    goto/32 :goto_2

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
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_b
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

    :goto_c
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/Config;->nativeSetAugmentedFaceMode(JJI)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    iget v6, p1, Lcom/google/ar/core/Config$AugmentedFaceMode;->nativeCode:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public setAugmentedImageDatabase(Lcom/google/ar/core/AugmentedImageDatabase;)Lcom/google/ar/core/Config;
    .locals 8

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v0, p1, Lcom/google/ar/core/AugmentedImageDatabase;->nativeHandle:J

    nop

    nop

    :goto_1
    goto/32 :goto_15

    nop

    nop

    :goto_2
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct/range {v1 .. v7}, Lcom/google/ar/core/Config;->nativeSetAugmentedImageDatabase(JJJ)V

    goto/32 :goto_5

    nop

    nop

    :goto_4
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_9
    move-object v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    const-wide/16 v0, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_b
    const v0, 0x10

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    const v1, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-wide v4, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_1

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_0

    nop

    nop

    :goto_14
    goto/32 :goto_10

    nop

    nop

    :goto_15
    move-wide v6, v0

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
.end method

.method public setAugmentedRegionMode(Lcom/google/ar/core/Config$AugmentedRegionMode;)Lcom/google/ar/core/Config;
    .locals 7

    goto/32 :goto_a

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    iget v6, p1, Lcom/google/ar/core/Config$AugmentedRegionMode;->nativeCode:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iget-wide v4, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    move-object v1, p0

    nop

    nop

    nop

    nop

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/Config;->nativeSetAugmentedRegionMode(JJI)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0xb

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

    :goto_a
    const v0, 0x19

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_3

    nop

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

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public setCloudAnchorMode(Lcom/google/ar/core/Config$CloudAnchorMode;)Lcom/google/ar/core/Config;
    .locals 7

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_2
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/Config;->nativeSetCloudAnchorMode(JJI)V

    goto/32 :goto_7

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
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    const v1, 0x3

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

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x17

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
    iget v6, p1, Lcom/google/ar/core/Config$CloudAnchorMode;->nativeCode:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    iget-wide v4, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public setDepthMode(Lcom/google/ar/core/Config$DepthMode;)Lcom/google/ar/core/Config;
    .locals 7

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v4, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_3
    const v0, 0x1

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

    :goto_4
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/Config;->nativeSetDepthMode(JJI)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    move-object v1, p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v6, p1, Lcom/google/ar/core/Config$DepthMode;->nativeCode:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

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
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x13

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop
.end method

.method public setDepthModePrivate(Lcom/google/ar/core/Config$DepthMode;)Lcom/google/ar/core/Config;
    .locals 7

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    :goto_2
    iget-wide v4, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

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
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/Config;->nativeSetDepthModePrivate(JJI)V

    goto/32 :goto_5

    nop

    nop

    :goto_c
    const v1, 0x1d

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    iget v6, p1, Lcom/google/ar/core/Config$DepthMode;->nativeCode:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x9

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public setFlashMode(Lcom/google/ar/core/Config$FlashMode;)Lcom/google/ar/core/Config;
    .locals 7

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/Config;->nativeSetFlashMode(JJI)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    const v1, 0x17

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
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    iget v6, p1, Lcom/google/ar/core/Config$FlashMode;->nativeCode:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-wide v4, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    :goto_a
    move-object v1, p0

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

    :goto_b
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

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

    :goto_d
    return-object p0

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public setFocusMode(Lcom/google/ar/core/Config$FocusMode;)Lcom/google/ar/core/Config;
    .locals 7

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    :goto_1
    goto/32 :goto_c

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

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    const v0, 0x11

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/Config;->nativeSetFocusMode(JJI)V

    goto/32 :goto_8

    nop

    nop

    :goto_5
    const v1, 0xd

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

    :goto_6
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

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

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

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

    :goto_c
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    iget-wide v4, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    iget v6, p1, Lcom/google/ar/core/Config$FocusMode;->nativeCode:I

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public setFrameDelayOverride(I)Lcom/google/ar/core/Config;
    .locals 7

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_5
    move-object v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move v6, p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/Config;->nativeSetFrameDelayOverride(JJI)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v4, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    const v0, 0x4

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

.method public setGeospatialMode(Lcom/google/ar/core/Config$GeospatialMode;)Lcom/google/ar/core/Config;
    .locals 9

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-wide v6, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v8, p1, Lcom/google/ar/core/Config$GeospatialMode;->nativeCode:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    move-object v1, p0

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

    nop

    :goto_8
    iget-wide v4, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x17

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    :goto_c
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

    :goto_d
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    iget-wide v2, p0, Lcom/google/ar/core/Config;->nativeSymbolTableHandle:J

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct/range {v1 .. v8}, Lcom/google/ar/core/Config;->nativeSetGeospatialMode(JJJI)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public setGeospatialModeDeprecated(Lcom/google/ar/core/Config$GeospatialMode;)Lcom/google/ar/core/Config;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_1
    invoke-direct/range {v1 .. v8}, Lcom/google/ar/core/Config;->nativeSetGeospatialModeDeprecated(JJJI)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v4, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

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

    :goto_7
    const v0, 0xb

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x14

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
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

    nop

    :goto_c
    iget-wide v2, p0, Lcom/google/ar/core/Config;->nativeSymbolTableHandle:J

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

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    iget-wide v6, p0, Lcom/google/ar/core/Config;->nativeHandle:J

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

    :goto_f
    move-object v1, p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v8, p1, Lcom/google/ar/core/Config$GeospatialMode;->nativeCode:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public setImageStabilizationMode(Lcom/google/ar/core/Config$ImageStabilizationMode;)Lcom/google/ar/core/Config;
    .locals 7

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/Config;->nativeSetImageStabilizationMode(JJI)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    iget v6, p1, Lcom/google/ar/core/Config$ImageStabilizationMode;->nativeCode:I

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

    :goto_b
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    iget-wide v4, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x7

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setInstantPlacementMode(Lcom/google/ar/core/Config$InstantPlacementMode;)Lcom/google/ar/core/Config;
    .locals 7

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x1f

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

    :goto_1
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    iget v6, p1, Lcom/google/ar/core/Config$InstantPlacementMode;->nativeCode:I

    nop

    nop

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

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_4
    move-object v1, p0

    nop

    goto/32 :goto_9

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    :goto_9
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/Config;->nativeSetInstantPlacementMode(JJI)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    :goto_c
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    :goto_d
    iget-wide v4, p0, Lcom/google/ar/core/Config;->nativeHandle:J

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

    :goto_e
    return-object p0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public setInstantPlacementModePrivate(Lcom/google/ar/core/Config$InstantPlacementMode;)Lcom/google/ar/core/Config;
    .locals 7

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v6, p1, Lcom/google/ar/core/Config$InstantPlacementMode;->nativeCode:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    move-object v1, p0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iget-wide v4, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/Config;->nativeSetInstantPlacementModePrivate(JJI)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0xa

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1c

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    return-object p0

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
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public setLightEstimationMode(Lcom/google/ar/core/Config$LightEstimationMode;)Lcom/google/ar/core/Config;
    .locals 7

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x12

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_2
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/Config;->nativeSetLightEstimationMode(JJI)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    iget v6, p1, Lcom/google/ar/core/Config$LightEstimationMode;->nativeCode:I

    nop

    nop

    goto/32 :goto_6

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

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object v1, p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_e

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
    const v1, 0x8

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

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-wide v4, p0, Lcom/google/ar/core/Config;->nativeHandle:J

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
.end method

.method public setMagicalSurfaceHitTestModePrivate(Lcom/google/ar/core/Config$MagicalSurfaceHitTestMode;)Lcom/google/ar/core/Config;
    .locals 7

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/Config;->nativeSetMagicalSurfaceHitTestModePrivate(JJI)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

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

    :goto_4
    goto/32 :goto_f

    nop

    nop

    :goto_5
    const v1, 0x1c

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

    :goto_6
    iget v6, p1, Lcom/google/ar/core/Config$MagicalSurfaceHitTestMode;->nativeCode:I

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

    nop

    nop

    :goto_7
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_e
    iget-wide v4, p0, Lcom/google/ar/core/Config;->nativeHandle:J

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

    :goto_f
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public setPlaneFindingMode(Lcom/google/ar/core/Config$PlaneFindingMode;)Lcom/google/ar/core/Config;
    .locals 7

    goto/32 :goto_8

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iget-wide v4, p0, Lcom/google/ar/core/Config;->nativeHandle:J

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
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x20

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    const v0, 0x11

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

    :goto_9
    goto/32 :goto_c

    nop

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
    return-object p0

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/Config;->nativeSetPlaneFindingMode(JJI)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v6, p1, Lcom/google/ar/core/Config$PlaneFindingMode;->nativeCode:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
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
.end method

.method public setPowerMode(Lcom/google/ar/core/Config$PowerMode;)Lcom/google/ar/core/Config;
    .locals 7

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v1, p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v6, p1, Lcom/google/ar/core/Config$PowerMode;->nativeCode:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const v1, 0x20

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

    :goto_3
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/Config;->nativeSetPowerMode(JJI)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    :goto_a
    iget-wide v4, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_e
    const v0, 0xb

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

.method public setSegmentationMode(Lcom/google/ar/core/Config$SegmentationMode;)Lcom/google/ar/core/Config;
    .locals 7

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v4, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    :goto_6
    const v0, 0xb

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/Config;->nativeSetSegmentationMode(JJI)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    iget v6, p1, Lcom/google/ar/core/Config$SegmentationMode;->nativeCode:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    const v1, 0x1

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

    :goto_c
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    return-object p0

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setSemanticMode(Lcom/google/ar/core/Config$SemanticMode;)Lcom/google/ar/core/Config;
    .locals 7

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xa

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    const v1, 0x3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    iget-wide v4, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v6, p1, Lcom/google/ar/core/Config$SemanticMode;->nativeCode:I

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
    move-object v1, p0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/Config;->nativeSetSemanticMode(JJI)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
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

    :cond_0
    goto/32 :goto_3

    nop
.end method

.method public setStreetscapeGeometryMode(Lcom/google/ar/core/Config$StreetscapeGeometryMode;)Lcom/google/ar/core/Config;
    .locals 9

    goto/32 :goto_e

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-wide v2, p0, Lcom/google/ar/core/Config;->nativeSymbolTableHandle:J

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

    :goto_3
    invoke-direct/range {v1 .. v8}, Lcom/google/ar/core/Config;->nativeSetStreetscapeGeometryMode(JJJI)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    move-object v1, p0

    nop

    nop

    goto/32 :goto_3

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

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v8, p1, Lcom/google/ar/core/Config$StreetscapeGeometryMode;->nativeCode:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
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

    :goto_9
    iget-wide v6, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v4, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop
.end method

.method public setTextureUpdateMode(Lcom/google/ar/core/Config$TextureUpdateMode;)Lcom/google/ar/core/Config;
    .locals 7

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v4, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    goto/32 :goto_2

    nop

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

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_2
    iget v6, p1, Lcom/google/ar/core/Config$TextureUpdateMode;->nativeCode:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    const v0, 0x17

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

    :goto_7
    return-object p0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/Config;->nativeSetTextureUpdateMode(JJI)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    move-object v1, p0

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

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public setUpdateMode(Lcom/google/ar/core/Config$UpdateMode;)Lcom/google/ar/core/Config;
    .locals 7

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    iget-wide v4, p0, Lcom/google/ar/core/Config;->nativeHandle:J

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/ar/core/Config;->session:Lcom/google/ar/core/Session;

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

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xa

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    :goto_9
    iget v6, p1, Lcom/google/ar/core/Config$UpdateMode;->nativeCode:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1d

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
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/Config;->nativeSetUpdateMode(JJI)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    move-object v1, p0

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
.end method
