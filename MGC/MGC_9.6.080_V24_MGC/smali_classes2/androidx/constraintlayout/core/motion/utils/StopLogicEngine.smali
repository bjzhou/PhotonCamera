.class public Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;
.super Ljava/lang/Object;
.source "StopLogicEngine.java"

# interfaces
.implements Landroidx/constraintlayout/core/motion/utils/StopEngine;


# static fields
.field private static final EPSILON:F = 1.0E-5f


# instance fields
.field private mBackwards:Z

.field private mDone:Z

.field private mLastPosition:F

.field private mNumberOfStages:I

.field private mStage1Duration:F

.field private mStage1EndPosition:F

.field private mStage1Velocity:F

.field private mStage2Duration:F

.field private mStage2EndPosition:F

.field private mStage2Velocity:F

.field private mStage3Duration:F

.field private mStage3EndPosition:F

.field private mStage3Velocity:F

.field private mStartPosition:F

.field private mType:Ljava/lang/String;


# direct methods
.method private 2a152fbb2b231722b27f0c52bb0c3109m(F)F
    .locals 5

    goto/32 :goto_3e

    nop

    nop

    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2EndPosition:F

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

    :goto_1
    mul-float/2addr v4, p1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_2
    mul-float v4, v3, p1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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
    return v1

    nop

    nop

    :goto_5
    goto/32 :goto_27

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    :goto_7
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Velocity:F

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_8
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3EndPosition:F

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

    :goto_9
    mul-float/2addr v4, p1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v4, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_b
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_d
    add-float/2addr v1, v4

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

    :goto_e
    if-lez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    cmpg-float v4, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_10
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1EndPosition:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_11
    sub-float/2addr v4, v3

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

    :goto_12
    return v0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    mul-float/2addr v3, p1

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_15
    mul-float/2addr v0, v2

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-float/2addr v1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_17
    const/high16 v2, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_18
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

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

    :goto_1a
    if-lez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1b
    add-float/2addr v3, v4

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

    :goto_1c
    if-eq v1, v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return v3

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_20
    mul-float v3, v1, p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_21
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1EndPosition:F

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_22
    const v1, 0xa

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

    :goto_23
    if-ltz v4, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :cond_4
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_24
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Duration:F

    nop

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

    :goto_25
    goto/32 :goto_13

    nop

    :goto_26
    goto/32 :goto_1f

    nop

    nop

    :goto_27
    iput-boolean v3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mDone:Z

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_28
    mul-float/2addr v0, v2

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_29
    mul-float/2addr v0, v2

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sub-float/2addr v4, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget v4, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Velocity:F

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

    :goto_2c
    div-float/2addr v4, v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    mul-float/2addr v4, p1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2e
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Velocity:F

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

    :goto_2f
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2EndPosition:F

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_30
    cmpg-float v1, p1, v0

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_31
    const/4 v4, 0x2

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

    :goto_32
    mul-float v4, v3, p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    sub-float/2addr p1, v0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_34
    mul-float/2addr v4, p1

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

    :goto_35
    div-float/2addr v3, v0

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

    nop

    :goto_36
    sub-float/2addr p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_37
    add-float/2addr v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_38
    sub-float/2addr v1, v3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_39
    mul-float/2addr v3, p1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    return v0

    nop

    :goto_3b
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_3d
    cmpg-float v1, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3e
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_26

    nop

    :goto_40
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mDone:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_41
    return v0

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_43
    if-eq v1, v4, :cond_5

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2f

    nop

    nop

    :goto_44
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Duration:F

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_45
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_47
    div-float/2addr v4, v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_2

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

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mBackwards:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mDone:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method private d700486cc6af0c35fc368ec249848f0am(FFFFF)V
    .locals 15

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_0
    move/from16 v2, p4

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

    :goto_1
    iput v2, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Velocity:F

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v9, "accelerate decelerate"

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_3
    iput v4, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_4
    if-ltz v14, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :cond_0
    goto/32 :goto_7d

    nop

    nop

    :goto_5
    div-float v9, v2, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_6
    goto/32 :goto_94

    nop

    nop

    nop

    :goto_7
    mul-float v3, v2, v9

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

    :goto_8
    iput v9, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput v1, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1EndPosition:F

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput v1, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2EndPosition:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_b
    iput v4, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Velocity:F

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    sub-float/2addr v7, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_d
    div-float v5, v4, p3

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_e
    iput v13, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

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

    :goto_f
    iput-object v8, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mType:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_10
    sub-float v12, v1, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_11
    add-float v10, v4, v2

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput v7, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2EndPosition:F

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_13
    sub-float v3, v13, v4

    nop

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

    :goto_14
    iput v2, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Velocity:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_15
    iput v7, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Duration:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_17
    cmpg-float v12, v12, p5

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    :goto_19
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v9, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mType:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_1b
    div-float/2addr v9, v7

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput v8, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1EndPosition:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_1d
    mul-float/2addr v9, v3

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_1e
    mul-float v6, v5, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    cmpl-float v8, v6, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_20
    iput v4, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Velocity:F

    nop

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

    :goto_21
    if-ltz v13, :cond_1

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sub-float v7, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_23
    iput v4, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Velocity:F

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

    :goto_24
    div-float v3, v3, p3

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_25
    neg-float v8, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_26
    cmpg-float v14, v13, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_27
    iput v3, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v3, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mType:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_29
    iput v4, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Velocity:F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2a
    sub-float v3, v12, v4

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

    nop

    :goto_2b
    const-string v3, "accelerate cruse decelerate"

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_2c
    add-float v9, v4, v12

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2d
    div-float v3, v4, p3

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_2e
    const/4 v10, 0x2

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

    :goto_2f
    div-float v13, v13, p3

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

    :goto_30
    div-float/2addr v3, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_31
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_32
    iput v3, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Velocity:F

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_38

    nop

    nop

    :goto_35
    cmpl-float v4, p1, v3

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_36
    mul-float/2addr v10, v3

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_37
    mul-float v3, v2, v9

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    mul-float v12, p3, v1

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    add-float v12, v11, v5

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 v3, 0x0

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_3b
    div-float v13, v12, p3

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iput v1, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3EndPosition:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_3d
    iput v7, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Duration:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_3e
    iput v9, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Duration:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3f
    sub-float v7, v1, v10

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

    :goto_40
    iput v9, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Duration:F

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_41
    div-float v9, v2, p3

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_42
    div-float v3, v3, p3

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    nop

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

    :goto_44
    iput v3, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Duration:F

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_45
    sub-float v3, v2, v4

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_46
    move/from16 v1, p2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    div-float v3, v3, p3

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iput v3, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_49
    div-float/2addr v7, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_4a
    double-to-float v12, v12

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_4b
    const v1, 0x1f

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

    :goto_4c
    iput v1, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2EndPosition:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_4d
    iput v2, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

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

    :goto_4e
    return-void

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_89

    nop

    nop

    :goto_50
    div-float/2addr v13, v7

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_51
    add-float v10, v4, v2

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    :goto_52
    move-object v0, p0

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

    nop

    :goto_53
    iput v4, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Velocity:F

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

    :goto_54
    iput v3, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_55
    iput v9, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1EndPosition:F

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_56
    float-to-double v13, v13

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_57
    return-void

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-eqz v4, :cond_2

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_88

    nop

    nop

    :goto_5a
    div-float v9, v13, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_5b
    mul-float v13, v4, v4

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    mul-float v11, v8, v4

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_5d
    iput v3, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Velocity:F

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    const-string v8, "hard stop"

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_60
    return-void

    nop

    nop

    :goto_61
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_62
    iput v12, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_63
    move/from16 v4, p1

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iput v10, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_66
    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_67
    sub-float v8, v1, v6

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iput v3, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_69
    if-ltz v8, :cond_3

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

    nop

    :cond_3
    goto/32 :goto_25

    nop

    nop

    :goto_6a
    iput v13, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Duration:F

    nop

    nop

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

    :goto_6b
    iput v8, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_6c
    sub-float v3, v2, v4

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

    :goto_6d
    iput v10, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1EndPosition:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_6e
    iput v11, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    div-float v8, v8, p3

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_70
    iput v1, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2EndPosition:F

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_71
    iput v9, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iput-object v3, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mType:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_73
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_74
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :cond_4
    goto/32 :goto_93

    nop

    :goto_75
    div-float v3, v3, p3

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iput-object v7, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mType:Ljava/lang/String;

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    mul-float/2addr v9, v3

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_78
    iput-object v9, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mType:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_79
    mul-float/2addr v7, v1

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

    :goto_7a
    iput-boolean v3, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mDone:Z

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iput v1, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3EndPosition:F

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_7c
    double-to-float v13, v13

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

    :goto_7d
    const-string v9, "backward accelerate, decelerate"

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    const/high16 v7, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_7f
    iput v10, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_80
    iput v7, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    mul-float v13, p3, v12

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iput v4, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Velocity:F

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_83
    iput v13, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_84
    goto/16 :goto_64

    nop

    nop

    :goto_85
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_86
    div-float v9, v12, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_87
    div-float/2addr v7, v2

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_88
    const v4, 0x38d1b717    # 1.0E-4f

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    const-string v3, "backward accelerate cruse decelerate"

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    iput v4, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Velocity:F

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_8b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iput v2, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8e
    if-gez v8, :cond_5

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_90
    sub-float v7, v1, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iput v9, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Duration:F

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

    nop

    :goto_92
    div-float/2addr v6, v7

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

    :goto_93
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_94
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    add-float v9, v4, v13

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    float-to-double v12, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_97
    div-float/2addr v11, v7

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    cmpg-float v13, v12, v2

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

    :goto_99
    div-float/2addr v3, v7

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_9a
    sub-float v13, v12, v4

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

    :goto_9b
    div-float/2addr v10, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9c
    iput v9, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1EndPosition:F

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9d
    sub-float v7, v1, v3

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_9e
    iput v1, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3EndPosition:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_9f
    div-float/2addr v7, v4

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

    :goto_a0
    cmpg-float v8, v4, v3

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_a1
    iput v9, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Duration:F

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a2
    iput v10, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1EndPosition:F

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_a3
    div-float/2addr v10, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    div-float/2addr v9, v7

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_a5
    div-float v11, v8, v4

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    if-ltz v12, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_6
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_a7
    mul-float/2addr v10, v3

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    iput v3, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a9
    sub-float/2addr v7, v3

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_aa
    const/4 v9, 0x3

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

    :goto_ab
    add-float/2addr v12, v13

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_ac
    const-string v7, "cruse decelerate"

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_ad
    iput v10, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    iput v7, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2EndPosition:F

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    iput v3, v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Velocity:F

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public config(FFFFFF)V
    .locals 6

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStartPosition:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    move v4, p6

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2
    move v3, p5

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    move v4, p6

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
    const v0, 0x1c

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    cmpl-float v1, p1, p2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_6
    move v5, p4

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_7
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

    :goto_8
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    neg-float v1, p3

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
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mBackwards:Z

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    move v1, p3

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sub-float v2, p1, p2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mDone:Z

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
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    move v3, p5

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    :goto_14
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_15
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->d700486cc6af0c35fc368ec249848f0am(FFFFF)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_16
    move-object v0, p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_17
    move v5, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_18
    goto :goto_21

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1b
    const/4 v0, 0x1

    nop

    nop

    :goto_1c
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1d
    if-gtz v1, :cond_1

    nop

    nop

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

    :goto_1e
    const/4 v0, 0x0

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

    :goto_1f
    sub-float v2, p2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_20
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->d700486cc6af0c35fc368ec249848f0am(FFFFF)V

    :goto_21
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    :goto_23
    goto/32 :goto_c

    nop

    nop
