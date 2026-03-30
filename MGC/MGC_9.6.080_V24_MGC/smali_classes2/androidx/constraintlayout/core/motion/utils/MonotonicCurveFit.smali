.class public Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;
.super Landroidx/constraintlayout/core/motion/utils/CurveFit;
.source "MonotonicCurveFit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MonotonicCurveFit"


# instance fields
.field private mExtrapolate:Z

.field mSlopeTemp:[D

.field private mT:[D

.field private mTangent:[[D

.field private mY:[[D


# direct methods
.method public constructor <init>([D[[D)V
    .locals 22

    goto/32 :goto_57

    nop

    nop

    :goto_0
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1
    aget-wide v11, v11, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_2
    aget-object v20, v7, v5

    nop

    nop

    nop

    goto/32 :goto_86

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

    goto/32 :goto_3e

    nop

    nop

    :cond_0
    goto/32 :goto_3d

    nop

    :goto_4
    const-wide/16 v11, 0x0

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_5
    aget-wide v11, v11, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_6
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_7
    div-double/2addr v12, v9

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_9
    aput-wide v11, v9, v8

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_a
    goto/16 :goto_6a

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;-><init>()V

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_d
    aget-object v12, v2, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_e
    aget-object v11, v7, v8

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_f
    aput-wide v18, v17, v8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    aget-wide v14, v14, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_12
    const/4 v8, 0x0

    nop

    nop

    :goto_13
    goto/32 :goto_8f

    nop

    nop

    :goto_14
    if-lt v8, v9, :cond_1

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_15
    aput-wide v12, v11, v5

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

    :goto_16
    rem-int v0, v0, v1

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

    :goto_17
    aput v7, v9, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_18
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int/lit8 v8, v4, -0x1

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

    :goto_1b
    goto :goto_10

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_66

    nop

    nop

    :goto_1d
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sub-double/2addr v9, v11

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

    :goto_1f
    check-cast v3, [[D

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int/lit8 v9, v4, -0x2

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

    :goto_21
    add-int/lit8 v9, v5, 0x1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_43

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    aget-object v9, v7, v9

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_25
    aget-wide v9, v9, v8

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_26
    aget-object v9, v7, v5

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_27
    aget-object v11, v3, v8

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-eqz v8, :cond_2

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    :goto_29
    aput v6, v8, v3

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

    :goto_2a
    const/4 v8, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_2b
    add-int/lit8 v17, v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast v7, [[D

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_2d
    aget-object v9, v3, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2e
    mul-double v18, v18, v20

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_30
    if-lt v8, v6, :cond_3

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_31
    aget-wide v13, v13, v8

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_32
    iput-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_19

    nop

    :goto_34
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_35
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_37
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_38
    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_39
    add-int/lit8 v8, v8, 0x1

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    aget-wide v20, v20, v8

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

    :goto_3b
    aget-object v11, v3, v11

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3c
    aget-object v13, v7, v5

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

    :goto_3d
    goto/32 :goto_36

    nop

    nop

    :goto_3e
    goto/32 :goto_41

    nop

    nop

    :goto_3f
    add-int/lit8 v8, v4, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_40
    aget-object v11, v7, v5

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_41
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const/4 v8, 0x0

    nop

    :goto_43
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_44
    aget-object v11, v3, v8

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_47
    add-int/lit8 v9, v8, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_48
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_49
    invoke-static {v3, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    aput v4, v8, v5

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_4b
    new-array v8, v8, [I

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_4c
    new-array v9, v8, [I

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_4d
    aget-object v6, v2, v5

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-static {v7, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-lt v5, v8, :cond_4

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_51
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_52
    mul-double v18, v15, v11

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_53
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    div-double/2addr v11, v13

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-gtz v15, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_5
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_56
    aget-object v8, v3, v8

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_57
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_58
    aget-wide v11, v1, v8

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    aput-wide v12, v11, v5

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

    :goto_5a
    array-length v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_5b
    aput-wide v9, v8, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_5c
    const/4 v5, 0x0

    nop

    nop

    :goto_5d
    goto/32 :goto_6d

    nop

    nop

    :goto_5e
    sub-double/2addr v12, v14

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5f
    aget-object v20, v7, v5

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_60
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iput-object v3, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mTangent:[[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_63
    add-int/lit8 v11, v5, 0x1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_64
    move-object/from16 v2, p2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_65
    aget-wide v12, v12, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_66
    aget-object v9, v3, v5

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

    nop

    :goto_67
    mul-double v18, v18, v20

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iput-boolean v3, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mExtrapolate:Z

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_69
    aput-wide v12, v11, v5

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    aget-wide v12, v12, v5

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_6c
    const-wide/high16 v15, 0x4022000000000000L    # 9.0

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_6d
    if-lt v5, v6, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    aget-object v12, v7, v8

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_6f
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v13

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_70
    div-double/2addr v9, v11

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_71
    mul-double v18, v15, v9

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_72
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_73
    aput v6, v9, v3

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_74
    iput-object v7, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_75
    cmpl-double v15, v13, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_76
    new-array v7, v6, [D

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    aget-object v9, v3, v5

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_78
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_79
    aget-wide v9, v1, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_7a
    add-int/lit8 v5, v5, 0x1

    nop

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

    :goto_7b
    aget-object v12, v7, v12

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_7c
    aget-object v14, v7, v8

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    aput-wide v11, v9, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_7e
    aput-wide v18, v17, v8

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    mul-double/2addr v12, v14

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_80
    aget-wide v14, v14, v5

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_81
    aget-object v17, v3, v5

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_82
    div-double/2addr v15, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_83
    aget-object v17, v3, v17

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_84
    aget-wide v9, v9, v5

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_85
    if-eqz v9, :cond_7

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_86
    aget-wide v20, v20, v8

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_87
    array-length v4, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_88
    aget-wide v12, v12, v5

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    add-int/lit8 v12, v8, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    add-int/lit8 v7, v4, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_8b
    add-double/2addr v12, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_8c
    cmpl-double v9, v9, v11

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    add-int/lit8 v12, v8, 0x1

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

    :goto_8e
    aget-wide v9, v9, v8

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    add-int/lit8 v9, v4, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_90
    aget-object v14, v2, v8

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop
.end method

.method public static buildWave(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;
    .locals 10

    goto/32 :goto_19

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v2, 0x28

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move v2, v5

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v6, v5, 0x1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move v5, v7

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    return-object v5

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_d
    move-object v0, p0

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_e
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_f
    if-ne v4, v6, :cond_0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_0
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_10
    aput-wide v7, v1, v5

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_12
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

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

    :goto_13
    new-array v1, v1, [D

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

    :goto_14
    aput-wide v8, v1, v5

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_15
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_16
    add-int/lit8 v7, v5, 0x1

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

    :goto_17
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

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

    :goto_18
    add-int/lit8 v5, v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x10

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    div-int/lit8 v1, v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_1c
    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v5

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v5}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->buildWave([D)Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1e
    const/16 v3, 0x29

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_20
    goto/32 :goto_a

    nop

    :goto_21
    add-int/lit8 v2, v2, 0x1

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

    :goto_22
    const/4 v6, -0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_23
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/16 v3, 0x2c

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

    :goto_26
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_27
    goto :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_1e

    nop

    nop

    :goto_29
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static buildWave([D)Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;
    .locals 18

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1
    mul-double/2addr v14, v5

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int/lit8 v13, v10, -0x1

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_3
    aput-wide v14, v9, v13

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_5
    aget-object v13, v2, v13

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_7
    int-to-double v14, v10

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

    nop

    :goto_8
    const v0, 0x1d

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_9
    sub-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_a
    add-int/2addr v13, v10

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int/lit8 v13, v10, -0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    const/4 v4, 0x1

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

    :goto_d
    mul-int/lit8 v1, v1, 0x3

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

    :goto_e
    if-gtz v10, :cond_0

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

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    mul-double/2addr v14, v5

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_10
    int-to-double v14, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
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

    nop

    :goto_12
    aget-wide v11, v0, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    int-to-double v14, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_14
    return-object v4

    nop

    :goto_15
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_16
    aput-wide v14, v13, v4

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    int-to-double v5, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_18
    add-int v13, v10, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_19
    aput v4, v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1a
    add-int/2addr v13, v10

    nop

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

    :goto_1b
    div-double v5, v7, v5

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sub-double v14, v11, v7

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    aput-wide v14, v13, v4

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-array v2, v2, [I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sub-double/2addr v14, v5

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
    aput-wide v14, v9, v13

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

    :goto_21
    mul-int/lit8 v13, v3, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_22
    aput-wide v14, v9, v13

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    array-length v11, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_15

    nop

    :goto_25
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_26
    mul-int/lit8 v13, v3, 0x2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    :goto_28
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_29
    add-int/lit8 v10, v10, 0x1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_2a
    new-array v9, v1, [D

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_2b
    aput-wide v11, v13, v4

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    array-length v1, v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2d
    invoke-static {v9, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {v4, v9, v2}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;-><init>([D[[D)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2f
    add-double/2addr v14, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_30
    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_31
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_32
    mul-double/2addr v14, v5

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_33
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_34
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    aget-object v13, v2, v13

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

    :goto_36
    if-lt v10, v11, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_39
    goto :goto_38

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    sub-double/2addr v14, v5

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3c
    new-instance v4, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    array-length v3, v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3e
    aput v1, v2, v4

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

    :goto_3f
    add-double v14, v11, v7

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_40
    add-double v14, v14, v16

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_41
    sub-int/2addr v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_42
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

    :goto_43
    add-int v13, v10, v3

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

    :goto_44
    check-cast v2, [[D

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_45
    const v1, 0xb

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_46
    aget-object v13, v2, v13

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static diff(DDDDDD)D
    .locals 8

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    :goto_1
    mul-double v4, v4, p8

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    add-double/2addr v2, v6

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4
    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_6
    mul-double/2addr v4, p4

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

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_23

    nop

    nop

    :goto_9
    mul-double/2addr v4, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_a
    return-wide v2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

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

    :goto_d
    mul-double/2addr v2, p6

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-double/2addr v2, v4

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

    :goto_f
    mul-double/2addr v6, p6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    mul-double v4, v4, p10

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sub-double/2addr v2, v4

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_12
    mul-double v6, p2, v4

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

    nop

    nop

    :goto_13
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    mul-double/2addr v4, v0

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

    nop

    :goto_15
    mul-double/2addr v6, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-double/2addr v2, v4

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

    nop

    nop

    :goto_17
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_18
    sub-double/2addr v2, v4

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

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1b
    mul-double/2addr v4, p2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    mul-double v4, p0, p8

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    mul-double/2addr v4, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1e
    sub-double/2addr v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1f
    mul-double/2addr v6, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_20
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_21
    mul-double/2addr v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_22
    add-double/2addr v2, v6

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_23
    mul-double v0, p2, p2

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    mul-double/2addr v4, p2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_25
    mul-double/2addr v4, p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_26
    mul-double v6, v0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_27
    mul-double v6, v6, p10

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_28
    mul-double/2addr v4, p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    mul-double v6, p0, v4

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2a
    mul-double v4, v4, p8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2b
    const-wide/high16 v2, -0x3fe8000000000000L    # -6.0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    add-double/2addr v2, v6

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop
.end method

.method private static interpolate(DDDDDD)D
    .locals 12

    goto/32 :goto_1e

    nop

    nop

    :goto_0
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    add-double/2addr v4, v6

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    mul-double/2addr v6, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_3
    add-double v4, v4, p4

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4
    mul-double/2addr v6, v0

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

    :goto_5
    mul-double/2addr v6, p2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    mul-double v6, v6, p4

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

    :goto_7
    return-wide v4

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    sub-double/2addr v4, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    mul-double v6, p0, p8

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    mul-double v6, p0, p10

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_e
    mul-double v2, v0, p2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    mul-double v6, p0, p8

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_11
    mul-double/2addr v4, v2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-double/2addr v4, v8

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_13
    mul-double v6, p0, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_14
    mul-double v6, p0, p10

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_15
    mul-double/2addr v6, v0

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

    :goto_16
    mul-double v8, v0, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_17
    mul-double/2addr v6, v0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-double/2addr v4, v6

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_19
    add-double/2addr v4, v10

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1a
    mul-double v6, v6, p8

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1c
    sub-double/2addr v4, v6

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

    :goto_1d
    mul-double v4, v4, p6

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1e
    const v0, 0x1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_20
    mul-double v8, v8, p6

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_21
    sub-double/2addr v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_22
    add-double/2addr v4, v6

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

    :goto_23
    mul-double v10, v2, v8

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    mul-double v0, p2, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_25
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    :goto_26
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_27
    mul-double/2addr v6, v2

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

    :goto_28
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2a
    mul-double v10, v10, p4

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop
.end method


# virtual methods
.method public getPos(DI)D
    .locals 29

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_0
    aget-object v4, v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1
    cmpg-double v4, p1, v6

    nop

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

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    aget-wide v6, v2, v6

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int/lit8 v9, v2, 0x1

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_6
    move-wide v11, v4

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_7
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mTangent:[[D

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_8
    aget-object v6, v6, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-gez v4, :cond_0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v7, v2, 0x1

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_b
    aget-object v2, v2, v5

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sub-double v4, p1, v5

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

    :goto_d
    div-double/2addr v4, v7

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sub-double v6, p1, v6

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_34

    nop

    nop

    :goto_10
    goto/32 :goto_16

    nop

    nop

    :goto_11
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_12
    sub-double/2addr v7, v5

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

    :goto_13
    aget-wide v5, v4, v2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-wide v4

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1d

    nop

    nop

    :goto_16
    const-wide/16 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_17
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_19
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1a
    aget-object v9, v6, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_1b
    cmpl-double v4, p1, v4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1c
    aget-wide v6, v2, v5

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int/lit8 v4, v3, -0x1

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

    :goto_1e
    aget-object v9, v6, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_1f
    cmpl-double v7, p1, v5

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

    :goto_20
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-ltz v7, :cond_1

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-int/lit8 v5, v3, -0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_23
    move-wide/from16 v13, v21

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_24
    aget-wide v7, v4, v7

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_25
    aget-wide v6, v2, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_26
    invoke-virtual {v0, v6, v7, v1}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(DI)D

    move-result-wide v6

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_50

    nop

    :goto_28
    add-int/lit8 v4, v3, -0x1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_29
    move-wide/from16 v15, v23

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

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

    :goto_2b
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_2c
    mul-double/2addr v8, v6

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

    :goto_2d
    return-wide v4

    nop

    :goto_2e
    goto/32 :goto_33

    nop

    nop

    :goto_2f
    aget-wide v4, v2, v1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_30
    aget-wide v4, v2, v4

    nop

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

    :goto_31
    aget-wide v4, v4, v1

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_32
    add-int/lit8 v8, v3, -0x1

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move-wide v9, v7

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_36
    aget-wide v4, v2, v1

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_38
    invoke-static/range {v9 .. v20}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->interpolate(DDDDDD)D

    move-result-wide v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    cmpl-double v2, p1, v4

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    aget-wide v27, v6, v1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    move-wide/from16 v19, v27

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_3c
    aget-wide v4, v2, v1

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_3d
    cmpg-double v4, p1, v6

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_3e
    iget-boolean v4, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mExtrapolate:Z

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3f
    if-gez v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_40
    if-lez v4, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    add-int/lit8 v4, v3, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_42
    return-wide v4

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_44
    cmpg-double v7, p1, v7

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    aget-wide v23, v6, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_46
    add-int/lit8 v9, v2, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_47
    aget-object v4, v4, v2

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_48
    add-int/lit8 v7, v2, 0x1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_49
    aget-wide v21, v9, v1

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

    :goto_4a
    aget-wide v4, v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_4b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    move/from16 v1, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_4d
    aget-wide v8, v2, v8

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    sub-double v8, p1, v6

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_4f
    const v1, 0x11

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

    :goto_50
    goto/32 :goto_43

    nop

    :goto_51
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_52
    move-wide/from16 v17, v25

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_53
    array-length v3, v2

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_54
    add-double/2addr v4, v6

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_55
    add-int/lit8 v6, v3, -0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_56
    add-int/lit8 v4, v3, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_57
    if-lt v2, v4, :cond_5

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_58
    aget-wide v7, v4, v7

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

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

    :goto_5a
    add-double/2addr v4, v8

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

    :goto_5b
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    aget-wide v4, v4, v1

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

    :goto_5d
    return-wide v9

    nop

    nop

    :goto_5e
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_60
    move-object/from16 v0, p0

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    aget-object v6, v6, v9

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    if-lez v4, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_6
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_63
    return-wide v4

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    aget-wide v25, v9, v1

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_66
    aget-object v2, v2, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_67
    if-eqz v7, :cond_7

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    return-wide v4

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    if-nez v4, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v0, v8, v9, v1}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(DI)D

    move-result-wide v8

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_6c
    mul-double/2addr v6, v8

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_6d
    aget-object v2, v2, v4

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

    :goto_6e
    return-wide v4

    nop

    :goto_6f
    goto/32 :goto_28

    nop

    nop

    nop
.end method

.method public getPos(D[D)V
    .locals 29

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_0
    aget-wide v5, v1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v5, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_1e

    nop

    :goto_5
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-wide/from16 v13, v21

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_9
    mul-double/2addr v7, v9

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v5, v2, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    :goto_c
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aget-object v10, v9, v1

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_86

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    aget-object v5, v5, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_11
    add-double/2addr v5, v7

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_12
    cmpl-double v4, p1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sub-double v6, p1, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_15
    aget-wide v25, v10, v4

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_16
    aput-wide v5, p3, v1

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int/lit8 v4, v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_5e

    nop

    nop

    :goto_19
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_1a
    const/4 v4, 0x0

    nop

    :goto_1b
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mTangent:[[D

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    cmpg-double v7, p1, v5

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move-wide v9, v5

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_21
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_22
    if-eqz v4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    aget-object v4, v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

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

    :goto_27
    aget-wide v6, v6, v7

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    cmpl-double v4, p1, v4

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    aget-wide v4, v4, v1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v4, v5, v1}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(D[D)V

    goto/32 :goto_b

    nop

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

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    return-void

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_2f
    if-ltz v5, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_30
    if-nez v5, :cond_2

    nop

    goto/32 :goto_7

    nop

    :cond_2
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_31
    aget-object v9, v9, v10

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

    :goto_32
    add-double/2addr v4, v6

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-gez v1, :cond_3

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

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    aget-wide v5, v1, v4

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_36
    add-int/lit8 v10, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_37
    aget-wide v7, v7, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_39
    if-lt v1, v3, :cond_4

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_c

    nop

    :goto_3b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    sub-double v7, p1, v7

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_3e
    move-wide v11, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3f
    aput-wide v4, p3, v1

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    aget-wide v5, v5, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_41
    return-void

    nop

    :goto_42
    goto/32 :goto_73

    nop

    nop

    :goto_43
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_64

    nop

    nop

    :goto_45
    aget-object v4, v4, v5

    nop

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

    :goto_46
    if-gez v4, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_5
    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_47
    aget-wide v4, v4, v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_54

    nop

    nop

    :goto_4a
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_4b
    aget-wide v5, v5, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_4c
    aget-wide v5, v5, v1

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

    :goto_4d
    move-wide/from16 v15, v23

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_4e
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    aget-wide v21, v10, v4

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_50
    aget-wide v4, v4, v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_51
    aget-wide v8, v8, v1

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_52
    if-lt v1, v3, :cond_6

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_53
    aget-object v10, v9, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

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

    :goto_55
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_56
    if-lt v4, v3, :cond_7

    nop

    goto/32 :goto_78

    nop

    nop

    :cond_7
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_57
    aget-object v5, v5, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_58
    aget-wide v5, v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-boolean v5, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mExtrapolate:Z

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

    :goto_5a
    array-length v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_5b
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const v0, 0x20

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_5f
    aget-object v3, v3, v4

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_60
    move-wide/from16 v19, v27

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_61
    aput-wide v5, p3, v1

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

    :goto_62
    if-lt v1, v3, :cond_8

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_92

    nop

    nop

    :goto_63
    cmpg-double v5, p1, v5

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    move-object/from16 v0, p0

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_65
    mul-double/2addr v6, v8

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_66
    cmpg-double v5, p1, v5

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    aput-wide v9, p3, v4

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v0, v5, v6, v1}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(D[D)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_69
    aget-wide v9, v9, v1

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

    :goto_6a
    add-int/lit8 v7, v2, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_6b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_6c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    const/4 v4, 0x0

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    cmpl-double v1, p1, v4

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_71
    aget-object v9, v9, v10

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_72
    add-int/lit8 v4, v2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_73
    add-int/lit8 v4, v2, -0x1

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_74
    aput-wide v5, p3, v4

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

    :goto_75
    aget-object v5, v5, v4

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

    :goto_76
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_77
    goto :goto_6f

    nop

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_7a
    add-int/lit8 v4, v2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    sub-double/2addr v5, v7

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    return-void

    nop

    nop

    :goto_7d
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_7f
    aget-wide v7, v4, v1

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_80
    invoke-static/range {v9 .. v20}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->interpolate(DDDDDD)D

    move-result-wide v9

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_81
    array-length v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_83
    aget-wide v5, v4, v5

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_84
    if-lt v4, v3, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    :cond_9
    goto/32 :goto_82

    nop

    nop

    :goto_85
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_86
    goto/32 :goto_17

    nop

    nop

    :goto_87
    add-int/lit8 v5, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_88
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_89
    if-lt v1, v3, :cond_a

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

    :cond_a
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    div-double/2addr v7, v5

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_8b
    aput-wide v4, p3, v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

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

    :goto_90
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_91
    add-int/lit8 v10, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_92
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_93
    if-lez v7, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    :cond_b
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_94
    aget-wide v4, v1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_95
    if-lez v5, :cond_c

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_5d

    nop

    nop

    :goto_96
    aget-wide v27, v9, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_97
    aget-wide v23, v9, v4

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_98
    aget-wide v4, v1, v4

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    if-lez v0, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_d
    goto/32 :goto_43

    nop

    :goto_9a
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_9b
    return-void

    nop

    nop

    nop

    :goto_9c
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    aget-wide v4, v1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    add-int/lit8 v5, v2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    move-wide/from16 v17, v25

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_a0
    sub-double v7, p1, v7

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    if-lt v1, v4, :cond_e

    nop

    goto/32 :goto_f

    nop

    :cond_e
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a3
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop
.end method

.method public getPos(D[F)V
    .locals 29

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    nop

    :goto_1
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_2
    aget-object v9, v9, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_3
    move-wide/from16 v19, v27

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

    :goto_4
    aget-object v3, v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_5
    aget-object v4, v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    invoke-static/range {v9 .. v20}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->interpolate(DDDDDD)D

    move-result-wide v9

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_7
    aget-wide v4, v4, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v5, v1, 0x1

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

    :goto_b
    add-int/lit8 v4, v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_c
    aput v5, p3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_d
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mTangent:[[D

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_e
    aget-wide v6, v6, v7

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

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_67

    nop

    nop

    :goto_11
    div-double/2addr v7, v5

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_44

    nop

    nop

    :goto_14
    if-lt v4, v3, :cond_0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x0

    nop

    nop

    :goto_16
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_17
    iget-boolean v5, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mExtrapolate:Z

    nop

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

    :goto_18
    add-int/lit8 v4, v4, 0x1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_9

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_1b
    mul-double/2addr v7, v9

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_1c
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_1d
    if-lez v0, :cond_1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_29

    nop

    :goto_1e
    if-lez v5, :cond_2

    nop

    goto/32 :goto_3b

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    :goto_1f
    cmpg-double v7, p1, v5

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_22
    aput v5, p3, v4

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_24
    double-to-float v5, v5

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_8a

    nop

    nop

    :goto_27
    add-int/lit8 v5, v2, -0x1

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_28
    sub-double v6, p1, v6

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_2c

    nop

    nop

    :goto_2a
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return-void

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2d
    aget-wide v5, v5, v1

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_2e
    return-void

    nop

    :goto_2f
    goto/32 :goto_25

    nop

    nop

    :goto_30
    if-lt v1, v3, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    aput v5, p3, v1

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_32
    add-int/lit8 v10, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_9b

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_35
    aget-object v4, v4, v5

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_36
    aget-object v9, v9, v10

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_38
    const/4 v4, 0x0

    nop

    :goto_39
    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_3a
    return-void

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    aget-wide v5, v4, v5

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_3e
    add-int/lit8 v10, v1, 0x1

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

    nop

    :goto_3f
    if-nez v5, :cond_4

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_40
    add-double/2addr v5, v7

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_41
    aget-object v5, v5, v4

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_42
    add-int/lit8 v7, v2, -0x1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_43
    if-lt v1, v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_96

    nop

    nop

    nop

    :goto_44
    if-lt v1, v3, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_26

    nop

    :goto_46
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_47
    aget-wide v8, v8, v1

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_48
    move-wide v9, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_49
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_1

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    sub-double v7, p1, v7

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4d
    aget-object v5, v5, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_4e
    double-to-float v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_4f
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_50
    add-int/lit8 v5, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_53
    cmpg-double v5, p1, v5

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-lt v1, v3, :cond_7

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :cond_7
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_56
    aget-wide v5, v5, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_57
    cmpl-double v4, p1, v4

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    move-wide/from16 v13, v21

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    add-int/lit8 v4, v2, -0x1

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_5a
    sub-double/2addr v5, v7

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_5b
    aget-wide v5, v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_5c
    aget-wide v25, v10, v4

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_5d
    aget-object v10, v9, v1

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_5e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    move-wide/from16 v17, v25

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_61
    if-gez v4, :cond_8

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const/4 v4, 0x0

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

    :goto_63
    aget-wide v23, v9, v4

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_64
    aget-wide v4, v1, v4

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    aput v9, p3, v4

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

    nop

    nop

    :goto_67
    add-int/lit8 v4, v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    aget-wide v5, v5, v4

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_69
    array-length v2, v1

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_6a
    aget-wide v9, v9, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_6b
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_6d
    invoke-virtual {v0, v5, v6, v1}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(D[D)V

    goto/32 :goto_9a

    nop

    nop

    :goto_6e
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    aget-wide v21, v10, v4

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

    nop

    :goto_70
    double-to-float v9, v9

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_71
    double-to-float v4, v4

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_72
    move-wide/from16 v15, v23

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_73
    sub-double v7, p1, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_74
    if-lez v7, :cond_9

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

    :cond_9
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_75
    double-to-float v5, v5

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_76
    aget-wide v4, v4, v1

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_77
    aget-wide v7, v7, v4

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    cmpl-double v4, p1, v4

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_79
    cmpg-double v5, p1, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    cmpl-double v1, p1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_7b
    if-gez v1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    mul-double/2addr v6, v8

    nop

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

    :goto_7d
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_7e
    aget-wide v4, v4, v1

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_7f
    add-int/lit8 v5, v2, -0x1

    nop

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

    :goto_80
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_81
    aget-wide v27, v9, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_82
    move-wide v11, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_83
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_84
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_86
    double-to-float v4, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_87
    aget-wide v4, v1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_88
    aget-wide v7, v4, v1

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_89
    aget-wide v5, v1, v4

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

    :goto_8a
    add-int/lit8 v4, v2, -0x1

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_8b
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_8c
    aput v4, p3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_8d
    aget-object v10, v9, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    goto/32 :goto_3a

    nop

    nop

    :goto_90
    goto/16 :goto_39

    nop

    :goto_91
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_92
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_93
    add-double/2addr v4, v6

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_94
    return-void

    nop

    :goto_95
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_96
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    array-length v3, v3

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

    :goto_98
    return-void

    nop

    :goto_99
    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_9a
    const/4 v1, 0x0

    nop

    nop

    :goto_9b
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_9c
    aput v4, p3, v1

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

    :goto_9d
    if-ltz v5, :cond_b

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mSlopeTemp:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_a0
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_a1
    goto/32 :goto_98

    nop

    nop

    nop

    :goto_a2
    aget-wide v5, v1, v4

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    if-lt v1, v4, :cond_c

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    if-eqz v4, :cond_d

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

    :cond_d
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a5
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_a6
    aget-wide v4, v1, v4

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_a7
    if-lt v4, v3, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {v0, v4, v5, v1}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(D[D)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    aget-object v5, v5, v4

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop
.end method

.method public getSlope(DI)D
    .locals 30

    goto/32 :goto_36

    nop

    nop

    :goto_0
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1
    add-int/lit8 v6, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_2
    if-gez v3, :cond_0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3
    add-int/lit8 v10, v1, 0x1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4
    sub-double v8, v3, v8

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_5
    goto :goto_9

    nop

    :goto_6
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_7
    add-int/lit8 v3, v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    :goto_9
    goto/32 :goto_38

    nop

    nop

    :goto_a
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    aget-wide v3, v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_c
    return-wide v10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v6, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_f
    move-wide/from16 v18, v26

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    array-length v2, v1

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

    :goto_11
    move-wide/from16 v3, p1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    aget-wide v28, v5, p3

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

    :goto_14
    aget-wide v22, v10, p3

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto :goto_12

    nop

    nop

    :goto_16
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_18
    aget-wide v26, v10, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    :goto_1a
    aget-wide v4, v1, v3

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

    :goto_1b
    if-ltz v4, :cond_3

    nop

    goto/32 :goto_3c

    nop

    :cond_3
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1c
    move-wide/from16 v16, v24

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    aget-object v5, v5, v10

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_20
    invoke-static/range {v10 .. v21}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->diff(DDDDDD)D

    move-result-wide v10

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_21
    move-wide/from16 v14, v22

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_22
    add-int/lit8 v3, v2, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_23
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-int/lit8 v10, v1, 0x1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    aget-wide v24, v5, p3

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_27
    if-lt v1, v5, :cond_4

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    cmpl-double v3, p1, v3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_29
    goto/32 :goto_1e

    nop

    :goto_2a
    div-double/2addr v10, v6

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2b
    aget-wide v3, v1, v3

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

    :goto_2c
    const-wide/16 v5, 0x0

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_2d
    aget-object v5, v5, v10

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    add-int/lit8 v6, v1, 0x1

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

    :goto_30
    aget-wide v3, v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_31
    aget-object v10, v5, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_32
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_33
    aget-wide v6, v5, v6

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mTangent:[[D

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

    :goto_35
    aget-wide v6, v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_36
    const v0, 0x9

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_37
    aget-wide v8, v5, v1

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_38
    add-int/lit8 v5, v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_39
    cmpg-double v6, v3, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3a
    move-wide/from16 v20, v28

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    div-double/2addr v8, v6

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    sub-double/2addr v6, v8

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

    :goto_3f
    move-object/from16 v0, p0

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

    :goto_40
    move-wide v12, v8

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

    :goto_41
    cmpg-double v4, p1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_42
    const v1, 0xe

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_43
    move-wide v10, v6

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

    :goto_44
    return-wide v5

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_46
    aget-object v10, v5, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop
.end method

.method public getSlope(D[D)V
    .locals 31

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-wide/from16 v19, v27

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1
    move-wide/from16 v15, v23

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2
    add-int/lit8 v7, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_3
    add-int/lit8 v12, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_4
    aget-object v3, v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v5, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_a
    div-double/2addr v11, v7

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_b
    aget-wide v27, v12, v6

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

    :goto_c
    aget-object v12, v11, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_d
    if-lt v1, v6, :cond_1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_e
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_f
    aget-object v12, v11, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_11
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    const/4 v4, 0x0

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
    add-int/lit8 v4, v2, -0x1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x15

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    aput-wide v11, p3, v6

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

    :goto_16
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int/lit8 v6, v2, -0x1

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

    :goto_19
    aget-wide v7, v6, v7

    nop

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

    :goto_1a
    aget-wide v25, v11, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_1b
    cmpl-double v4, p1, v4

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

    :goto_1c
    aget-wide v4, v1, v4

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

    :goto_1d
    div-double/2addr v9, v7

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    move-wide/from16 v21, v29

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1f
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move-wide/from16 v17, v25

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_21
    move-wide/from16 v4, p1

    nop

    :goto_22
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_32

    nop

    :goto_24
    goto/32 :goto_2d

    nop

    nop

    :goto_25
    if-lt v6, v3, :cond_2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_26
    aget-wide v5, v1, v4

    nop

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

    nop

    :goto_27
    goto/16 :goto_43

    nop

    :goto_28
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_29
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mY:[[D

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_2b
    cmpg-double v5, p1, v5

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

    :goto_2c
    array-length v3, v3

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto :goto_28

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_37

    nop

    nop

    :goto_2f
    sub-double/2addr v7, v9

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

    :goto_30
    sub-double v9, v4, v9

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

    :goto_31
    const/4 v6, 0x0

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_33
    array-length v2, v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    add-int/lit8 v4, v2, -0x1

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_35
    aget-wide v29, v11, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_36
    aget-wide v4, v1, v4

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

    :goto_37
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_38
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static/range {v11 .. v22}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->diff(DDDDDD)D

    move-result-wide v11

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const v0, 0x1c

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3b
    if-gez v4, :cond_3

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

    :cond_3
    goto/32 :goto_13

    nop

    nop

    :goto_3c
    add-int/lit8 v7, v1, 0x1

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

    :goto_3d
    aget-object v11, v11, v12

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

    :goto_3e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_11

    nop

    nop

    :goto_40
    aget-wide v23, v12, v6

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_41
    aget-wide v7, v6, v7

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_18

    nop

    nop

    :goto_44
    rem-int v0, v0, v1

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

    :goto_45
    move-wide v11, v7

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mTangent:[[D

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_47
    move-wide v13, v9

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_48
    aget-wide v4, v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_49
    aget-object v11, v11, v12

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_4b
    cmpg-double v7, v4, v7

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_4c
    aget-wide v9, v6, v1

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

    :goto_4d
    if-lez v7, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_4
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    add-int/lit8 v12, v1, 0x1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    :cond_5
    goto/32 :goto_3e

    nop
.end method

.method public getTimePoints()[D
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->mT:[D

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
