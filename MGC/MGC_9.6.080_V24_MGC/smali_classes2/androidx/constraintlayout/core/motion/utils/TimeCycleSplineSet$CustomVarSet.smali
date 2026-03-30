.class public Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;
.super Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomVarSet"
.end annotation


# instance fields
.field mAttributeName:Ljava/lang/String;

.field mCache:[F

.field mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

.field mTempValues:[F

.field mWaveProperties:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    aget-object v0, v0, v1

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

    :goto_1
    const v1, 0x19

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

    nop

    :goto_2
    const v0, 0x1f

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

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_7
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mAttributeName:Ljava/lang/String;

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

    :goto_a
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mWaveProperties:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    const-string v0, ","

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_e
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public setPoint(IFFIF)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x8

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xd

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
    throw v0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    :goto_6
    const-string v1, "don\'t call for custom attribute call setPoint(pos, ConstraintAttribute,...)"

    nop

    goto/32 :goto_c

    nop

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

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_9
    new-instance v0, Ljava/lang/RuntimeException;

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

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setPoint(ILandroidx/constraintlayout/core/motion/CustomVariable;FIF)V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->append(I[F)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_3
    const v0, 0x1f

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    :goto_9
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mWaveProperties:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;

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
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    new-array v1, v1, [F

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
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_f
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_10
    aput p5, v1, v2

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

    :goto_11
    const/4 v2, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mWaveShape:I

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
    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

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

    :goto_14
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->append(ILandroidx/constraintlayout/core/motion/CustomVariable;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mWaveShape:I

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

    :goto_16
    aput p3, v1, v2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method

.method public setProperty(Landroidx/constraintlayout/core/motion/MotionWidget;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .locals 20

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aget v4, v4, v7

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v4, v6, v7, v8}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput v11, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->last_cycle:F

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_3
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mCache:[F

    nop

    nop

    goto/32 :goto_8

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

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_8
    array-length v11, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_9
    rem-double/2addr v14, v7

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move-wide/from16 v2, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mCache:[F

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    float-to-double v7, v6

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    const-wide/16 v18, 0x0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v12, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mTempValues:[F

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_f
    move-object/from16 v1, p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    iput-boolean v8, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mContinue:Z

    nop

    :goto_11
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_12
    aget v12, v12, v8

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_13
    add-int/lit8 v8, v8, 0x1

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

    :goto_14
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_16
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_17
    mul-double/2addr v11, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_18
    iget v7, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->last_cycle:F

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_19
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

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

    :goto_1a
    if-nez v7, :cond_0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v8, 0x1

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

    :goto_1c
    cmpl-double v12, v14, v18

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

    :goto_1d
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    :goto_20
    iput v7, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->last_cycle:F

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    mul-double v11, v11, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_22
    iget-boolean v11, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mContinue:Z

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

    :goto_23
    invoke-virtual {v8, v11}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->valueAt(I)Landroidx/constraintlayout/core/motion/CustomVariable;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_24
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_25
    iput-boolean v8, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mContinue:Z

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

    :goto_26
    const/4 v8, 0x1

    nop

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

    :goto_27
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v11, 0x0

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

    :goto_29
    invoke-virtual {v13, v1, v7, v12}, Landroidx/constraintlayout/core/motion/utils/KeyCache;->getFloatValue(Ljava/lang/Object;Ljava/lang/String;I)F

    move-result v7

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iput v7, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->last_cycle:F

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_2b
    if-nez v8, :cond_2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iput-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->last_time:J

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    array-length v7, v4

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_30
    add-float/2addr v12, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_31
    add-int/lit8 v6, v6, -0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mTempValues:[F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_33
    double-to-float v7, v14

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_34
    float-to-double v14, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_35
    const/4 v11, 0x0

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

    :goto_36
    iget v7, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->last_cycle:F

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

    :goto_37
    iput-boolean v11, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mContinue:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v8, v1, v11}, Landroidx/constraintlayout/core/motion/CustomVariable;->setInterpolatedValue(Landroidx/constraintlayout/core/motion/MotionWidget;[F)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    move-object/from16 v13, p5

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    return v8

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    float-to-double v14, v12

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3e
    if-nez v12, :cond_3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_40
    add-double/2addr v14, v11

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_41
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mTempValues:[F

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_42
    iget-wide v9, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->last_time:J

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_43
    mul-float/2addr v12, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_44
    iget v7, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->last_cycle:F

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_45
    aget v12, v12, v8

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

    :goto_46
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_47
    long-to-double v11, v9

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->calcWave(F)F

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/16 :goto_3a

    nop

    nop

    :goto_4a
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mCache:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_4c
    cmpl-float v8, v6, v8

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_4d
    const/4 v12, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-lt v8, v11, :cond_4

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4f
    float-to-double v6, v5

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_50
    aput v12, v11, v8

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v12, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mTempValues:[F

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_52
    sub-long v9, v2, v9

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_53
    aget v6, v4, v6

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_54
    const-wide v16, 0x3e112e0be826d695L    # 1.0E-9

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_56
    iget-boolean v8, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mContinue:Z

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_57
    or-int/2addr v11, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_58
    const/4 v12, 0x0

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_5b
    const/4 v12, 0x0

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_5c
    if-nez v7, :cond_5

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_65

    nop

    nop

    :goto_5d
    move/from16 v5, p2

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_5e
    move-object/from16 v13, p5

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

    :goto_5f
    sub-int/2addr v7, v8

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

    :goto_60
    iget v7, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->last_cycle:F

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_61
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_62
    goto/16 :goto_2f

    nop

    nop

    :goto_63
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    array-length v6, v4

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mAttributeName:Ljava/lang/String;

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop
.end method

.method public setup(I)V
    .locals 16

    goto/32 :goto_14

    nop

    nop

    :goto_0
    int-to-double v11, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v5, v2, 0x2

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2
    iput-object v5, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mTempValues:[F

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    move-result v2

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

    :goto_4
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_5
    aput v1, v6, v3

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_8
    aput-wide v11, v4, v6

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_13

    nop

    :goto_a
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v3, 0x0

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
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mTempValues:[F

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

    :goto_d
    mul-double/2addr v11, v13

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    array-length v13, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    const-wide v13, 0x3f847ae147ae147bL    # 0.01

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_10
    if-lt v11, v13, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

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

    :goto_11
    float-to-double v12, v12

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v11, 0x0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0xa

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
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_1
    goto/32 :goto_32

    nop

    :goto_16
    aput-wide v12, v11, v2

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move/from16 v3, p1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_18
    float-to-double v14, v12

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mWaveProperties:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1a
    aput-wide v14, v13, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->valueAt(I)Landroidx/constraintlayout/core/motion/CustomVariable;

    move-result-object v2

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1d
    aput-wide v13, v11, v12

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

    :goto_1e
    iput-object v5, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mCache:[F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1f
    aput v5, v6, v7

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v10, v6}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$FloatArray;->valueAt(I)[F

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_21
    invoke-static {v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v9, v6}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->valueAt(I)Landroidx/constraintlayout/core/motion/CustomVariable;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_23
    goto/16 :goto_38

    nop

    :goto_24
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_25
    new-array v5, v2, [F

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_26
    add-int/lit8 v5, v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_27
    aget v13, v10, v7

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

    :goto_28
    iget-object v12, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mTempValues:[F

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2a
    const v1, 0x18

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

    :goto_2b
    invoke-virtual {v8, v6}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->keyAt(I)I

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2c
    new-array v5, v5, [F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    aget v12, v10, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2e
    add-int/lit8 v11, v11, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2f
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v9, v11}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValuesToInterpolate([F)V

    goto/32 :goto_12

    nop

    nop

    :goto_31
    add-int/lit8 v12, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_35

    nop

    nop

    :goto_33
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_34
    return-void

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_1b

    nop

    nop

    :goto_36
    const/4 v7, 0x1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_37
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    check-cast v5, [[D

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

    :goto_3a
    aget-object v11, v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_3b
    iput-object v6, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_3c
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3d
    float-to-double v13, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3e
    aget v12, v12, v11

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3f
    if-lt v6, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_40
    new-array v4, v1, [D

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_41
    const/4 v6, 0x2

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

    :goto_42
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_43
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->size()I

    move-result v1

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

    :goto_44
    add-int/lit8 v6, v6, 0x1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_46
    new-array v6, v6, [I

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

    nop

    :goto_47
    aget-object v11, v5, v6

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

    :goto_48
    rem-int v0, v0, v1

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

    nop

    :goto_49
    aget-object v13, v5, v6

    nop

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
.end method
