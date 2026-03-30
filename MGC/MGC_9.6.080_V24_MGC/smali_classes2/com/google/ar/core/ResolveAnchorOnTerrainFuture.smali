.class public Lcom/google/ar/core/ResolveAnchorOnTerrainFuture;
.super Lcom/google/ar/core/FutureImpl;
.source "PG"


# direct methods
.method static bridge synthetic -$$Nest$smmakeAnchor(JLcom/google/ar/core/Session;)Lcom/google/ar/core/Anchor;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/google/ar/core/ResolveAnchorOnTerrainFuture;->makeAnchor(JLcom/google/ar/core/Session;)Lcom/google/ar/core/Anchor;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop
.end method

.method public constructor <init>(Lcom/google/ar/core/Session;JJ)V
    .locals 0

    goto/32 :goto_1

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

    nop

    :goto_1
    invoke-direct/range {p0 .. p5}, Lcom/google/ar/core/FutureImpl;-><init>(Lcom/google/ar/core/Session;JJ)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method private static makeAnchor(JLcom/google/ar/core/Session;)Lcom/google/ar/core/Anchor;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    cmp-long v0, p0, v0

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

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

    :goto_3
    const/4 p0, 0x0

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
    const v1, 0x1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5
    return-object v0

    nop

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
    const v0, 0xd

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
    return-object p0

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    new-instance v0, Lcom/google/ar/core/Anchor;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    goto/32 :goto_9

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

    :goto_11
    invoke-direct {v0, p0, p1, p2}, Lcom/google/ar/core/Anchor;-><init>(JLcom/google/ar/core/Session;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public bridge synthetic cancel()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    invoke-super {p0}, Lcom/google/ar/core/FutureImpl;->cancel()Z

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public getResultAnchor()Lcom/google/ar/core/Anchor;
    .locals 4

    goto/32 :goto_a

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcom/google/ar/core/ResolveAnchorOnTerrainFuture;->session:Lcom/google/ar/core/Session;

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

    :cond_0
    goto/32 :goto_0

    nop

    :goto_4
    iget-wide v2, p0, Lcom/google/ar/core/ResolveAnchorOnTerrainFuture;->nativeFuture:J

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    return-object p0

    nop

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
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/ar/core/ResolveAnchorOnTerrainFuture;->nativeGetResultAnchor(JJ)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    const v1, 0x7

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

    :goto_a
    const v0, 0x17

    nop

    goto/32 :goto_9

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
    invoke-static {v0, v1, p0}, Lcom/google/ar/core/ResolveAnchorOnTerrainFuture;->makeAnchor(JLcom/google/ar/core/Session;)Lcom/google/ar/core/Anchor;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lcom/google/ar/core/ResolveAnchorOnTerrainFuture;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop
.end method

.method public getResultTerrainAnchorState()Lcom/google/ar/core/Anchor$TerrainAnchorState;
    .locals 4

    goto/32 :goto_e

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/ar/core/ResolveAnchorOnTerrainFuture;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0}, Lcom/google/ar/core/Anchor$TerrainAnchorState;->forNumber(I)Lcom/google/ar/core/Anchor$TerrainAnchorState;

    move-result-object p0

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

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_8
    iget-wide v2, p0, Lcom/google/ar/core/ResolveAnchorOnTerrainFuture;->nativeFuture:J

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/ar/core/ResolveAnchorOnTerrainFuture;->nativeGetResultTerrainAnchorState(JJ)I

    move-result p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_4

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
    goto/32 :goto_0

    nop

    nop

    :goto_e
    const v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public bridge synthetic getState()Lcom/google/ar/core/FutureState;
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

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super {p0}, Lcom/google/ar/core/FutureImpl;->getState()Lcom/google/ar/core/FutureState;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public native nativeGetResultAnchor(JJ)J
.end method

.method public native nativeGetResultTerrainAnchorState(JJ)I
.end method
