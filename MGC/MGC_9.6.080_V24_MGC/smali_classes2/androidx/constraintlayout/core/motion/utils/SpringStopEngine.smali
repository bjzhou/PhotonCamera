.class public Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;
.super Ljava/lang/Object;
.source "SpringStopEngine.java"

# interfaces
.implements Landroidx/constraintlayout/core/motion/utils/StopEngine;


# static fields
.field private static final UNSET:D = 1.7976931348623157E308


# instance fields
.field private mBoundaryMode:I

.field mDamping:D

.field private mInitialized:Z

.field private mLastTime:F

.field private mLastVelocity:D

.field private mMass:F

.field private mPos:F

.field private mStiffness:D

.field private mStopThreshold:F

.field private mTargetPos:D

.field private mV:F


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mDamping:D

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mInitialized:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_a
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mBoundaryMode:I

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

    :goto_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x20

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method private d9b017750e5ac80f1d61e581a3f37e77m(D)V
    .locals 25

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_1
    move-wide/from16 v17, v3

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

    :goto_2
    add-double v14, v14, v23

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_3
    if-lt v8, v5, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_4
    div-double v19, v19, v21

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_5
    float-to-double v14, v9

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_6
    div-double/2addr v7, v5

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    iget v10, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mBoundaryMode:I

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

    :goto_8
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    mul-double v23, v3, v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_c
    iput v9, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    iput v5, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_e
    neg-float v5, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_f
    const-wide/high16 v7, 0x4010000000000000L    # 4.0

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

    :goto_10
    move-wide/from16 v23, v1

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput v9, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    iget-wide v12, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mTargetPos:D

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_13
    iget v5, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    mul-double/2addr v14, v10

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move/from16 v5, v16

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

    nop

    :goto_16
    iget v5, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    div-double v21, v1, v21

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_18
    sub-float/2addr v9, v5

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-gtz v9, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_1
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-gtz v10, :cond_2

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_2
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_1d
    iget v7, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mMass:F

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1e
    mul-double v1, v11, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_1f
    mul-double v23, v6, v3

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    float-to-double v3, v5

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_21
    mul-double v11, v3, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_22
    iput v5, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    nop

    nop

    :goto_23
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move/from16 v16, v5

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_25
    move-object/from16 v0, p0

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

    nop

    :goto_26
    sub-double v11, v11, v23

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_28
    add-double/2addr v7, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_29
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_2a
    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mDamping:D

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

    :goto_2b
    move-wide/from16 v19, v11

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    div-double/2addr v5, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_2d
    neg-double v11, v14

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

    :goto_2e
    iget v5, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_2f
    and-int/lit8 v11, v10, 0x1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_30
    iget v10, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mMass:F

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

    :goto_31
    float-to-double v10, v5

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/high16 v9, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_33
    float-to-double v7, v7

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

    :goto_34
    double-to-float v9, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_35
    iget-wide v5, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStiffness:D

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

    :goto_36
    sub-double/2addr v10, v12

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_37
    const/high16 v9, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_38
    div-double/2addr v14, v3

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

    :goto_39
    iget-wide v1, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStiffness:D

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_3a
    move-wide/from16 v19, v3

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_3b
    const-wide/high16 v7, 0x4022000000000000L    # 9.0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3c
    mul-double/2addr v11, v1

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

    nop

    :goto_3d
    float-to-double v9, v9

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3e
    div-double/2addr v11, v1

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

    nop

    :goto_3f
    neg-double v14, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_40
    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_41
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const/4 v12, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_43
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

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

    :goto_44
    add-double v3, v3, v21

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

    :goto_45
    neg-float v9, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_46
    if-eq v9, v10, :cond_3

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_3
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_47
    iput v9, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    div-double v6, p1, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_49
    add-double/2addr v10, v1

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    sub-double/2addr v14, v10

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

    :goto_4b
    move-wide/from16 p1, v10

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    move-wide/from16 v3, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_4d
    if-lez v0, :cond_4

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_53

    nop

    :goto_4e
    float-to-double v3, v10

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_4f
    add-double v3, v3, v19

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_50
    div-double v23, v23, v21

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_51
    const/4 v11, 0x0

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

    :goto_52
    sub-double/2addr v14, v12

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_53
    goto/32 :goto_1b

    nop

    nop

    :goto_54
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_55
    cmpg-float v11, v9, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_56
    mul-double/2addr v5, v7

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    move-wide/from16 v1, v23

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_58
    cmpl-float v9, v5, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_59
    if-ltz v11, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    :cond_5
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    if-eq v11, v12, :cond_6

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_5b
    double-to-float v5, v10

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5c
    mul-double v5, v5, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5d
    move-wide/from16 v19, v14

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5e
    mul-double/2addr v10, v3

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iput v5, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    nop

    nop

    :goto_60
    goto/32 :goto_13

    nop

    nop

    :goto_61
    and-int/lit8 v9, v10, 0x2

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    mul-double v19, v14, v6

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

    :goto_63
    const/4 v10, 0x2

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

    :goto_64
    iget v9, v0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_65
    add-double/2addr v9, v11

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_66
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    :goto_67
    goto/32 :goto_1a

    nop

    nop

    :goto_68
    const v1, 0xf

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_69
    float-to-double v10, v9

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

    :goto_6a
    float-to-double v1, v10

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_6b
    neg-float v5, v5

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_6c
    float-to-double v3, v5

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_6d
    float-to-double v10, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_6e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_6f
    int-to-double v6, v5

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_70
    double-to-int v5, v7

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop
.end method


