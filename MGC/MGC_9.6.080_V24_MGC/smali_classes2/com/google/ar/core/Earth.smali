.class public Lcom/google/ar/core/Earth;
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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method private native nativeCreateAnchor(JJDDDFFFF)J
.end method

.method private native nativeCreateAnchorOnTerrain(JJDDDFFFF)J
.end method

.method private native nativeCreateAnchorOnWgs84(JJDDDFFFF)J
.end method

.method private native nativeGetCameraGeospatialPose(JJ)J
.end method

.method private native nativeGetEarthState(JJ)I
.end method

.method private native nativeGetGeospatialPose(JJLcom/google/ar/core/Pose;)J
.end method

.method private native nativeGetPose(JJDDDFFFF)Lcom/google/ar/core/Pose;
.end method

.method private native nativeGetTrackingState(JJ)I
.end method

.method private native nativeReleaseEarth(JJ)V
.end method

.method private native nativeResolveAnchorOnRooftopAsync(JJDDDFFFFLcom/google/ar/core/ResolveAnchorOnRooftopFuture$CallbackWrapper;)[J
.end method

.method private native nativeResolveAnchorOnTerrain(JJDDDFFFF)J
.end method

.method private native nativeResolveAnchorOnTerrainAsync(JJDDDFFFFLcom/google/ar/core/ResolveAnchorOnTerrainFuture$CallbackWrapper;)[J
.end method

.method private native nativeSetLocalizationPerformanceMode(JJI)V
.end method

.method private native nativeSetNetworkClient(JJLcom/google/ar/core/EarthNetworkClientInterface;)V
.end method


# virtual methods
.method public createAnchor(DDDFFFF)Lcom/google/ar/core/Anchor;
    .locals 17

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct/range {v0 .. v14}, Lcom/google/ar/core/Earth;->nativeCreateAnchor(JJDDDFFFF)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    move/from16 v12, p8

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    move/from16 v14, p10

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    move/from16 v13, p9

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

    :goto_5
    iget-object v2, v15, Lcom/google/ar/core/Earth;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    move-wide/from16 v7, p3

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, v15, Lcom/google/ar/core/Earth;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_9
    move-object/from16 v16, v14

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    :goto_b
    new-instance v14, Lcom/google/ar/core/Anchor;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object/from16 v3, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x13

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

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    :goto_10
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object v3

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    move/from16 v11, p7

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

    :goto_14
    iget-wide v3, v15, Lcom/google/ar/core/Earth;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    iget-wide v1, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

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

    nop

    :goto_16
    move-wide/from16 v9, p5

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

    :goto_17
    invoke-direct {v3, v0, v1, v2}, Lcom/google/ar/core/Anchor;-><init>(JLcom/google/ar/core/Session;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_19
    const v1, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move-object/from16 v15, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1b
    move-wide/from16 v5, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public createAnchor(DDD[F)Lcom/google/ar/core/Anchor;
    .locals 18

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_0
    move/from16 v14, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    move-object/from16 v0, p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-wide v3, v15, Lcom/google/ar/core/Earth;->nativeHandle:J

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    aget v11, p7, v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct/range {v0 .. v14}, Lcom/google/ar/core/Earth;->nativeCreateAnchor(JJDDDFFFF)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    iget-object v0, v15, Lcom/google/ar/core/Earth;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object v3

    nop

    nop

    :goto_9
    goto/32 :goto_18

    nop

    nop

    :goto_a
    move-wide/from16 v5, p1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_b
    aget v16, p7, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    const v1, 0x8

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

    nop

    :goto_d
    invoke-direct {v3, v0, v1, v2}, Lcom/google/ar/core/Anchor;-><init>(JLcom/google/ar/core/Session;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    iget-wide v1, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    iget-object v2, v15, Lcom/google/ar/core/Earth;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_10
    aget v13, p7, v0

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

    :goto_11
    move-object/from16 v15, p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v14, Lcom/google/ar/core/Anchor;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_15
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_11

    nop

    nop

    :goto_17
    move-object/from16 v3, v17

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

    :goto_18
    goto/32 :goto_16

    nop

    :goto_19
    aget v12, p7, v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1a
    move-wide/from16 v7, p3

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0x1

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

    :goto_1c
    move-wide/from16 v9, p5

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_1e
    move-object/from16 v17, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v0, 0x3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v0, 0x2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method

.method public createAnchor(Lcom/google/ar/core/Pose;)Lcom/google/ar/core/Anchor;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const-string p1, "Earth does not support createAnchor using a Pose. Use createAnchor with Geospatial coordinates instead."

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public createAnchorOnTerrain(DDDFFFF)Lcom/google/ar/core/Anchor;
    .locals 17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    iget-object v2, v15, Lcom/google/ar/core/Earth;->session:Lcom/google/ar/core/Session;

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

    :goto_1
    if-lez v0, :cond_0

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
    return-object v3

    nop

    nop

    :goto_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move/from16 v14, p10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    invoke-direct/range {v0 .. v14}, Lcom/google/ar/core/Earth;->nativeCreateAnchorOnTerrain(JJDDDFFFF)J

    move-result-wide v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-wide v1, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    iget-object v0, v15, Lcom/google/ar/core/Earth;->session:Lcom/google/ar/core/Session;

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

    :goto_8
    move-object/from16 v3, v16

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    invoke-direct {v3, v0, v1, v2}, Lcom/google/ar/core/Anchor;-><init>(JLcom/google/ar/core/Session;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_b
    iget-wide v3, v15, Lcom/google/ar/core/Earth;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    new-instance v14, Lcom/google/ar/core/Anchor;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    move-object/from16 v16, v14

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10
    move/from16 v12, p8

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

    :goto_11
    const v0, 0x17

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    move-object/from16 v0, p0

    nop

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

    nop

    :goto_14
    move-wide/from16 v5, p1

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

    :goto_15
    move-object/from16 v15, p0

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

    :goto_16
    move/from16 v13, p9

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_f

    nop

    :goto_18
    move-wide/from16 v9, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_19
    move/from16 v11, p7

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1a
    move-wide/from16 v7, p3

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method

.method public createAnchorOnWgs84(DDDFFFF)Lcom/google/ar/core/Anchor;
    .locals 17

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-wide/from16 v9, p5

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

    :goto_1
    invoke-direct/range {v0 .. v14}, Lcom/google/ar/core/Earth;->nativeCreateAnchorOnWgs84(JJDDDFFFF)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    const v1, 0x2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move/from16 v12, p8

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5
    move-wide/from16 v5, p1

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
    move-wide/from16 v7, p3

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-object/from16 v15, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_8
    move-object/from16 v3, v16

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move/from16 v14, p10

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    invoke-direct {v3, v0, v1, v2}, Lcom/google/ar/core/Anchor;-><init>(JLcom/google/ar/core/Session;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_f
    const v0, 0x9

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

    :goto_10
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    iget-object v2, v15, Lcom/google/ar/core/Earth;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    move/from16 v11, p7

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

    :goto_13
    return-object v3

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2

    nop

    nop

    :goto_15
    iget-object v0, v15, Lcom/google/ar/core/Earth;->session:Lcom/google/ar/core/Session;

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

    :goto_16
    iget-wide v1, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_17
    move-object/from16 v16, v14

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move/from16 v13, p9

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1a
    new-instance v14, Lcom/google/ar/core/Anchor;

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

    nop

    :goto_1b
    iget-wide v3, v15, Lcom/google/ar/core/Earth;->nativeHandle:J

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

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop
.end method

.method protected finalize()V
    .locals 6

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/16 v2, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xe

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    iget-wide v4, p0, Lcom/google/ar/core/Earth;->nativeSymbolTableHandle:J

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    iput-wide v2, p0, Lcom/google/ar/core/Earth;->nativeHandle:J

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    :goto_6
    const v0, 0x1e

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
    invoke-direct {p0, v4, v5, v0, v1}, Lcom/google/ar/core/Earth;->nativeReleaseEarth(JJ)V

    goto/32 :goto_4

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    if-nez v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

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

    :goto_d
    if-lez v0, :cond_1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_e
    invoke-super {p0}, Lcom/google/ar/core/TrackableBase;->finalize()V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    cmp-long v4, v0, v2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    iget-wide v0, p0, Lcom/google/ar/core/Earth;->nativeHandle:J

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

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

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method public getCameraGeospatialPose()Lcom/google/ar/core/GeospatialPose;
    .locals 6

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1, v2, v3, p0}, Lcom/google/ar/core/GeospatialPose;-><init>(JLcom/google/ar/core/Session;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v1, Lcom/google/ar/core/GeospatialPose;

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
    const v0, 0xe

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

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    iget-wide v4, p0, Lcom/google/ar/core/Earth;->nativeHandle:J

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
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/ar/core/Earth;->nativeGetCameraGeospatialPose(JJ)J

    move-result-wide v2

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
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lcom/google/ar/core/Earth;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lcom/google/ar/core/Earth;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x17

    nop

    nop

    goto/32 :goto_d

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

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
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
.end method

.method public getEarthState()Lcom/google/ar/core/Earth$EarthState;
    .locals 4

    goto/32 :goto_d

    nop

    nop

    :goto_0
    invoke-static {p0}, Lcom/google/ar/core/Earth$EarthState;->forNumber(I)Lcom/google/ar/core/Earth$EarthState;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_4
    iget-wide v2, p0, Lcom/google/ar/core/Earth;->nativeHandle:J

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
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Earth;->nativeGetEarthState(JJ)I

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

    :goto_6
    iget-object v0, p0, Lcom/google/ar/core/Earth;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    :goto_c
    const v1, 0x16

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

    :goto_d
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public getGeospatialPose(Lcom/google/ar/core/Pose;)Lcom/google/ar/core/GeospatialPose;
    .locals 8

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v5, p0, Lcom/google/ar/core/Earth;->nativeHandle:J

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
    invoke-direct {v1, v2, v3, p0}, Lcom/google/ar/core/GeospatialPose;-><init>(JLcom/google/ar/core/Session;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move-object v2, p0

    nop

    goto/32 :goto_10

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_4
    const v1, 0x1d

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

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lcom/google/ar/core/Earth;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_a

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

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    iget-wide v3, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    new-instance v1, Lcom/google/ar/core/GeospatialPose;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct/range {v2 .. v7}, Lcom/google/ar/core/Earth;->nativeGetGeospatialPose(JJLcom/google/ar/core/Pose;)J

    move-result-wide v2

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

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    return-object v1

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0xa

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move-object v7, p1

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

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_12
    iget-object p0, p0, Lcom/google/ar/core/Earth;->session:Lcom/google/ar/core/Session;

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
.end method

.method public getPose(DDDFFFF)Lcom/google/ar/core/Pose;
    .locals 15

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    iget-wide v3, v0, Lcom/google/ar/core/Earth;->nativeHandle:J

    nop

    nop

    goto/32 :goto_11

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, v0, Lcom/google/ar/core/Earth;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    return-object v0

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
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

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

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_9
    move-wide/from16 v7, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    move-object v0, p0

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

    :goto_b
    move/from16 v11, p7

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x15

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

    :goto_d
    iget-wide v1, v1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

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

    :goto_10
    move-wide/from16 v9, p5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move-wide/from16 v5, p1

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

    :goto_12
    invoke-direct/range {v0 .. v14}, Lcom/google/ar/core/Earth;->nativeGetPose(JJDDDFFFF)Lcom/google/ar/core/Pose;

    move-result-object v0

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

    :goto_13
    move/from16 v14, p10

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_14
    move/from16 v12, p8

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_15
    move/from16 v13, p9

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop
.end method

.method public getTrackingState()Lcom/google/ar/core/TrackingState;
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/ar/core/Earth;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Earth;->nativeGetTrackingState(JJ)I

    move-result p0

    nop

    goto/32 :goto_e

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

    :goto_4
    goto/32 :goto_5

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

    nop

    nop

    :goto_6
    iget-wide v2, p0, Lcom/google/ar/core/Earth;->nativeHandle:J

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

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

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_a
    const v1, 0x1d

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x14

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
    goto/32 :goto_4

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p0}, Lcom/google/ar/core/TrackingState;->forNumber(I)Lcom/google/ar/core/TrackingState;

    move-result-object p0

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
.end method

.method public bridge synthetic hashCode()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super {p0}, Lcom/google/ar/core/TrackableBase;->hashCode()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public resolveAnchorOnRooftopAsync(DDDFFFFLjava/util/function/BiConsumer;)Lcom/google/ar/core/ResolveAnchorOnRooftopFuture;
    .locals 17

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-wide/from16 p2, v3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object/from16 v15, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2
    move-wide/from16 v7, p3

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

    :goto_3
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    move-object/from16 p1, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    move-object/from16 v1, p0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v2, Lcom/google/ar/core/ResolveAnchorOnRooftopFuture$CallbackWrapper;

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_9
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_c
    aget-wide v3, v0, v3

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_d
    iget-wide v3, v15, Lcom/google/ar/core/Earth;->nativeHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    move-object/from16 v0, p11

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, v15, Lcom/google/ar/core/Earth;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    iget-wide v1, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    new-instance v2, Lcom/google/ar/core/ResolveAnchorOnRooftopFuture;

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
    move-wide/from16 v9, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_14
    iget-object v0, v15, Lcom/google/ar/core/Earth;->session:Lcom/google/ar/core/Session;

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

    :goto_15
    invoke-direct/range {v0 .. v15}, Lcom/google/ar/core/Earth;->nativeResolveAnchorOnRooftopAsync(JJDDDFFFFLcom/google/ar/core/ResolveAnchorOnRooftopFuture$CallbackWrapper;)[J

    move-result-object v0

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

    :goto_16
    move-wide/from16 p4, v5

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_17
    move/from16 v14, p10

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

    nop

    :goto_18
    move/from16 v12, p8

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_19
    aget-wide v5, v0, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1a
    move-object/from16 p0, v2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_f

    nop

    nop

    :goto_1e
    iget-object v1, v1, Lcom/google/ar/core/Earth;->session:Lcom/google/ar/core/Session;

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

    nop

    :goto_1f
    move/from16 v13, p9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return-object v2

    nop

    :goto_21
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct/range {p0 .. p5}, Lcom/google/ar/core/ResolveAnchorOnRooftopFuture;-><init>(Lcom/google/ar/core/Session;JJ)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move-object/from16 v15, p0

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

    :goto_25
    move/from16 v11, p7

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move-object/from16 v16, v0

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_14

    nop

    nop

    :goto_29
    move-object/from16 v16, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

    nop

    nop

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

    :goto_2b
    const/4 v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2c
    move-wide/from16 v5, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2d
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {v2, v1, v0}, Lcom/google/ar/core/ResolveAnchorOnRooftopFuture$CallbackWrapper;-><init>(Lcom/google/ar/core/Session;Ljava/util/function/BiConsumer;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop
.end method

.method public resolveAnchorOnTerrain(DDDFFFF)Lcom/google/ar/core/Anchor;
    .locals 17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v3, v15, Lcom/google/ar/core/Earth;->nativeHandle:J

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

    :goto_1
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v14, Lcom/google/ar/core/Anchor;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object/from16 v0, p0

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
    move-wide/from16 v5, p1

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
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    move-object/from16 v16, v14

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-wide/from16 v7, p3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-wide/from16 v9, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

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

    :goto_b
    const v1, 0xf

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    move/from16 v11, p7

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_e
    move/from16 v13, p9

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

    :goto_f
    invoke-direct {v3, v0, v1, v2}, Lcom/google/ar/core/Anchor;-><init>(JLcom/google/ar/core/Session;)V

    goto/32 :goto_17

    nop

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

    goto/32 :goto_19

    nop

    nop

    :goto_11
    iget-wide v1, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    :goto_12
    invoke-direct/range {v0 .. v14}, Lcom/google/ar/core/Earth;->nativeResolveAnchorOnTerrain(JJDDDFFFF)J

    move-result-wide v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v2, v15, Lcom/google/ar/core/Earth;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    move-object/from16 v15, p0

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_15
    move/from16 v12, p8

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_16
    move/from16 v14, p10

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_17
    return-object v3

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_19
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

    :goto_1a
    move-object/from16 v3, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1b
    iget-object v0, v15, Lcom/google/ar/core/Earth;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public resolveAnchorOnTerrainAsync(DDDFFFFLjava/util/function/BiConsumer;)Lcom/google/ar/core/ResolveAnchorOnTerrainFuture;
    .locals 17

    goto/32 :goto_2d

    nop

    nop

    :goto_0
    move-object/from16 v16, v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1c

    nop

    nop

    :goto_2
    iget-object v1, v1, Lcom/google/ar/core/Earth;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object/from16 p1, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_4
    aget-wide v5, v0, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_5
    goto :goto_1

    nop

    nop

    :goto_6
    goto/32 :goto_17

    nop

    nop

    :goto_7
    move-wide/from16 p4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_9
    invoke-direct {v2, v1, v0}, Lcom/google/ar/core/ResolveAnchorOnTerrainFuture$CallbackWrapper;-><init>(Lcom/google/ar/core/Session;Ljava/util/function/BiConsumer;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move/from16 v12, p8

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_b
    move-object/from16 v15, v16

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

    :goto_c
    move-wide/from16 v9, p5

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_d
    invoke-direct/range {p0 .. p5}, Lcom/google/ar/core/ResolveAnchorOnTerrainFuture;-><init>(Lcom/google/ar/core/Session;JJ)V

    goto/32 :goto_26

    nop

    nop

    :goto_e
    goto/32 :goto_27

    nop

    :goto_f
    goto/32 :goto_18

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_11
    iget-wide v1, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v5, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_13
    move/from16 v11, p7

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-wide v3, v15, Lcom/google/ar/core/Earth;->nativeHandle:J

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move-wide/from16 v5, p1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-object/from16 v15, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_19
    move-wide/from16 p2, v3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1a
    iget-object v1, v15, Lcom/google/ar/core/Earth;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1b
    new-instance v2, Lcom/google/ar/core/ResolveAnchorOnTerrainFuture$CallbackWrapper;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1c
    iget-object v0, v15, Lcom/google/ar/core/Earth;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1d
    move-object/from16 v1, p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    move-object/from16 v0, p11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct/range {v0 .. v15}, Lcom/google/ar/core/Earth;->nativeResolveAnchorOnTerrainAsync(JJDDDFFFFLcom/google/ar/core/ResolveAnchorOnTerrainFuture$CallbackWrapper;)[J

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_20
    move-object/from16 p0, v2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_21
    move-wide/from16 v7, p3

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_22
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

    :goto_23
    aget-wide v3, v0, v3

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_24
    move/from16 v14, p10

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_25
    move/from16 v13, p9

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_26
    return-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_28
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2a
    new-instance v2, Lcom/google/ar/core/ResolveAnchorOnTerrainFuture;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2c
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2d
    const v0, 0x20

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2e
    move-object/from16 v16, v2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public setLocalizationPerformanceMode(Lcom/google/ar/core/Earth$LocalizationPerformanceMode;)V
    .locals 7

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xa

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

    :goto_1
    iget-object v0, p0, Lcom/google/ar/core/Earth;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_3
    iget-wide v4, p0, Lcom/google/ar/core/Earth;->nativeHandle:J

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

    nop

    :goto_5
    goto/32 :goto_f

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    iget v6, p1, Lcom/google/ar/core/Earth$LocalizationPerformanceMode;->nativeCode:I

    nop

    goto/32 :goto_a

    nop

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

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    :goto_a
    move-object v1, p0

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
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/Earth;->nativeSetLocalizationPerformanceMode(JJI)V

    goto/32 :goto_c

    nop

    nop

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

    :goto_e
    goto/32 :goto_d

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public setNetworkClient(Lcom/google/ar/core/EarthNetworkClientInterface;)V
    .locals 7

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v6, p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_2
    iget-wide v4, p0, Lcom/google/ar/core/Earth;->nativeHandle:J

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/ar/core/Earth;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

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
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/Earth;->nativeSetNetworkClient(JJLcom/google/ar/core/EarthNetworkClientInterface;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

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

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    :goto_d
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method