.end method

.method public debug(Ljava/lang/String;F)Ljava/lang/String;
    .locals 8

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v7, 0x2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_3
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v6, 0x1

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

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

    nop

    nop

    :goto_7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

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

    :goto_8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_c
    if-ltz v3, :cond_0

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    :goto_d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    :goto_12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_13
    const-string v2, " stage 2\n"

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

    :goto_14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_16
    if-eq v2, v6, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_65

    nop

    nop

    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    cmpg-float v3, p2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_19
    if-gt v2, v7, :cond_2

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    :cond_2
    goto/32 :goto_3d

    nop

    nop

    :goto_1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    :goto_1c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1f
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_20
    const-string v1, " ===== "

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_21
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget v4, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_26
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_28
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_3
    goto/32 :goto_26

    nop

    :goto_2a
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    cmpg-float v2, p2, v1

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_2c
    const-string v2, "stage 0\n"

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v3, " dur "

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
    return-object v0

    nop

    nop

    :goto_2f
    goto/32 :goto_9e

    nop

    nop

    :goto_30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_31
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3EndPosition:F

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_32
    iget v5, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Velocity:F

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-boolean v3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mBackwards:Z

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_39
    iget v7, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_3a
    iget v7, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2EndPosition:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3b
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget v6, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1EndPosition:F

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_3d
    new-instance v2, Ljava/lang/StringBuilder;

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

    nop

    nop

    :goto_3e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_3f
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    return-object v0

    nop

    nop

    :goto_41
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_42
    const-string v3, "  stages "

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

    :goto_43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :goto_48
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_49
    if-gt v2, v6, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const-string v5, " pos "

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_4c
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Duration:F

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    new-instance v1, Ljava/lang/StringBuilder;

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

    :goto_4e
    const-string v3, "backwards"

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

    :goto_4f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_50
    goto/16 :goto_71

    nop

    :goto_51
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_52
    if-nez v3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4e

    nop

    nop

    :goto_53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_54
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Duration:F

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

    nop

    nop

    :goto_55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_56
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

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

    nop

    nop

    :goto_57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_58
    cmpg-float v1, p2, v1

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_5a
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    :goto_5c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    :goto_5e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_5f
    if-ltz v1, :cond_6

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_6
    goto/32 :goto_4d

    nop

    nop

    :goto_60
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    :goto_61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_62
    if-eq v2, v7, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :cond_7
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_64
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    nop

    :goto_65
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_68
    const-string v2, "end stage 0\n"

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_69
    const-string v2, "end stage 1\n"

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    const-string v4, " vel "

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

    :goto_6b
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    :goto_70
    const-string v3, "forward "

    nop

    nop

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_8d

    nop

    nop

    :goto_72
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    const-string v1, "\n"

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

    :goto_76
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

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

    :goto_78
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

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

    :goto_79
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Duration:F

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_7a
    iget v7, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Duration:F

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_7d
    const-string v3, " time = "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_9d

    nop

    nop

    :goto_80
    iget v3, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Velocity:F

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_81
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_82
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    sub-float/2addr p2, v1

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_84
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_d

    nop

    nop

    :goto_85
    sub-float/2addr p2, v1

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

    :goto_86
    const-string v2, " end stage 2\n"

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_88
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_89
    return-object v0

    nop

    nop

    nop

    nop

    :goto_8a
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mType:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    :goto_90
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_91
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    :goto_94
    goto/32 :goto_1f

    nop

    nop

    :goto_95
    if-lez v2, :cond_8

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_21

    nop

    nop

    :goto_96
    new-instance v0, Ljava/lang/StringBuilder;

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

    :goto_97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

    :goto_9a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    nop

    nop

    :goto_9e
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    const-string v2, " stage 1\n"

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_a2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop
.end method