# virtual methods
.method public debug(Ljava/lang/String;F)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

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
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public getAcceleration()F
    .locals 10

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    sub-double/2addr v4, v6

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    iget-wide v6, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mTargetPos:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    double-to-float v6, v6

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_4
    mul-double/2addr v6, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_5
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mDamping:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6
    iget v7, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mMass:F

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return v6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStiffness:D

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    float-to-double v4, v4

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sub-double/2addr v6, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    const v0, 0x8

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d
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

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    neg-double v6, v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    float-to-double v8, v8

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
    goto/32 :goto_13

    nop

    :goto_12
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x11

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    iget v8, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_16
    mul-double/2addr v8, v2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v4, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

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

    :goto_18
    div-float/2addr v6, v7

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public getInterpolation(F)F
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mLastTime:F

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x18

    nop

    nop

    goto/32 :goto_2

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

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    float-to-double v0, v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->d9b017750e5ac80f1d61e581a3f37e77m(D)V

    goto/32 :goto_a

    nop

    nop

    :goto_8
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

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

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_a
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mLastTime:F

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

    :goto_b
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    const v0, 0x8

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sub-float v0, p1, v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public getVelocity()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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

    :goto_1
    return v0

    nop

    nop
.end method

.method public getVelocity(F)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public isStopped()Z
    .locals 14

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v12, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStopThreshold:F

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStiffness:D

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

    :goto_2
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mTargetPos:D

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    const/4 v12, 0x0

    nop

    :goto_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    goto/32 :goto_1a

    nop

    :goto_7
    float-to-double v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v12, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9
    mul-double v8, v4, v4

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

    :goto_a
    float-to-double v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    add-double/2addr v8, v10

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    float-to-double v12, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    :goto_f
    sub-double/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    :goto_11
    div-double v10, v8, v2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_12
    mul-double/2addr v8, v6

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

    :goto_13
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    const/4 v12, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    float-to-double v6, v6

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x18

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

    :goto_18
    iget v6, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mMass:F

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1d

    nop

    nop

    :goto_1a
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1b
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return v12

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    mul-double/2addr v10, v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1f
    mul-double v10, v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_20
    const v0, 0x1b

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

    :goto_21
    iget v4, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mV:F

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_22
    cmpg-double v12, v10, v12

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method log(Ljava/lang/String;)V
    .locals 4

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_3
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

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

    :goto_5
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    goto/32 :goto_1

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

    :goto_7
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    :goto_9
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_a
    new-instance v0, Ljava/lang/Throwable;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aget-object v0, v0, v1

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

    :goto_e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    :goto_f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_14
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

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

    :goto_15
    if-lez v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_16
    const-string v2, ":"

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v2, ") "

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_12

    nop

    :goto_1a
    const-string v2, "() "

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const-string v2, ".("

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

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

    :goto_23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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

    :goto_25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public springConfig(FFFFFFFI)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mLastTime:F

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    iput p7, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStopThreshold:F

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2
    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mDamping:D

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

    :goto_3
    float-to-double v0, p6

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

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
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_6
    const v0, 0x15

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_7
    float-to-double v0, p2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x0

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

    :goto_9
    goto/32 :goto_10

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    iput p4, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mMass:F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    float-to-double v0, p3

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

    :goto_e
    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mStiffness:D

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    :goto_11
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mInitialized:Z

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_12
    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mLastVelocity:D

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_13
    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mTargetPos:D

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

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x1c

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

    :goto_16
    iput p8, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mBoundaryMode:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_17
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->mPos:F

    nop

    goto/32 :goto_d

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

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_19
    float-to-double v0, p5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method
