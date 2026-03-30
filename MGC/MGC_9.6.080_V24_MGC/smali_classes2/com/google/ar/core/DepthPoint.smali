.class public Lcom/google/ar/core/DepthPoint;
.super Lcom/google/ar/core/TrackableBase;
.source "PG"


# direct methods
.method public constructor <init>(JLcom/google/ar/core/Session;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ar/core/TrackableBase;-><init>(JLcom/google/ar/core/Session;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public bridge synthetic createAnchor(Lcom/google/ar/core/Pose;)Lcom/google/ar/core/Anchor;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Lcom/google/ar/core/TrackableBase;->createAnchor(Lcom/google/ar/core/Pose;)Lcom/google/ar/core/Anchor;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

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

    :goto_0
    invoke-super {p0, p1}, Lcom/google/ar/core/TrackableBase;->equals(Ljava/lang/Object;)Z

    move-result p0

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
    return p0

    nop

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

    nop

    :goto_0
    invoke-super {p0}, Lcom/google/ar/core/TrackableBase;->getAnchors()Ljava/util/Collection;

    move-result-object p0

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

.method public bridge synthetic getTrackingState()Lcom/google/ar/core/TrackingState;
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

    nop

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

    :goto_0
    return p0

    nop

    :goto_1
    invoke-super {p0}, Lcom/google/ar/core/TrackableBase;->hashCode()I

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
