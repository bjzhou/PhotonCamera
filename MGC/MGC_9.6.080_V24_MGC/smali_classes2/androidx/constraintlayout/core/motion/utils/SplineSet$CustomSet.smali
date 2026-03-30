.class public Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;
.super Landroidx/constraintlayout/core/motion/utils/SplineSet;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomSet"
.end annotation


# instance fields
.field mAttributeName:Ljava/lang/String;

.field mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

.field mTempValues:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;)V
    .locals 2

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
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1b

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

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mAttributeName:Ljava/lang/String;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_7
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    const-string v0, ","

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

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

    :goto_b
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/SplineSet;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    :goto_f
    aget-object v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop
.end method


# virtual methods
.method public setPoint(IF)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    const v1, 0x9

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

    :goto_a
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_c
    const-string v1, "don\'t call for custom attribute call setPoint(pos, ConstraintAttribute)"

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
.end method

.method public setPoint(ILandroidx/constraintlayout/core/motion/CustomAttribute;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

    nop

    nop

    goto/32 :goto_2

    nop

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
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;->append(ILandroidx/constraintlayout/core/motion/CustomAttribute;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setProperty(Landroidx/constraintlayout/core/state/WidgetFrame;F)V
    .locals 4

    goto/32 :goto_1

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_1
    const v0, 0xb

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mTempValues:[F

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
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

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

    :goto_4
    const/4 v1, 0x0

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

    :goto_5
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    goto/32 :goto_3

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;->valueAt(I)Landroidx/constraintlayout/core/motion/CustomAttribute;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mTempValues:[F

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/core/state/WidgetFrame;->setCustomValue(Landroidx/constraintlayout/core/motion/CustomAttribute;[F)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

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

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    float-to-double v1, p2

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
.end method

.method public setup(I)V
    .locals 12

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v5, v4}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;->keyAt(I)I

    move-result v5

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v4, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    new-array v4, v1, [F

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_4
    if-lt v7, v9, :cond_0

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

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/motion/CustomAttribute;->getValuesToInterpolate([F)V

    goto/32 :goto_24

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
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_37

    nop

    :goto_9
    goto/16 :goto_25

    nop

    nop

    :goto_a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_d
    float-to-double v10, v8

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_e
    aput v1, v4, v5

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    const/4 v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v4, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mTempValues:[F

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_11
    aget-object v9, v2, v4

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_12
    new-array v3, v0, [D

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    aput v0, v4, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_14
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

    nop

    :goto_15
    mul-double/2addr v7, v9

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_16
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

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

    :goto_18
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v8, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mTempValues:[F

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

    :goto_1a
    array-length v9, v8

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1b
    int-to-double v7, v5

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

    :goto_1c
    invoke-virtual {v6, v4}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;->valueAt(I)Landroidx/constraintlayout/core/motion/CustomAttribute;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1d
    new-array v4, v4, [I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1e
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;->valueAt(I)Landroidx/constraintlayout/core/motion/CustomAttribute;

    move-result-object v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    aput-wide v10, v9, v7

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_36

    nop

    :goto_21
    const/4 v4, 0x2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_22
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mTempValues:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/CustomAttribute;->numberOfInterpolatedValues()I

    move-result v1

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

    :goto_24
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_27
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

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

    :goto_29
    aput-wide v7, v3, v4

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
    const v1, 0x1f

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

    nop

    nop

    :goto_2b
    check-cast v2, [[D

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2c
    if-lt v4, v0, :cond_2

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_30
    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_31
    aget v8, v8, v7

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_32
    invoke-static {p1, v3, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v4

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_34
    goto :goto_2f

    nop

    :goto_35
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop
.end method
