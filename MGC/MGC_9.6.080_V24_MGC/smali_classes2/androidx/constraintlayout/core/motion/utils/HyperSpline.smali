.class public Landroidx/constraintlayout/core/motion/utils/HyperSpline;
.super Ljava/lang/Object;
.source "HyperSpline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;
    }
.end annotation


# instance fields
.field mCtl:[[D

.field mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

.field mCurveLength:[D

.field mDimensionality:I

.field mPoints:I

.field mTotalLength:D


# direct methods
.method public constructor <init>()V
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>([[D)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->setup([[D)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method

.method static calcNaturalCubic(I[D)[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;
    .locals 22

    goto/32 :goto_11

    nop

    nop

    :goto_0
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    aput-wide v4, v2, v6

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2
    move-object v11, v6

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    mul-double/2addr v11, v13

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_5
    new-array v3, v0, [D

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

    :goto_6
    goto :goto_a

    nop

    :goto_7
    goto/32 :goto_40

    nop

    nop

    :goto_8
    add-int/lit8 v11, v4, -0x1

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_9
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_b
    aget-wide v4, v1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    mul-double/2addr v4, v11

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
    add-int/lit8 v4, v0, -0x1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2b

    nop

    nop

    :goto_f
    mul-double v18, v18, v9

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    aget-wide v4, p1, v4

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_11
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_12
    add-int/lit8 v6, v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_13
    aput-wide v4, v1, v6

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_14
    aget-wide v11, v1, v4

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int/lit8 v5, v4, 0x1

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_16
    aput-wide v5, v3, v4

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_17
    aget-wide v20, v3, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    aget-wide v18, p1, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_19
    aget-wide v4, v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1a
    sub-double/2addr v5, v11

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

    :goto_1b
    div-double/2addr v7, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1c
    sub-double/2addr v4, v7

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int/lit8 v5, v4, -0x1

    nop

    nop

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

    :goto_1e
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1f
    aput-wide v7, v1, v4

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int/lit8 v11, v4, -0x1

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

    :goto_21
    aget-wide v11, v2, v11

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

    :goto_22
    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_23
    mul-double/2addr v4, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    mul-double v16, v16, v7

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    mul-double/2addr v4, v11

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

    :goto_26
    add-int/lit8 v0, v0, -0x1

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

    :goto_27
    const/4 v4, 0x1

    nop

    :goto_28
    goto/32 :goto_37

    nop

    nop

    :goto_29
    const-wide/high16 v9, 0x4010000000000000L    # 4.0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    aput-wide v4, v3, v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2b
    if-gez v4, :cond_0

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_2c
    aget-wide v11, p1, v6

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

    :goto_2d
    aput-object v6, v4, v5

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    aget-wide v18, p1, v5

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

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

    :goto_30
    aput-wide v5, v2, v4

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

    :goto_31
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

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

    nop

    :goto_32
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_34
    new-array v4, v0, [Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_35
    aget-wide v11, p1, v5

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    add-int/lit8 v4, v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_37
    if-lt v4, v0, :cond_1

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    :goto_38
    div-double/2addr v7, v4

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

    :goto_39
    aget-wide v11, v1, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3a
    invoke-direct/range {v11 .. v19}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;-><init>(DDDD)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    add-int/lit8 v11, v5, 0x1

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    add-int/lit8 v11, v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_3e
    aget-wide v20, v3, v5

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_3f
    aget-wide v18, v3, v11

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

    :goto_40
    return-object v4

    nop

    :goto_41
    goto/32 :goto_4

    nop

    nop

    :goto_42
    new-array v2, v0, [D

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

    :goto_43
    sub-double/2addr v5, v11

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

    :goto_44
    aget-wide v14, v3, v5

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_45
    sub-double v16, v16, v18

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    aput-wide v4, v2, v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    mul-double v18, v18, v9

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

    :goto_48
    move/from16 v0, p0

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_49
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    aget-wide v13, v3, v13

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

    :goto_4c
    new-array v1, v0, [D

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    aget-wide v11, v1, v4

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_4e
    aget-wide v11, v1, v5

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_4f
    sub-double/2addr v9, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_50
    const/4 v6, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_51
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_52
    double-to-float v11, v11

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const/4 v4, 0x1

    nop

    :goto_54
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_55
    aget-wide v11, p1, v11

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_56
    sub-double v16, v16, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_57
    add-double v18, v18, v20

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    add-int/lit8 v11, v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_59
    aget-wide v4, p1, v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    sub-double/2addr v5, v11

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_5b
    add-int/lit8 v13, v4, 0x1

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_5c
    aget-wide v11, v2, v6

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_5d
    const v1, 0x2

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

    :goto_5e
    sub-double/2addr v4, v11

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_5f
    sub-double v4, v9, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_60
    aget-wide v20, p1, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_61
    sub-double v18, v18, v20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_62
    float-to-double v12, v11

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_64
    mul-double/2addr v5, v7

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_65
    goto/16 :goto_e

    nop

    nop

    :goto_66
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_67
    sub-double/2addr v4, v11

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_68
    aget-wide v5, p1, v5

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_69
    aget-wide v5, v2, v4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    mul-double/2addr v5, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_6b
    add-int/lit8 v11, v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    sub-double v16, v16, v18

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_6d
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_6e
    aget-wide v7, p1, v6

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    if-lt v4, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :cond_2
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    if-lt v5, v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_3
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    aget-wide v18, v3, v5

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_72
    new-instance v6, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_73
    aget-wide v11, v1, v0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_74
    goto/16 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_76
    aget-wide v16, p1, v11

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_77
    add-int/lit8 v4, v4, -0x1

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

    :goto_78
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_79
    add-int/lit8 v6, v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_7a
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_32

    nop

    :goto_7b
    mul-double/2addr v4, v7

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    aput-wide v7, v1, v0

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

    :goto_7d
    add-double v18, v18, v20

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

    nop
.end method


# virtual methods
.method public approxLength([Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;)D
    .locals 13

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_0
    add-double/2addr v6, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_2
    const-wide/16 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    const-wide/16 v8, 0x0

    nop

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

    :goto_4
    aget-object v11, p1, v8

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
    array-length v9, p1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v11, v4, v5}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide v11

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_7
    sub-double/2addr v9, v11

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
    goto/32 :goto_20

    nop

    :goto_9
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lt v8, v9, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    aget-wide v9, v3, v8

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    array-length v3, p1

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

    nop

    :goto_d
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_e
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    add-double/2addr v4, v11

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x1f

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_12
    const/4 v8, 0x0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_14
    sub-double/2addr v9, v11

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_15
    if-gtz v8, :cond_2

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_16
    aget-object v11, p1, v8

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-double/2addr v0, v6

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-double/2addr v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_19
    invoke-virtual {v11, v6, v7}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide v11

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_1a
    add-int/lit8 v8, v8, 0x1

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

    :goto_1b
    mul-double v11, v9, v9

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lt v8, v9, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto :goto_27

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_21
    if-ltz v8, :cond_4

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

    :cond_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_22
    cmpg-double v8, v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_23
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

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

    :goto_24
    cmpl-double v8, v4, v8

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_25
    new-array v3, v3, [D

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_26
    const-wide/16 v4, 0x0

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
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

    :goto_29
    array-length v9, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2a
    const v0, 0x13

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

    :goto_2b
    goto/16 :goto_f

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2d
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    mul-double v11, v9, v9

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_3

    nop

    nop

    :goto_31
    array-length v2, p1

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

    :goto_32
    aput-wide v11, v3, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_33
    aget-wide v9, v3, v8

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_9

    nop

    :goto_35
    aput-wide v11, v3, v8

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_36
    add-int v0, v0, v1

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

    :goto_37
    const-wide v6, 0x3fb999999999999aL    # 0.1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_38
    const-wide/16 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_39
    add-double/2addr v0, v8

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_37

    nop

    nop

    :goto_3b
    const-wide/16 v0, 0x0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop
.end method

.method public getPos(DI)D
    .locals 9

    goto/32 :goto_1d

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

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    if-ltz v8, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    :goto_2
    goto/16 :goto_1b

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-wide v5

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6
    const-wide/16 v2, 0x0

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

    :goto_7
    add-int/lit8 v6, v6, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    aget-wide v7, v5, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    sub-double/2addr v0, v6

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    div-double v7, v0, v7

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    mul-double/2addr v0, p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    array-length v6, v5

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_10
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

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
    aget-object v6, v6, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_12
    if-lt v4, v6, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_13
    add-int/lit8 v4, v4, 0x1

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

    :goto_14
    cmpg-double v8, v6, v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_16
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x10

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

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_19
    aget-wide v6, v5, v4

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v4, 0x0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_15

    nop

    nop

    :goto_1c
    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide v5

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x1e

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

    :goto_1e
    aget-object v6, v6, v4

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

    :goto_1f
    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public getPos(D[D)V
    .locals 9

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v4, 0x0

    nop

    nop

    :goto_1
    goto/32 :goto_14

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
    goto/32 :goto_13

    nop

    nop

    :goto_4
    goto :goto_1

    nop

    nop

    :goto_5
    goto/32 :goto_21

    nop

    nop

    :goto_6
    if-lt v5, v6, :cond_0

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

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    aput-wide v6, p3, v5

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_8
    div-double v7, v0, v7

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_a
    aget-object v6, v6, v5

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide v6

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
    aget-object v6, v6, v4

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

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

    :goto_e
    add-int/lit8 v6, v6, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_f
    aget-wide v7, v7, v4

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    array-length v6, p3

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_22

    nop

    nop

    :goto_12
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_25

    nop

    nop

    :goto_14
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_15
    aget-wide v5, v5, v4

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

    :goto_16
    if-ltz v7, :cond_2

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

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x3

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

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-wide/16 v2, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1b
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1c
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

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

    :goto_1d
    cmpg-double v7, v5, v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    array-length v6, v5

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
    if-lt v4, v6, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_20
    mul-double/2addr v0, p1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v5, 0x0

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_23
    sub-double/2addr v0, v5

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_3

    nop

    nop

    :goto_25
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    add-int/lit8 v5, v5, 0x1

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

    :goto_27
    add-int/lit8 v4, v4, 0x1

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

    :goto_28
    const v0, 0x6

    nop

    goto/32 :goto_17

    nop

    nop
.end method

.method public getPos(D[F)V
    .locals 9

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_0
    mul-double/2addr v0, p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    :goto_6
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_22

    nop

    nop

    :goto_8
    const-wide/16 v2, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

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

    nop

    :goto_b
    double-to-float v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_c
    if-ltz v7, :cond_0

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

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int/lit8 v6, v6, -0x1

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

    :goto_12
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    div-double v7, v0, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_14
    array-length v6, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_15
    aget-wide v7, v7, v4

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    aget-wide v5, v5, v4

    nop

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

    :goto_17
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

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

    :goto_18
    aget-object v6, v6, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_19
    cmpg-double v7, v5, v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1a
    if-lt v5, v6, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    :goto_1b
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1c
    goto/16 :goto_7

    nop

    :goto_1d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    array-length v6, p3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_20
    sub-double/2addr v0, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_21
    aget-object v6, v6, v4

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

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

    :goto_23
    add-int/lit8 v4, v4, 0x1

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

    :goto_24
    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide v6

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

    :goto_25
    aput v6, p3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    :goto_27
    if-lt v4, v6, :cond_3

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_28
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public getVelocity(D[D)V
    .locals 9

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lt v4, v6, :cond_0

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

    :cond_0
    goto/32 :goto_e

    nop

    nop

    :goto_1
    const v0, 0x7

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2
    add-int/lit8 v5, v5, 0x1

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

    :goto_3
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

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

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_6
    array-length v6, v5

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_7
    add-int/lit8 v4, v4, 0x1

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

    :goto_8
    goto/32 :goto_5

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;->vel(D)D

    move-result-wide v6

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

    :goto_c
    cmpg-double v7, v5, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_d
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

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

    :goto_e
    aget-wide v5, v5, v4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    if-lt v5, v6, :cond_1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    aget-wide v7, v7, v4

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    div-double v7, v0, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    const-wide/16 v2, 0x0

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
    add-int v0, v0, v1

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

    nop

    :goto_14
    const/4 v4, 0x0

    nop

    :goto_15
    goto/32 :goto_1a

    nop

    nop

    :goto_16
    const v1, 0x6

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_17
    mul-double/2addr v0, p1

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

    :goto_18
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_25

    nop

    nop

    :goto_1a
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

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

    :goto_1b
    goto :goto_19

    nop

    :goto_1c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1d
    aget-object v6, v6, v4

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

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

    nop

    :goto_1f
    aget-object v6, v6, v5

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_20
    add-int/lit8 v6, v6, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_21
    aput-wide v6, p3, v5

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    :goto_23
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-ltz v7, :cond_3

    nop

    nop

    nop

    goto/32 :goto_28

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

    :goto_25
    array-length v6, p3

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

    :goto_26
    sub-double/2addr v0, v5

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_18

    nop

    nop

    nop

    nop
.end method

.method public setup([[D)V
    .locals 7

    goto/32 :goto_2c

    nop

    nop

    :goto_0
    if-lt v1, v2, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4e

    nop

    nop

    :goto_1
    array-length v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_2
    if-lt v1, v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_1
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    aget-object v3, v3, v2

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

    nop

    nop

    :goto_4
    const/4 v3, 0x2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int/lit8 v1, v1, 0x1

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

    :goto_9
    new-array v3, v3, [I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCtl:[[D

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_b
    aget-object v2, v2, v0

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

    :goto_c
    goto/16 :goto_5a

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_6

    nop

    nop

    :goto_10
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_29

    nop

    nop

    :goto_12
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_13
    array-length v1, v1

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

    :goto_14
    goto/16 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_16
    aput-object v2, v1, v0

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_17
    iput v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mPoints:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v0, [[D

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1a
    if-lt v2, v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    :goto_1b
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mPoints:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1c
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    aget-wide v5, v3, v0

    nop

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

    :goto_1e
    sub-int/2addr v0, v4

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_1f
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_20
    if-lt v0, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_47

    nop

    nop

    :goto_21
    aput v1, v3, v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_22
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mDimensionality:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_4

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

    :cond_4
    goto/32 :goto_2d

    nop

    :goto_24
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mDimensionality:I

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

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

    :goto_26
    array-length v2, v2

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

    :goto_27
    aget-object v3, v3, v1

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_2a
    aput-wide v5, v2, v1

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_2b
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCtl:[[D

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

    :goto_2c
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_2d
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_4f

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_25

    nop

    nop

    :goto_31
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mDimensionality:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_32
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

    nop

    nop

    nop

    goto/32 :goto_46

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

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_34
    iput-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_35
    add-int/lit8 v0, v0, 0x1

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

    :goto_36
    add-double/2addr v2, v5

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_37
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mDimensionality:I

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

    :goto_38
    array-length v2, p1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    return-void

    nop

    :goto_3a
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_3b
    aget-object v3, p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->approxLength([Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;)D

    move-result-wide v5

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_3f
    invoke-static {v3, v2}, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->calcNaturalCubic(I[D)[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_40
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_42
    rem-int v0, v0, v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_43
    add-int/lit8 v1, v1, 0x1

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

    :goto_44
    aget-object v1, p1, v0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_45
    new-array v0, v0, [D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_46
    const-wide/16 v2, 0x0

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

    :goto_47
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_4a
    if-lt v0, v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_4b
    aput-wide v5, v4, v1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_4c
    aput v2, v3, v4

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    aput-object v3, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4e
    const/4 v2, 0x0

    nop

    nop

    :goto_4f
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_50
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

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

    :goto_51
    new-array v0, v0, [[Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

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

    :goto_52
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCtl:[[D

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mCurveLength:[D

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

    :goto_54
    aget-object v2, v2, v0

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_55
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_56
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mPoints:I

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_57
    new-array v0, v1, [Landroidx/constraintlayout/core/motion/utils/HyperSpline$Cubic;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_58
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mDimensionality:I

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_59
    const/4 v0, 0x0

    nop

    nop

    :goto_5a
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_5b
    iput-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/HyperSpline;->mTotalLength:D

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method
