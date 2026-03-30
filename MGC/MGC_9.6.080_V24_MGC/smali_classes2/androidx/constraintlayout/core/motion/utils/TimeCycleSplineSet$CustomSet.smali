.class public Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;
.super Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomSet"
.end annotation


# instance fields
.field mAttributeName:Ljava/lang/String;

.field mCache:[F

.field mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

.field mTempValues:[F

.field mWaveProperties:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    aget-object v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

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

    nop

    nop

    :goto_7
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;-><init>()V

    goto/32 :goto_8

    nop

    nop

    :goto_8
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mWaveProperties:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_a
    const v0, 0x11

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mAttributeName:Ljava/lang/String;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    const v1, 0x18

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_13
    const-string v0, ","

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method


# virtual methods
.method public setPoint(IFFIF)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    :goto_0
    const v1, 0x7

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

    :goto_1
    throw v0

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

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

    :goto_7
    const-string v1, "don\'t call for custom attribute call setPoint(pos, ConstraintAttribute,...)"

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
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

    :cond_0
    goto/32 :goto_8

    nop

    :goto_b
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public setPoint(ILandroidx/constraintlayout/core/motion/CustomAttribute;FIF)V
    .locals 3

    goto/32 :goto_8

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->append(I[F)V

    goto/32 :goto_6

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    :goto_3
    new-array v1, v1, [F

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mWaveShape:I

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

    :goto_7
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x10

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

    :goto_9
    const v1, 0x16

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mWaveShape:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    aput p5, v1, v2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

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

    :goto_11
    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_13
    const/4 v1, 0x2

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
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mWaveProperties:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;->append(ILandroidx/constraintlayout/core/motion/CustomAttribute;)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    aput p3, v1, v2

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public setProperty(Landroidx/constraintlayout/core/motion/MotionWidget;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .locals 20

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v4, v6, v7, v8}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object/from16 v0, p0

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_2
    iget-boolean v11, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mContinue:Z

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object/from16 v13, p5

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

    :goto_4
    const/4 v8, 0x0

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

    :goto_5
    iput-boolean v11, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mContinue:Z

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_6
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_8
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_9
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mCache:[F

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-double/2addr v14, v7

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

    :goto_b
    goto :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aget v6, v4, v6

    nop

    nop

    goto/32 :goto_1b

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

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->last_time:J

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_10
    sub-long v9, v2, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_11
    aget v12, v12, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    :goto_13
    const/4 v12, 0x0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_15
    move-object/from16 v13, p5

    nop

    :goto_16
    goto/32 :goto_18

    nop

    nop

    :goto_17
    const/4 v8, 0x1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_18
    iget v7, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->last_cycle:F

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_19
    move/from16 v5, p2

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

    :goto_1a
    if-nez v12, :cond_1

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1b
    array-length v7, v4

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1c
    iget-boolean v8, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mContinue:Z

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sub-int/2addr v7, v8

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1e
    return v8

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v13, v1, v7, v12}, Landroidx/constraintlayout/core/motion/utils/KeyCache;->getFloatValue(Ljava/lang/Object;Ljava/lang/String;I)F

    move-result v7

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0xd

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1

    nop

    nop

    :goto_24
    goto/16 :goto_3b

    nop

    nop

    :goto_25
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_27
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mCache:[F

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_28
    const-wide v16, 0x3e112e0be826d695L    # 1.0E-9

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_29
    add-int/lit8 v6, v6, -0x2

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

    :goto_2a
    iput v11, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->last_cycle:F

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

    :goto_2b
    long-to-double v11, v9

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2c
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2d
    if-lt v8, v11, :cond_2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2e
    double-to-float v7, v14

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_2f
    const/4 v12, 0x0

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_30
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const-wide/16 v18, 0x0

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iput v7, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->last_cycle:F

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v12, 0x1

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_34
    add-int v0, v0, v1

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

    :goto_35
    if-nez v7, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_36
    float-to-double v14, v7

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_37
    iget v7, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->last_cycle:F

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mCache:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_39
    invoke-virtual {v8, v11}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;->valueAt(I)Landroidx/constraintlayout/core/motion/CustomAttribute;

    move-result-object v8

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 v8, 0x0

    nop

    :goto_3b
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v12, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3d
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_3e
    mul-double/2addr v11, v7

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_3f
    iget v7, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->last_cycle:F

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_41
    mul-double v11, v11, v16

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_42
    aget v4, v4, v7

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_43
    goto/16 :goto_14

    nop

    :goto_44
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_45
    cmpl-double v12, v14, v18

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_46
    float-to-double v7, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_47
    add-double/2addr v14, v11

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

    :goto_48
    float-to-double v14, v12

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

    :goto_49
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->calcWave(F)F

    move-result v7

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    move-wide/from16 v2, p3

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_4b
    iget-object v12, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_4c
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mAttributeName:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_4d
    add-float/2addr v12, v4

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_4e
    array-length v6, v4

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

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

    :goto_50
    if-nez v8, :cond_4

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_51
    or-int/2addr v11, v12

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

    :goto_52
    aget v12, v12, v8

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

    :goto_53
    const/4 v8, 0x1

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_54
    move-object/from16 v1, p1

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_55
    iput-boolean v8, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mContinue:Z

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_56
    iput-boolean v8, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mContinue:Z

    nop

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_58
    mul-float/2addr v12, v7

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_59
    aput v12, v11, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5a
    if-nez v7, :cond_5

    nop

    goto/32 :goto_c

    nop

    :cond_5
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_5c
    cmpl-float v8, v6, v8

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    float-to-double v6, v5

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_5e
    iput v7, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->last_cycle:F

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const/4 v11, 0x0

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget v7, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->last_cycle:F

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_62
    iget-wide v9, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->last_time:J

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_63
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_64
    array-length v11, v11

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v1, v8, v11}, Landroidx/constraintlayout/core/motion/MotionWidget;->setInterpolatedValue(Landroidx/constraintlayout/core/motion/CustomAttribute;[F)V

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public setup(I)V
    .locals 16

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mWaveProperties:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;->valueAt(I)Landroidx/constraintlayout/core/motion/CustomAttribute;

    move-result-object v2

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_3
    iget-object v12, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_4
    aput-wide v14, v13, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    goto :goto_11

    nop

    nop

    :goto_6
    goto/32 :goto_18

    nop

    nop

    :goto_7
    const/4 v7, 0x1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_9
    new-array v6, v6, [I

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

    :goto_a
    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_b
    add-int/lit8 v11, v11, 0x1

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

    :goto_c
    aput-wide v12, v11, v2

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

    :goto_d
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3c

    nop

    nop

    :goto_f
    int-to-double v11, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_10
    const/4 v6, 0x0

    nop

    :goto_11
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_12
    add-int/lit8 v5, v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_13
    new-array v5, v2, [F

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

    nop

    :goto_14
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_16
    aget-object v13, v5, v6

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

    :goto_17
    aput v5, v6, v7

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move/from16 v3, p1

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_19
    const v0, 0x6

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

    :goto_1a
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

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

    :goto_1b
    add-int/lit8 v5, v2, 0x2

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

    :goto_1c
    goto :goto_15

    nop

    :goto_1d
    goto/32 :goto_37

    nop

    nop

    :goto_1e
    new-array v4, v1, [D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    :goto_20
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput-object v5, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mCache:[F

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_22
    add-int/lit8 v12, v2, 0x1

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

    :goto_23
    const-wide v13, 0x3f847ae147ae147bL    # 0.01

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_24
    aget v13, v10, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_25
    float-to-double v14, v12

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_26
    aput v1, v6, v3

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v6, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_29
    aget v12, v10, v3

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_2a
    invoke-virtual {v10, v6}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->valueAt(I)[F

    move-result-object v10

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2b
    array-length v13, v12

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v8, v6}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;->keyAt(I)I

    move-result v8

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v6

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2e
    if-lt v6, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v1, 0x16

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_30
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

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

    :goto_31
    aget-object v11, v5, v6

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v6, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_33
    aput-wide v13, v11, v12

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iput-object v5, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v9, v6}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;->valueAt(I)Landroidx/constraintlayout/core/motion/CustomAttribute;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_36
    aget v12, v12, v11

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_37
    aget-object v11, v5, v6

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

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

    :goto_39
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_3a
    float-to-double v13, v13

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

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

    :goto_3c
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

    nop

    :goto_3d
    aput-wide v11, v4, v6

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v9, v11}, Landroidx/constraintlayout/core/motion/CustomAttribute;->getValuesToInterpolate([F)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/CustomAttribute;->numberOfInterpolatedValues()I

    move-result v2

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

    :goto_40
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_e

    nop

    :goto_42
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_43
    new-array v5, v5, [F

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_44
    rem-int v0, v0, v1

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_45
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_46
    mul-double/2addr v11, v13

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

    nop

    :goto_47
    check-cast v5, [[D

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_48
    if-lt v11, v13, :cond_2

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

    :cond_2
    goto/32 :goto_16

    nop

    nop

    :goto_49
    float-to-double v12, v12

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method
