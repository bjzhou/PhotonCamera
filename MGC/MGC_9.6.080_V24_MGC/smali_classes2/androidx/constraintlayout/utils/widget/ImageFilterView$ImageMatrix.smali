.class Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;
.super Ljava/lang/Object;
.source "ImageFilterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/utils/widget/ImageFilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageMatrix"
.end annotation


# instance fields
.field m:[F

.field mBrightness:F

.field mColorMatrix:Landroid/graphics/ColorMatrix;

.field mContrast:F

.field mSaturation:F

.field mTmpColorMatrix:Landroid/graphics/ColorMatrix;

.field mWarmth:F


# direct methods
.method private 325698a4ed223877bc75ffcc057d98a3m(F)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "warmth"
        }
    .end annotation

    goto/32 :goto_26

    nop

    nop

    :goto_0
    const/16 v8, 0xd

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

    :goto_1
    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v9

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2
    cmpl-float v7, v5, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_3
    aput v2, v6, v8

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_90

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-wide v8, 0x3fb354f0e0000000L

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_7
    aput v11, v6, v8

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_8
    cmpl-float v6, v4, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_9
    const/16 v8, 0xf

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_a
    sub-float v12, v8, v10

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_b
    const v16, 0x42c6f10d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_c
    mul-float v1, v1, v16

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v11, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    nop

    goto/32 :goto_57

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

    goto/32 :goto_b8

    nop

    nop

    :goto_f
    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_10
    aput v11, v6, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_11
    double-to-float v2, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_12
    aput v11, v6, v8

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

    nop

    :goto_13
    const v10, 0x43211e9c

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    const/high16 v4, 0x42c80000    # 100.0f

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_15
    cmpl-float v8, v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_16
    float-to-double v8, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_17
    const/16 v8, 0xe

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

    :goto_18
    const/4 v8, 0x4

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    mul-float/2addr v11, v13

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

    nop

    :goto_1a
    mul-float/2addr v2, v10

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_1b
    aput v11, v6, v8

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-wide v11, -0x403ef32580000000L    # -0.13320475816726685

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v8, 0x6

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_1e
    if-ltz v6, :cond_0

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1f
    div-float/2addr v2, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_20
    aput v11, v6, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_21
    const/high16 v11, 0x437f0000    # 255.0f

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

    :goto_22
    mul-float v8, v8, v16

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v8, 0x5

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_24
    sub-float v7, v5, v12

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v1, 0xf

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_26
    const v0, 0x15

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-lez v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move/from16 v19, v12

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_29
    mul-float v6, v6, v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v11, v15}, Ljava/lang/Math;->min(FF)F

    move-result v1

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_90

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const v13, 0x43a4d970

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/high16 v11, 0x437f0000    # 255.0f

    nop

    nop

    :goto_2f
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sub-float v7, v5, v14

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_31
    sub-float/2addr v7, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v8, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto :goto_2f

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v8, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_36
    if-gtz v8, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_2
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    aput v11, v6, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_38
    if-ltz v7, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    float-to-double v12, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_3a
    double-to-float v7, v7

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_3c
    const v0, 0x459c4000    # 5000.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_3e
    aput v7, v6, v8

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v14

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_40
    double-to-float v1, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_41
    aput v11, v6, v8

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    move/from16 p1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_43
    move/from16 v2, p1

    nop

    nop

    :goto_44
    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_45
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_46
    mul-float v7, v7, v17

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    move v7, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto :goto_4f

    nop

    :goto_49
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    aput v11, v6, v8

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

    :goto_4b
    const/4 v6, 0x0

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

    :goto_4c
    double-to-float v12, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_4d
    div-float/2addr v5, v10

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_4e
    const/high16 v1, 0x437f0000    # 255.0f

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    float-to-double v13, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_51
    const v10, 0x43900fa3

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_52
    const/4 v8, 0x7

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const/16 v8, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_54
    if-gtz v7, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_55
    sub-float v2, v1, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_56
    const v2, 0x3c23d70a    # 0.01f

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_57
    invoke-static {v2, v8}, Ljava/lang/Math;->max(FF)F

    move-result v12

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_58
    const/high16 v13, 0x437f0000    # 255.0f

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_59
    goto :goto_5c

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_5b
    const/high16 v7, 0x437f0000    # 255.0f

    nop

    nop

    :goto_5c
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    cmpg-float v7, v5, v6

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_5f
    aput v12, v6, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_60
    div-float v4, v3, v4

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_61
    const/high16 v12, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_62
    move/from16 p1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_63
    double-to-float v11, v11

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_64
    const/4 v8, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_65
    const/16 v8, 0x8

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    move-object/from16 v4, p0

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_67
    double-to-float v6, v13

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_68
    const/16 v8, 0x13

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_69
    const/4 v11, 0x0

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

    :goto_6a
    aput v11, v6, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    const/high16 v6, 0x41200000    # 10.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_6e
    const/16 v8, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    div-float v3, v0, v2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    return-void

    nop

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    const/high16 v18, 0x41980000    # 19.0f

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_73
    const v11, 0x439885bc

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_74
    mul-float/2addr v1, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_75
    aput v11, v6, v8

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-static {v12, v8}, Ljava/lang/Math;->max(FF)F

    move-result v10

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    move v3, v0

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    const/16 v8, 0xa

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_79
    const/16 v8, 0x12

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    sub-float v8, v4, v14

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    const/high16 v14, 0x42700000    # 60.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    const/4 v8, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    const/high16 v12, 0x41200000    # 10.0f

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    sub-float v6, v4, v6

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_7f
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

    nop

    :goto_80
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    :goto_81
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    const v17, 0x430a848a

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    const v8, 0x439885bc

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :goto_85
    float-to-double v10, v4

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_86
    cmpg-float v2, p1, v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_87
    const/16 v8, 0xc

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_88
    invoke-static {v13, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_8a
    aput v11, v6, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_8b
    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    double-to-float v8, v10

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    aput v5, v6, v8

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

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

    :goto_8f
    const/high16 v6, 0x437f0000    # 255.0f

    nop

    nop

    :goto_90
    goto/32 :goto_6b

    nop

    nop

    :goto_91
    const/high16 v6, 0x42840000    # 66.0f

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_92
    float-to-double v1, v5

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_93
    aput v11, v6, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_94
    float-to-double v14, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_95
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_96
    invoke-static {v11, v8}, Ljava/lang/Math;->max(FF)F

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_97
    aput v11, v6, v8

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    aput v11, v6, v8

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_99
    iget-object v6, v4, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->m:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_9a
    div-float v5, v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_9b
    if-gtz v7, :cond_5

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_24

    nop

    nop

    :goto_9c
    float-to-double v11, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_9d
    aput v11, v6, v8

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_9e
    invoke-static {v13, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    const/16 v8, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    move v2, v9

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_a3
    const-wide v11, -0x403ef32580000000L    # -0.13320475816726685

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_a4
    const/4 v8, 0x1

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    div-float/2addr v7, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_a6
    mul-float/2addr v12, v10

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_a7
    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    float-to-double v1, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    goto/32 :goto_3c

    nop

    nop

    :goto_ab
    move v5, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_ac
    goto/16 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    move/from16 v19, v12

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_af
    const v15, 0x43211e9c

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

    :goto_b0
    cmpl-float v7, v5, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b1
    double-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_b2
    if-gtz v6, :cond_6

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_b3
    sub-float/2addr v6, v8

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

    :goto_b4
    aput v11, v6, v8

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

    :goto_b5
    cmpg-float v6, v4, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_b6
    const/16 v8, 0x11

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_b7
    const-wide v14, 0x3fb354f0e0000000L

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_b8
    if-lez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_a9

    nop
.end method

.method private 782c9f6e9615a00957cc70ea85de17dfm(F)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "saturationStrength"
        }
    .end annotation

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_0
    add-float v10, v8, v3

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_1
    aput v8, v9, v10

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    mul-float v6, v0, v5

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

    :goto_3
    const/4 v10, 0x1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v10, 0x9

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

    :goto_5
    const/16 v10, 0xb

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x3e998c7e    # 0.2999f

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_8
    const/4 v12, 0x6

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_9
    move v3, p1

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

    :goto_a
    aput v11, v9, v10

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    :goto_c
    aput v6, v9, v10

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v10, 0x12

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_e
    aput v11, v9, v10

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    const/16 v10, 0xa

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_10
    aput v7, v9, v10

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

    :goto_11
    const/16 v10, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v10, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    aput v6, v9, v10

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

    :goto_14
    aput v4, v9, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_15
    aput v11, v9, v10

    nop

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

    :goto_16
    const/16 v10, 0x8

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_17
    aput v11, v9, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_18
    aput v11, v9, v10

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

    :goto_19
    return-void

    nop

    nop

    :goto_1a
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    aput v10, v9, v11

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

    :goto_1c
    const v2, 0x3de978d5    # 0.114f

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

    :goto_1d
    const/high16 v4, 0x3f800000    # 1.0f

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

    nop

    :goto_1e
    aput v7, v9, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1f
    const/4 v10, 0x4

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_20
    aput v10, v9, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v9, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->m:[F

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_23
    aput v11, v9, v10

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

    :goto_24
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

    nop

    :goto_25
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_27
    aput v11, v9, v10

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

    :goto_28
    mul-float v7, v1, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_29
    sub-float v5, v4, v3

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2a
    aput v10, v9, v12

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

    :goto_2b
    aput v11, v9, v4

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2c
    add-float v10, v6, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2d
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    aput v8, v9, v10

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_30
    const v1, 0x3f1645a2    # 0.587f

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

    :goto_31
    const/16 v12, 0xc

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

    :goto_32
    const/4 v11, 0x0

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v10, 0x3

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/16 v10, 0xf

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

    nop

    :goto_35
    const/16 v10, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_36
    const/16 v10, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v10, 0x2

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    mul-float v8, v2, v5

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_39
    const/4 v10, 0x5

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3a
    const/16 v4, 0x13

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3c
    const/16 v10, 0x10

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3d
    aput v11, v9, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3e
    aput v11, v9, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_3f
    add-float v10, v7, v3

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method private 8bc896a54627ae2462c31bf3fe2a17aam(F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x4

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1
    const/4 v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_3
    const/16 v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_5
    const/16 v1, 0xc

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

    :goto_6
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_7
    const/16 v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x1

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

    :goto_9
    goto/32 :goto_1d

    nop

    nop

    :goto_a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    aput v2, v0, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_c
    const/16 v1, 0x13

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aput v2, v0, v1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_e
    aput v2, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_10
    const/4 v1, 0x2

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

    :goto_11
    aput p1, v0, v1

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_12
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->m:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    aput v2, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_15
    aput v2, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v2, 0x0

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_17
    aput v2, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_18
    aput p1, v0, v1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_19
    aput v2, v0, v1

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

    :goto_1a
    const/16 v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1b
    const/16 v1, 0x8

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    :goto_1d
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    aput v2, v0, v1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    aput v2, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_20
    aput v2, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_22
    aput p1, v0, v1

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

    :goto_23
    const/16 v1, 0xb

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

    nop

    :goto_24
    const/4 v1, 0x6

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_25
    aput v2, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_26
    aput v2, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    aput v3, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/16 v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_29
    const/16 v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    aput v2, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2b
    const/16 v1, 0x9

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

    :goto_2c
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v1, 0x7

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

    :goto_2e
    aput v2, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_a

    nop

    :goto_30
    aput v2, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_31
    aput v2, v0, v1

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

    nop

    :goto_32
    const/16 v1, 0xd

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_33
    const v1, 0x10

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

    :goto_34
    const/16 v1, 0xa

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

    nop

    nop
.end method

.method constructor <init>()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mContrast:F

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

    :goto_1
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    const/16 v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-array v0, v0, [F

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->m:[F

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mWarmth:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mSaturation:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Landroid/graphics/ColorMatrix;

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
    new-instance v0, Landroid/graphics/ColorMatrix;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_d
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mBrightness:F

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method updateMatrix(Landroid/widget/ImageView;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    cmpl-float v3, v1, v2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v3, :cond_0

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

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v3, v1, v1, v1, v2}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->set([F)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x1

    nop

    nop

    :goto_8
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->m:[F

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v3, :cond_1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_31

    nop

    nop

    :goto_e
    invoke-virtual {v1, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x14

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_12
    cmpl-float v2, v1, v2

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_13
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

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

    :goto_15
    cmpl-float v3, v1, v2

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

    :goto_16
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0, v1}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->8bc896a54627ae2462c31bf3fe2a17aam(F)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->m:[F

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1c
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x1

    nop

    nop

    :goto_1e
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x13

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->reset()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_2

    nop

    goto/32 :goto_34

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mContrast:F

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_23
    invoke-virtual {v1, v3}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v1, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    goto/32 :goto_16

    nop

    nop

    :goto_25
    goto/32 :goto_41

    nop

    :goto_26
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_3
    goto/32 :goto_40

    nop

    :goto_27
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_29
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2a
    cmpl-float v3, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_2b
    invoke-direct {p0, v1}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->325698a4ed223877bc75ffcc057d98a3m(F)V

    goto/32 :goto_9

    nop

    nop

    :goto_2c
    iget v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mBrightness:F

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v1, v3}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto :goto_3d

    nop

    :goto_34
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mWarmth:F

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_38
    invoke-direct {p0, v1}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->782c9f6e9615a00957cc70ea85de17dfm(F)V

    goto/32 :goto_13

    nop

    nop

    :goto_39
    iget v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mSaturation:F

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3a
    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_4
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->m:[F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    :goto_3d
    goto/32 :goto_3

    nop

    nop

    :goto_3e
    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-nez v3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_37

    nop

    nop
.end method
