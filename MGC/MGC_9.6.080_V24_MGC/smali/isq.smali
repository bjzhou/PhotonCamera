.class public Lisq;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Ltxm;

.field public final c:Lhoh;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1
    const/4 v4, 0x0

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
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v0, Lisq;->a:Lsdb;

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

    :goto_5
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    const/16 v3, 0x1f9

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    const-string v0, "isq"

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v3, v4, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    check-cast v0, Lsdb;

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

    :goto_d
    const v0, 0x6

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
    const v1, 0x1d

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    new-array v1, v1, [Ljava/lang/Object;

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

    :goto_11
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    aput-object v0, v1, v3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop
.end method

.method public constructor <init>(Ltxm;Lhoh;)V
    .locals 0

    goto/32 :goto_1

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lisq;->b:Ltxm;

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

    :goto_3
    iput-object p2, p0, Lisq;->c:Lhoh;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static final a(Ljava/lang/String;Lcom/google/googlex/gcam/PortraitRequest;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 14

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_ae_results_get(JLcom/google/googlex/gcam/PortraitRequest;)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

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

    nop

    :goto_2
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    move-object v2, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-wide v4, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    new-instance v6, Lcom/google/googlex/gcam/SpatialGainMap;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/gcam/ShotMetadata;->f()Lcom/google/googlex/gcam/StaticMetadata;

    move-result-object v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v1, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_frame_metadata_get(JLcom/google/googlex/gcam/PortraitRequest;)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1e

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v2, v0, v1, v13}, Lcom/google/googlex/gcam/StringSpatialGainMap;-><init>(JZ)V

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    new-instance v2, Lcom/google/googlex/gcam/StringSpatialGainMap;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2a

    nop

    nop

    :goto_10
    invoke-direct {v2, v0, v1, v13}, Lcom/google/googlex/gcam/StringFrameMetadataMap;-><init>(JZ)V

    :goto_11
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static/range {v0 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->StringSpatialGainMap_set(JLcom/google/googlex/gcam/StringSpatialGainMap;Ljava/lang/String;JLcom/google/googlex/gcam/SpatialGainMap;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    move-object v7, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_14
    cmp-long v2, v0, v10

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_15
    invoke-direct {v12, v0, v1, v13}, Lcom/google/googlex/gcam/InterleavedImageF;-><init>(JZ)V

    :goto_16
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_17
    move-object/from16 v9, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_19
    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_1a
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz v6, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v12}, Lcom/google/googlex/gcam/InterleavedImageF;->a(Lcom/google/googlex/gcam/InterleavedImageF;)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v6, v0, v1}, Lcom/google/googlex/gcam/SpatialGainMap;-><init>(J)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_1f
    const-wide/16 v10, 0x0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_20
    cmp-long v3, v0, v10

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_21
    move-object v3, p0

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_22
    cmp-long v2, v0, v10

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v0, v1, v12}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_SpatialGainMap__SWIG_1(JLcom/google/googlex/gcam/InterleavedImageF;)J

    move-result-wide v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move-object v2, v12

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move-object v8, p1

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

    :goto_26
    move-object v2, v12

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_27
    goto/16 :goto_16

    nop

    :goto_28
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, p0, v1}, Lcom/google/googlex/gcam/StringStaticMetadataMap;->b(Ljava/lang/String;Lcom/google/googlex/gcam/StaticMetadata;)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_2a
    iget-wide v3, v6, Lcom/google/googlex/gcam/AeResults;->a:J

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/gcam/ShotMetadata;->d()Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object v0

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_2c
    if-eqz v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v2, p0, v0}, Lcom/google/googlex/gcam/StringFrameMetadataMap;->b(Ljava/lang/String;Lcom/google/googlex/gcam/FrameMetadata;)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v12, 0x0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    new-instance v2, Lcom/google/googlex/gcam/StringAeResultsMap;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-wide v0, v2, Lcom/google/googlex/gcam/StringAeResultsMap;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_31
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_33
    new-instance v12, Lcom/google/googlex/gcam/InterleavedImageF;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_34
    move-wide v4, v3

    nop

    :goto_35
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_11

    nop

    nop

    :goto_37
    goto/32 :goto_4c

    nop

    nop

    :goto_38
    invoke-static/range {v0 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->StringAeResultsMap_set(JLcom/google/googlex/gcam/StringAeResultsMap;Ljava/lang/String;JLcom/google/googlex/gcam/AeResults;)V

    goto/32 :goto_4b

    nop

    nop

    :goto_39
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/gcam/ShotMetadata;->c()Lcom/google/googlex/gcam/AeResults;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-wide v0, v9, Lcom/google/googlex/gcam/ShotMetadata;->a:J

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-direct {v2, v0, v1, v13}, Lcom/google/googlex/gcam/StringAeResultsMap;-><init>(JZ)V

    :goto_3d
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_3e
    move-object v3, p0

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

    :goto_3f
    goto :goto_3d

    nop

    nop

    :goto_40
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-wide v0, v8, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_42
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p1}, Lcom/google/googlex/gcam/PortraitRequest;->b()Lcom/google/googlex/gcam/StringStaticMetadataMap;

    move-result-object v0

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

    :goto_44
    iget-wide v4, v6, Lcom/google/googlex/gcam/SpatialGainMap;->a:J

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-wide v0, v2, Lcom/google/googlex/gcam/StringSpatialGainMap;->a:J

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_46
    cmp-long v2, v0, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_48
    if-eqz v2, :cond_4

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {v0, v1, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_gain_map_get(JLcom/google/googlex/gcam/PortraitRequest;)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4a
    if-eqz v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_4b
    iget-wide v0, v8, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4c
    new-instance v2, Lcom/google/googlex/gcam/StringFrameMetadataMap;

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

    :goto_4d
    invoke-static {v0, v1, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotMetadata_gain_map_rggb_get(JLcom/google/googlex/gcam/ShotMetadata;)J

    move-result-wide v0

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

    nop

    :goto_4e
    iget-wide v0, v8, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop
.end method
