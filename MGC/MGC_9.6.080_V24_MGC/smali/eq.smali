.class final Leq;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Leq;


# instance fields
.field public b:J

.field public c:J

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a(JDD)V
    .locals 19

    goto/32 :goto_9

    nop

    nop

    :goto_0
    div-double/2addr v7, v9

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_1
    const-wide v9, 0x4194997000000000L    # 8.64E7

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

    :goto_2
    mul-double/2addr v7, v9

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-double/2addr v3, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    neg-double v11, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-float/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_6
    add-long v1, p1, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    const v1, 0xe

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

    :goto_8
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v1, v0, Leq;->b:J

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    cmpl-double v2, v7, v2

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    mul-double/2addr v7, v9

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_e
    long-to-float v1, v1

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_f
    add-double/2addr v1, v13

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_10
    move-wide/from16 v11, p5

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_12
    if-lez v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    :cond_0
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    mul-float/2addr v2, v9

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-long/2addr v1, v11

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_18
    if-gtz v1, :cond_1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1b
    move v3, v4

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-wide v11, 0x3ed5f61cc0000000L    # 5.236000106378924E-6

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

    :goto_1e
    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_1f
    const-wide/16 v1, -0x1

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_20
    float-to-double v1, v1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-double/2addr v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_22
    goto/16 :goto_53

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    div-double/2addr v5, v7

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

    :goto_25
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_26
    add-long/2addr v7, v11

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/high16 v9, 0x40400000    # 3.0f

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

    :goto_28
    sub-double/2addr v1, v11

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_29
    const v2, 0x4ca4cb80    # 8.64E7f

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

    :goto_2a
    add-double/2addr v1, v11

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

    :goto_2b
    const-wide v7, 0x3fda31a380000000L    # 0.4092797040939331

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    sub-double/2addr v1, v5

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    cmp-long v1, v1, p1

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const-wide v13, 0x4076800000000000L    # 360.0

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_2f
    const-wide v15, 0x3f75b573eab367a1L    # 0.0053

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_30
    add-float/2addr v1, v2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_31
    move-object/from16 v0, p0

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_32
    const-wide v7, -0x4045311600000000L    # -0.10471975803375244

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_33
    mul-double/2addr v5, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const-wide v5, 0x400921fb54442d18L    # Math.PI

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    add-double v5, v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_36
    mul-double/2addr v9, v2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_37
    add-float/2addr v1, v2

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_39
    mul-double v15, v15, v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_3a
    const v3, 0x40c7ae92

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3b
    mul-double v9, v9, p3

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

    :goto_3c
    if-gez v2, :cond_2

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

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    add-double/2addr v3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    add-float v7, v2, v2

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_3f
    double-to-float v5, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

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

    :goto_41
    add-int v0, v0, v1

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_42
    iput-wide v7, v0, Leq;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_43
    const/4 v4, 0x0

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

    :goto_44
    const-wide v9, 0x3f91df46a0000000L    # 0.01745329238474369

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_45
    add-double/2addr v3, v7

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

    :goto_46
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    float-to-double v9, v2

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_48
    float-to-double v7, v7

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_49
    invoke-static {v7, v8}, Ljava/lang/Math;->acos(D)D

    move-result-wide v5

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_4a
    const-wide v11, 0xdc6d62da00L

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_4b
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_4c
    add-double/2addr v3, v5

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_4d
    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_4e
    iput-wide v1, v0, Leq;->c:J

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    mul-double/2addr v2, v7

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    add-double v7, v1, v5

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_51
    const-wide v7, -0x4083bcd35a858794L    # -0.0069

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_52
    move v3, v4

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_58

    nop

    nop

    :goto_54
    mul-double/2addr v9, v11

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

    :goto_55
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    div-float/2addr v1, v2

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_57
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iput v3, v0, Leq;->d:I

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_59
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_5b
    mul-double/2addr v1, v9

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_5c
    const v2, 0x3a6bedfa    # 9.0E-4f

    nop

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

    :goto_5d
    mul-double/2addr v13, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    cmp-long v1, v1, p1

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

    :goto_5f
    cmpg-double v2, v7, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    float-to-double v3, v2

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_61
    const-wide v1, -0xdc6d62da00L

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_62
    iput-wide v1, v0, Leq;->b:J

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_64
    float-to-double v5, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_65
    sub-double/2addr v7, v15

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_66
    const v2, 0x3c8ceb25

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_67
    long-to-float v1, v1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_68
    const-wide v5, 0x3ffcbed85e1ce332L    # 1.796593063

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iput-wide v1, v0, Leq;->c:J

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_6a
    if-ltz v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6b
    mul-float/2addr v2, v1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_6c
    iput v3, v0, Leq;->d:I

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_6d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_6e
    mul-double/2addr v5, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    const-wide v7, 0x401921fb54442d18L    # 6.283185307179586

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_70
    return-void

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    const v2, -0x45941206    # -9.0E-4f

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_73
    div-double/2addr v11, v13

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_74
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_14

    nop

    :goto_75
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_76
    add-double/2addr v1, v5

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_77
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

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

    :goto_78
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

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

    :goto_79
    float-to-double v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_7a
    const-wide v9, 0x3f36e05b00000000L    # 3.4906598739326E-4

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

    :goto_7b
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

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

    :goto_7c
    const-wide v7, 0x3fa11c5fc0000000L    # 0.03341960161924362

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop
.end method