.method public getInterpolation(F)F
    .locals 2

    goto/32 :goto_e

    nop

    nop

    :goto_0
    add-float/2addr v1, v0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sub-float/2addr v1, v0

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

    :goto_3
    return v1

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStartPosition:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mLastPosition:F

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

    :goto_7
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_1

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    :goto_d
    goto/32 :goto_c

    nop

    :goto_e
    const v0, 0xf

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v1, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->2a152fbb2b231722b27f0c52bb0c3109m(F)F

    move-result v0

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

    :goto_12
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStartPosition:F

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

    :goto_13
    iget-boolean v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mBackwards:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_b

    nop
.end method

.method public getVelocity()F
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    neg-float v0, v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->getVelocity(F)F

    move-result v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mBackwards:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->getVelocity(F)F

    move-result v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    return v0

    nop

    nop

    nop

    :goto_9
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mLastPosition:F

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

    :goto_a
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mLastPosition:F

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
.end method

.method public getVelocity(F)F
    .locals 3

    goto/32 :goto_12

    nop

    nop

    :goto_0
    sub-float/2addr v1, v2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1
    if-eq v1, v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2
    if-ltz v1, :cond_1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    :goto_3
    mul-float/2addr v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_4
    cmpg-float v1, p1, v0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_6
    if-eq v1, v2, :cond_2

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    :goto_7
    return v1

    nop

    nop

    :goto_8
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Velocity:F

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

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

    :goto_b
    const/4 v2, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    sub-float/2addr v2, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Duration:F

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_e
    return v0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Velocity:F

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

    :goto_11
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    :goto_12
    const v0, 0xd

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

    :goto_13
    div-float/2addr v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_14
    mul-float v2, v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_15
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Velocity:F

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_17
    sub-float/2addr p1, v0

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

    :goto_18
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3Duration:F

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_19
    return v1

    nop

    nop

    :goto_1a
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    mul-float/2addr v2, p1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sub-float/2addr p1, v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return v1

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1f
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2Velocity:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_20
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mNumberOfStages:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_21
    return v0

    nop

    nop

    :goto_22
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3EndPosition:F

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    cmpg-float v1, p1, v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_26
    return v0

    nop

    :goto_27
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_28
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage2EndPosition:F

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_29
    if-ltz v2, :cond_4

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
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    sub-float/2addr v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2e
    div-float/2addr v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_2f
    div-float/2addr v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_30
    if-lez v1, :cond_5

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    add-int v0, v0, v1

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

    :goto_32
    add-float/2addr v1, v2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage1Duration:F

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_34
    add-float/2addr v1, v2

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

    :goto_35
    rem-int v0, v0, v1

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

    :goto_36
    cmpg-float v2, p1, v0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop
.end method

.method public isStopped()Z
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->getVelocity()F

    move-result v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x3727c5ac    # 1.0E-5f

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    goto/32 :goto_13

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
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_8
    sub-float/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    if-ltz v0, :cond_0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    :goto_b
    const v0, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

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

    nop

    :goto_d
    cmpg-float v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    cmpg-float v0, v0, v1

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

    :goto_f
    if-lez v0, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_10
    const/4 v0, 0x1

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

    :goto_11
    if-ltz v0, :cond_2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    :goto_12
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mLastPosition:F

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->mStage3EndPosition:F

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

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_1

    nop

    nop

    :goto_18
    goto/32 :goto_0

    nop

    nop
.end method
