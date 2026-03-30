.class public Lcom/google/ar/core/AugmentedFace;
.super Lcom/google/ar/core/TrackableBase;
.source "PG"


# static fields
.field private static final TAG:Ljava/lang/String; = "ARCore-AugmentedFace"


# instance fields
.field private normalsBuffer:Ljava/nio/FloatBuffer;

.field private textureCoordinatesBuffer:Ljava/nio/FloatBuffer;

.field private triangleIndicesBuffer:Ljava/nio/ShortBuffer;

.field private verticesBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method protected constructor <init>()V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_3

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

    :goto_2
    goto/32 :goto_b

    nop

    nop

    :goto_3
    const/4 v2, 0x0

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

    :goto_4
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

    :goto_5
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

    :goto_6
    invoke-direct {p0, v0, v1, v2}, Lcom/google/ar/core/TrackableBase;-><init>(JLcom/google/ar/core/Session;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    :goto_c
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public constructor <init>(JLcom/google/ar/core/Session;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ar/core/TrackableBase;-><init>(JLcom/google/ar/core/Session;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/ar/core/AugmentedFace;->populateMeshData()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method private native nativeGetBoundingRectangle(JJ[FI)V
.end method

.method private native nativeGetCenterPose(JJ)Lcom/google/ar/core/Pose;
.end method

.method private native nativeGetConfidenceValue(JJ)F
.end method

.method private native nativeGetLandmarks(JJ[FI)V
.end method

.method private native nativeGetMeshNormalsByteBuffer(JJ)Ljava/nio/ByteBuffer;
.end method

.method private native nativeGetMeshTextureCoordinatesByteBuffer(JJ)Ljava/nio/ByteBuffer;
.end method

.method private native nativeGetMeshTriangleIndicesByteBuffer(JJ)Ljava/nio/ByteBuffer;
.end method

.method private native nativeGetMeshVerticesByteBuffer(JJ)Ljava/nio/ByteBuffer;
.end method

.method private native nativeGetRegionPose(JJI)Lcom/google/ar/core/Pose;
.end method


# virtual methods
.method public bridge synthetic createAnchor(Lcom/google/ar/core/Pose;)Lcom/google/ar/core/Anchor;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-super {p0, p1}, Lcom/google/ar/core/TrackableBase;->createAnchor(Lcom/google/ar/core/Pose;)Lcom/google/ar/core/Anchor;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    invoke-super {p0, p1}, Lcom/google/ar/core/TrackableBase;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public bridge synthetic getAnchors()Ljava/util/Collection;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-super {p0}, Lcom/google/ar/core/TrackableBase;->getAnchors()Ljava/util/Collection;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public getBoundingRectangle([FI)V
    .locals 8

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xe

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-wide v4, p0, Lcom/google/ar/core/AugmentedFace;->nativeHandle:J

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
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

    :goto_3
    iget-object v0, p0, Lcom/google/ar/core/AugmentedFace;->session:Lcom/google/ar/core/Session;

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
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    move-object v6, p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    move-object v1, p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    return-void

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
    invoke-direct/range {v1 .. v7}, Lcom/google/ar/core/AugmentedFace;->nativeGetBoundingRectangle(JJ[FI)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_10
    move v7, p2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public getCenterPose()Lcom/google/ar/core/Pose;
    .locals 4

    goto/32 :goto_7

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

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/ar/core/AugmentedFace;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-wide v2, p0, Lcom/google/ar/core/AugmentedFace;->nativeHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/AugmentedFace;->nativeGetCenterPose(JJ)Lcom/google/ar/core/Pose;

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

    :goto_7
    const v0, 0x1

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

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1d

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

    :goto_c
    return-object p0

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getConfidenceValue()F
    .locals 4

    goto/32 :goto_7

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    const v1, 0xa

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/google/ar/core/AugmentedFace;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    iget-wide v2, p0, Lcom/google/ar/core/AugmentedFace;->nativeHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    const v0, 0xc

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

    :goto_8
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

    :goto_9
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/AugmentedFace;->nativeGetConfidenceValue(JJ)F

    move-result p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public getLandmarks([FI)V
    .locals 8

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    goto/32 :goto_5

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

    nop

    :goto_3
    move v7, p2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

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

    nop

    nop

    :goto_6
    invoke-direct/range {v1 .. v7}, Lcom/google/ar/core/AugmentedFace;->nativeGetLandmarks(JJ[FI)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
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

    nop

    :goto_8
    iget-wide v4, p0, Lcom/google/ar/core/AugmentedFace;->nativeHandle:J

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x16

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lcom/google/ar/core/AugmentedFace;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move-object v6, p1

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

    :goto_f
    const v1, 0xa

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
    move-object v1, p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop
.end method

.method public getMeshNormals()Ljava/nio/FloatBuffer;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/ar/core/AugmentedFace;->normalsBuffer:Ljava/nio/FloatBuffer;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop
.end method

.method public getMeshTextureCoordinates()Ljava/nio/FloatBuffer;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/ar/core/AugmentedFace;->textureCoordinatesBuffer:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public getMeshTriangleIndices()Ljava/nio/ShortBuffer;
    .locals 0

    goto/32 :goto_1

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
    iget-object p0, p0, Lcom/google/ar/core/AugmentedFace;->triangleIndicesBuffer:Ljava/nio/ShortBuffer;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public getMeshVertices()Ljava/nio/FloatBuffer;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/ar/core/AugmentedFace;->verticesBuffer:Ljava/nio/FloatBuffer;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public getRegionPose(Lcom/google/ar/core/AugmentedFace$RegionType;)Lcom/google/ar/core/Pose;
    .locals 7

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/AugmentedFace;->nativeGetRegionPose(JJI)Lcom/google/ar/core/Pose;

    move-result-object p0

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

    :goto_3
    move-object v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

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
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    goto/32 :goto_d

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

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    iget v6, p1, Lcom/google/ar/core/AugmentedFace$RegionType;->nativeCode:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_c
    iget-object v0, p0, Lcom/google/ar/core/AugmentedFace;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    iget-wide v4, p0, Lcom/google/ar/core/AugmentedFace;->nativeHandle:J

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    const v0, 0x16

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

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public bridge synthetic getTrackingState()Lcom/google/ar/core/TrackingState;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-super {p0}, Lcom/google/ar/core/TrackableBase;->getTrackingState()Lcom/google/ar/core/TrackingState;

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
.end method

.method public bridge synthetic hashCode()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Lcom/google/ar/core/TrackableBase;->hashCode()I

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop
.end method

.method public populateMeshData()V
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lcom/google/ar/core/AugmentedFace;->verticesBuffer:Ljava/nio/FloatBuffer;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lcom/google/ar/core/Session;->directByteBufferOrDefault(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcom/google/ar/core/AugmentedFace;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lcom/google/ar/core/AugmentedFace;->textureCoordinatesBuffer:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    nop

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

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_7
    iget-wide v2, p0, Lcom/google/ar/core/AugmentedFace;->nativeHandle:J

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

    :goto_8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

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

    :goto_9
    iget-object v0, p0, Lcom/google/ar/core/AugmentedFace;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_a
    const v0, 0x1f

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/AugmentedFace;->nativeGetMeshTriangleIndicesByteBuffer(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

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

    :goto_d
    goto/32 :goto_13

    nop

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

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    :goto_11
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/AugmentedFace;->nativeGetMeshTextureCoordinatesByteBuffer(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_12
    iget-wide v2, p0, Lcom/google/ar/core/AugmentedFace;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1b

    nop

    :goto_14
    iget-object v0, p0, Lcom/google/ar/core/AugmentedFace;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_15
    iget-wide v2, p0, Lcom/google/ar/core/AugmentedFace;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_16
    invoke-static {v0}, Lcom/google/ar/core/Session;->directByteBufferOrDefault(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_17
    iput-object v0, p0, Lcom/google/ar/core/AugmentedFace;->triangleIndicesBuffer:Ljava/nio/ShortBuffer;

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

    nop

    :goto_19
    iget-object v0, p0, Lcom/google/ar/core/AugmentedFace;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_d

    nop

    nop

    :goto_1b
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1d
    iget-wide v2, p0, Lcom/google/ar/core/AugmentedFace;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v0}, Lcom/google/ar/core/Session;->directByteBufferOrDefault(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/AugmentedFace;->nativeGetMeshNormalsByteBuffer(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v0}, Lcom/google/ar/core/Session;->directByteBufferOrDefault(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_22
    const v1, 0x7

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

    :goto_23
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_24
    iput-object v0, p0, Lcom/google/ar/core/AugmentedFace;->normalsBuffer:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/AugmentedFace;->nativeGetMeshVerticesByteBuffer(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop
.end method
