.class public Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;
.super Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
.source "ViewTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomSet"
.end annotation


# instance fields
.field mAttributeName:Ljava/lang/String;

.field mCache:[F

.field mConstraintAttributeList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field mTempValues:[F

.field mWaveProperties:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "attribute",
            "attrList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)V"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x9

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
    aget-object v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mAttributeName:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    :goto_b
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_d
    iput-object p2, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_e
    const-string v0, ","

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

    nop

    :goto_f
    new-instance v0, Landroid/util/SparseArray;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x1

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

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public setPoint(IFFIF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "value",
            "period",
            "shape",
            "offset"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const-string v1, "don\'t call for custom attribute call setPoint(pos, ConstraintAttribute,...)"

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    const v0, 0x4

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x15

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    throw v0

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setPoint(ILandroidx/constraintlayout/widget/ConstraintAttribute;FIF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "value",
            "period",
            "shape",
            "offset"
        }
    .end annotation

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    aput p5, v1, v2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-array v1, v1, [F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mWaveShape:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    aput p3, v1, v2

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

    :goto_5
    const/4 v2, 0x0

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

    :goto_6
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    nop

    goto/32 :goto_f

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

    goto/32 :goto_10

    nop

    nop

    :goto_8
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_16

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
    iput v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mWaveShape:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/32 :goto_11

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_11
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_13
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_14
    goto/32 :goto_c

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop
.end method

.method public setProperty(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "t",
            "time",
            "cache"
        }
    .end annotation

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-wide v16, 0x3e112e0be826d695L    # 1.0E-9

    nop

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

    :goto_1
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2
    move-object/from16 v1, p1

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

    :goto_3
    iget-object v12, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_4
    sub-long v9, v2, v9

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_5
    aget v6, v4, v6

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    mul-double/2addr v11, v7

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

    :goto_7
    goto/32 :goto_49

    nop

    :goto_8
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_9
    mul-float/2addr v12, v7

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v8, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    iget-object v7, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mAttributeName:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v8, 0x1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_d
    iget v7, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->last_cycle:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    iput-boolean v11, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mContinue:Z

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v4, v6, v7, v8}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_10
    const/4 v11, 0x0

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_11
    iput v11, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->last_cycle:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_12
    iput v7, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->last_cycle:F

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

    :goto_13
    float-to-double v14, v7

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_14
    iget v7, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->last_cycle:F

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_15
    move/from16 v5, p2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    cmpl-double v12, v14, v18

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->calcWave(F)F

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_19
    move-object/from16 v13, p5

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    float-to-double v6, v5

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    float-to-double v7, v6

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1d
    iget-object v11, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mCache:[F

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

    :goto_1e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    aget v4, v4, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_20
    if-nez v7, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v8, 0x0

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_22
    double-to-float v7, v14

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_24
    iput-wide v2, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->last_time:J

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

    :goto_25
    aget v12, v12, v8

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v7, :cond_1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-boolean v11, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mContinue:Z

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_28
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    :goto_29
    if-lt v8, v11, :cond_3

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v12, 0x1

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    add-double/2addr v14, v11

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

    :goto_2c
    move-object/from16 v13, p5

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_2d
    sub-int/2addr v7, v8

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

    :goto_2e
    if-nez v8, :cond_4

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_1a

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_34
    invoke-virtual {v13, v1, v7, v12}, Landroidx/constraintlayout/core/motion/utils/KeyCache;->getFloatValue(Ljava/lang/Object;Ljava/lang/String;I)F

    move-result v7

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const-wide/16 v18, 0x0

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

    :goto_36
    rem-double/2addr v14, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_37
    invoke-static {v8, v1, v11}, Landroidx/constraintlayout/motion/utils/CustomSupport;->setInterpolatedValue(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V

    goto/32 :goto_21

    nop

    nop

    :goto_38
    const v1, 0x12

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_39
    array-length v11, v11

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_3c
    const/4 v8, 0x1

    nop

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

    :goto_3d
    const/4 v12, 0x0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_3e
    aput v12, v11, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_3f
    if-nez v12, :cond_5

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_40
    move-wide/from16 v2, p3

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

    nop

    :goto_41
    iget-wide v9, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->last_time:J

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    add-int/lit8 v6, v6, -0x2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_43
    iget v7, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->last_cycle:F

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_44
    iget v7, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->last_cycle:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_45
    add-float/2addr v12, v4

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_46
    iput v7, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->last_cycle:F

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

    :goto_47
    iput-boolean v8, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mContinue:Z

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    return v8

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_1e

    nop

    nop

    :goto_4a
    array-length v7, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4b
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v8, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4e
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_4f
    mul-double v11, v11, v16

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_50
    iget-object v12, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_51
    iget-boolean v8, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mContinue:Z

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_52
    iput-boolean v8, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mContinue:Z

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_32

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_56
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_57
    iget-object v11, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mCache:[F

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_59
    array-length v6, v4

    nop

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

    :goto_5a
    const/4 v12, 0x0

    nop

    nop

    :goto_5b
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    cmpl-float v8, v6, v8

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

    :goto_5d
    check-cast v8, Landroidx/constraintlayout/widget/ConstraintAttribute;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_5e
    float-to-double v14, v12

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_5f
    or-int/2addr v11, v12

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

    nop

    :goto_60
    aget v12, v12, v8

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_61
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_62
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_63
    iget-object v11, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mCache:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_64
    goto :goto_5b

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_66
    long-to-double v11, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public setup(I)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curveType"
        }
    .end annotation

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v10, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1
    const-wide v13, 0x3f847ae147ae147bL    # 0.01

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    aget v13, v10, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4
    check-cast v9, Landroidx/constraintlayout/widget/ConstraintAttribute;

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

    :goto_5
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_6
    new-array v4, v1, [D

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lt v6, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    :goto_9
    aput-wide v14, v13, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_a
    new-array v6, v6, [I

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_b
    goto/16 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_40

    nop

    nop

    :goto_d
    float-to-double v12, v12

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

    :goto_e
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_f
    check-cast v10, [F

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v8, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

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

    :goto_11
    if-lt v11, v13, :cond_1

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

    :cond_1
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_12
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    nop

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

    :goto_13
    return-void

    nop

    nop

    :goto_14
    goto/32 :goto_46

    nop

    nop

    :goto_15
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

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

    :goto_18
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_1b
    float-to-double v13, v13

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_1c
    iput-object v5, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1e
    iget-object v12, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v6, 0x2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_21
    add-int/lit8 v11, v11, 0x1

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

    :goto_22
    array-length v13, v12

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_23
    move/from16 v3, p1

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

    :goto_24
    invoke-static {v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v9, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_26
    add-int/lit8 v5, v2, 0x2

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_27
    int-to-double v11, v8

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_28
    const/4 v6, 0x0

    nop

    :goto_29
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v11, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_2b
    iput-object v6, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

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

    :goto_2c
    aput-wide v12, v11, v2

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2d
    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2e
    float-to-double v14, v12

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

    nop

    :goto_2f
    aget-object v11, v5, v6

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_31
    check-cast v5, [[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_32
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_1e

    nop

    nop

    :goto_34
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_35
    aput v1, v6, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_37
    new-array v5, v5, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_38
    mul-double/2addr v11, v13

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_39
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v9, v11}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValuesToInterpolate([F)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    aput-wide v11, v4, v6

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v7, 0x1

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

    :goto_3d
    aput v5, v6, v7

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

    :goto_3e
    aget-object v13, v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_3f
    aget v12, v10, v3

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

    :goto_40
    aget-object v11, v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_41
    iput-object v5, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mCache:[F

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_42
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_43
    new-array v5, v2, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_44
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_2
    goto/32 :goto_18

    nop

    :goto_45
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_47
    aget v12, v12, v11

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

    nop

    :goto_48
    add-int/lit8 v5, v2, 0x2

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_49
    aput-wide v13, v11, v12

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_4a
    add-int/lit8 v12, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const/4 v3, 0x0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop
.end method
