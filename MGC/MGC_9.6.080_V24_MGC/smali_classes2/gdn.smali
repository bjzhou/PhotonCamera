.class public final synthetic Lgdn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lgdp;

.field public final synthetic b:[F

.field public final synthetic c:Lqiu;

.field public final synthetic d:Lqjs;


# direct methods
.method public synthetic constructor <init>(Lgdp;[FLqiu;Lqjs;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lgdn;->c:Lqiu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lgdn;->b:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iput-object p1, p0, Lgdn;->a:Lgdp;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    iput-object p4, p0, Lgdn;->d:Lqjs;

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


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 17

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_1
    double-to-float v2, v10

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v9, Lgdo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_4
    sub-int v12, v2, v11

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_5
    iget-object v1, v3, Lgdp;->i:Liof;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    aput v2, v10, v5

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_9
    add-float v12, v2, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    mul-int/lit8 v10, v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x17

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v10, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    mul-int/2addr v11, v2

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_f
    move v14, v5

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v10, v3, Lgdp;->f:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v1, v1, Liof;->b:Ljava/lang/Object;

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

    :goto_13
    add-int v12, v11, v11

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_14
    const/high16 v6, 0x41200000    # 10.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_16
    add-int v12, v11, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v11, v0, Lgdn;->b:[F

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_18
    add-int v8, v2, v2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_19
    goto/16 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_1a
    const/4 v10, 0x0

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_1b
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_97

    nop

    nop

    :goto_1c
    iget-object v8, v3, Lgdp;->f:[F

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1d
    div-float/2addr v11, v8

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    mul-float/2addr v4, v6

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1}, Lcom/google/ar/core/Plane;->getCenterPose()Lcom/google/ar/core/Pose;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_20
    add-int/lit8 v2, v1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v10, v12}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget v11, v9, Lqka;->e:I

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_23
    mul-float/2addr v2, v4

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_25
    iget-object v10, v3, Lgdp;->f:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    div-int/2addr v1, v6

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_27
    div-int/lit8 v12, v1, 0x2

    nop

    nop

    nop

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
    invoke-virtual {v10, v13}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v1}, Lcom/google/ar/core/Plane;->getPolygon()Ljava/nio/FloatBuffer;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sget v4, Lgdp;->b:F

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2b
    add-int/lit8 v11, v11, 0x1

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_2c
    iget-object v9, v3, Lgdp;->e:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_2d
    move v11, v7

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v1}, Lcom/google/ar/core/Plane;->hashCode()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    nop

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

    nop

    :goto_31
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_32
    move-object v1, v0

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v9}, Lqjy;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_35
    double-to-float v2, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_37
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    move v11, v5

    nop

    :goto_39
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    int-to-short v12, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3b
    invoke-static {v11, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_3c
    const v0, 0x2

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3d
    const v14, 0x8892

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_3e
    invoke-virtual {v10, v7}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    div-float/2addr v12, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/4 v6, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_41
    iget-object v10, v3, Lgdp;->f:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v0, v0, Lgdn;->d:Lqjs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_43
    const/high16 v11, -0x41000000    # -0.5f

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_44
    move-object/from16 v1, p1

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_45
    aput v2, v8, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_46
    iget v2, v9, Lqka;->c:I

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    int-to-short v12, v12

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_48
    double-to-float v2, v10

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

    :goto_49
    invoke-virtual {v1}, Lcom/google/ar/core/Plane;->getCenterPose()Lcom/google/ar/core/Pose;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_4a
    mul-float/2addr v2, v6

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v10, v8}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const/4 v14, 0x0

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

    :goto_4d
    aput v2, v10, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_4e
    return-void

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_2e

    nop

    nop

    :goto_50
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_51
    add-int/2addr v12, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_52
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_90

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_6e

    nop

    nop

    :goto_55
    invoke-direct {v9, v10, v8, v2}, Lgdo;-><init>(Ljava/nio/FloatBuffer;FF)V

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_53

    nop

    :goto_57
    new-array v13, v7, [Lqgr;

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    add-int/lit8 v14, v14, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const/4 v12, 0x0

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_5a
    if-lt v11, v12, :cond_2

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_5b
    int-to-short v8, v8

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

    nop

    :goto_5c
    if-lt v11, v1, :cond_3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    :goto_5d
    invoke-virtual {v2, v7, v4, v6, v5}, Lcom/google/ar/core/Pose;->getTransformedAxis(IF[FI)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v11, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v11

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    new-instance v9, Lqjy;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v10, v12}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_61
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v1}, Lcom/google/ar/core/Plane;->getExtentZ()F

    move-result v8

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_63
    mul-float/2addr v2, v4

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_64
    add-int/2addr v12, v7

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_65
    mul-float/2addr v2, v8

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v12, v9, Lqka;->d:Lqgr;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v10, v12}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v9}, Lqjy;->close()V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_69
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    float-to-double v8, v2

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_6b
    mul-float/2addr v2, v6

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

    :goto_6c
    if-lt v14, v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    add-float/2addr v11, v8

    nop

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

    nop

    :goto_6e
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    filled-new-array {v11}, [I

    move-result-object v12

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_70
    rem-int/2addr v1, v6

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_71
    add-int/2addr v12, v7

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_72
    const v8, 0x3e1374bc    # 0.144f

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_73
    iget-object v3, v0, Lgdn;->a:Lgdp;

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_74
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_75
    int-to-short v12, v12

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_76
    aput-object v12, v13, v5

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_77
    invoke-static {v1, v14, v11}, Lqhm;->b(Lqht;ILjava/nio/ByteBuffer;)Lqhm;

    move-result-object v1

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_78
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    iget-object v13, v3, Lgdp;->d:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :goto_7b
    goto/32 :goto_12

    nop

    nop

    :goto_7c
    add-int v0, v0, v1

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_7d
    move-object v2, v0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_7e
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v6, v3, Lgdp;->g:[F

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    add-int/2addr v12, v7

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_81
    const/4 v4, 0x3

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_82
    invoke-direct {v9, v1, v13, v12, v2}, Lqjy;-><init>(Lqhm;[Lqgr;[II)V

    :try_start_1
    iget-object v1, v3, Lgdp;->i:Liof;

    nop

    nop

    iget-object v1, v1, Liof;->b:Ljava/lang/Object;

    nop

    nop

    invoke-virtual {v10}, Ljava/nio/ShortBuffer;->array()[S

    move-result-object v2

    nop

    nop

    nop

    invoke-static {v1, v2}, Lqjb;->b(Lqht;[S)Lqjb;

    move-result-object v1

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget v2, v1, Lqjb;->b:I

    nop

    nop

    nop

    nop

    nop

    if-lt v2, v4, :cond_5

    nop

    move v2, v7

    nop

    nop

    nop

    nop

    goto :goto_83

    nop

    nop

    nop

    :cond_5
    move v2, v5

    nop

    nop

    nop

    :goto_83
    invoke-static {v2}, La;->au(Z)V

    new-instance v2, Lqxk;

    nop

    nop

    nop

    nop

    const/4 v10, 0x5

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v10, v9, v1}, Lqxk;-><init>(ILqjy;Lqjb;)V

    iget-object v10, v3, Lgdp;->h:Lqjs;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v10}, Lqxk;->b(Lqjs;)Lqio;

    move-result-object v2

    nop

    nop

    nop

    nop

    const-string v10, "a_XZPositionAlpha"

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v10, v5}, Lqio;->b(Ljava/lang/String;I)V

    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    nop

    sget-object v12, Lcom/google/android/apps/camera/ui/eduimageview/JrT/cUhjhcVVea;->qrjKE:Ljava/lang/String;

    nop

    nop

    sget-object v10, Lgdp;->a:[F

    nop

    nop

    aget v13, v10, v5

    nop

    nop

    nop

    nop

    aget v14, v10, v7

    nop

    nop

    nop

    aget v15, v10, v6

    nop

    aget v16, v10, v4

    nop

    nop

    nop

    nop

    nop

    move-object v11, v2

    nop

    invoke-virtual/range {v11 .. v16}, Lqio;->i(Ljava/lang/String;FFFF)V

    const-string v4, "u_Texture"

    nop

    nop

    nop

    nop

    iget-object v10, v3, Lgdp;->c:Lqjv;

    nop

    invoke-virtual {v2, v4, v10}, Lqio;->d(Ljava/lang/String;Lqjv;)V

    const-string v4, "u_Model"

    nop

    nop

    iget-object v10, v3, Lgdp;->d:[F

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, [F->clone()Ljava/lang/Object;

    move-result-object v10

    nop

    check-cast v10, [F

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v4, v10}, Lqio;->f(Ljava/lang/String;[F)V

    const-string v4, "u_ModelViewProjection"

    nop

    nop

    nop

    nop

    nop

    iget-object v10, v3, Lgdp;->e:[F

    nop

    nop

    nop

    invoke-virtual {v10}, [F->clone()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    check-cast v10, [F

    nop

    nop

    invoke-virtual {v2, v4, v10}, Lqio;->f(Ljava/lang/String;[F)V

    iget-object v4, v3, Lgdp;->f:[F

    nop

    invoke-virtual {v4}, [F->clone()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, [F

    nop

    const-string v10, "u_PlaneUvMatrix"

    nop

    iget-object v11, v2, Lqio;->e:Ljava/util/Map;

    nop

    nop

    nop

    nop

    new-instance v12, Lqik;

    nop

    nop

    invoke-direct {v12, v4, v5}, Lqik;-><init>([FI)V

    invoke-interface {v11, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "u_Normal"

    nop

    nop

    nop

    iget-object v3, v3, Lgdp;->g:[F

    nop

    nop

    nop

    nop

    nop

    aget v5, v3, v5

    nop

    aget v7, v3, v7

    nop

    nop

    aget v3, v3, v6

    nop

    invoke-virtual {v2, v4, v5, v7, v3}, Lqio;->h(Ljava/lang/String;FFF)V

    const-string v3, "u_ExternalTex"

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3, v8}, Lqio;->c(Ljava/lang/String;Lqiu;)V

    const-string v3, "u_ExternalTexSize"

    nop

    invoke-virtual {v8}, Lqiu;->g()Lqhe;

    move-result-object v4

    nop

    nop

    nop

    iget-object v4, v4, Lqhe;->a:Lqfd;

    nop

    invoke-virtual {v4}, Lqfe;->b()I

    move-result v4

    nop

    int-to-float v4, v4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Lqiu;->g()Lqhe;

    move-result-object v5

    nop

    nop

    iget-object v5, v5, Lqhe;->a:Lqfd;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lqfe;->a()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    int-to-float v5, v5

    nop

    nop

    nop

    invoke-virtual {v2, v3, v4, v5}, Lqio;->g(Ljava/lang/String;FF)V

    invoke-virtual {v2, v0}, Lqio;->n(Lqjs;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1}, Lqjb;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_84
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_85
    add-int/lit8 v11, v11, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-static/range {v9 .. v14}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_87
    double-to-float v2, v10

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    move-object v2, v0

    nop

    nop

    nop

    :try_start_4
    invoke-virtual {v1}, Lqjb;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-static {v10}, Ljava/nio/ShortBuffer;->allocate(I)Ljava/nio/ShortBuffer;

    move-result-object v10

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {v9, v14, v11}, Lqka;->a(ILjava/nio/ByteBuffer;)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-static {v12, v2}, Ljava/lang/Math;->max(FF)F

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_8c
    div-int/lit8 v11, v11, 0x8

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_8d
    move-object v1, v0

    nop

    nop

    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8e
    throw v2

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    nop

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

    :goto_8f
    throw v1

    nop

    nop

    nop

    :goto_90
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iget-object v8, v0, Lgdn;->c:Lqiu;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

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

    :goto_93
    int-to-short v1, v12

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    mul-int/lit8 v11, v11, 0x20

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_95
    int-to-short v13, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_96
    iget-object v4, v3, Lgdp;->d:[F

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    add-int/2addr v12, v12

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_98
    invoke-virtual {v2, v4, v5}, Lcom/google/ar/core/Pose;->toMatrix([FI)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_99
    neg-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {v1}, Lcom/google/ar/core/Plane;->getExtentX()F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_9b
    check-cast v1, Lcom/google/ar/core/Plane;

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

    nop

    nop

    :goto_9c
    add-int/2addr v12, v12

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    aput v2, v10, v7

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {v1}, Lcom/google/ar/core/Plane;->getPolygon()Ljava/nio/FloatBuffer;

    move-result-object v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

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
