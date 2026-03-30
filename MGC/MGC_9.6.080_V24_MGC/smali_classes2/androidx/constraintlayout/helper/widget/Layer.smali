.class public Landroidx/constraintlayout/helper/widget/Layer;
.super Landroidx/constraintlayout/widget/ConstraintHelper;
.source "Layer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Layer"


# instance fields
.field private mApplyElevationOnAttach:Z

.field private mApplyVisibilityOnAttach:Z

.field protected mComputedCenterX:F

.field protected mComputedCenterY:F

.field protected mComputedMaxX:F

.field protected mComputedMaxY:F

.field protected mComputedMinX:F

.field protected mComputedMinY:F

.field mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mGroupRotateAngle:F

.field mNeedBounds:Z

.field private mRotationCenterX:F

.field private mRotationCenterY:F

.field private mScaleX:F

.field private mScaleY:F

.field private mShiftX:F

.field private mShiftY:F

.field mViews:[Landroid/view/View;


# direct methods
.method private 73d3f831bcb430e3bcac9d98d35c528dm()V
    .locals 18

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v2, v0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_1
    move-wide/from16 v16, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2
    mul-float/2addr v7, v4

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_3
    iget-object v1, v0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, v0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

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

    :goto_5
    add-int/2addr v11, v12

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v9, v9, 0x1

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

    :goto_7
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_8
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a
    div-int/lit8 v11, v11, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v12

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    sub-float/2addr v1, v14

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

    :goto_d
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v13

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    mul-float v1, v5, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_10
    add-int/2addr v12, v13

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_11
    neg-float v8, v7

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    int-to-float v13, v11

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v1, v0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_15
    add-float/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_16
    iget v15, v0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v1, v0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_1a
    iget v10, v0, Landroidx/constraintlayout/helper/widget/Layer;->mCount:I

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    div-int/lit8 v12, v12, 0x2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v10, v0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

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

    :goto_1d
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sub-float/2addr v13, v14

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1f
    double-to-float v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_21
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v10, v2}, Landroid/view/View;->setRotation(F)V

    :goto_24
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_25
    aget-object v10, v10, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_26
    add-float/2addr v1, v2

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

    :goto_27
    int-to-float v14, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_28
    iget v2, v0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleX:F

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/helper/widget/Layer;->7f7ce2882135198762481648b9444682m()V

    :goto_2a
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-eqz v2, :cond_0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_2c
    mul-float v15, v6, v13

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v10, v15}, Landroid/view/View;->setTranslationX(F)V

    goto/32 :goto_43

    nop

    nop

    :goto_2e
    iget v2, v0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleY:F

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_2f
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_30
    mul-float v16, v8, v14

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_33
    add-float v15, v15, v16

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_34
    sub-float/2addr v14, v15

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_36
    const/4 v9, 0x0

    nop

    :goto_37
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_38
    double-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_39
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/helper/widget/Layer;->calcCenters()V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v11

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_3b
    sub-float/2addr v15, v13

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget v14, v0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3d
    if-lt v9, v10, :cond_1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3e
    mul-float/2addr v5, v3

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
    iget v7, v0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleY:F

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_32

    nop

    :goto_41
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_42
    move-wide/from16 v1, v16

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v10, v1}, Landroid/view/View;->setTranslationY(F)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    :goto_45
    add-float/2addr v15, v1

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

    :goto_46
    if-eqz v1, :cond_3

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_47
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_41

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

    :goto_48
    iget v1, v0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

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

    :goto_49
    iget v2, v0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftY:F

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_4a
    iget v2, v0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v12

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

    :goto_4c
    float-to-double v1, v1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_4d
    iget v5, v0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleX:F

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4f
    mul-float/2addr v8, v3

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_50
    mul-float v6, v5, v4

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_51
    mul-float v2, v7, v14

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

    :goto_52
    invoke-virtual {v10, v2}, Landroid/view/View;->setScaleY(F)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const-wide/16 v1, 0x0

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_55
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_56
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_58
    if-eqz v1, :cond_5

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_5
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v10, v2}, Landroid/view/View;->setScaleX(F)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method private 7f7ce2882135198762481648b9444682m()V
    .locals 4

    goto/32 :goto_18

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

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

    :goto_3
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    :goto_4
    const v1, 0xc

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

    nop

    :goto_5
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    :goto_7
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_1
    :goto_8
    goto/32 :goto_25

    nop

    nop

    :goto_9
    new-array v0, v0, [Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_b
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    array-length v0, v0

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

    :goto_d
    goto/16 :goto_1

    nop

    nop

    :goto_e
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_10
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mCount:I

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

    :goto_13
    return-void

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_12

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_17
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mCount:I

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x1e

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

    :goto_19
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mIds:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1a
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mCount:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_6

    nop

    :goto_1c
    aput-object v3, v2, v0

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

    nop

    :goto_1d
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_5

    nop

    :goto_1e
    if-nez v0, :cond_3

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

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    aget v1, v1, v0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

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

    :goto_23
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

    nop

    :goto_24
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mCount:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_26
    if-lt v0, v1, :cond_4

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinX:F

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleY:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

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

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxX:F

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

    :goto_8
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleX:F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mNeedBounds:Z

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

    :goto_d
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1c

    nop

    nop

    :goto_11
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/high16 v0, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinY:F

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_17
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_19
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1a
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftX:F

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    :goto_1c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1d
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftY:F

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

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
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftX:F

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    :goto_4
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    :goto_7
    const v1, 0x1f

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

    :goto_8
    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mNeedBounds:Z

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_a
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleY:F

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    const/high16 v0, 0x7fc00000    # Float.NaN

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_c
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

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

    nop

    :goto_f
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxY:F

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_10
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_b

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x0

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

    :goto_15
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_18
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinY:F

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1a
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

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

    :goto_1b
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1c
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftY:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxX:F

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1e
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

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
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleX:F

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_4
    const v0, 0x7

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

    :goto_5
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mNeedBounds:Z

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxY:F

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

    :goto_8
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_9
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

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

    :goto_a
    const/4 v0, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

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

    :goto_c
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/high16 v0, 0x7fc00000    # Float.NaN

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftY:F

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

    :goto_10
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleY:F

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftX:F

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

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

    :goto_17
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_19
    const/4 v0, 0x1

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

    :goto_1a
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1b
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_e

    nop

    nop

    :goto_1c
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinY:F

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1e
    const v1, 0xe

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected applyLayoutFeaturesInConstraintSet(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/helper/widget/Layer;->applyLayoutFeatures(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/32 :goto_1

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

    nop
.end method

.method protected calcCenters()V
    .locals 8

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_13

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/helper/widget/Layer;->getViews(Landroidx/constraintlayout/widget/ConstraintLayout;)[Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    aget-object v3, v0, v1

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
    add-int v5, v3, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

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

    :goto_7
    int-to-float v5, v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xd

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_c
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    :goto_d
    iput v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    nop

    nop

    :goto_e
    nop

    :goto_f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    div-int/lit8 v5, v5, 0x2

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

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

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

    nop

    :goto_17
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_12

    nop

    :goto_19
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    int-to-float v5, v2

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

    :goto_1b
    aget-object v6, v0, v5

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1d
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_1e
    if-nez v0, :cond_2

    nop

    goto/32 :goto_1

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1f
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_20
    int-to-float v5, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_21
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_30

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_22
    iget v6, p0, Landroidx/constraintlayout/helper/widget/Layer;->mCount:I

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v5, 0x0

    nop

    :goto_25
    goto/32 :goto_22

    nop

    nop

    :goto_26
    iget v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

    nop

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

    :goto_27
    iput v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinX:F

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_28
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_29
    iput v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxY:F

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    int-to-float v5, v4

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    aget-object v2, v0, v1

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_2e
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_2f
    return-void

    nop

    nop

    :goto_30
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    add-int v5, v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_32
    if-eqz v0, :cond_4

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_33
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_34
    int-to-float v5, v3

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

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
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_37
    aget-object v1, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_38
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_39
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_3a
    if-eqz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3b
    const v0, 0x17

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3c
    aget-object v4, v0, v1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_3d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_45

    nop

    nop

    :goto_3f
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_42
    goto/32 :goto_19

    nop

    nop

    :goto_43
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_45
    iget-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mNeedBounds:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_47
    if-nez v5, :cond_6

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_4a
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4b
    goto :goto_55

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iput v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/16 :goto_25

    nop

    nop

    :goto_4f
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_51
    add-int/lit8 v5, v5, 0x1

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

    :goto_52
    iget v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

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

    :goto_53
    iget v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_54
    iput v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    nop

    :goto_55
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_56
    if-lez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_7
    goto/32 :goto_18

    nop

    :goto_57
    iput v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinY:F

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_58
    goto/16 :goto_f

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_5a
    if-lt v5, v6, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    int-to-float v5, v5

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    div-int/lit8 v5, v5, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_5e
    iget v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5f
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_60
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-nez v5, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :cond_9
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

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

    :goto_1
    iput-boolean v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mApplyVisibilityOnAttach:Z

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

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
    goto/32 :goto_18

    nop

    :goto_3
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1d

    nop

    nop

    :goto_5
    if-eq v3, v4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mApplyElevationOnAttach:Z

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

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

    :goto_9
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mUseViewMeasure:Z

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_elevation:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1b
    if-eq v3, v4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lt v2, v1, :cond_4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_1e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_21
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_22
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_visibility:I

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

    :goto_23
    const/4 v5, 0x1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop
.end method

.method protected onAttachedToWindow()V
    .locals 7

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Layer;->mCount:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    iget-boolean v6, p0, Landroidx/constraintlayout/helper/widget/Layer;->mApplyVisibilityOnAttach:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    :goto_6
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->onAttachedToWindow()V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_9
    goto :goto_f

    nop

    nop

    :goto_a
    goto/32 :goto_29

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    :goto_c
    if-lt v2, v4, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_d
    if-ge v6, v3, :cond_2

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

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mApplyElevationOnAttach:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    if-nez v6, :cond_3

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v6, :cond_4

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-gtz v6, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_5
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-boolean v6, p0, Landroidx/constraintlayout/helper/widget/Layer;->mApplyElevationOnAttach:Z

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

    :goto_15
    invoke-virtual {v5, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v5

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

    :goto_16
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_6
    goto/32 :goto_3

    nop

    :goto_17
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_18
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_19
    const v0, 0x19

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1b
    if-eqz v0, :cond_7

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

    :cond_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1d
    add-float/2addr v6, v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1e
    const/4 v1, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1f
    const/16 v3, 0x15

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_21
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Layer;->mIds:[I

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_23
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_24
    if-nez v5, :cond_8

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_2

    nop

    nop

    :goto_25
    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationZ(F)V

    :goto_26
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_27
    aget v4, v4, v2

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
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v5}, Landroid/view/View;->getTranslationZ()F

    move-result v6

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

    :goto_2c
    if-ge v2, v3, :cond_9

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getElevation()F

    move-result v1

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2f
    iget-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mApplyVisibilityOnAttach:Z

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

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

    :goto_31
    cmpl-float v6, v1, v6

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_32
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getVisibility()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_33
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_34
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public setElevation(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elevation"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->setElevation(F)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->applyLayoutFeatures()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setPivotX(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pivotX"
        }
    .end annotation

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->73d3f831bcb430e3bcac9d98d35c528dm()V

    goto/32 :goto_1

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

    nop

    nop

    :goto_2
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public setPivotY(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pivotY"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->73d3f831bcb430e3bcac9d98d35c528dm()V

    goto/32 :goto_1

    nop

    nop
.end method

.method public setRotation(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->73d3f831bcb430e3bcac9d98d35c528dm()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public setScaleX(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scaleX"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->73d3f831bcb430e3bcac9d98d35c528dm()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleX:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public setScaleY(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scaleY"
        }
    .end annotation

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->73d3f831bcb430e3bcac9d98d35c528dm()V

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

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleY:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public setTranslationX(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dx"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->73d3f831bcb430e3bcac9d98d35c528dm()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftX:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public setTranslationY(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dy"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->73d3f831bcb430e3bcac9d98d35c528dm()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftY:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public setVisibility(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->setVisibility(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->applyLayoutFeatures()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public updatePostLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getPaddingLeft()I

    move-result v3

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getPaddingRight()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getPaddingTop()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4
    float-to-int v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    iget v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxY:F

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_24

    nop

    nop

    :goto_a
    const/high16 v0, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_b
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxX:F

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int/2addr v4, v5

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

    :goto_d
    const v0, 0x15

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_e
    add-int/2addr v5, v6

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinY:F

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    float-to-int v4, v4

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

    :goto_11
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinX:F

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

    :goto_12
    const/4 v2, 0x0

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

    :goto_13
    return-void

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->7f7ce2882135198762481648b9444682m()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_0
    goto/32 :goto_23

    nop

    :goto_17
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

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

    :goto_18
    float-to-int v2, v2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_19
    float-to-int v5, v5

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getConstraintWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0, v2, v3, v4, v5}, Landroidx/constraintlayout/helper/widget/Layer;->layout(IIII)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1d
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->73d3f831bcb430e3bcac9d98d35c528dm()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->calcCenters()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1f
    sub-int/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_21
    sub-int/2addr v2, v3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    goto/32 :goto_1e

    nop

    nop

    :goto_23
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getPaddingBottom()I

    move-result v6

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
.end method

.method public updatePreDraw(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    goto/32 :goto_1

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

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1
    const v0, 0x2

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

    :goto_2
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    cmpl-float v1, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_7

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_d
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getRotation()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x14

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    :goto_13
    goto/32 :goto_11

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

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz v1, :cond_2

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method
