.class public Lcom/google/googlex/gcam/lasagna/LasagnaInputParamsImpl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltcx;


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    sput-object v0, Lcom/google/googlex/gcam/lasagna/LasagnaInputParamsImpl;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(JJJJLjava/util/List;I)V
    .locals 18

    goto/32 :goto_22

    nop

    nop

    :goto_0
    move v0, v1

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_1
    iput-wide v4, v0, Lcom/google/googlex/gcam/lasagna/LasagnaInputParamsImpl;->b:J

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_29

    nop

    nop

    :goto_4
    cmp-long v0, p1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move/from16 v16, p10

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-wide/from16 v8, p5

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_7
    cmp-long v0, p7, v2

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0, v4}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move v0, v1

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_a
    check-cast v6, Ltcv;

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_b
    move v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_d
    move v0, v1

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_e
    move/from16 v0, v17

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_10
    new-array v13, v0, [J

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_11
    new-array v14, v0, [J

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-wide/from16 v4, p1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move/from16 v4, v17

    nop

    nop

    :goto_14
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v4, "shotMetadataPtr is 0."

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_43

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_19
    move-object/from16 v5, p9

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move-wide/from16 v6, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v0, v4}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    :goto_20
    new-array v12, v0, [J

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_23
    const-string v4, "shotParamsPtr is 0."

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v0

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

    nop

    :goto_25
    aput-wide v7, v14, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_26
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_2
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    cmp-long v0, p5, v2

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    aput-wide v7, v12, v4

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4e

    nop

    nop

    :goto_2a
    const-string v0, "alloc() failed!"

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2b
    aput-wide v7, v13, v4

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2d
    iget-wide v7, v7, Lcom/google/googlex/gcam/SpatialGainMap;->a:J

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

    :goto_2e
    invoke-static {v7}, Lcom/google/googlex/gcam/RawWriteView;->e(Lcom/google/googlex/gcam/RawWriteView;)J

    move-result-wide v7

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

    nop

    nop

    :goto_2f
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v1, v0}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_33
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_34
    aput-object v6, v15, v4

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_35
    cmp-long v0, p3, v2

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v1, 0x1

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

    :goto_37
    iget-object v7, v6, Ltcv;->c:Lcom/google/googlex/gcam/SpatialGainMap;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_38
    invoke-static {}, Lcom/google/googlex/gcam/lasagna/LasagnaInputParamsImpl;->init()V

    :goto_39
    goto/32 :goto_4a

    nop

    nop

    :goto_3a
    invoke-static/range {v4 .. v16}, Lcom/google/googlex/gcam/lasagna/LasagnaInputParamsImpl;->alloc(JJJJ[J[J[J[Ljava/lang/Runnable;I)J

    move-result-wide v4

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_3b
    move-wide/from16 v10, p7

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3d
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3e
    invoke-static {v0, v4}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_3f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_40
    move/from16 v0, v17

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    move/from16 v1, v17

    nop

    :goto_43
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_44
    iget-object v7, v6, Ltcv;->a:Lcom/google/googlex/gcam/RawWriteView;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v6, v6, Ltcv;->d:Ljava/lang/Runnable;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const-string v4, "staticMetadataPtr is 0."

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_47
    if-lez v0, :cond_4

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2

    nop

    :goto_48
    new-array v15, v0, [Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_49
    iget-object v7, v6, Ltcv;->b:Lcom/google/googlex/gcam/FrameMetadata;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const-wide/16 v2, 0x0

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

    :goto_4b
    const/16 v17, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_4c
    goto :goto_41

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_4e
    sget-object v0, Lcom/google/googlex/gcam/lasagna/LasagnaInputParamsImpl;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto :goto_57

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_53
    cmp-long v0, v4, v2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_54
    invoke-static {v7}, Lcom/google/googlex/gcam/FrameMetadata;->c(Lcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v7

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_55
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_56
    move/from16 v0, v17

    nop

    :goto_57
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-static {v0, v4}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_59
    const-string v4, "rawImagePlanarReadView16Ptr is 0."

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_5a
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    return-void

    nop

    :goto_5c
    goto/32 :goto_21

    nop

    nop

    :goto_5d
    if-lt v4, v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_7
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5e
    move/from16 v0, v17

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop
.end method

.method private static native alloc(JJJJ[J[J[J[Ljava/lang/Runnable;I)J
.end method

.method private static native dealloc(J)V
.end method

.method private static native init()V
.end method


# virtual methods
.method public final declared-synchronized a()J
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/lasagna/LasagnaInputParamsImpl;->b:J

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-wide v0

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

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

    :goto_8
    goto/32 :goto_4

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
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
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

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/lasagna/LasagnaInputParamsImpl;->b:J

    nop

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/lasagna/LasagnaInputParamsImpl;->dealloc(J)V

    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    iput-wide v0, p0, Lcom/google/googlex/gcam/lasagna/LasagnaInputParamsImpl;->b:J

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

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

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    throw v0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

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

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method
