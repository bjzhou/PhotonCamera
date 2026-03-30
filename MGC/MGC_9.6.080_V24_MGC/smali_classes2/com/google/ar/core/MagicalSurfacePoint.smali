.class public Lcom/google/ar/core/MagicalSurfacePoint;
.super Lcom/google/ar/core/TrackableBase;
.source "PG"


# direct methods
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

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method private native nativeGetOrientationModePrivate(JJ)I
.end method


# virtual methods
.method public bridge synthetic createAnchor(Lcom/google/ar/core/Pose;)Lcom/google/ar/core/Anchor;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Lcom/google/ar/core/TrackableBase;->createAnchor(Lcom/google/ar/core/Pose;)Lcom/google/ar/core/Anchor;

    move-result-object p0

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

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Lcom/google/ar/core/TrackableBase;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop
.end method

.method public bridge synthetic getAnchors()Ljava/util/Collection;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Lcom/google/ar/core/TrackableBase;->getAnchors()Ljava/util/Collection;

    move-result-object p0

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
    return-object p0

    nop

    nop

    nop
.end method

.method public getOrientationMode()Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;
    .locals 4

    goto/32 :goto_b

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_2
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

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    iget-object v0, p0, Lcom/google/ar/core/MagicalSurfacePoint;->session:Lcom/google/ar/core/Session;

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

    :goto_7
    iget-wide v2, p0, Lcom/google/ar/core/MagicalSurfacePoint;->nativeHandle:J

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    invoke-static {p0}, Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;->fromNumber(I)Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;

    move-result-object p0

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

    :goto_9
    return-object p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/MagicalSurfacePoint;->nativeGetOrientationModePrivate(JJ)I

    move-result p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public bridge synthetic getTrackingState()Lcom/google/ar/core/TrackingState;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-super {p0}, Lcom/google/ar/core/TrackableBase;->getTrackingState()Lcom/google/ar/core/TrackingState;

    move-result-object p0

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
.end method

.method public bridge synthetic hashCode()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    invoke-super {p0}, Lcom/google/ar/core/TrackableBase;->hashCode()I

    move-result p0

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
