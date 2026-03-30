.class public Landroidx/constraintlayout/motion/widget/MotionController;
.super Ljava/lang/Object;
.source "MotionController.java"


# static fields
.field static final BOUNCE:I = 0x4

.field private static final DEBUG:Z = false

.field public static final DRAW_PATH_AS_CONFIGURED:I = 0x4

.field public static final DRAW_PATH_BASIC:I = 0x1

.field public static final DRAW_PATH_CARTESIAN:I = 0x3

.field public static final DRAW_PATH_NONE:I = 0x0

.field public static final DRAW_PATH_RECTANGLE:I = 0x5

.field public static final DRAW_PATH_RELATIVE:I = 0x2

.field public static final DRAW_PATH_SCREEN:I = 0x6

.field static final EASE_IN:I = 0x1

.field static final EASE_IN_OUT:I = 0x0

.field static final EASE_OUT:I = 0x2

.field private static final FAVOR_FIXED_SIZE_VIEWS:Z = false

.field public static final HORIZONTAL_PATH_X:I = 0x2

.field public static final HORIZONTAL_PATH_Y:I = 0x3

.field private static final INTERPOLATOR_REFERENCE_ID:I = -0x2

.field private static final INTERPOLATOR_UNDEFINED:I = -0x3

.field static final LINEAR:I = 0x3

.field static final OVERSHOOT:I = 0x5

.field public static final PATH_PERCENT:I = 0x0

.field public static final PATH_PERPENDICULAR:I = 0x1

.field public static final ROTATION_LEFT:I = 0x2

.field public static final ROTATION_RIGHT:I = 0x1

.field private static final SPLINE_STRING:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MotionController"

.field public static final VERTICAL_PATH_X:I = 0x4

.field public static final VERTICAL_PATH_Y:I = 0x5


# instance fields
.field private MAX_DIMENSION:I

.field attributeTable:[Ljava/lang/String;

.field private mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field private mAttributeInterpolatorCount:[I

.field private mAttributeNames:[Ljava/lang/String;

.field private mAttributesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewSpline;",
            ">;"
        }
    .end annotation
.end field

.field mConstraintTag:Ljava/lang/String;

.field mCurrentCenterX:F

.field mCurrentCenterY:F

.field private mCurveFitType:I

.field private mCycleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewOscillator;",
            ">;"
        }
    .end annotation
.end field

.field private mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

.field private mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

.field mForceMeasure:Z

.field mId:I

.field private mInterpolateData:[D

.field private mInterpolateVariables:[I

.field private mInterpolateVelocity:[D

.field private mKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/Key;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

.field private mMotionPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionPaths;",
            ">;"
        }
    .end annotation
.end field

.field mMotionStagger:F

.field private mNoMovement:Z

.field private mPathMotionArc:I

.field private mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

.field private mQuantizeMotionPhase:F

.field private mQuantizeMotionSteps:I

.field private mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field mStaggerOffset:F

.field mStaggerScale:F

.field private mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

.field private mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

.field mTempRect:Landroid/graphics/Rect;

.field private mTimeCycleAttributesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewTimeCycle;",
            ">;"
        }
    .end annotation
.end field

.field private mTransformPivotTarget:I

.field private mTransformPivotView:Landroid/view/View;

.field private mValuesBuff:[F

.field private mVelocity:[F

.field mView:Landroid/view/View;


# direct methods
.method private 12b4b38194e403c7f4690dce3abaa7f8m()F
    .locals 26

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_0
    int-to-float v3, v9

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-wide v14, v6

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2
    float-to-double v3, v8

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int/lit8 v4, v1, -0x1

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_4
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v6, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_0
    goto/32 :goto_2e

    nop

    nop

    :goto_6
    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-object v8, v2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v8, 0x0

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

    :goto_a
    aget v4, v2, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_c
    if-nez v7, :cond_1

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

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_f
    move/from16 v9, v20

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

    nop

    :goto_10
    move-object/from16 v18, v1

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

    :goto_11
    invoke-virtual {v7, v3, v4}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_12
    move/from16 v24, v9

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13
    mul-float/2addr v3, v1

    nop

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

    :goto_14
    cmpg-float v1, v1, v8

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move v5, v1

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_6d

    nop

    nop

    :goto_19
    goto/16 :goto_79

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1b
    return v11

    nop

    nop

    :goto_1c
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1d
    move v11, v4

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1f
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_20
    goto/16 :goto_35

    nop

    nop

    :goto_21
    goto/32 :goto_1b

    nop

    nop

    :goto_22
    move-object/from16 v1, v18

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

    nop

    :goto_23
    move-wide v12, v4

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_24
    move v1, v5

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

    :goto_25
    move/from16 v17, v7

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_26
    const-wide/16 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_27
    move/from16 v16, v1

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

    :goto_28
    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_66

    nop

    nop

    :goto_29
    iget v1, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_75

    nop

    :goto_2b
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2d
    if-lt v9, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_30
    aget v8, v2, v18

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

    nop

    nop

    :goto_31
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_32
    goto :goto_3d

    nop

    :goto_33
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_34
    move v9, v8

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_36
    move-object v7, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_38
    sub-double v8, v12, v8

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

    :goto_39
    move v1, v5

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_3a
    iget v1, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_3b
    aget-object v3, v3, v18

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_3c
    move-wide/from16 v4, v18

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_3e
    float-to-double v6, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_3f
    move-object/from16 v23, v7

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

    nop

    nop

    :goto_40
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_4
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_41
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

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

    :goto_42
    const/high16 v7, 0x7fc00000    # Float.NaN

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_43
    aget v6, v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_44
    sub-float v6, v5, v17

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_45
    move-object v7, v5

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_46
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_47
    sub-float v3, v5, v17

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_48
    if-nez v1, :cond_5

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3a

    nop

    nop

    :goto_49
    mul-float v8, v3, v10

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

    :goto_4a
    move-object v7, v1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    move/from16 v1, v16

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    move/from16 v25, v7

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    add-float v3, v3, v17

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_4e
    const/16 v20, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_4f
    const/16 v18, 0x0

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_50
    const/high16 v5, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    move-wide v4, v3

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    move-object/from16 v0, p0

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_53
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_55
    move-wide/from16 v18, v3

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_56
    invoke-virtual/range {v3 .. v9}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    move-wide/from16 v18, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_58
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_59
    const-wide/16 v6, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_5b
    div-float/2addr v1, v6

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_5c
    sub-double v6, v14, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_5d
    if-gtz v24, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_77

    nop

    nop

    :goto_5e
    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_5f
    div-float v10, v5, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_60
    move v1, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_61
    float-to-double v3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_62
    move/from16 v19, v1

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_63
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    if-lez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_d

    nop

    :goto_65
    move/from16 v17, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_66
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_67
    float-to-double v3, v3

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_68
    iget v7, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

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

    :goto_69
    int-to-float v4, v4

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

    :goto_6a
    move v11, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_6b
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_6c
    double-to-float v1, v3

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_6d
    sub-float v1, v8, v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_6e
    add-int v0, v0, v1

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

    nop

    :goto_6f
    add-double/2addr v4, v6

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_70
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_71
    double-to-float v4, v4

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

    :goto_72
    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    add-int/lit8 v9, v24, 0x1

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_74
    move v5, v1

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto/32 :goto_22

    nop

    nop

    :goto_76
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_77
    float-to-double v4, v11

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_78
    move/from16 v5, v25

    nop

    :goto_79
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7a
    move-wide/from16 v21, v4

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

    nop

    :goto_7b
    float-to-double v14, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_7c
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    float-to-double v12, v4

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_7e
    aget v3, v2, v3

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    if-ltz v1, :cond_8

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_80
    new-array v2, v2, [F

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

    :goto_81
    float-to-double v8, v8

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_82
    const/16 v1, 0x64

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_83
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private 14b68b8c5e31b8f94c3ffcf6fb68e0e1m(F[F)F
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "velocity"
        }
    .end annotation

    goto/32 :goto_1e

    nop

    nop

    :goto_0
    double-to-float v6, v6

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

    :goto_1
    if-nez v7, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v4, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    nop

    :goto_4
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_5
    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    const/4 p1, 0x0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_9
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_a
    iget-object v7, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_b
    if-ltz v4, :cond_2

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_2
    goto/32 :goto_41

    nop

    nop

    :goto_c
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

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

    :goto_d
    iget v3, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

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

    :goto_e
    if-ltz v4, :cond_3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    cmpg-float v7, v7, p1

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_10
    if-nez v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4b

    nop

    nop

    :goto_11
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_12
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    float-to-double v3, v2

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    cmpl-double v3, v3, v5

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v7, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_17
    const/high16 v4, 0x7fc00000    # Float.NaN

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

    :goto_18
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    :goto_19
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v6, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return v0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1d
    float-to-double v7, p1

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1f
    aput v7, p2, v1

    nop

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

    nop

    :goto_21
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_3b

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_c

    nop

    nop

    :goto_24
    div-float/2addr v5, v6

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

    :goto_25
    sub-float v7, v4, v3

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_27
    mul-float/2addr v7, v6

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_28
    sub-float v6, v4, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_29
    mul-float/2addr p1, v2

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_2a
    sub-float v5, p1, v3

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

    :goto_2b
    goto/16 :goto_4

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2d
    cmpg-float v4, p1, v3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2e
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v2, v7, v8}, Landroidx/constraintlayout/core/motion/utils/Easing;->getDiff(D)D

    move-result-wide v7

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_30
    if-gtz v4, :cond_6

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

    :cond_6
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_31
    aput v0, p2, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_32
    const/4 v1, 0x0

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_33
    double-to-float v7, v7

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

    nop

    :goto_34
    if-nez v5, :cond_7

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_36
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_37
    add-float v0, v7, v3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_38
    float-to-double v7, v5

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

    nop

    :goto_39
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

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

    :goto_3a
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    nop

    :goto_3b
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez v2, :cond_8

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v2, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_40
    float-to-double v6, v5

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_41
    sub-float/2addr p1, v3

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

    nop

    :goto_42
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    :goto_43
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_44
    if-lez v0, :cond_9

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_45

    nop

    :goto_45
    goto/32 :goto_1c

    nop

    :goto_46
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_47
    cmpg-double v4, v7, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_48
    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-nez v7, :cond_a

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_a
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_4a
    if-nez p2, :cond_b

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_4b
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_4c
    invoke-virtual {v2, v6, v7}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    move-result-wide v6

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4d
    move v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4e
    if-ltz v7, :cond_c

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

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

    :goto_50
    add-int v0, v0, v1

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

    :goto_51
    cmpl-float v4, p1, v3

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop
.end method

.method private 32e01c2e41fbe060e9f140225cb36234m(Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionPaths"
        }
    .end annotation

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xb

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

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4
    int-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_15

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

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_a
    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

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

    :goto_c
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    float-to-int v1, v1

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

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0xa

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_13
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    float-to-int v0, v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_18
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

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
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_2
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTempRect:Landroid/graphics/Rect;

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_4
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_35

    nop

    nop

    :goto_5
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionSteps:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    new-instance v2, Ljava/util/ArrayList;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionPaths;

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

    :goto_b
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

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

    :goto_c
    invoke-direct {v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->MAX_DIMENSION:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, -0x1

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

    :goto_10
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_11
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_12
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_13
    sget v3, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;-><init>()V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-array v2, v2, [F

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

    :goto_16
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_17
    const/4 v2, 0x0

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

    :goto_18
    goto/32 :goto_21

    nop

    nop

    :goto_19
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_1a
    invoke-direct {v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>()V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget v2, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

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

    :goto_1d
    sget v2, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1f
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_22
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_24
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

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

    :goto_25
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_26
    const/4 v0, 0x0

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

    :goto_27
    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

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

    :goto_29
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

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

    :goto_2a
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mNoMovement:Z

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2e
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionController;->setView(Landroid/view/View;)V

    goto/32 :goto_7

    nop

    nop

    :goto_31
    new-instance v2, Ljava/util/ArrayList;

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

    nop

    :goto_32
    const/4 v2, 0x1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_34
    const/high16 v1, 0x7fc00000    # Float.NaN

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_35
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

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

    :goto_36
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_37
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_38
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    :goto_39
    new-array v2, v2, [F

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3b
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3c
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_28

    nop

    nop
.end method

.method private ab35181830b64799f175d1c6b89171e6m(Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "point"
        }
    .end annotation

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    :goto_6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    :goto_8
    const-string v2, "MotionController"

    nop

    goto/32 :goto_1b

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

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_a
    iget v2, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_d
    const-string v2, " KeyPath position \""

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_e
    const-string v2, "\" outside of range"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    neg-int v2, v0

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

    :goto_12
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

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

    :goto_14
    rem-int v0, v0, v1

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

    :goto_15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_16
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_17
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

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

    :goto_18
    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0xb

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

    :goto_1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c
    goto/32 :goto_b

    nop

    nop
.end method

.method private static getInterpolator(Landroid/content/Context;ILjava/lang/String;I)Landroid/view/animation/Interpolator;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "type",
            "interpolatorString",
            "id"
        }
    .end annotation

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionController$1;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_12

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

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_9

    nop

    nop

    :goto_5
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_6
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    :goto_9
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionController$1;-><init>(Landroidx/constraintlayout/core/motion/utils/Easing;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_d
    return-object v0

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    packed-switch p1, :pswitch_data_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    return-object v0

    nop

    nop

    :pswitch_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :goto_12
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p2}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_15
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_17
    const v0, 0x1a

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

    :goto_18
    return-object v0

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_19
    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-object v0

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_16

    nop

    nop

    :goto_1b
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1c
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1d
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public addKey(Landroidx/constraintlayout/motion/widget/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method addKeys(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/Key;",
            ">;)V"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method buildBounds([FI)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bounds",
            "pointCount"
        }
    .end annotation

    goto/32 :goto_6

    nop

    nop

    :goto_0
    if-eqz v4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2
    if-gtz v12, :cond_1

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_3
    mul-float/2addr v9, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_4
    const/4 v13, 0x0

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_5
    if-ltz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_2
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0xf

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    cmpl-float v12, v9, v11

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

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

    :goto_a
    const v1, 0xf

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move v13, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object v4, v6

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

    :goto_e
    mul-float/2addr v9, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_f
    iget v12, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    move-object/from16 v4, p1

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v1, :cond_4

    nop

    goto/32 :goto_1c

    nop

    :cond_4
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_17
    cmpg-float v1, v1, v9

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

    :goto_18
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_19
    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1a
    if-ltz v12, :cond_6

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v10, v11, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    :goto_1c
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_1e
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1f
    move-object v7, v6

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_20
    add-float/2addr v2, v13

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

    nop

    :goto_21
    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_22
    cmpg-float v12, v9, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_6a

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_27
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v12, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_39

    nop

    nop

    :goto_2a
    goto/16 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_88

    nop

    nop

    nop

    :goto_2c
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_2d
    float-to-double v10, v9

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_4f

    nop

    :goto_2f
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_30
    if-lez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_40

    nop

    :goto_31
    goto/16 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_15

    nop

    nop

    :goto_33
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-eqz v7, :cond_9

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

    :cond_9
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_35
    double-to-float v1, v2

    nop

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

    nop

    :goto_36
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_37
    return-void

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_3a
    mul-float/2addr v2, v1

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

    :goto_3b
    move-object/from16 v4, v16

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

    :goto_3c
    move-object/from16 v16, v4

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

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

    :goto_3e
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_3f
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_42
    div-float v2, v3, v2

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_44
    if-ltz v12, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_45
    check-cast v6, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    nop

    :goto_46
    goto/32 :goto_69

    nop

    nop

    :goto_47
    array-length v3, v2

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

    :goto_48
    if-eqz v9, :cond_b

    nop

    goto/32 :goto_2f

    nop

    :cond_b
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto :goto_46

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {v9, v3}, Ljava/lang/Math;->min(FF)F

    move-result v9

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_4d
    cmpl-float v11, v10, v3

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

    nop

    nop

    :goto_4e
    check-cast v5, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_50
    float-to-double v2, v1

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_51
    check-cast v7, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    nop

    :goto_52
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

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

    :goto_54
    move-object/from16 v3, v16

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_55
    move-object v5, v6

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

    :goto_56
    goto :goto_52

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_18

    nop

    nop

    :goto_58
    if-gtz v3, :cond_c

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_59
    int-to-float v9, v8

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5a
    sub-float v1, v9, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_5b
    sub-float v3, v14, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_5c
    goto :goto_68

    nop

    :goto_5d
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_5e
    move v2, v15

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_5f
    const-string v5, "translationX"

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_60
    goto/32 :goto_41

    nop

    :goto_61
    invoke-virtual {v1, v10, v11, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    nop

    nop

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_64
    if-lt v8, v1, :cond_d

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    if-eqz v9, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_66
    aget-object v1, v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_67
    check-cast v4, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    nop

    nop

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_6b
    sub-float/2addr v9, v11

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    add-int/lit8 v8, v8, 0x1

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

    :goto_6d
    iget v1, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

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

    :goto_6e
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_6f
    move v15, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_70
    if-nez v1, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    :cond_f
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_71
    const/high16 v14, 0x3f800000    # 1.0f

    nop

    nop

    :goto_72
    goto/32 :goto_5a

    nop

    nop

    :goto_73
    const-string v8, "translationY"

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

    nop

    :goto_74
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_75
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_76
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    float-to-double v10, v2

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v1, v2, v3, v4, v0}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getBounds([I[D[FI)V

    goto/32 :goto_6c

    nop

    nop

    :goto_79
    const/high16 v14, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_7a
    if-nez v16, :cond_10

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    div-float/2addr v1, v3

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

    nop

    :goto_7d
    goto/16 :goto_63

    nop

    :goto_7e
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_7f
    mul-int/lit8 v0, v8, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_80
    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_81
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_82
    move-object v12, v1

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

    :goto_83
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_84
    if-nez v11, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    :cond_11
    goto/32 :goto_1

    nop

    nop

    :goto_85
    invoke-virtual {v12, v2, v3}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    move-result-wide v2

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_87
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_88
    move v15, v2

    nop

    nop

    nop

    nop

    :goto_89
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_8a
    float-to-double v12, v9

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

    :goto_8b
    sub-float v2, v14, v13

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_8c
    iget v1, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_8d
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_8e
    move/from16 v1, p2

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    move/from16 v1, p2

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

    :goto_90
    add-int/lit8 v2, v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_91
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

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

    :goto_92
    iget-object v12, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_93
    move v14, v1

    nop

    nop

    :goto_94
    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_95
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

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

    :goto_96
    cmpg-double v12, v12, v14

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

    :goto_97
    rem-int v0, v0, v1

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

    :goto_98
    move/from16 v1, p2

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop
.end method

.method buildKeyBounds([F[I)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyBounds",
            "mode"
        }
    .end annotation

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getTimePoints()[D

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v4, v5, v6, p1, v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getBounds([I[D[FI)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_6
    move v1, v5

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

    :goto_7
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_8
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    goto :goto_c

    nop

    :goto_a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v3, 0x0

    nop

    :goto_c
    goto/32 :goto_2d

    nop

    nop

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

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

    :goto_e
    if-nez p2, :cond_1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    :goto_f
    add-int/lit8 v1, v1, 0x2

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_10
    aget-wide v5, v2, v3

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_12
    if-lt v3, v4, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    :goto_13
    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_16
    div-int/lit8 v0, v1, 0x2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    :goto_18
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    add-int/lit8 v5, v1, 0x1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    aget-object v4, v4, v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1c
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_2b

    nop

    nop

    :goto_20
    if-nez v4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_21
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v0, 0x14

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

    :goto_24
    add-int v0, v0, v1

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

    :goto_25
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_4
    goto/32 :goto_14

    nop

    :goto_27
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_28
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

    :goto_29
    const v1, 0x3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2a
    aput v6, p2, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2b
    return v0

    nop

    nop

    :goto_2c
    goto/32 :goto_22

    nop

    nop

    :goto_2d
    array-length v4, v2

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

    :goto_2e
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_31
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_32
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

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

    :goto_33
    iget v6, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop
.end method

.method buildKeyFrames([F[I)I
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyFrames",
            "mode"
        }
    .end annotation

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    const v0, 0x1a

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

    :goto_4
    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_2d

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

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_32

    nop

    :goto_6
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move v10, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    iget v6, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_b
    invoke-virtual/range {v4 .. v10}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_c
    aput v6, p2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    aget-object v2, v2, v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_f
    aget-wide v5, v2, v3

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_10
    aget-wide v5, v2, v3

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_11
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_12
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_13
    move v1, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    const/4 v3, 0x0

    nop

    nop

    :goto_15
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

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

    :goto_18
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getTimePoints()[D

    move-result-object v2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    div-int/lit8 v0, v1, 0x2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int/lit8 v5, v1, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez p2, :cond_2

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_21
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

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

    :goto_23
    if-nez v4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_24
    array-length v4, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_25
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_26
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move-object v9, p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_29
    if-lt v3, v4, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_4
    goto/32 :goto_2a

    nop

    nop

    :goto_2a
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_2b
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2c
    aget-object v4, v4, v0

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

    :goto_2d
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2f
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_15

    nop

    :goto_31
    goto/32 :goto_19

    nop

    nop

    :goto_32
    goto/32 :goto_36

    nop

    nop

    :goto_33
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_34
    add-int/lit8 v1, v1, 0x2

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

    :goto_35
    return v0

    nop

    nop

    :goto_36
    goto/32 :goto_1f

    nop

    nop
.end method

.method buildPath([FI)V
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "points",
            "pointCount"
        }
    .end annotation

    goto/32 :goto_b4

    nop

    nop

    :goto_0
    goto/16 :goto_31

    nop

    :goto_1
    goto/32 :goto_17

    nop

    nop

    :goto_2
    if-eqz v1, :cond_0

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

    :cond_0
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-wide/from16 v18, v2

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    float-to-double v1, v2

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

    :goto_6
    const/4 v1, 0x0

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    move-wide/from16 v17, v1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_9
    float-to-double v1, v7

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :goto_a
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_b
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

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

    :goto_c
    const/high16 v9, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_d
    move-object v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_e
    add-float/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_f
    mul-int/lit8 v1, v15, 0x2

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v4, "translationY"

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_11
    sub-float v6, v3, v16

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_12
    cmpl-float v4, v1, v3

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

    :goto_13
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->get(F)F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_14
    const/high16 v5, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_98

    nop

    nop

    :goto_17
    if-nez v12, :cond_1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    mul-int/lit8 v17, v15, 0x2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_a0

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_1b
    move/from16 v8, p2

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

    :goto_1c
    if-lt v15, v8, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :cond_2
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :cond_3
    goto/32 :goto_59

    nop

    :goto_1e
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    :goto_1f
    iget v9, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v11, v0}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_21
    mul-int/lit8 v1, v15, 0x2

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

    :goto_22
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_23
    mul-int/lit8 v1, v15, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_24
    if-ltz v4, :cond_4

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_25
    mul-float/2addr v1, v10

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_26
    const/4 v4, 0x0

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

    :goto_27
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_28
    move/from16 v7, v17

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_5
    goto/32 :goto_ab

    nop

    nop

    :goto_2a
    float-to-double v1, v4

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_2c
    if-gtz v4, :cond_6

    nop

    goto/32 :goto_8f

    nop

    nop

    :cond_6
    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_2d
    aget v2, p1, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2e
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

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

    :goto_2f
    double-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_30
    aput v2, p1, v1

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_c4

    nop

    nop

    :goto_32
    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    :goto_33
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-eqz v1, :cond_7

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :cond_7
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_36
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_7d

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_a6

    nop

    nop

    :goto_3a
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_3c
    const-string v2, "translationX"

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

    nop

    nop

    :goto_3d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3e
    move-object v11, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_76

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_41
    move-object v12, v1

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_42
    move v9, v3

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_43
    move v7, v1

    nop

    nop

    :goto_44
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_45
    move-wide/from16 v17, v1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_46
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    :goto_47
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_48
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_49
    aput v2, p1, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4a
    aget v2, p1, v1

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_4b
    mul-int/lit8 v1, v15, 0x2

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_4c
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_4d
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4e
    add-int/lit8 v1, v8, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_4f
    move v9, v3

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

    :goto_50
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_52
    move v0, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_53
    if-ltz v9, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_54
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_55
    move-object v1, v3

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_56
    sub-float v2, v3, v16

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_57
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    cmpg-float v4, v1, v3

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_59
    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const/high16 v9, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v12, v0}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    move-result v3

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

    nop

    :goto_5d
    aput v2, p1, v1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_5f
    aget v2, p1, v1

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_60
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_61
    const v1, 0x1

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_62
    move v15, v1

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_1c

    nop

    nop

    :goto_64
    if-nez v4, :cond_9

    nop

    goto/32 :goto_47

    nop

    nop

    :cond_9
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_65
    move v7, v1

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

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

    nop

    nop

    :goto_67
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_43

    nop

    nop

    :goto_69
    if-nez v13, :cond_a

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_6a
    add-float v2, v2, v16

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_6b
    if-nez v14, :cond_b

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_b
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_6c
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_6d
    cmpl-float v3, v2, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    move-object/from16 v20, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    :goto_6f
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_70
    goto/16 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_72
    iget v3, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    nop

    :goto_73
    goto/32 :goto_a9

    nop

    nop

    :goto_74
    add-float/2addr v2, v3

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_75
    aput v2, p1, v1

    nop

    nop

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_6b

    nop

    nop

    :goto_77
    add-float/2addr v2, v3

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

    :goto_78
    iget v9, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

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

    :goto_79
    move-object v5, v3

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_7a
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_7b
    mul-float/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_7c
    check-cast v3, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    goto/32 :goto_93

    nop

    nop

    nop

    :goto_7e
    move v7, v1

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    div-float v10, v9, v1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_80
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_81
    move/from16 v16, v9

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    move-object v13, v1

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v5, v1, v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    move-result-wide v1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_84
    iget-object v9, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_85
    aget v2, p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_86
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    move-wide/from16 v2, v17

    nop

    nop

    nop

    :goto_88
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_89
    if-nez v4, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    if-nez v11, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    :cond_d
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_8b
    move-object/from16 v6, p1

    nop

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

    :goto_8c
    move/from16 v16, v4

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_8d
    move-object v3, v1

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_8e
    goto/16 :goto_44

    nop

    :goto_8f
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_90
    if-ltz v4, :cond_e

    nop

    goto/32 :goto_8f

    nop

    :cond_e
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    nop

    :goto_92
    goto/32 :goto_3e

    nop

    nop

    :goto_93
    move-object v14, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_94
    aget-object v1, v1, v4

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_95
    move-wide v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_96
    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    nop

    :goto_97
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    if-eqz v1, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {v13, v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->get(F)F

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_9b
    move/from16 v21, v5

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_9c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_9e
    cmpg-double v4, v4, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    move/from16 v3, v21

    nop

    nop

    nop

    :goto_a0
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    array-length v6, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    :goto_a2
    cmpg-float v9, v9, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_a3
    add-float/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_a4
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    if-nez v3, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :cond_10
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_a7
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_a8
    if-nez v5, :cond_11

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    const/high16 v9, 0x3f800000    # 1.0f

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

    :goto_aa
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    move-object v1, v3

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_ac
    sub-float/2addr v1, v3

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    if-nez v1, :cond_12

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

    :cond_12
    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_ae
    int-to-float v1, v15

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

    :goto_af
    invoke-static {v1, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    if-nez v9, :cond_13

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :cond_13
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    goto/16 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_b3
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_b4
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_b5
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

    nop

    :goto_b6
    if-nez v9, :cond_14

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    :cond_14
    goto/32 :goto_78

    nop

    nop

    :goto_b7
    goto/16 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_b9
    sub-float v4, v7, v16

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_ba
    goto/16 :goto_88

    nop

    nop

    nop

    nop

    :goto_bb
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    mul-float/2addr v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_bd
    goto/16 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_be
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    move-object v5, v6

    nop

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

    :goto_c0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    float-to-double v4, v1

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_c2
    div-float/2addr v4, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_c3
    move v4, v1

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

    :goto_c4
    add-int/lit8 v15, v15, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    goto/32 :goto_a7

    nop

    nop

    :goto_c7
    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    if-gtz v6, :cond_15

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_32

    nop

    nop

    :goto_ca
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_cb
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop
.end method

.method buildRect(F[FI)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "path",
            "offset"
        }
    .end annotation

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x13

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

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    aget-object v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x0

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

    :goto_9
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

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

    :goto_a
    invoke-virtual {v0, v1, v2, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getRect([I[D[FI)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_10
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->14b68b8c5e31b8f94c3ffcf6fb68e0e1m(F[F)F

    move-result p1

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

    :goto_11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
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

    :goto_13
    const v0, 0x6

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

    :goto_14
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_15
    float-to-double v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop
.end method

.method buildRectangles([FI)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "pointCount"
        }
    .end annotation

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

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

    :goto_3
    int-to-float v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    const/4 v3, 0x0

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

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v0, p2, -0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionController;->14b68b8c5e31b8f94c3ffcf6fb68e0e1m(F[F)F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_9
    mul-float/2addr v2, v1

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

    :goto_a
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_b
    int-to-float v0, v0

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

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_21

    nop

    nop

    :goto_f
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

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

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    div-float/2addr v1, v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_15
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_16
    float-to-double v4, v2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto :goto_e

    nop

    :goto_1b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1c
    mul-int/lit8 v6, v0, 0x8

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1e
    aget-object v3, v3, v4

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

    :goto_1f
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v3, v4, v5, p1, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getRect([I[D[FI)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-lt v0, p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v1, 0xa

    nop

    goto/32 :goto_19

    nop

    nop

    nop
.end method

.method endTrigger(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "start"
        }
    .end annotation

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_12

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_4
    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->conditionallyFire(FLandroid/view/View;)V

    goto/32 :goto_16

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

    :goto_6
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v1, "button"

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_c
    if-lt v0, v2, :cond_3

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    const/high16 v2, -0x3d380000    # -100.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/high16 v2, 0x42c80000    # 100.0f

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    array-length v2, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_16
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_18
    aget-object v1, v1, v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1a
    goto :goto_10

    nop

    :goto_1b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

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

    nop

    :goto_1d
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1e
    goto/32 :goto_6

    nop

    nop

    :goto_1f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1f

    nop

    nop
.end method

.method public getAnimateRelativeTo()I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

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

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    nop

    nop
.end method

.method getAttributeValues(Ljava/lang/String;[FI)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "attributeType",
            "points",
            "pointCount"
        }
    .end annotation

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x19

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_21

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v3, v3, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_7
    goto/32 :goto_12

    nop

    :goto_8
    return v2

    nop

    nop

    :goto_9
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lt v2, v3, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    aput v3, p2, v2

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

    :goto_c
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    div-int v3, v2, v3

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

    :goto_e
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v0, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    const/4 v2, -0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

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

    :goto_17
    array-length v3, p2

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

    :goto_18
    div-float/2addr v1, v0

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

    :goto_19
    return v2

    nop

    nop

    :goto_1a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int/lit8 v0, p3, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1c
    int-to-float v3, v3

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1d
    array-length v2, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1e
    const/high16 v1, 0x3f800000    # 1.0f

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

    :goto_1f
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    :goto_20
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_22
    array-length v3, p2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public getCenter(D[F[F)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "pos",
            "vel"
        }
    .end annotation

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-array v10, v0, [D

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

    :goto_1
    aget-object v1, v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2
    const/4 v2, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x18

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object v6, p3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-object v7, v10

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    invoke-static {p4, v1}, Ljava/util/Arrays;->fill([FF)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    const v0, 0x9

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    aget-object v1, v1, v2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_f
    new-array v0, v0, [I

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

    :goto_10
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

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
    invoke-virtual/range {v1 .. v8}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[F[D[F)V

    goto/32 :goto_15

    nop

    nop

    :goto_12
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_13
    move-object v5, v9

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    move-wide v2, p1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_17
    move-object v8, p4

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

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_19
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1a
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, p1, p2, v9}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1, p1, p2, v10}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1d
    new-array v9, v0, [D

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1e
    const/4 v1, 0x0

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
.end method

.method public getCenterX()F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurrentCenterX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public getCenterY()F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurrentCenterY:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method getDpDt(FFF[F)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "locationX",
            "locationY",
            "mAnchorDpDt"
        }
    .end annotation

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

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

    :goto_2
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    goto/32 :goto_2d

    nop

    nop

    :goto_4
    float-to-double v4, v9

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_5
    float-to-double v2, v8

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-float/2addr v9, v2

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

    :goto_8
    mul-float v11, v6, p2

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-gtz v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_a
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_b
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_d
    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_e
    sub-float/2addr v4, v5

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_f
    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

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

    :goto_10
    aget v9, v1, v2

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_11
    move-object/from16 v4, p4

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_12
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

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

    :goto_13
    mul-float/2addr v10, v1

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

    :goto_14
    add-float v6, v1, v4

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_19
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p0, p1, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->14b68b8c5e31b8f94c3ffcf6fb68e0e1m(F[F)F

    move-result v8

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

    :goto_1c
    move v3, p3

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1d
    mul-float v2, v7, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1e
    float-to-double v3, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1f
    move-object/from16 v4, p4

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

    :goto_20
    aput v9, p4, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_21
    sub-float v10, v9, p2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_22
    mul-double/2addr v2, v4

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

    :goto_23
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_24
    aput-wide v2, v6, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget v6, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_26
    aget-wide v2, v6, v1

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

    :goto_27
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_28
    sub-float/2addr v9, p3

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/high16 v9, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2a
    sub-float/2addr v3, v4

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

    :goto_2b
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_2c
    if-lez v0, :cond_2

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3f

    nop

    :goto_2d
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_2e
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_2f
    move v2, p2

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_30
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

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

    :goto_31
    aput v10, p4, v2

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_35
    move v2, p2

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_36
    if-lt v1, v2, :cond_3

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

    :cond_3
    goto/32 :goto_26

    nop

    nop

    :goto_37
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    :goto_38
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_39
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

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

    nop

    :goto_3b
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3d
    add-float/2addr v10, v11

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    move-object v0, p0

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_3f
    goto/32 :goto_50

    nop

    nop

    :goto_40
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_41
    float-to-double v3, v8

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_42
    array-length v2, v6

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_43
    sub-float/2addr v5, v6

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_44
    move v3, p3

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

    :goto_45
    array-length v3, v2

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

    :goto_46
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_47
    goto/16 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_49
    mul-float/2addr v9, v3

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

    :goto_4a
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v1, v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    goto/32 :goto_67

    nop

    nop

    :goto_4c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_4d
    return-void

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    return-void

    nop

    :goto_50
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_51
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

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

    :goto_52
    if-nez v1, :cond_4

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    aget-object v1, v1, v2

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_56
    move v2, p1

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

    :goto_57
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

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

    :goto_58
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

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

    :goto_59
    const/4 v1, 0x0

    nop

    nop

    :goto_5a
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

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

    :goto_5c
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

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

    :goto_5d
    add-float v7, v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_5e
    sub-float/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_5f
    invoke-virtual {v1, v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_60
    aget-object v1, v1, v2

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_62
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_63
    float-to-double v3, v8

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_64
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_66
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_67
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_68
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop
.end method

.method public getDrawPath()I
    .locals 4

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    :goto_5
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    :goto_9
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_b
    if-nez v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    :goto_d
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_e
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

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
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0xe

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_15
    iget v3, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x1d

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

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

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getFinalHeight()F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

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
.end method

.method public getFinalWidth()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public getFinalX()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    nop
.end method

.method public getFinalY()F
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

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
.end method

.method getKeyFrame(I)Landroidx/constraintlayout/motion/widget/MotionPaths;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

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

    :goto_2
    return-object v0

    nop

    nop

    :goto_3
    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public getKeyFrameInfo(I[I)I
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "info"
        }
    .end annotation

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v13, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_1
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

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

    :goto_2
    aput v15, p2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3
    int-to-float v5, v5

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

    nop

    :goto_4
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

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

    :goto_6
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move/from16 v1, p1

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_8
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

    :goto_9
    aput v5, p2, v14

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    :goto_b
    move/from16 v18, v11

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

    :goto_c
    move v14, v3

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

    :goto_d
    const v0, 0x7

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_10
    move-object v10, v4

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

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_12
    iget v5, v13, Landroidx/constraintlayout/motion/widget/Key;->mType:I

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

    :goto_13
    add-int/lit8 v3, v3, 0x1

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

    :goto_14
    iget v6, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_15
    const v1, 0x9

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

    :goto_16
    aput v5, p2, v3

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

    :goto_17
    div-float v11, v5, v6

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v5, v13, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_1a
    add-int/lit8 v3, v3, 0x1

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

    :goto_1b
    if-ne v5, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1d
    const/16 v16, 0x1

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    aput v6, p2, v3

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    instance-of v5, v13, Landroidx/constraintlayout/motion/widget/KeyPosition;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_22
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

    :goto_23
    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_24
    add-int/lit8 v3, v3, 0x1

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_25
    aput v5, p2, v3

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_26
    const/4 v5, -0x1

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_27
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_29
    float-to-double v6, v11

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v5, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_2
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

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

    :goto_2c
    if-nez v5, :cond_3

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_3
    goto/32 :goto_46

    nop

    nop

    :goto_2d
    new-array v4, v4, [F

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

    :goto_2e
    iget v5, v13, Landroidx/constraintlayout/motion/widget/Key;->mType:I

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

    :goto_2f
    aget v5, v4, v16

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_30
    if-eq v1, v5, :cond_4

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4b

    nop

    nop

    :goto_31
    const/4 v15, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_32
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget v6, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_35
    aget v5, v4, v15

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_36
    aput v6, p2, v3

    nop

    nop

    :goto_37
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_38
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

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

    :goto_3a
    move-object/from16 v0, p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

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

    :goto_3c
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

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

    :goto_3d
    aput v5, p2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_3e
    check-cast v5, Landroidx/constraintlayout/motion/widget/KeyPosition;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_3f
    iget v5, v13, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_40
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_41
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_42
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_43
    move/from16 v11, v17

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

    :goto_44
    aput v5, p2, v3

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_46
    move-object v5, v13

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_47
    const/16 v17, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_48
    aget-object v5, v5, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_49
    sub-int v5, v3, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4a
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_4b
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4d
    add-int/lit8 v3, v3, 0x1

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_4e
    iget v6, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

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

    :goto_4f
    invoke-virtual {v5, v6, v7, v8}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_1

    nop

    nop

    :goto_50
    aput v6, p2, v3

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_51
    invoke-virtual/range {v5 .. v11}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

    goto/32 :goto_13

    nop

    nop

    :goto_52
    check-cast v13, Landroidx/constraintlayout/motion/widget/Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_53
    const/4 v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_54
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_55
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

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

    :goto_56
    const/high16 v6, 0x42c80000    # 100.0f

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_57
    float-to-double v6, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method getKeyFrameParameter(IFF)F
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "x",
            "y"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_1
    const v0, 0x20

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

    :goto_2
    sub-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sub-float/2addr v8, v10

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    float-to-double v4, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_5
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

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

    :goto_6
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_7
    div-float v8, v9, v4

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_9
    mul-float v10, v9, v9

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-ltz v5, :cond_0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_41

    nop

    :goto_d
    mul-float v9, v5, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    sub-float/2addr v1, v2

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

    :goto_f
    mul-float v8, v4, v4

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

    :goto_10
    float-to-double v5, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_11
    mul-float v10, v6, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_12
    return v8

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_13
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_14
    const/high16 v5, 0x7fc00000    # Float.NaN

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_16
    return v8

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_31

    nop

    nop

    :goto_17
    double-to-float v7, v7

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    goto/32 :goto_2c

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

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    div-float v8, v6, v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1b
    return v5

    nop

    nop

    :goto_1c
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

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

    nop

    :goto_1e
    div-float/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1f
    div-float/2addr v5, v4

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_20
    if-eqz v9, :cond_2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_21
    const-wide v7, 0x3e7ad7f29abcaf48L    # 1.0E-7

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_22
    div-float v8, v5, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_24
    return v8

    nop

    :goto_25
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_27
    float-to-double v6, v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_28
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    return v8

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_42

    nop

    nop

    :goto_2b
    return v8

    nop

    :pswitch_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2c
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_2d
    float-to-double v7, v5

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    return v8

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_f

    nop

    nop

    :goto_2f
    add-float/2addr v9, v10

    nop

    nop

    packed-switch p1, :pswitch_data_0

    goto/32 :goto_44

    nop

    nop

    :goto_30
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_31
    div-float v8, v5, v0

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_32
    cmpg-double v5, v5, v7

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

    :goto_33
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_34
    const/4 v8, 0x0

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

    :goto_35
    add-float/2addr v3, v5

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_36
    div-float v8, v6, v0

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_37
    sub-float v5, p2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_38
    add-float/2addr v2, v3

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

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

    :goto_3a
    float-to-double v9, v6

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/high16 v4, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_3c
    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

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

    :goto_3d
    cmpl-float v9, v7, v8

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

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

    :goto_3f
    sub-float v6, p3, v3

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_43
    double-to-float v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_44
    return v8

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_1a

    nop

    nop

    :goto_45
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_46
    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :goto_47
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_48
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_49
    double-to-float v8, v10

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    float-to-double v10, v8

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public getKeyFramePositions([I[F)I
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "pos"
        }
    .end annotation

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/2addr v3, v4

    nop

    goto/32 :goto_1c

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

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_4
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1b

    nop

    :goto_6
    check-cast v10, Landroidx/constraintlayout/motion/widget/Key;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_7
    mul-int/lit16 v4, v4, 0x3e8

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    int-to-float v0, v0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_9
    float-to-double v4, v0

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_a
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_b
    iget v4, v10, Landroidx/constraintlayout/motion/widget/Key;->mType:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    move-object v10, v3

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

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

    :goto_e
    move-object v8, p2

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

    :goto_f
    move v0, v11

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x0

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

    :goto_12
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_15
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_16
    add-int/lit8 v1, v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_17
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_18
    div-float/2addr v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_19
    move v9, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1c
    aput v3, p1, v0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1d
    if-nez v3, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1f
    const/high16 v3, 0x42c80000    # 100.0f

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_21
    float-to-double v4, v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v0, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_23
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_24
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_25
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    :goto_26
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_27
    add-int/lit8 v11, v0, 0x1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget v3, v10, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

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

    :goto_29
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_2a
    iget v0, v10, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

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

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

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

    nop

    :goto_2c
    invoke-virtual/range {v3 .. v9}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    aget-object v3, v3, v4

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method getPos(D)[D
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    goto/32 :goto_14

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    array-length v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    aget-object v0, v0, v1

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

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_d
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x0

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
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_1

    nop

    nop

    :goto_13
    const v1, 0x20

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

    :goto_14
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_15
    if-gtz v2, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    :goto_16
    if-nez v0, :cond_2

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method getPositionKeyframe(IIFF)Landroidx/constraintlayout/motion/widget/KeyPositionBase;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "layoutWidth",
            "layoutHeight",
            "x",
            "y"
        }
    .end annotation

    goto/32 :goto_1b

    nop

    nop

    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_1
    move-object v8, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_3
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_4
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_5
    add-float/2addr v1, v2

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_7
    instance-of v1, v10, Landroidx/constraintlayout/motion/widget/KeyPositionBase;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/KeyPositionBase;->intersects(IILandroid/graphics/RectF;Landroid/graphics/RectF;FF)Z

    move-result v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-float/2addr v1, v2

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object v4, v0

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_c
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move v2, p1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput v1, v0, Landroid/graphics/RectF;->right:F

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_10
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_11
    check-cast v10, Landroidx/constraintlayout/motion/widget/Key;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_12
    move v6, p3

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

    :goto_13
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_15
    goto :goto_1d

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    :cond_1
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_18
    add-float/2addr v1, v2

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0xc

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

    :goto_1a
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_2
    goto/32 :goto_32

    nop

    nop

    :goto_1b
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1c
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    nop

    :goto_1d
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget v1, v8, Landroid/graphics/RectF;->left:F

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_20
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_21
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_22
    move v3, p2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput v1, v0, Landroid/graphics/RectF;->left:F

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_24
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_25
    move-object v5, v8

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_3

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3b

    nop

    :goto_27
    move v7, p4

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_28
    iput v1, v0, Landroid/graphics/RectF;->top:F

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput v1, v8, Landroid/graphics/RectF;->right:F

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

    :goto_2a
    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyPositionBase;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2b
    move-object v10, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2c
    new-instance v1, Landroid/graphics/RectF;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyPositionBase;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget v1, v0, Landroid/graphics/RectF;->left:F

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

    :goto_30
    add-float/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_31
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_32
    move-object v1, v10

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

    :goto_33
    iget v1, v8, Landroid/graphics/RectF;->top:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_34
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_35
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_37
    iput v1, v8, Landroid/graphics/RectF;->top:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_38
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iput v1, v8, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_3a
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_3b
    goto/32 :goto_45

    nop

    nop

    :goto_3c
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iput v1, v8, Landroid/graphics/RectF;->bottom:F

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

    :goto_3e
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_3f
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    move-object v1, v10

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_41
    new-instance v0, Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget v1, v0, Landroid/graphics/RectF;->top:F

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_43
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_44
    return-object v1

    nop

    nop

    :goto_45
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_46
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

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

    :goto_47
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_48
    return-object v1

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method

.method getPostLayoutDvDp(FIIFF[F)V
    .locals 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "width",
            "height",
            "locationX",
            "locationY",
            "mAnchorDpDt"
        }
    .end annotation

    goto/32 :goto_9

    nop

    nop

    :goto_0
    move/from16 v5, p3

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_1
    move-object/from16 v4, p6

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move-object/from16 v7, v16

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_3
    aput v1, p6, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    :goto_4
    move-object/from16 v4, p6

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_5
    move/from16 v5, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v1, :cond_0

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move-object v10, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_e
    move-object v12, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_f
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

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

    :goto_12
    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;-><init>()V

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move-object/from16 v18, v3

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move-object/from16 v3, v21

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_16
    move-object/from16 v6, v18

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

    nop

    :goto_17
    aput v3, p6, v2

    nop

    goto/32 :goto_e8

    nop

    nop

    :goto_18
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v4, v9, v10, v8}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_6a

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    :goto_1e
    move-object/from16 v19, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1f
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    :cond_1
    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move-object/from16 v18, v4

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-string v7, "scaleY"

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v4, v5, v8}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_fc

    nop

    nop

    :goto_26
    mul-float v2, v23, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_29
    invoke-virtual {v6, v11, v8}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    goto/32 :goto_111

    nop

    nop

    nop

    :goto_2a
    add-float/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2b
    move/from16 v2, p4

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2c
    if-eqz v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    :cond_3
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_2d
    move-object/from16 v1, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_30
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    :goto_31
    move-object v3, v1

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

    :goto_32
    invoke-virtual {v6, v14, v8}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    goto/32 :goto_de

    nop

    nop

    :goto_33
    move-object v13, v1

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_34
    move/from16 v3, p5

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_4e

    nop

    :goto_36
    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    :goto_38
    move-object v7, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_39
    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d6

    nop

    nop

    :goto_3a
    mul-float v1, v1, v16

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_3b
    move-object v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-direct {v0, v8, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->14b68b8c5e31b8f94c3ffcf6fb68e0e1m(F[F)F

    move-result v8

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_3e
    move/from16 v4, p2

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_3f
    if-eqz v1, :cond_5

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :cond_5
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_41
    move-object v15, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    aget-wide v2, v6, v1

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    move-object/from16 v21, v7

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_44
    sub-float v3, v1, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    :goto_45
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_46
    if-eqz v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :cond_6
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_47
    move-object/from16 p1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    :goto_48
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_49
    move-object/from16 v21, v7

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    float-to-double v2, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_4b
    move-object/from16 v16, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_4c
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    nop

    nop

    :goto_4e
    goto/32 :goto_5f

    nop

    nop

    :goto_4f
    add-float v23, v16, v19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_51
    move-object/from16 v6, p6

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

    :goto_52
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_53
    move/from16 v2, p4

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_a8

    nop

    nop

    :goto_55
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_56
    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    nop

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    :goto_59
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_5b
    move-object v14, v1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    move-object v1, v3

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_5d
    move/from16 v4, p2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    move-object/from16 v4, v20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5f
    move-object v11, v1

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto :goto_57

    nop

    :goto_61
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_62
    float-to-double v4, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_64
    move-object/from16 v17, v3

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

    :goto_65
    move-object/from16 v20, v6

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_66
    check-cast v3, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    nop

    nop

    :goto_67
    goto/32 :goto_38

    nop

    nop

    :goto_68
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_69
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v4, v12, v13, v8}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    if-lez v0, :cond_7

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_f

    nop

    :goto_6d
    add-float v22, v7, v17

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_6e
    const-string v2, "translationX"

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

    :goto_6f
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_70
    aget-object v1, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    :goto_71
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    nop

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_a

    nop

    nop

    :goto_73
    move/from16 v2, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_74
    move-object v1, v3

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_75
    move-object/from16 p1, v14

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    :goto_77
    array-length v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    :goto_78
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_79
    move-object/from16 v6, p6

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_da

    nop

    nop

    nop

    :goto_7b
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_7c
    move-object/from16 v20, v6

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    move-object v14, v5

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v6, v5, v15, v8}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_7f
    move/from16 v2, p1

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    :goto_80
    move-object v1, v6

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

    :goto_81
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_83
    invoke-virtual {v4, v11, v8}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    goto/32 :goto_1a

    nop

    nop

    :goto_84
    add-float/2addr v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_85
    move-object/from16 p1, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v1, v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {v6, v12, v13, v8}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_88
    goto/16 :goto_72

    nop

    nop

    nop

    nop

    :goto_89
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    sub-float v7, v1, v3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8b
    invoke-virtual {v4, v14, v15, v8}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_8c
    move-object/from16 v18, p1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_8e
    move-object/from16 v20, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_8f
    mul-double/2addr v2, v4

    nop

    goto/32 :goto_100

    nop

    nop

    :goto_90
    move/from16 v3, p5

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_91
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_92
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_93
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_94
    move-object v1, v3

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_95
    move-object v9, v1

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

    :goto_96
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_97
    move-object/from16 p1, v14

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    :goto_98
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_99
    move-object v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_9a
    move-object/from16 v16, v4

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9b
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_9c
    goto/16 :goto_b2

    nop

    nop

    nop

    :goto_9d
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_9e
    if-eqz v1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_74

    nop

    nop

    nop

    :goto_9f
    if-gtz v3, :cond_9

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_47

    nop

    nop

    :goto_a0
    goto/16 :goto_67

    nop

    nop

    :goto_a1
    goto/32 :goto_11

    nop

    nop

    :goto_a2
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_a3
    move-object/from16 v7, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_a4
    move-object/from16 v24, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_a5
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_a6
    invoke-virtual {v4}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->clear()V

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    nop

    :goto_a8
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_a9
    move-object/from16 v18, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_aa
    move-object/from16 v6, v17

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

    :goto_ab
    move-object/from16 v5, v19

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    goto/16 :goto_10d

    nop

    :goto_ad
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_ae
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    :goto_af
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_b0
    move-object v1, v3

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

    :goto_b1
    const/4 v1, 0x0

    nop

    :goto_b2
    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_b3
    const-string v6, "scaleX"

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_b4
    sub-float v17, v1, v3

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_b5
    return-void

    nop

    :goto_b6
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

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

    :goto_b8
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_ba
    invoke-virtual {v6, v4, v3, v8}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    goto/16 :goto_19

    nop

    :goto_bc
    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    new-instance v1, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_be
    const/4 v2, 0x0

    nop

    goto/32 :goto_d5

    nop

    nop

    :goto_bf
    if-lt v1, v2, :cond_a

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_c0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    mul-float v4, v22, p4

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    array-length v3, v2

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    float-to-double v3, v8

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    move/from16 v17, v7

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    move/from16 v4, p2

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c6
    const-string v5, "rotation"

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_c7
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_c9
    move-object v5, v1

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

    :goto_ca
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_cb
    move-object v14, v5

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_cc
    move-object/from16 v21, v5

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    invoke-direct {v0, v2, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->14b68b8c5e31b8f94c3ffcf6fb68e0e1m(F[F)F

    move-result v8

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    return-void

    nop

    nop

    :goto_cf
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_d0
    if-eqz v1, :cond_b

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    invoke-virtual {v4, v6, v7, v8}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_d4
    move/from16 v3, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_d5
    if-nez v1, :cond_c

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_d6
    move-object v1, v3

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_d7
    move-object/from16 v1, v18

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    goto :goto_e1

    nop

    :goto_d9
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_da
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_db
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    goto/32 :goto_b5

    nop

    nop

    :goto_dc
    return-void

    nop

    nop

    nop

    nop

    :goto_dd
    goto/32 :goto_45

    nop

    nop

    :goto_de
    move-object/from16 v5, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_df
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    move-object v14, v5

    nop

    :goto_e1
    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_e3
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    nop

    goto/32 :goto_c2

    nop

    nop

    :goto_e4
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    invoke-virtual {v1, v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_e6
    mul-float/2addr v3, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    :goto_e7
    sub-float v16, v1, v3

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_e8
    sub-float v1, v1, p5

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_e9
    if-eqz v1, :cond_d

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

    :cond_d
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_ea
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

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

    :goto_eb
    move/from16 v3, p5

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_ed
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

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

    :goto_ee
    move-object v4, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_ef
    move/from16 v2, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_f0
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_f2
    move-object/from16 v21, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_f3
    float-to-double v3, v8

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f5
    move-object v1, v3

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    :goto_f6
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    :goto_f7
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    move-object/from16 v6, p6

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_f9
    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_fb
    invoke-virtual/range {v18 .. v18}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->clear()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_fc
    move-object v1, v3

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_fd
    aget-object v1, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    sub-float v19, v1, v3

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

    :goto_ff
    move-object v6, v1

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_100
    aput-wide v2, v6, v1

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    :goto_101
    const-string v4, "translationY"

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_102
    goto :goto_fa

    nop

    nop

    nop

    :goto_103
    goto/32 :goto_f7

    nop

    nop

    nop

    :goto_104
    aget v7, v1, v2

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_105
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_106
    float-to-double v3, v8

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_107
    const/high16 v1, 0x3f800000    # 1.0f

    nop

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

    :goto_108
    const v1, 0x1a

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_109
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_10a
    goto/16 :goto_5a

    nop

    :goto_10b
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    nop

    nop

    nop

    :goto_10d
    goto/32 :goto_5b

    nop

    nop

    :goto_10e
    if-nez v1, :cond_e

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_10f
    move/from16 v5, p3

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_110
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_111
    invoke-virtual {v6, v9, v10, v8}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop
.end method

.method public getStartHeight()F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    nop
.end method

.method public getStartWidth()F
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public getStartX()F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    nop
.end method

.method public getStartY()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    :goto_2
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getTransformPivotTarget()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

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

    nop

    nop

    nop
.end method

.method public getView()Landroid/view/View;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method interpolate(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "global_position",
            "time",
            "keyCache"
        }
    .end annotation

    goto/32 :goto_125

    nop

    nop

    :goto_0
    float-to-int v7, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move/from16 v18, v1

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_2
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_3
    move-wide/from16 v4, p3

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_4
    if-gt v2, v9, :cond_0

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

    :cond_0
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    aget-object v4, v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_6
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v2

    nop

    nop

    goto/32 :goto_187

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :goto_b
    aget-wide v6, v2, v20

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v2

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

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

    :goto_e
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    :goto_f
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    :goto_10
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_11
    add-int/lit8 v5, v1, -0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    nop

    nop

    :goto_14
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x0

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_129

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    nop

    nop

    :goto_18
    goto/32 :goto_6d

    nop

    nop

    :goto_19
    or-int v1, v16, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_15b

    nop

    :goto_1b
    goto/32 :goto_15a

    nop

    nop

    nop

    :goto_1c
    const/4 v8, 0x0

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_189

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v1, :cond_1

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    aget-object v2, v2, v1

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_20
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    :goto_21
    float-to-double v7, v6

    nop

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_199

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    int-to-float v4, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_24
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_25
    check-cast v6, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_26
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_27
    sub-float v2, v3, v2

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    :goto_28
    rem-float v6, v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_44

    nop

    nop

    :goto_2b
    if-nez v7, :cond_4

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_2c
    return v16

    nop

    nop

    :goto_2d
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    move v7, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_2f
    move-object/from16 v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_30
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    :goto_31
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_35
    add-float/2addr v7, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    :goto_36
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :cond_6
    goto/32 :goto_191

    nop

    nop

    :goto_39
    invoke-interface {v7, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez v8, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    :goto_3b
    or-int/2addr v8, v1

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_3c
    move/from16 v16, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    float-to-double v2, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_3e
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintAttribute;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_3f
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

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

    nop

    :goto_40
    const/4 v8, 0x0

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

    :goto_41
    goto/16 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_159

    nop

    nop

    nop

    nop

    :goto_43
    sget v4, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    move-object/from16 v3, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_13a

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_139

    nop

    nop

    :goto_48
    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    :goto_49
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_1d

    nop

    nop

    :goto_4b
    goto/32 :goto_9

    nop

    nop

    :goto_4c
    goto :goto_55

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

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

    :goto_4f
    invoke-virtual/range {v1 .. v10}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;->setPathRotate(Landroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;FJDD)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_50
    if-nez v1, :cond_8

    nop

    goto/32 :goto_78

    nop

    :cond_8
    goto/32 :goto_e0

    nop

    nop

    :goto_51
    sub-int/2addr v2, v4

    nop

    nop

    nop

    goto/32 :goto_188

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    :goto_53
    add-float/2addr v3, v4

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    :goto_54
    move-object v9, v2

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    const/4 v2, 0x0

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

    :goto_57
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    :goto_58
    move v15, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_59
    div-float v4, v14, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    :goto_5a
    if-nez v1, :cond_9

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_e1

    nop

    nop

    :goto_5b
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_5c
    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_5d
    move-object/from16 v6, p5

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    nop

    goto/32 :goto_16b

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_60
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    :goto_61
    instance-of v1, v6, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;

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

    :goto_62
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    :goto_63
    int-to-float v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_64
    array-length v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    move/from16 v18, v1

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    :goto_67
    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    :goto_68
    if-ne v1, v2, :cond_a

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_69
    mul-float v7, v6, v4

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_6a
    goto/16 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v2, v15, v11}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->conditionallyFire(FLandroid/view/View;)V

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    move/from16 v20, v9

    nop

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    nop

    :goto_70
    sub-int v10, v9, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    :goto_71
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_72
    goto/16 :goto_a3

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_17f

    nop

    nop

    nop

    :goto_74
    add-float v2, v7, v5

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_75
    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_76
    if-eqz v8, :cond_b

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_16e

    nop

    nop

    :goto_77
    goto/16 :goto_55

    nop

    :goto_78
    goto/32 :goto_3c

    nop

    nop

    :goto_79
    goto/16 :goto_161

    nop

    nop

    nop

    nop

    :goto_7a
    goto/32 :goto_160

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

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

    nop

    nop

    :goto_7c
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_7e
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    nop

    :goto_80
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_81
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    move-object v9, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    :goto_83
    if-ne v3, v4, :cond_c

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    :goto_84
    const/4 v1, 0x1

    nop

    :goto_85
    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    :goto_87
    add-float/2addr v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    :goto_88
    if-lez v1, :cond_d

    nop

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_89
    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    float-to-double v2, v15

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual/range {v1 .. v8}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setView(FLandroid/view/View;[I[D[D[DZ)V

    goto/32 :goto_183

    nop

    nop

    nop

    :goto_8c
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    move-object/from16 v17, v2

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_90
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    :goto_91
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_92
    iget v14, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_93
    move-object/from16 v0, p0

    nop

    goto/32 :goto_10c

    nop

    nop

    :goto_94
    aget-object v2, v2, v1

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    nop

    :goto_95
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_96
    sub-float/2addr v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    :goto_97
    if-nez v1, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    :cond_e
    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_98
    cmpg-float v1, v15, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_99
    sget v2, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    :goto_9a
    invoke-virtual {v11, v8}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    cmpl-float v8, v8, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_9c
    move-wide/from16 v5, p3

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    if-gtz v7, :cond_f

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_9f
    if-eqz v8, :cond_10

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_174

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    float-to-int v5, v5

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_a1
    move-object/from16 v3, p5

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_a2
    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_a5
    move-object v1, v10

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    :goto_a6
    invoke-static {v13, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :goto_a7
    move/from16 v16, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_a8
    iget v8, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    :goto_a9
    float-to-double v5, v5

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_aa
    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_ab
    move v2, v15

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_ac
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    :goto_ae
    invoke-virtual {v11, v2}, Landroid/view/View;->setPivotX(F)V

    goto/32 :goto_172

    nop

    nop

    :goto_af
    if-nez v3, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    :cond_11
    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_b0
    const/4 v10, 0x0

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_b1
    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

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

    :goto_b5
    move-object v2, v6

    nop

    nop

    nop

    goto/32 :goto_197

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    :goto_b7
    aget-wide v4, v2, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b8
    div-float/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_b9
    float-to-double v3, v15

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    nop

    nop

    :goto_bb
    goto/32 :goto_132

    nop

    nop

    :goto_bc
    add-float/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    :goto_bd
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_be
    if-gez v1, :cond_12

    nop

    nop

    goto/32 :goto_f5

    nop

    :cond_12
    goto/32 :goto_192

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    if-eqz v1, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    nop

    goto/32 :goto_b3

    nop

    nop

    :goto_c1
    if-nez v17, :cond_14

    nop

    goto/32 :goto_6b

    nop

    nop

    :cond_14
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    goto/16 :goto_157

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    goto/32 :goto_176

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    nop

    nop

    goto/32 :goto_18c

    nop

    nop

    :goto_c5
    move v3, v15

    nop

    goto/32 :goto_194

    nop

    nop

    nop

    :goto_c6
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-virtual {v2, v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    goto/32 :goto_190

    nop

    nop

    nop

    nop

    :goto_c8
    move/from16 v16, v1

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_c9
    add-float/2addr v5, v2

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;->setPathRotate(Landroid/view/View;FDD)V

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_cb
    sub-float/2addr v5, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    move/from16 v20, v9

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    goto/32 :goto_84

    nop

    nop

    :goto_ce
    move-object/from16 v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    :goto_cf
    if-nez v3, :cond_15

    nop

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    sub-float/2addr v2, v3

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    :goto_d1
    move v4, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_d2
    if-ne v1, v2, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    :cond_16
    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d4
    move-object/from16 v17, v9

    nop

    goto/32 :goto_141

    nop

    nop

    :goto_d5
    move-object v10, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    const/4 v2, 0x0

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    invoke-virtual {v11, v6, v7, v9, v5}, Landroid/view/View;->layout(IIII)V

    :goto_d8
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    goto/16 :goto_bb

    nop

    :goto_da
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_db
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    sub-float v4, v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_de
    mul-float/2addr v3, v15

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    :goto_df
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    :goto_e0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :goto_e2
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    :goto_e3
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_e4
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_e5
    iget v8, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_e6
    goto/16 :goto_85

    nop

    nop

    :goto_e7
    goto/32 :goto_100

    nop

    nop

    :goto_e8
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

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

    :goto_e9
    sub-int/2addr v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    move-object v1, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_eb
    const/4 v10, 0x0

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_ec
    array-length v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_ed
    instance-of v1, v9, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    aget-wide v7, v1, v10

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_180

    nop

    nop

    :goto_f0
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

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

    :goto_f1
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_f2
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    :goto_f3
    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    goto/32 :goto_121

    nop

    nop

    :goto_f6
    add-float v7, v2, v5

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    cmpl-float v8, v14, v8

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

    :goto_f8
    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_196

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_fa
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    move v3, v15

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

    :goto_fc
    goto/16 :goto_1d

    nop

    nop

    nop

    :goto_fd
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_ff
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_100
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    :goto_101
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    nop

    :goto_102
    move v3, v15

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_103
    cmpl-double v7, v7, v9

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_104
    sub-int v13, v5, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_105
    move-object/from16 v20, v6

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    :goto_106
    aget-object v1, v1, v10

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_107
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

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

    :goto_108
    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_109
    float-to-double v2, v15

    nop

    goto/32 :goto_18d

    nop

    nop

    :goto_10a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_10b
    move-object/from16 v2, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    move-object/from16 v11, p1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    move-object/from16 v1, v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_10e
    iget v6, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_10f
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionSteps:I

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_110
    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_111
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_112
    invoke-virtual {v4, v11, v15}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setProperty(Landroid/view/View;F)V

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_113
    check-cast v9, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    :goto_114
    invoke-virtual {v11, v14, v8}, Landroid/view/View;->measure(II)V

    goto/32 :goto_65

    nop

    nop

    :goto_115
    add-float/2addr v9, v3

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_116
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

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

    nop

    :goto_117
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_118
    mul-float/2addr v5, v4

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_119
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    nop

    :goto_11a
    add-float/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    div-float v5, v2, v4

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    add-int/2addr v3, v4

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    :goto_11d
    float-to-int v9, v9

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    :goto_11e
    if-nez v1, :cond_17

    nop

    nop

    goto/32 :goto_182

    nop

    :cond_17
    goto/32 :goto_18e

    nop

    nop

    :goto_11f
    mul-float/2addr v5, v15

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

    :goto_120
    array-length v3, v2

    nop

    goto/32 :goto_179

    nop

    nop

    :goto_121
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_122
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_123
    double-to-float v5, v5

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    :goto_124
    check-cast v4, Landroidx/constraintlayout/motion/utils/ViewSpline;

    nop

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    :goto_125
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_126
    move v6, v7

    nop

    nop

    nop

    nop

    :goto_127
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_128
    goto/32 :goto_2d

    nop

    nop

    :goto_129
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    aget-wide v18, v1, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    check-cast v1, Landroid/view/View;

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

    :goto_12c
    move-object v6, v1

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

    :goto_12d
    move v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    nop

    :goto_12e
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    check-cast v10, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    nop

    goto/32 :goto_15c

    nop

    nop

    :goto_130
    mul-float/2addr v2, v15

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_131
    move/from16 v12, p2

    nop

    nop

    nop

    goto/32 :goto_198

    nop

    nop

    nop

    nop

    :goto_132
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_133
    add-float v6, v1, v5

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    :goto_134
    goto/16 :goto_127

    nop

    nop

    nop

    :goto_135
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_136
    move-wide/from16 v6, v18

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    :goto_137
    iget-boolean v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_138
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

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

    nop

    :goto_139
    move v7, v13

    nop

    nop

    nop

    :goto_13a
    goto/32 :goto_126

    nop

    nop

    nop

    nop

    :goto_13b
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    :goto_13c
    move v8, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setProperty(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_13e
    if-eqz v1, :cond_18

    nop

    nop

    nop

    goto/32 :goto_184

    nop

    nop

    :cond_18
    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    :goto_13f
    add-float v9, v1, v5

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    :goto_140
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_141
    goto/16 :goto_8f

    nop

    nop

    nop

    nop

    :goto_142
    goto/32 :goto_a7

    nop

    nop

    :goto_143
    if-nez v4, :cond_19

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_144
    const/high16 v2, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_145
    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_146
    float-to-int v6, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_147
    aget-wide v18, v1, v9

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    :goto_148
    const/4 v9, 0x1

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_149
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionSteps:I

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_14a
    cmpl-float v1, v15, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14b
    mul-float/2addr v4, v15

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_14c
    goto/16 :goto_73

    nop

    nop

    nop

    :goto_14d
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14e
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    :goto_14f
    goto/16 :goto_7d

    nop

    nop

    :goto_150
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_151
    move v8, v1

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

    nop

    :goto_152
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_153
    move-object/from16 v2, p1

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_154
    aget-wide v4, v1, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    :goto_155
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    nop

    :goto_156
    invoke-virtual {v9, v11, v15}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->setProperty(Landroid/view/View;F)V

    :goto_157
    goto/32 :goto_181

    nop

    nop

    nop

    :goto_158
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    :goto_159
    move/from16 v20, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    :goto_15a
    move v15, v2

    nop

    nop

    nop

    nop

    :goto_15b
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_15c
    instance-of v1, v10, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_15d
    sub-float/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    :goto_15e
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_15f
    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    :goto_160
    move-object/from16 v20, v6

    nop

    :goto_161
    goto/32 :goto_18a

    nop

    nop

    :goto_162
    move-object v1, v2

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    nop

    :goto_163
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    :goto_164
    if-nez v1, :cond_1a

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_101

    nop

    nop

    nop

    :goto_165
    array-length v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_166
    if-eqz v7, :cond_1b

    nop

    nop

    nop

    goto/32 :goto_170

    nop

    :cond_1b
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_167
    if-nez v1, :cond_1c

    nop

    goto/32 :goto_d8

    nop

    nop

    :cond_1c
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_168
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_169
    add-int/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    :goto_16a
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_16b
    invoke-static {v3, v11, v4}, Landroidx/constraintlayout/motion/utils/CustomSupport;->setInterpolatedValue(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V

    goto/32 :goto_163

    nop

    nop

    nop

    :goto_16c
    if-gtz v3, :cond_1d

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_b9

    nop

    nop

    :goto_16d
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_16e
    iget-boolean v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_16f
    rem-float v6, v7, v14

    nop

    nop

    nop

    nop

    nop

    :goto_170
    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_171
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_172
    invoke-virtual {v11, v4}, Landroid/view/View;->setPivotY(F)V

    :goto_173
    goto/32 :goto_155

    nop

    nop

    :goto_174
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    :goto_175
    if-nez v1, :cond_1e

    nop

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    :cond_1e
    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_176
    const/4 v10, 0x0

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    :goto_177
    if-gtz v2, :cond_1f

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_c

    nop

    nop

    :goto_178
    float-to-double v3, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_179
    if-lt v1, v3, :cond_20

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17a
    move-object v9, v10

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    :goto_17b
    if-lt v1, v3, :cond_21

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_17c
    div-float/2addr v6, v4

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17d
    if-nez v1, :cond_22

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18b

    nop

    :cond_22
    goto/32 :goto_195

    nop

    nop

    nop

    nop

    nop

    :goto_17e
    iget v14, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_17f
    const/high16 v8, 0x40000000    # 2.0f

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

    :goto_180
    if-lez v0, :cond_23

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_128

    nop

    :goto_181
    goto/16 :goto_18

    nop

    :goto_182
    goto/32 :goto_2c

    nop

    nop

    :goto_183
    iput-boolean v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    nop

    nop

    nop

    nop

    nop

    :goto_184
    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_185
    move-wide/from16 v9, v18

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_186
    div-float/2addr v3, v2

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

    :goto_187
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    :goto_188
    if-gtz v2, :cond_24

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_189
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    :goto_18a
    goto/16 :goto_80

    nop

    nop

    :goto_18b
    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18c
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_18d
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_18e
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

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

    :goto_18f
    const/high16 v5, 0x3f000000    # 0.5f

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    :goto_190
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_191
    aget-object v1, v1, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_192
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

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

    :goto_193
    check-cast v9, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;

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

    nop

    :goto_194
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;->setPathRotate(Landroid/view/View;FDD)V

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_195
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_196
    const/high16 v14, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_197
    check-cast v2, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    nop

    :goto_198
    invoke-direct {v0, v12, v2}, Landroidx/constraintlayout/motion/widget/MotionController;->14b68b8c5e31b8f94c3ffcf6fb68e0e1m(F[F)F

    move-result v2

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    :goto_199
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19a
    add-float/2addr v5, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_19b
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    nop

    nop

    :goto_19c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_19d
    goto/16 :goto_1d

    nop

    nop

    :goto_19e
    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19f
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mNoMovement:Z

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method name()Ljava/lang/String;
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_5
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x18

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

    :goto_8
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

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
.end method

.method positionKeyframe(Landroid/view/View;Landroidx/constraintlayout/motion/widget/KeyPositionBase;FF[Ljava/lang/String;[F)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "key",
            "x",
            "y",
            "attribute",
            "value"
        }
    .end annotation

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    iget v2, v10, Landroid/graphics/RectF;->top:F

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

    :goto_1
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    move-object v5, v10

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object v0, p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

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

    :goto_7
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move v7, p4

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_13

    nop

    nop

    :goto_a
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    add-float/2addr v2, v3

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput v2, v10, Landroid/graphics/RectF;->left:F

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_e
    new-instance v1, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_f
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move-object v2, p2

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_11
    move-object v10, v2

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_12
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_13
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

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

    :goto_14
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_15
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

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

    :goto_16
    add-float/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_17
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_19
    new-instance v2, Landroid/graphics/RectF;

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

    :goto_1a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_31

    nop

    :cond_0
    goto/32 :goto_30

    nop

    :goto_1b
    move-object/from16 v9, p6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_1c
    move-object v4, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move v6, p3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    :goto_1f
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget v2, v10, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_21
    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_22
    iget v2, v1, Landroid/graphics/RectF;->left:F

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_24
    iput v2, v1, Landroid/graphics/RectF;->left:F

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

    :goto_25
    goto/32 :goto_31

    nop

    nop

    :goto_26
    iput v2, v1, Landroid/graphics/RectF;->top:F

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_27
    move-object/from16 v8, p5

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_28
    add-float/2addr v2, v3

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

    nop

    :goto_29
    iput v2, v10, Landroid/graphics/RectF;->right:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2a
    iput v2, v1, Landroid/graphics/RectF;->right:F

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2c
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

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

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2f
    move-object v3, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_1f

    nop

    :goto_31
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_32
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

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

    :goto_33
    iput v2, v10, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_34
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget v2, v1, Landroid/graphics/RectF;->top:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_36
    add-float/2addr v2, v3

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

    :goto_37
    iput v2, v10, Landroid/graphics/RectF;->top:F

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_38
    invoke-virtual/range {v2 .. v9}, Landroidx/constraintlayout/motion/widget/KeyPositionBase;->positionAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop
.end method

.method public remeasure()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

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

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method rotate(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rect",
            "out",
            "rotation",
            "preHeight",
            "preWidth"
        }
    .end annotation

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_0
    iget v2, p2, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v1, p1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_3
    iput v2, p2, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_4
    add-int/2addr v2, v3

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput v2, p2, Landroid/graphics/Rect;->right:I

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

    :goto_6
    iget v2, p2, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_7
    iget v3, p1, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    iput v2, p2, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_a
    add-int/2addr v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v1, p1, Landroid/graphics/Rect;->top:I

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

    :goto_e
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_11
    iput v2, p2, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_12
    iput v2, p2, Landroid/graphics/Rect;->left:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_13
    iput v2, p2, Landroid/graphics/Rect;->right:I

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int/2addr v2, v0

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_16
    iget v0, p1, Landroid/graphics/Rect;->left:I

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

    :goto_17
    add-int/2addr v1, v2

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

    nop

    nop

    :goto_18
    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sub-int/2addr v2, v3

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

    :goto_1b
    iget v1, p1, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_1c
    iput v2, p2, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_1e
    add-int/2addr v1, v2

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

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

    :goto_20
    div-int/lit8 v2, v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_21
    iget v2, p2, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_22
    iget v1, p1, Landroid/graphics/Rect;->right:I

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_23
    goto :goto_19

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_6b

    nop

    nop

    :goto_24
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_25
    packed-switch p3, :pswitch_data_0

    goto/32 :goto_4d

    nop

    nop

    :goto_26
    sub-int v2, v0, v2

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_28
    div-int/lit8 v2, v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_29
    sub-int v2, p4, v2

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

    :goto_2a
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2b
    sub-int v2, p5, v2

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_2c
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2d
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2f
    add-int/2addr v2, v3

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_30
    add-int/2addr v2, v3

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_31
    add-int/2addr v0, v1

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

    :goto_32
    add-int/2addr v2, v3

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    rem-int v0, v0, v1

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

    :goto_34
    sub-int v2, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_35
    iget v0, p1, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_36
    add-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_37
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_38
    iget v2, p1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget v2, p2, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3a
    iget v2, p2, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_3b
    add-int/2addr v2, v3

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

    :goto_3c
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_3d
    iget v2, p2, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    div-int/lit8 v2, v2, 0x2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    return-void

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :goto_41
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_43
    add-int/2addr v2, v0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_44
    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_45
    iget v2, p2, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_46
    div-int/lit8 v2, v2, 0x2

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_48
    iget v1, p1, Landroid/graphics/Rect;->right:I

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_49
    iput v2, p2, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_4b
    sub-int v2, p5, v2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_4c
    iget v1, p1, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4d
    goto/16 :goto_19

    nop

    nop

    :pswitch_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

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

    :goto_50
    iput v2, p2, Landroid/graphics/Rect;->right:I

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

    nop

    :goto_51
    div-int/lit8 v3, v0, 0x2

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

    :goto_52
    div-int/lit8 v2, v2, 0x2

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

    :goto_53
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    :goto_54
    add-int/2addr v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_55
    iput v2, p2, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_56
    div-int/lit8 v2, v2, 0x2

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

    :goto_57
    add-int/2addr v2, v1

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_58
    sub-int v2, p4, v2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const v0, 0x14

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

    :goto_5a
    iput v2, p2, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    div-int/lit8 v2, v2, 0x2

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

    :goto_5c
    add-int/2addr v0, v1

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_5d
    add-int/2addr v2, v3

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

    :goto_5e
    sub-int v2, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_5f
    iget v1, p1, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_60
    iget v2, p2, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget v0, p1, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_62
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_63
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_64
    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_65
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_66
    iput v2, p2, Landroid/graphics/Rect;->top:I

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

    :goto_67
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    add-int/2addr v2, v3

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_69
    add-int/2addr v2, v1

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

    :goto_6a
    add-int/2addr v2, v3

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

    :goto_6b
    iget v0, p1, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_6c
    div-int/lit8 v2, v2, 0x2

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

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
.end method

.method setBothStates(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

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
    int-to-float v4, v4

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

    :goto_3
    int-to-float v3, v3

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

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    :goto_a
    const/4 v1, 0x0

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
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mNoMovement:Z

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

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

    :goto_f
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/view/View;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    int-to-float v4, v4

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

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
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/view/View;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_18
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    goto/32 :goto_e

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

    goto/32 :goto_17

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

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

    :goto_1b
    add-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

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
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

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

    :goto_1f
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_21
    const v0, 0x20

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

    nop

    :goto_22
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_24
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public setDrawPath(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "debugMode"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

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

    :goto_1
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method

.method setEndState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cw",
            "constraintSet",
            "parentWidth",
            "parentHeight"
        }
    .end annotation

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v0, p0

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

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_2
    move-object v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4
    move v3, v6

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

    :goto_5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_8
    move v5, p4

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v6, :cond_1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    goto/32 :goto_2c

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

    goto/32 :goto_1

    nop

    nop

    :goto_10
    iget v1, p1, Landroid/graphics/Rect;->left:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, p1, p2, v6, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_12
    int-to-float v4, v4

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v2, p1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_14
    iget v6, p2, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionController;->rotate(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTempRect:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTempRect:Landroid/graphics/Rect;

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1b
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1d
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->getParameters(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1e
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1f
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_22
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move v4, p3

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

    :goto_24
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

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

    :goto_25
    add-int v0, v0, v1

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
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_d

    nop

    nop

    :goto_28
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_29
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

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

    :goto_2a
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    goto/32 :goto_2b

    nop

    nop

    :goto_2b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2c
    invoke-direct {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->32e01c2e41fbe060e9f140225cb36234m(Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    goto/32 :goto_9

    nop

    nop
.end method

.method public setPathMotionArc(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arc"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    nop

    nop

    nop

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
.end method

.method setStartCurrentState(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    :goto_6
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    const v0, 0x1c

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    int-to-float v4, v4

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

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

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    :goto_13
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/view/View;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    goto/32 :goto_18

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_18
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop
.end method

.method setStartState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cw",
            "constraintSet",
            "parentWidth",
            "parentHeight"
        }
    .end annotation

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v3, v6

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

    :goto_1
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

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

    :goto_3
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    iget v6, p2, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_7
    move v5, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_8
    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_a
    iget v2, p1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_b
    iget v1, p1, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_d
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

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

    :goto_e
    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0xe

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

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

    :goto_15
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_16
    int-to-float v4, v4

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

    :goto_17
    invoke-direct {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->32e01c2e41fbe060e9f140225cb36234m(Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1a
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTempRect:Landroid/graphics/Rect;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1b
    move-object v1, p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1c
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->getParameters(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionSteps:I

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1e
    move v4, p3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionController;->getInterpolator(Landroid/content/Context;ILjava/lang/String;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_21
    add-int v0, v0, v1

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

    :goto_22
    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionSteps:I

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v0, 0x20

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v6, :cond_0

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

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_25
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_27
    int-to-float v2, v2

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_28
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_29
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    int-to-float v3, v3

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionPaths;->applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    goto/32 :goto_20

    nop

    nop

    :goto_2d
    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionPhase:F

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2e
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2f
    invoke-virtual {v1, p1, p2, v6, v2}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    goto/32 :goto_40

    nop

    nop

    :goto_30
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_31
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_32
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

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

    :goto_33
    return-void

    nop

    :goto_34
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_34

    nop

    nop

    :goto_37
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_38
    int-to-float v1, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_3a
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

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

    :goto_3b
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionController;->rotate(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    :goto_3c
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_37

    nop

    nop

    :goto_3e
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

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

    :goto_40
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_36

    nop
.end method

.method public setStartState(Landroidx/constraintlayout/motion/utils/ViewState;Landroid/view/View;III)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rect",
            "v",
            "rotation",
            "preWidth",
            "preHeight"
        }
    .end annotation

    goto/32 :goto_c

    nop

    nop

    :goto_0
    goto/16 :goto_24

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v2, p1, Landroidx/constraintlayout/motion/utils/ViewState;->top:I

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_2
    iput v3, v0, Landroid/graphics/Rect;->right:I

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    packed-switch p3, :pswitch_data_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sub-int v3, p5, v3

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_5
    goto/16 :goto_24

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v2, v3, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    goto/32 :goto_12

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->height()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->height()I

    move-result v3

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :goto_a
    goto/32 :goto_32

    nop

    nop

    :goto_b
    iget v2, p1, Landroidx/constraintlayout/motion/utils/ViewState;->rotation:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_d
    iput v3, v0, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_e
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sub-int v3, v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_10
    add-int/2addr v3, v2

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_11
    iget v2, v0, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

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

    :goto_13
    add-int/2addr v3, v4

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_14
    iget v3, v0, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_15
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x0

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

    :goto_17
    sub-int v3, p4, v3

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_18
    add-int/2addr v3, v4

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

    nop

    :goto_19
    iget v3, v0, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1a
    iget v3, v0, Landroid/graphics/Rect;->left:I

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v0, Landroid/graphics/Rect;

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

    :goto_1c
    add-int/2addr v1, v2

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput v3, v0, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1e
    iput v3, v0, Landroid/graphics/Rect;->left:I

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

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget v3, v0, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput v3, v0, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_23
    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_31

    nop

    nop

    :goto_25
    sub-int v3, v1, v3

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_26
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_27
    int-to-float v5, v5

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->width()I

    move-result v3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_29
    int-to-float v3, v3

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v1, v0, p2, p3, v2}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/graphics/Rect;Landroid/view/View;IF)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2c
    add-int/2addr v1, v2

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

    :goto_2d
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->height()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_2e
    add-int/2addr v3, v1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    div-int/lit8 v3, v3, 0x2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->width()I

    move-result v4

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_31
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

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

    :goto_32
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_33
    div-int/lit8 v3, v3, 0x2

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

    :goto_34
    iget v3, v0, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget v1, p1, Landroidx/constraintlayout/motion/utils/ViewState;->left:I

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

    :goto_36
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->height()I

    move-result v3

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

    :goto_37
    iget v2, p1, Landroidx/constraintlayout/motion/utils/ViewState;->top:I

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_38
    iget v2, p1, Landroidx/constraintlayout/motion/utils/ViewState;->right:I

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_39
    add-int/2addr v3, v4

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_3a
    add-int/2addr v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_3b
    if-lez v0, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_4c

    nop

    :goto_3c
    iget v3, p1, Landroidx/constraintlayout/motion/utils/ViewState;->bottom:I

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_3d
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->width()I

    move-result v4

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iput v3, v0, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3f
    rem-int v0, v0, v1

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

    :goto_40
    div-int/lit8 v3, v3, 0x2

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

    :goto_41
    add-int/2addr v2, v3

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

    nop

    :goto_42
    iget v3, p1, Landroidx/constraintlayout/motion/utils/ViewState;->bottom:I

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_44
    div-int/lit8 v3, v3, 0x2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_45
    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_46
    const v1, 0x7

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_47
    iget v2, p1, Landroidx/constraintlayout/motion/utils/ViewState;->right:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_48
    add-int/2addr v2, v3

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_49
    iget v1, p1, Landroidx/constraintlayout/motion/utils/ViewState;->left:I

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->width()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4b
    int-to-float v4, v4

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_a

    nop

    nop

    :goto_4d
    goto/32 :goto_21

    nop

    nop

    :goto_4e
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop
.end method

.method public setTransformPivotTarget(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transformPivotTarget"
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
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

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

    :goto_2
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setView(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

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

    nop

    :goto_3
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_f

    nop

    :goto_6
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mConstraintTag:Ljava/lang/String;

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

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

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

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

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getConstraintTag()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    move-object v1, v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public setup(IIFJ)V
    .locals 28
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parentWidth",
            "parentHeight",
            "transitionDuration",
            "currentTime"
        }
    .end annotation

    goto/32 :goto_1f2

    nop

    nop

    nop

    :goto_0
    if-eqz v7, :cond_0

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_141

    nop

    nop

    :goto_1
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    nop

    goto/32 :goto_1d8

    nop

    nop

    :goto_2
    goto/16 :goto_25b

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2e8

    nop

    nop

    :goto_4
    const/4 v13, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c2

    nop

    nop

    nop

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

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

    :goto_6
    float-to-double v11, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c2

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    nop

    goto/32 :goto_1a4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_14e

    nop

    nop

    :goto_9
    const-string v6, " ["

    nop

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    :goto_a
    array-length v14, v7

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    :goto_b
    add-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a0

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_295

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v9, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_2a4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_2a1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v7, :cond_1

    nop

    nop

    goto/32 :goto_20f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v1, v15, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    nop

    nop

    nop

    goto/32 :goto_2b6

    nop

    nop

    nop

    :goto_12
    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    aput-wide v11, v10, v16

    nop

    nop

    goto/32 :goto_255

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int/2addr v1, v7

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    :goto_15
    add-int/2addr v7, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_278

    nop

    nop

    :goto_16
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    :goto_17
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1ef

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_2df

    nop

    :goto_1a
    goto/32 :goto_1f8

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v9, 0x0

    nop

    nop

    nop

    goto/32 :goto_1d3

    nop

    nop

    :goto_1c
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    nop

    goto/32 :goto_2c6

    nop

    nop

    nop

    :goto_1d
    move-object/from16 v23, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_21e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    move-object/from16 v7, v24

    nop

    nop

    goto/32 :goto_179

    nop

    nop

    :goto_1f
    invoke-virtual {v8, v4}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    goto/32 :goto_2ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget v10, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

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

    :goto_21
    add-int/2addr v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1b3

    nop

    nop

    :goto_22
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v14, v15, v7, v3, v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;->different(Landroidx/constraintlayout/motion/widget/MotionPaths;[Z[Ljava/lang/String;Z)V

    goto/32 :goto_b

    nop

    nop

    :goto_24
    iput-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e7

    nop

    nop

    nop

    nop

    nop

    :goto_25
    aget v20, v2, v7

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move-object/from16 v1, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2ab

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sub-int/2addr v10, v13

    nop

    goto/32 :goto_237

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_29
    new-instance v5, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_201

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    nop

    nop

    nop

    nop

    goto/32 :goto_244

    nop

    nop

    :goto_2c
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_202

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_2c1

    nop

    :goto_2e
    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :goto_2f
    move-wide/from16 v11, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_196

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v11, :cond_2

    nop

    goto/32 :goto_e4

    nop

    nop

    :cond_2
    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_31
    move/from16 v10, v26

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_47

    nop

    nop

    :goto_33
    goto/32 :goto_25c

    nop

    nop

    nop

    nop

    nop

    :goto_34
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_35
    iget v1, v9, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCurveFit:I

    nop

    nop

    nop

    nop

    goto/32 :goto_227

    nop

    nop

    nop

    nop

    :goto_36
    move-wide/from16 v11, p4

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

    :goto_37
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_1b8

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_27d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    aget-object v7, v1, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    goto/32 :goto_1d9

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a8

    nop

    nop

    :goto_3d
    move-object/from16 v17, v1

    nop

    goto/32 :goto_219

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    new-array v7, v1, [Landroidx/constraintlayout/motion/widget/KeyTrigger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_3f
    check-cast v11, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/4 v13, 0x1

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

    :goto_41
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_42
    aput v10, v5, v9

    nop

    goto/32 :goto_285

    nop

    nop

    nop

    :goto_43
    const/4 v10, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    :goto_44
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d6

    nop

    nop

    :goto_45
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setType(Ljava/lang/String;)V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_46
    move/from16 v26, v10

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_2f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const/4 v3, 0x0

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_2b2

    nop

    nop

    :goto_4a
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    :goto_4b
    goto/16 :goto_20a

    nop

    nop

    :goto_4c
    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_4d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    nop

    goto/32 :goto_119

    nop

    nop

    :goto_4e
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21b

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_264

    nop

    nop

    nop

    nop

    :goto_51
    invoke-static {v5, v8, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v5

    nop

    nop

    goto/32 :goto_2e3

    nop

    nop

    nop

    nop

    :goto_52
    const/4 v8, 0x2

    nop

    nop

    nop

    goto/32 :goto_212

    nop

    nop

    nop

    nop

    :goto_53
    aget-object v3, v1, v14

    nop

    nop

    nop

    goto/32 :goto_2a9

    nop

    nop

    :goto_54
    move-object v6, v15

    nop

    nop

    nop

    goto/32 :goto_22d

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v15, v9}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    nop

    nop

    goto/32 :goto_1c7

    nop

    nop

    nop

    nop

    :goto_56
    move/from16 v10, v26

    nop

    nop

    goto/32 :goto_2c4

    nop

    nop

    nop

    nop

    nop

    :goto_57
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    goto/32 :goto_294

    nop

    nop

    :goto_58
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_198

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_5a
    aput v14, v2, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_1f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    goto/32 :goto_273

    nop

    nop

    nop

    :goto_5d
    if-nez v11, :cond_3

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

    :cond_3
    goto/32 :goto_37

    nop

    nop

    :goto_5e
    check-cast v7, Landroidx/constraintlayout/motion/widget/Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2ff

    nop

    nop

    :goto_5f
    move-object/from16 v19, v2

    nop

    goto/32 :goto_2ed

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    nop

    goto/32 :goto_1ca

    nop

    nop

    nop

    nop

    :goto_61
    move-object/from16 v5, v23

    nop

    goto/32 :goto_162

    nop

    nop

    :goto_62
    move-object v7, v6

    nop

    goto/32 :goto_289

    nop

    nop

    :goto_63
    const/4 v13, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b0

    nop

    nop

    nop

    :goto_64
    const-string v9, "CUSTOM,"

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_65
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_66
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_67
    goto/32 :goto_cb

    nop

    nop

    :goto_68
    invoke-virtual {v1, v7, v10}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    goto/32 :goto_2c5

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    nop

    goto/32 :goto_296

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    move-object/from16 v19, v2

    nop

    :goto_6b
    goto/32 :goto_1f6

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    add-int/lit8 v3, v3, 0x1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_6d
    invoke-static {v7, v11, v12}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->makeSpline(Ljava/lang/String;J)Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    move-result-object v1

    nop

    nop

    :goto_6e
    goto/32 :goto_166

    nop

    nop

    nop

    nop

    :goto_6f
    const/4 v6, 0x0

    nop

    :goto_70
    goto/32 :goto_24d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    :goto_72
    aget-object v15, v1, v14

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v15}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v21

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_74
    invoke-static {v12, v7, v9}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v12

    nop

    nop

    nop

    goto/32 :goto_1dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    array-length v6, v5

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

    :goto_76
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    nop

    nop

    nop

    nop

    :goto_77
    goto/32 :goto_206

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    move-object/from16 v18, v1

    nop

    :goto_79
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    const/high16 v3, 0x7fc00000    # Float.NaN

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

    :goto_7b
    move-object/from16 v7, v24

    nop

    nop

    goto/32 :goto_204

    nop

    nop

    nop

    :goto_7c
    const/4 v14, 0x0

    nop

    :goto_7d
    goto/32 :goto_236

    nop

    nop

    nop

    :goto_7e
    iget-object v10, v15, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v10, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_239

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    goto :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_82
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    goto/16 :goto_257

    nop

    nop

    nop

    nop

    :goto_84
    goto/32 :goto_1bd

    nop

    nop

    :goto_85
    check-cast v15, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2e1

    nop

    nop

    :goto_86
    const/16 v10, 0x12

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    if-nez v11, :cond_4

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_4
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_88
    check-cast v6, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    move-wide/from16 v11, p4

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    goto/32 :goto_24e

    nop

    nop

    nop

    nop

    :goto_8b
    const/4 v14, 0x0

    nop

    nop

    nop

    :goto_8c
    goto/32 :goto_c6

    nop

    nop

    :goto_8d
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_29d

    nop

    nop

    :goto_8e
    iget v10, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    nop

    nop

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    :goto_8f
    new-array v8, v3, [I

    nop

    nop

    nop

    goto/32 :goto_2a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29c

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v7, v9}, Landroidx/constraintlayout/motion/widget/KeyCycle;->addCycleValues(Ljava/util/HashMap;)V

    :goto_92
    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    check-cast v10, Landroidx/constraintlayout/widget/ConstraintAttribute;

    nop

    nop

    goto/32 :goto_252

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    move/from16 v26, v10

    nop

    goto/32 :goto_28d

    nop

    nop

    :goto_95
    if-lt v3, v6, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2cc

    nop

    nop

    nop

    nop

    :goto_96
    move-object v9, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b1

    nop

    nop

    :goto_97
    if-eqz v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {v7}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->variesByPath()Z

    move-result v9

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    move/from16 v22, v3

    nop

    nop

    goto/32 :goto_2fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    const/4 v9, 0x0

    nop

    nop

    nop

    :goto_9b
    goto/32 :goto_13a

    nop

    nop

    :goto_9c
    aput v8, v14, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2a2

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_9f
    goto/16 :goto_270

    nop

    :goto_a0
    goto/32 :goto_262

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    if-lt v5, v6, :cond_7

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

    :cond_7
    goto/32 :goto_171

    nop

    nop

    nop

    nop

    :goto_a2
    if-nez v6, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a5

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    :goto_a3
    aget v5, v5, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    if-nez v12, :cond_9

    nop

    goto/32 :goto_1d5

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2da

    nop

    nop

    nop

    :goto_a5
    aget-object v14, v1, v9

    nop

    goto/32 :goto_277

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_a7
    move-object/from16 v18, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1fa

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    if-nez v7, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_213

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

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

    :goto_aa
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-virtual {v15, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    nop

    goto/32 :goto_29e

    nop

    nop

    nop

    nop

    :goto_ac
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_2c0

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {v8, v10}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->addTimeValues(Ljava/util/HashMap;)V

    :goto_ae
    goto/32 :goto_181

    nop

    nop

    nop

    nop

    nop

    :goto_af
    const/4 v11, 0x2

    nop

    nop

    nop

    goto/32 :goto_208

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    nop

    nop

    nop

    goto/32 :goto_2ba

    nop

    nop

    nop

    :goto_b1
    aget-object v7, v1, v2

    nop

    nop

    goto/32 :goto_29a

    nop

    nop

    nop

    nop

    :goto_b2
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    goto/16 :goto_20a

    nop

    :goto_b4
    goto/32 :goto_1ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    move-object/from16 v16, v13

    nop

    nop

    goto/32 :goto_1ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    array-length v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    goto/16 :goto_2dc

    nop

    :goto_b8
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    check-cast v11, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_293

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_275

    nop

    nop

    nop

    nop

    :goto_bb
    new-array v10, v7, [D

    nop

    nop

    nop

    goto/32 :goto_2e9

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    aput v20, v2, v7

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setType(Ljava/lang/String;)V

    goto/32 :goto_e0

    nop

    nop

    :goto_be
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    goto/32 :goto_2fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    goto/16 :goto_24c

    nop

    nop

    nop

    nop

    :goto_c0
    goto/32 :goto_24b

    nop

    nop

    nop

    nop

    :goto_c1
    const/4 v15, 0x1

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_c2
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_250

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    add-int v20, v20, v21

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_c5
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpolatorCount:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_247

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    array-length v15, v1

    nop

    nop

    nop

    goto/32 :goto_234

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    check-cast v15, Landroidx/constraintlayout/motion/widget/Key;

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-virtual {v8, v5}, Landroidx/constraintlayout/motion/widget/Key;->setInterpolation(Ljava/util/HashMap;)V

    goto/32 :goto_302

    nop

    nop

    nop

    nop

    :goto_c9
    goto/32 :goto_11b

    nop

    nop

    nop

    :goto_ca
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    add-int/lit8 v8, v8, 0x1

    nop

    goto/32 :goto_1f4

    nop

    nop

    :goto_cc
    sget v7, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    nop

    nop

    nop

    goto/32 :goto_1e5

    nop

    nop

    :goto_cd
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    move-object/from16 v18, v1

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    :goto_cf
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    :goto_d0
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    :goto_d1
    const/4 v12, 0x0

    nop

    nop

    nop

    goto/32 :goto_1e2

    nop

    nop

    nop

    nop

    :goto_d2
    const/4 v10, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    array-length v14, v1

    nop

    nop

    nop

    goto/32 :goto_297

    nop

    nop

    :goto_d4
    move/from16 v24, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    new-instance v13, Ljava/util/HashSet;

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

    :goto_d6
    if-nez v7, :cond_b

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_25a

    nop

    nop

    :goto_d7
    if-lt v14, v7, :cond_c

    nop

    nop

    goto/32 :goto_205

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_263

    nop

    nop

    nop

    :goto_d8
    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    nop

    nop

    goto/32 :goto_27a

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    move-wide/from16 v11, p4

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

    :goto_da
    aget-object v3, v1, v6

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    nop

    nop

    :goto_db
    if-nez v10, :cond_d

    nop

    goto/32 :goto_299

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_147

    nop

    nop

    nop

    :goto_dc
    move-object/from16 v18, v1

    nop

    goto/32 :goto_2bf

    nop

    nop

    nop

    nop

    :goto_dd
    invoke-virtual {v10, v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setup(I)V

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_de
    move-object/from16 v10, v25

    nop

    nop

    nop

    nop

    :goto_df
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_e0
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_1b2

    nop

    nop

    nop

    nop

    :goto_e1
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    goto/32 :goto_233

    nop

    nop

    nop

    :goto_e2
    check-cast v9, [[D

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_e3
    goto/16 :goto_77

    nop

    nop

    nop

    nop

    :goto_e4
    goto/32 :goto_2a8

    nop

    nop

    nop

    :goto_e5
    array-length v9, v7

    nop

    nop

    goto/32 :goto_1a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    if-nez v14, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2ac

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_90

    nop

    nop

    :goto_e7
    if-nez v11, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_21d

    nop

    nop

    nop

    :goto_e8
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_1dd

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    if-eqz v7, :cond_10

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_110

    nop

    nop

    nop

    :goto_ea
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpolatorCount:[I

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

    :goto_eb
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26b

    nop

    nop

    :goto_ec
    check-cast v6, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    nop

    goto/32 :goto_1de

    nop

    nop

    :goto_ed
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    nop

    goto/32 :goto_2c8

    nop

    nop

    nop

    nop

    :goto_ee
    move/from16 v12, p2

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_ef
    iget v11, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_174

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    const/4 v7, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    :goto_f2
    aput v8, v2, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1be

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    if-nez v8, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_11
    goto/32 :goto_1d0

    nop

    nop

    nop

    :goto_f4
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_1bc

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    nop

    nop

    goto/32 :goto_1ec

    nop

    nop

    nop

    :goto_f6
    aput-wide v10, v6, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    :goto_f7
    invoke-static {v8, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    :goto_f8
    if-nez v6, :cond_12

    nop

    goto/32 :goto_241

    nop

    nop

    :cond_12
    goto/32 :goto_1a3

    nop

    nop

    :goto_f9
    if-nez v6, :cond_13

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    move-object/from16 v1, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    new-instance v15, Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    goto/32 :goto_2d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    array-length v3, v1

    nop

    nop

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    :goto_fd
    if-nez v7, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    :cond_14
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    iget-object v15, v14, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_ff
    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_100
    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_2ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_101
    aget-object v11, v1, v9

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_102
    iput-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    nop

    nop

    nop

    nop

    :goto_103
    goto/32 :goto_17f

    nop

    nop

    nop

    :goto_104
    move-object/from16 v25, v10

    nop

    goto/32 :goto_2aa

    nop

    nop

    nop

    nop

    :goto_105
    aput-object v13, v1, v10

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_106
    aget-object v5, v5, v3

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_107
    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_108
    goto/16 :goto_17

    nop

    :goto_109
    goto/32 :goto_288

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    new-array v1, v1, [Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_1ed

    nop

    nop

    nop

    :goto_10b
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10c
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_222

    nop

    nop

    nop

    nop

    :goto_10d
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    nop

    nop

    nop

    nop

    goto/32 :goto_1f1

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    goto/16 :goto_303

    nop

    nop

    :goto_10f
    goto/32 :goto_3d

    nop

    nop

    :goto_110
    invoke-virtual {v13, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_111
    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_112
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_27b

    nop

    nop

    nop

    :goto_113
    array-length v14, v9

    nop

    goto/32 :goto_1a0

    nop

    nop

    nop

    :goto_114
    const/4 v7, 0x0

    nop

    goto/32 :goto_1b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_115
    goto/16 :goto_184

    nop

    nop

    nop

    nop

    :goto_116
    goto/32 :goto_183

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_117
    iput-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    nop

    nop

    :goto_118
    goto/32 :goto_7a

    nop

    nop

    :goto_119
    if-nez v13, :cond_15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23b

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_1e6

    nop

    nop

    nop

    nop

    :goto_11a
    goto/32 :goto_1fe

    nop

    nop

    :goto_11b
    goto/32 :goto_1aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    check-cast v2, [[D

    nop

    nop

    nop

    nop

    goto/32 :goto_287

    nop

    nop

    :goto_11d
    move/from16 v11, p1

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    :goto_11f
    move-object/from16 v2, v19

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_120
    check-cast v7, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f7

    nop

    nop

    nop

    nop

    nop

    :goto_121
    move-object v8, v7

    nop

    goto/32 :goto_231

    nop

    nop

    :goto_122
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_123
    goto/32 :goto_1da

    nop

    nop

    nop

    nop

    :goto_124
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_125
    aget-object v7, v1, v14

    nop

    nop

    goto/32 :goto_2ce

    nop

    nop

    nop

    nop

    :goto_126
    if-nez v15, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    :cond_16
    goto/32 :goto_24f

    nop

    nop

    nop

    nop

    :goto_127
    new-instance v2, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_128
    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    nop

    nop

    nop

    nop

    goto/32 :goto_199

    nop

    nop

    nop

    nop

    nop

    :goto_129
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    nop

    nop

    :goto_12a
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

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

    :goto_12c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

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

    nop

    :goto_12d
    sget-object v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->names:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_260

    nop

    nop

    :goto_12e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    goto/32 :goto_1ee

    nop

    nop

    nop

    :goto_12f
    add-int/lit8 v15, v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_130
    move/from16 v21, v2

    nop

    nop

    goto/32 :goto_1e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_131
    invoke-static {v7, v11}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    move-result-object v1

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    :goto_132
    iget-object v15, v14, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_1ce

    nop

    nop

    :goto_133
    if-ne v3, v5, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_134
    goto/16 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_135
    goto/32 :goto_13d

    nop

    nop

    :goto_136
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_2f8

    nop

    nop

    nop

    :goto_137
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_138
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    :goto_139
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_209

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    if-lt v9, v3, :cond_18

    nop

    goto/32 :goto_2d4

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_292

    nop

    nop

    nop

    nop

    :goto_13b
    new-array v8, v8, [D

    nop

    nop

    nop

    nop

    goto/32 :goto_2d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    if-nez v9, :cond_19

    nop

    goto/32 :goto_1fc

    nop

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    :goto_13d
    move/from16 v27, v9

    nop

    nop

    nop

    goto/32 :goto_207

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    if-lt v8, v14, :cond_1a

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

    :cond_1a
    goto/32 :goto_2f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13f
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    :goto_140
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_141
    goto/16 :goto_230

    nop

    nop

    nop

    :goto_142
    goto/32 :goto_98

    nop

    nop

    :goto_143
    move/from16 v26, v10

    nop

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    :goto_144
    invoke-direct {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->ab35181830b64799f175d1c6b89171e6m(Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    goto/32 :goto_35

    nop

    nop

    :goto_145
    array-length v10, v1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_146
    aget-object v9, v9, v7

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_147
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c7

    nop

    nop

    nop

    nop

    :goto_148
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    nop

    :goto_149
    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    move-object v1, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :goto_14b
    if-lt v14, v15, :cond_1b

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_14c
    goto/16 :goto_6b

    nop

    nop

    :goto_14d
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_14e
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    :goto_14f
    goto/32 :goto_2db

    nop

    nop

    nop

    nop

    nop

    :goto_150
    move-object/from16 v24, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_151
    iget-object v10, v15, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_1bb

    nop

    nop

    :goto_152
    invoke-virtual {v10, v5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCustomDataCount(Ljava/lang/String;)I

    move-result v10

    nop

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

    :goto_153
    const/4 v10, 0x0

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

    :goto_154
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    nop

    goto/32 :goto_186

    nop

    nop

    nop

    nop

    :goto_155
    aget-boolean v9, v7, v8

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_156
    move-wide/from16 v11, p4

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    :goto_157
    if-nez v11, :cond_1c

    nop

    goto/32 :goto_220

    nop

    nop

    :cond_1c
    goto/32 :goto_21f

    nop

    nop

    nop

    nop

    :goto_158
    check-cast v7, [[D

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_159
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    :goto_15a
    if-nez v7, :cond_1d

    nop

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_168

    nop

    nop

    :goto_15b
    aget-object v10, v7, v9

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    :goto_15c
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_15d
    if-eqz v1, :cond_1e

    nop

    goto/32 :goto_259

    nop

    nop

    :cond_1e
    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15e
    move/from16 v9, v27

    nop

    goto/32 :goto_2ae

    nop

    nop

    nop

    nop

    nop

    :goto_15f
    aget-wide v9, v25, v3

    nop

    goto/32 :goto_26a

    nop

    nop

    nop

    nop

    :goto_160
    goto/16 :goto_1a5

    nop

    :goto_161
    goto/32 :goto_89

    nop

    nop

    nop

    :goto_162
    goto/16 :goto_2d2

    nop

    :goto_163
    goto/32 :goto_1eb

    nop

    nop

    nop

    :goto_164
    new-array v7, v7, [I

    nop

    nop

    nop

    goto/32 :goto_1c3

    nop

    nop

    :goto_165
    check-cast v7, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_166
    if-eqz v1, :cond_1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1af

    nop

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_167
    new-instance v1, Ljava/util/HashSet;

    nop

    nop

    nop

    goto/32 :goto_2d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_168
    if-eqz v9, :cond_20

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_185

    nop

    nop

    nop

    nop

    :goto_169
    move-object v15, v6

    nop

    nop

    nop

    goto/32 :goto_2cf

    nop

    nop

    nop

    :goto_16a
    aget-object v10, v7, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28c

    nop

    nop

    nop

    :goto_16b
    move-object v1, v15

    nop

    goto/32 :goto_266

    nop

    nop

    nop

    nop

    nop

    :goto_16c
    goto/16 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_16d
    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_16e
    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    nop

    nop

    :goto_16f
    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_170
    const/4 v7, 0x2

    nop

    goto/32 :goto_214

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_171
    new-instance v6, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_172
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_28e

    nop

    nop

    nop

    nop

    nop

    :goto_173
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    nop

    nop

    goto/32 :goto_2bb

    nop

    nop

    nop

    :goto_174
    float-to-double v11, v11

    nop

    nop

    goto/32 :goto_1d1

    nop

    nop

    :goto_175
    aget-object v15, v1, v14

    nop

    nop

    goto/32 :goto_2b4

    nop

    nop

    nop

    nop

    nop

    :goto_176
    add-int/lit8 v14, v14, 0x1

    nop

    nop

    nop

    goto/32 :goto_18c

    nop

    nop

    nop

    nop

    nop

    :goto_177
    if-ne v7, v8, :cond_21

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_1c8

    nop

    nop

    nop

    nop

    :goto_178
    if-ne v1, v10, :cond_22

    nop

    nop

    goto/32 :goto_149

    nop

    :cond_22
    goto/32 :goto_1e0

    nop

    nop

    :goto_179
    goto/16 :goto_49

    nop

    :goto_17a
    goto/32 :goto_150

    nop

    nop

    :goto_17b
    if-eqz v7, :cond_23

    nop

    nop

    nop

    goto/32 :goto_225

    nop

    :cond_23
    goto/32 :goto_23c

    nop

    nop

    nop

    :goto_17c
    add-int/lit8 v6, v6, 0x1

    nop

    :goto_17d
    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    nop

    :goto_17e
    if-nez v7, :cond_24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17f
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_2fc

    nop

    nop

    nop

    :goto_180
    if-nez v7, :cond_25

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_181
    goto/16 :goto_284

    nop

    nop

    :goto_182
    goto/32 :goto_248

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_183
    move-object/from16 v17, v1

    nop

    :goto_184
    goto/32 :goto_279

    nop

    nop

    nop

    nop

    :goto_185
    array-length v7, v1

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    :goto_186
    if-nez v15, :cond_26

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b7

    nop

    :cond_26
    goto/32 :goto_272

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_187
    aput v7, v9, v10

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    :goto_188
    const/4 v8, 0x1

    nop

    nop

    :goto_189
    goto/32 :goto_e5

    nop

    nop

    :goto_18a
    add-int/lit8 v14, v14, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_18b
    if-nez v9, :cond_27

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :cond_27
    goto/32 :goto_66

    nop

    nop

    :goto_18c
    move-object/from16 v2, v19

    nop

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

    :goto_18d
    invoke-virtual {v7, v8, v3}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->different(Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;Ljava/util/HashSet;)V

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_18e
    new-array v5, v3, [I

    nop

    goto/32 :goto_215

    nop

    nop

    nop

    nop

    nop

    :goto_18f
    const/4 v5, 0x1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_190
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_210

    nop

    nop

    :goto_191
    goto/16 :goto_2dc

    nop

    nop

    nop

    :goto_192
    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    nop

    :goto_193
    float-to-double v10, v10

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_194
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_195
    if-nez v14, :cond_28

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a3

    nop

    nop

    :cond_28
    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_196
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_232

    nop

    nop

    :goto_197
    const/4 v10, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_187

    nop

    nop

    :goto_198
    sget-object v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->names:[Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_199
    float-to-double v11, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_235

    nop

    nop

    nop

    nop

    nop

    :goto_19a
    array-length v14, v14

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19b
    move/from16 v27, v9

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_19c
    add-int/lit8 v14, v14, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :goto_19d
    invoke-static {v6}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/ViewOscillator;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_19e
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    nop

    nop

    goto/32 :goto_242

    nop

    nop

    nop

    nop

    :goto_19f
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1cb

    nop

    nop

    nop

    nop

    nop

    :goto_1a0
    if-lt v7, v14, :cond_29

    nop

    goto/32 :goto_a0

    nop

    :cond_29
    goto/32 :goto_146

    nop

    nop

    :goto_1a1
    iput-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e0

    nop

    nop

    nop

    :goto_1a2
    if-lt v8, v9, :cond_2a

    nop

    nop

    goto/32 :goto_1f5

    nop

    nop

    nop

    :cond_2a
    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    :goto_1a3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_1a4
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    :goto_1a5
    goto/32 :goto_216

    nop

    nop

    nop

    nop

    :goto_1a6
    move v8, v14

    nop

    nop

    goto/32 :goto_23a

    nop

    nop

    nop

    :goto_1a7
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    :goto_1a8
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    :goto_1a9
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1aa
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    nop

    nop

    :goto_1ab
    invoke-static {v10, v6}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v7

    nop

    goto/32 :goto_2e2

    nop

    nop

    :goto_1ac
    iget-object v14, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e9

    nop

    nop

    nop

    nop

    nop

    :goto_1ad
    array-length v6, v5

    nop

    goto/32 :goto_1df

    nop

    nop

    nop

    nop

    nop

    :goto_1ae
    goto/16 :goto_2dc

    nop

    nop

    nop

    :goto_1af
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b0
    aput v3, v9, v7

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    :goto_1b1
    invoke-virtual {v15, v3, v5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->fillStandard([D[I)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_1b2
    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_2f4

    nop

    nop

    nop

    nop

    :goto_1b3
    new-array v3, v3, [Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e4

    nop

    nop

    :goto_1b4
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    nop

    nop

    goto/32 :goto_20c

    nop

    nop

    nop

    nop

    :goto_1b5
    aput-object v10, v1, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    :goto_1b6
    goto/16 :goto_1e4

    nop

    nop

    nop

    :goto_1b7
    goto/32 :goto_112

    nop

    nop

    nop

    :goto_1b8
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    :goto_1b9
    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    goto/32 :goto_29b

    nop

    nop

    nop

    nop

    nop

    :goto_1ba
    move-object v13, v9

    nop

    goto/32 :goto_221

    nop

    nop

    nop

    :goto_1bb
    if-eqz v10, :cond_2b

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

    :cond_2b
    goto/32 :goto_1db

    nop

    nop

    nop

    :goto_1bc
    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b5

    nop

    nop

    nop

    :goto_1bd
    move-object/from16 v20, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_211

    nop

    nop

    nop

    nop

    :goto_1be
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    :goto_1bf
    if-nez v10, :cond_2c

    nop

    goto/32 :goto_192

    nop

    nop

    nop

    :cond_2c
    goto/32 :goto_191

    nop

    nop

    nop

    :goto_1c0
    move-object/from16 v1, v17

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1c1
    if-nez v10, :cond_2d

    nop

    nop

    nop

    nop

    goto/32 :goto_200

    nop

    nop

    :cond_2d
    goto/32 :goto_26e

    nop

    nop

    :goto_1c2
    const/16 v16, 0x1

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

    :goto_1c3
    iput-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpolatorCount:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26f

    nop

    nop

    :goto_1c4
    invoke-virtual {v7, v5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->hasCustomData(Ljava/lang/String;)Z

    move-result v7

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    :goto_1c5
    goto/16 :goto_303

    nop

    nop

    nop

    :goto_1c6
    goto/32 :goto_28a

    nop

    nop

    :goto_1c7
    if-nez v15, :cond_2e

    nop

    goto/32 :goto_2ee

    nop

    nop

    nop

    :cond_2e
    goto/32 :goto_22c

    nop

    nop

    nop

    :goto_1c8
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_27e

    nop

    nop

    nop

    :goto_1c9
    move-object/from16 v20, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_1ca
    aget v5, v5, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_203

    nop

    nop

    :goto_1cb
    move-object v6, v1

    nop

    nop

    nop

    :goto_1cc
    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1cd
    new-instance v1, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1ce
    if-eqz v15, :cond_2f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_2f
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1cf
    instance-of v1, v8, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    nop

    goto/32 :goto_274

    nop

    nop

    nop

    :goto_1d0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    goto/32 :goto_2bd

    nop

    nop

    nop

    :goto_1d1
    const/4 v14, 0x0

    nop

    goto/32 :goto_1f3

    nop

    nop

    nop

    nop

    :goto_1d2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    :goto_1d3
    const/4 v10, 0x0

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d4
    goto/16 :goto_2fa

    nop

    nop

    :goto_1d5
    goto/32 :goto_2f9

    nop

    nop

    nop

    nop

    nop

    :goto_1d6
    aput v7, v12, v10

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_1d7
    if-nez v9, :cond_30

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    :cond_30
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d8
    if-nez v5, :cond_31

    nop

    nop

    goto/32 :goto_241

    nop

    nop

    nop

    :cond_31
    goto/32 :goto_22f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d9
    check-cast v11, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_1da
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

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

    :goto_1db
    const/4 v10, 0x1

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_1dc
    aput-object v12, v10, v11

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_1dd
    check-cast v6, Landroidx/constraintlayout/motion/widget/Key;

    nop

    goto/32 :goto_2b3

    nop

    nop

    nop

    :goto_1de
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->setup(F)V

    goto/32 :goto_240

    nop

    nop

    nop

    nop

    nop

    :goto_1df
    if-lt v3, v6, :cond_32

    nop

    nop

    nop

    goto/32 :goto_2af

    nop

    nop

    :cond_32
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_1e0
    iget v1, v9, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCurveFit:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    :goto_1e1
    const/4 v15, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e2
    invoke-virtual {v7, v5, v11, v12}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCustomData(Ljava/lang/String;[DI)I

    goto/32 :goto_17c

    nop

    nop

    nop

    :goto_1e3
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    nop

    nop

    :goto_1e4
    goto/32 :goto_154

    nop

    nop

    nop

    :goto_1e5
    if-ne v2, v7, :cond_33

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :cond_33
    goto/32 :goto_13f

    nop

    nop

    nop

    :goto_1e6
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    goto/32 :goto_23f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e7
    new-array v8, v9, [D

    nop

    goto/32 :goto_20d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e8
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1e9
    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    nop

    nop

    nop

    nop

    goto/32 :goto_1e3

    nop

    nop

    nop

    :goto_1ea
    invoke-static {v11, v12}, Landroidx/constraintlayout/motion/utils/ViewSpline;->makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/utils/ViewSpline;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d4

    nop

    nop

    nop

    nop

    nop

    :goto_1eb
    move/from16 v22, v3

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

    :goto_1ec
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    nop

    goto/32 :goto_290

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ed
    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_1ee
    check-cast v7, Ljava/lang/String;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1ef
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    nop

    nop

    nop

    :goto_1f0
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_1f1
    aget-object v25, v2, v6

    nop

    goto/32 :goto_2a7

    nop

    nop

    nop

    nop

    :goto_1f2
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1f3
    aput-wide v11, v10, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f4
    goto/16 :goto_189

    nop

    nop

    nop

    :goto_1f5
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f6
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    :goto_1f7
    const/4 v8, 0x0

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

    :goto_1f8
    array-length v8, v1

    nop

    nop

    nop

    goto/32 :goto_1a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f9
    const/4 v14, 0x0

    nop

    goto/32 :goto_f2

    nop

    nop

    :goto_1fa
    iget v1, v14, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1fb
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionController;->12b4b38194e403c7f4690dce3abaa7f8m()F

    move-result v3

    nop

    :goto_1fc
    goto/32 :goto_251

    nop

    nop

    nop

    :goto_1fd
    return-void

    nop

    :goto_1fe
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ff
    invoke-virtual {v7, v10}, Landroidx/constraintlayout/motion/widget/Key;->addValues(Ljava/util/HashMap;)V

    :goto_200
    goto/32 :goto_20e

    nop

    nop

    :goto_201
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_1ac

    nop

    nop

    :goto_202
    move-object v10, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    :goto_203
    aget-object v5, v14, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_21a

    nop

    nop

    nop

    nop

    :goto_204
    goto/16 :goto_7d

    nop

    nop

    nop

    :goto_205
    goto/32 :goto_1ab

    nop

    nop

    :goto_206
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

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

    :goto_207
    move/from16 v26, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_208
    new-array v12, v11, [I

    nop

    goto/32 :goto_304

    nop

    nop

    nop

    nop

    nop

    :goto_209
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    :goto_20a
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20b
    if-nez v15, :cond_34

    nop

    nop

    nop

    nop

    goto/32 :goto_23e

    nop

    :cond_34
    goto/32 :goto_a7

    nop

    nop

    :goto_20c
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    nop

    nop

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20d
    iput-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    nop

    nop

    goto/32 :goto_268

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20e
    goto/16 :goto_123

    nop

    nop

    nop

    :goto_20f
    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    :goto_210
    if-nez v7, :cond_35

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :cond_35
    goto/32 :goto_12e

    nop

    nop

    :goto_211
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_188

    nop

    nop

    :goto_212
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    nop

    nop

    goto/32 :goto_291

    nop

    nop

    nop

    :goto_213
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    goto/32 :goto_27c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_214
    new-array v9, v7, [I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_197

    nop

    nop

    nop

    nop

    :goto_215
    new-array v6, v3, [D

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    :goto_216
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    :goto_217
    new-instance v14, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_194

    nop

    nop

    nop

    :goto_218
    if-lez v0, :cond_36

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    :cond_36
    goto/32 :goto_11a

    nop

    :goto_219
    instance-of v1, v8, Landroidx/constraintlayout/motion/widget/KeyCycle;

    nop

    nop

    nop

    goto/32 :goto_2ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21a
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_21b
    const/16 v10, 0x64

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_21c
    array-length v15, v1

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    :goto_21d
    new-instance v11, Landroid/util/SparseArray;

    nop

    nop

    nop

    goto/32 :goto_1b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21e
    move-object v15, v6

    nop

    goto/32 :goto_245

    nop

    nop

    nop

    nop

    nop

    :goto_21f
    invoke-virtual {v11, v10}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setup(I)V

    :goto_220
    goto/32 :goto_224

    nop

    nop

    nop

    :goto_221
    move-object/from16 v17, v1

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    :goto_222
    iput-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_223
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    nop

    goto/32 :goto_2eb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_224
    goto/16 :goto_1a9

    nop

    :goto_225
    goto/32 :goto_25f

    nop

    nop

    nop

    nop

    nop

    :goto_226
    invoke-virtual {v8, v2}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    goto/32 :goto_1c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_227
    sget v10, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    nop

    goto/32 :goto_178

    nop

    nop

    :goto_228
    if-nez v1, :cond_37

    nop

    goto/32 :goto_20f

    nop

    nop

    nop

    :cond_37
    goto/32 :goto_122

    nop

    nop

    nop

    nop

    :goto_229
    new-instance v5, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    :goto_22a
    check-cast v7, [Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    nop

    :goto_22b
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_22c
    aget-object v15, v1, v14

    nop

    nop

    nop

    goto/32 :goto_286

    nop

    nop

    :goto_22d
    move/from16 v3, v22

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_22e
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22f
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    :goto_230
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_231
    check-cast v8, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    nop

    nop

    nop

    nop

    goto/32 :goto_238

    nop

    nop

    :goto_232
    if-nez v1, :cond_38

    nop

    nop

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    nop

    nop

    nop

    :cond_38
    goto/32 :goto_283

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_233
    check-cast v7, [Landroidx/constraintlayout/motion/widget/KeyTrigger;

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_234
    if-lt v14, v15, :cond_39

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :cond_39
    goto/32 :goto_175

    nop

    nop

    nop

    nop

    :goto_235
    aput-wide v11, v10, v6

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    nop

    :goto_236
    move-object/from16 v24, v7

    nop

    nop

    nop

    goto/32 :goto_276

    nop

    nop

    nop

    :goto_237
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_238
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_239
    move-object/from16 v1, v18

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_23a
    goto/16 :goto_12a

    nop

    nop

    nop

    nop

    nop

    :goto_23b
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_23c
    new-instance v7, Ljava/util/HashMap;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23d
    goto/16 :goto_79

    nop

    :goto_23e
    goto/32 :goto_78

    nop

    nop

    nop

    :goto_23f
    check-cast v13, Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    goto/32 :goto_243

    nop

    nop

    nop

    nop

    :goto_240
    goto/16 :goto_2ec

    nop

    nop

    :goto_241
    goto/32 :goto_1fd

    nop

    nop

    :goto_242
    if-nez v9, :cond_3a

    nop

    nop

    nop

    goto/32 :goto_1fc

    nop

    nop

    nop

    :cond_3a
    goto/32 :goto_1fb

    nop

    nop

    nop

    nop

    nop

    :goto_243
    add-int/lit8 v14, v8, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e7

    nop

    nop

    nop

    nop

    nop

    :goto_244
    check-cast v15, Landroidx/constraintlayout/widget/ConstraintAttribute;

    nop

    nop

    nop

    goto/32 :goto_20b

    nop

    nop

    nop

    nop

    :goto_245
    const/4 v3, 0x0

    nop

    nop

    nop

    :goto_246
    goto/32 :goto_254

    nop

    nop

    nop

    nop

    :goto_247
    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e5

    nop

    nop

    nop

    nop

    :goto_248
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_249
    iget v11, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

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

    :goto_24a
    if-nez v6, :cond_3b

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :cond_3b
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24b
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_24c
    goto/32 :goto_267

    nop

    nop

    nop

    :goto_24d
    array-length v14, v1

    nop

    goto/32 :goto_2f3

    nop

    nop

    nop

    :goto_24e
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_24f
    move-object/from16 v19, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_250
    const/4 v10, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_258

    nop

    nop

    nop

    nop

    nop

    :goto_251
    invoke-virtual {v7, v6}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->setType(Ljava/lang/String;)V

    goto/32 :goto_1e8

    nop

    nop

    nop

    nop

    nop

    :goto_252
    if-nez v10, :cond_3c

    nop

    nop

    nop

    goto/32 :goto_2b7

    nop

    nop

    nop

    nop

    nop

    :cond_3c
    goto/32 :goto_11

    nop

    nop

    :goto_253
    if-eqz v6, :cond_3d

    nop

    nop

    nop

    nop

    goto/32 :goto_1cc

    nop

    :cond_3d
    goto/32 :goto_22e

    nop

    nop

    :goto_254
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    nop

    nop

    goto/32 :goto_1ad

    nop

    nop

    nop

    nop

    nop

    :goto_255
    add-int/lit8 v9, v9, 0x1

    nop

    goto/32 :goto_2d3

    nop

    nop

    :goto_256
    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    :goto_257
    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_258
    goto/16 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_259
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_25a
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    nop

    nop

    nop

    :goto_25b
    goto/32 :goto_301

    nop

    nop

    nop

    nop

    nop

    :goto_25c
    move/from16 v24, v5

    nop

    nop

    goto/32 :goto_300

    nop

    nop

    nop

    nop

    :goto_25d
    move-object v9, v7

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :goto_25e
    invoke-virtual {v11, v1, v15}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/32 :goto_23d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25f
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_260
    array-length v6, v6

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_261
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_262
    move-object/from16 v19, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2b8

    nop

    nop

    nop

    nop

    :goto_263
    aget-object v7, v1, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c4

    nop

    nop

    nop

    :goto_264
    goto/16 :goto_303

    nop

    nop

    nop

    :goto_265
    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_266
    move-object/from16 v15, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_2c9

    nop

    nop

    nop

    nop

    :goto_267
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_268
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2de

    nop

    nop

    nop

    nop

    nop

    :goto_269
    aput-wide v5, v8, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26a
    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_26b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    goto/32 :goto_2dd

    nop

    nop

    nop

    :goto_26c
    move-object/from16 v19, v2

    nop

    nop

    nop

    nop

    :goto_26d
    goto/32 :goto_176

    nop

    nop

    nop

    :goto_26e
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ff

    nop

    nop

    nop

    :goto_26f
    const/4 v7, 0x0

    nop

    :goto_270
    goto/32 :goto_159

    nop

    nop

    nop

    nop

    :goto_271
    invoke-static {v5, v6, v7}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getArc([I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v9

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    :goto_272
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_273
    invoke-virtual {v11, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    nop

    goto/32 :goto_2fb

    nop

    nop

    :goto_274
    if-nez v1, :cond_3e

    nop

    goto/32 :goto_1c6

    nop

    nop

    :cond_3e
    goto/32 :goto_226

    nop

    nop

    nop

    :goto_275
    if-nez v7, :cond_3f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_225

    nop

    :cond_3f
    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_276
    array-length v7, v1

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_277
    add-int/lit8 v15, v9, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f7

    nop

    nop

    :goto_278
    new-array v7, v7, [Z

    nop

    nop

    nop

    goto/32 :goto_256

    nop

    nop

    nop

    :goto_279
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_24a

    nop

    nop

    nop

    :goto_27a
    invoke-virtual {v7, v15}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_180

    nop

    nop

    nop

    nop

    :goto_27b
    new-array v9, v7, [Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f0

    nop

    nop

    nop

    nop

    :goto_27c
    check-cast v7, Landroidx/constraintlayout/motion/widget/Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_280

    nop

    nop

    nop

    :goto_27d
    if-gtz v10, :cond_40

    nop

    nop

    nop

    nop

    goto/32 :goto_1f0

    nop

    nop

    nop

    nop

    :cond_40
    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    :goto_27e
    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    nop

    nop

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    nop

    :goto_27f
    add-int/lit8 v11, v3, 0x1

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_280
    instance-of v8, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    nop

    goto/32 :goto_2f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_281
    instance-of v9, v8, Landroidx/constraintlayout/motion/widget/KeyPosition;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d7

    nop

    nop

    nop

    nop

    :goto_282
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_229

    nop

    nop

    nop

    nop

    :goto_283
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_284
    goto/32 :goto_261

    nop

    nop

    :goto_285
    aget-object v10, v1, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_286
    iget-object v15, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_287
    array-length v8, v1

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    :goto_288
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_223

    nop

    nop

    nop

    nop

    :goto_289
    check-cast v7, Landroidx/constraintlayout/motion/widget/KeyCycle;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28a
    instance-of v1, v8, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28b
    sget v8, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    nop

    :goto_28c
    aget-object v11, v1, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_249

    nop

    nop

    nop

    nop

    :goto_28d
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28e
    new-instance v3, Ljava/util/HashSet;

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28f
    aput v10, v12, v11

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_290
    const/4 v10, 0x0

    nop

    nop

    goto/32 :goto_2d7

    nop

    nop

    nop

    nop

    :goto_291
    new-array v8, v9, [D

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_292
    aget-object v10, v1, v9

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

    :goto_293
    invoke-virtual {v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_294
    invoke-static {v7, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    nop

    goto/32 :goto_25d

    nop

    nop

    nop

    nop

    nop

    :goto_295
    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    nop

    goto/32 :goto_28b

    nop

    nop

    nop

    :goto_296
    if-eqz v1, :cond_41

    nop

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    :cond_41
    goto/32 :goto_1cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_297
    if-lt v9, v14, :cond_42

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :cond_42
    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_298
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    nop

    nop

    nop

    :goto_299
    goto/32 :goto_b2

    nop

    nop

    :goto_29a
    iget v2, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_29b
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_29c
    check-cast v14, Landroidx/constraintlayout/motion/widget/Key;

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    :goto_29d
    new-instance v4, Ljava/util/HashSet;

    nop

    nop

    goto/32 :goto_282

    nop

    nop

    :goto_29e
    check-cast v15, Landroidx/constraintlayout/widget/ConstraintAttribute;

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    :goto_29f
    move-object/from16 v23, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a0
    move-object/from16 v3, v20

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_2a1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2b5

    nop

    nop

    nop

    :goto_2a2
    move v3, v15

    nop

    nop

    :goto_2a3
    goto/32 :goto_2cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a4
    goto/16 :goto_230

    nop

    nop

    nop

    :goto_2a5
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2a6
    iput-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

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

    :goto_2a7
    move/from16 v27, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    :goto_2a8
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_228

    nop

    nop

    nop

    :goto_2a9
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    nop

    nop

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    :goto_2aa
    aget-object v10, v1, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    :goto_2ab
    goto/16 :goto_2c1

    nop

    nop

    nop

    nop

    :goto_2ac
    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_2ad
    if-nez v1, :cond_43

    nop

    nop

    nop

    goto/32 :goto_2cb

    nop

    :cond_43
    goto/32 :goto_1f

    nop

    nop

    :goto_2ae
    goto/16 :goto_246

    nop

    nop

    nop

    nop

    nop

    :goto_2af
    goto/32 :goto_19b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b0
    aget-object v12, v12, v13

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_2b1
    check-cast v9, Landroidx/constraintlayout/motion/widget/KeyPosition;

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    :goto_2b2
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_2b3
    instance-of v7, v6, Landroidx/constraintlayout/motion/widget/KeyCycle;

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_2b4
    iget-object v15, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_2b5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_218

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b6
    invoke-virtual {v12, v1, v10}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :goto_2b7
    goto/32 :goto_22b

    nop

    nop

    :goto_2b8
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_2b9
    aput-object v5, v3, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_2ba
    if-nez v15, :cond_44

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :cond_44
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_2bb
    sget v5, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    :goto_2bc
    move-object v9, v10

    nop

    nop

    nop

    goto/32 :goto_2ef

    nop

    nop

    nop

    nop

    :goto_2bd
    check-cast v8, Landroidx/constraintlayout/motion/widget/Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_281

    nop

    nop

    nop

    nop

    :goto_2be
    const/4 v10, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_2bf
    move-wide/from16 v11, p4

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_2c0
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    nop

    :goto_2c1
    goto/32 :goto_1d2

    nop

    nop

    nop

    nop

    :goto_2c2
    if-eq v10, v13, :cond_45

    nop

    nop

    nop

    goto/32 :goto_1f0

    nop

    nop

    nop

    nop

    nop

    :cond_45
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2c3
    new-array v2, v15, [I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_2c4
    move/from16 v9, v27

    nop

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    :goto_2c5
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c6
    invoke-virtual {v10, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_1bf

    nop

    nop

    nop

    nop

    :goto_2c7
    check-cast v10, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_298

    nop

    nop

    :goto_2c8
    const/4 v7, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2c9
    invoke-direct/range {v10 .. v15}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    :goto_2ca
    goto/16 :goto_303

    nop

    :goto_2cb
    goto/32 :goto_1cf

    nop

    nop

    nop

    nop

    nop

    :goto_2cc
    const/4 v6, 0x0

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

    :goto_2cd
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2ce
    aget-object v11, v9, v6

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2cf
    float-to-double v5, v3

    nop

    nop

    nop

    goto/32 :goto_269

    nop

    nop

    :goto_2d0
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d1
    const/4 v14, 0x0

    nop

    nop

    :goto_2d2
    goto/32 :goto_21c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d3
    goto/16 :goto_9b

    nop

    nop

    nop

    nop

    :goto_2d4
    goto/32 :goto_271

    nop

    nop

    nop

    nop

    :goto_2d5
    array-length v7, v7

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

    :goto_2d6
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    :goto_2d7
    invoke-virtual {v1, v7, v10}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    goto/32 :goto_12b

    nop

    nop

    :goto_2d8
    if-nez v1, :cond_46

    nop

    goto/32 :goto_265

    nop

    nop

    nop

    :cond_46
    goto/32 :goto_253

    nop

    nop

    nop

    :goto_2d9
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2da
    new-instance v12, Landroid/util/SparseArray;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_2db
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_2dc
    goto/32 :goto_190

    nop

    nop

    :goto_2dd
    invoke-virtual {v3, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    :goto_2de
    const/4 v8, 0x1

    nop

    nop

    :goto_2df
    goto/32 :goto_a

    nop

    nop

    :goto_2e0
    array-length v7, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e1
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_2e2
    invoke-static {v9, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    goto/32 :goto_2bc

    nop

    nop

    nop

    nop

    nop

    :goto_2e3
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b9

    nop

    nop

    nop

    nop

    :goto_2e4
    iput-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

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

    :goto_2e5
    aput v15, v14, v7

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_2e6
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    nop

    goto/32 :goto_27f

    nop

    nop

    nop

    :goto_2e7
    aput-object v13, v1, v8

    nop

    goto/32 :goto_1a6

    nop

    nop

    nop

    nop

    nop

    :goto_2e8
    move-object/from16 v17, v1

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e9
    array-length v7, v1

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    :goto_2ea
    check-cast v10, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    :goto_2eb
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    nop

    nop

    :goto_2ec
    goto/32 :goto_11e

    nop

    nop

    nop

    :goto_2ed
    goto/16 :goto_26d

    nop

    nop

    nop

    nop

    nop

    :goto_2ee
    goto/32 :goto_26c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2ef
    check-cast v9, [[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e6

    nop

    nop

    nop

    :goto_2f0
    invoke-virtual {v13, v9}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    goto/32 :goto_22a

    nop

    nop

    :goto_2f1
    if-nez v8, :cond_47

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :cond_47
    goto/32 :goto_121

    nop

    nop

    nop

    :goto_2f2
    aget-boolean v14, v7, v8

    nop

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    nop

    nop

    :goto_2f3
    if-lt v6, v14, :cond_48

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    :cond_48
    goto/32 :goto_217

    nop

    nop

    nop

    :goto_2f4
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_2be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f5
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2f6
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_1b1

    nop

    nop

    nop

    nop

    nop

    :goto_2f7
    aget-object v15, v1, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f8
    invoke-static {v7, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f9
    invoke-static {v11}, Landroidx/constraintlayout/motion/utils/ViewSpline;->makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/ViewSpline;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_2fa
    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    :goto_2fb
    aget-object v13, v13, v10

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    :goto_2fc
    const-string v8, ","

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2fd
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_2fe
    aget-object v3, v2, v14

    nop

    nop

    nop

    goto/32 :goto_29f

    nop

    nop

    nop

    nop

    nop

    :goto_2ff
    instance-of v10, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c1

    nop

    nop

    :goto_300
    move/from16 v27, v9

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_301
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    :goto_302
    invoke-virtual {v8, v3}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    :goto_303
    goto/32 :goto_1c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_304
    const/4 v11, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_28f

    nop

    nop

    nop

    nop
.end method

.method public setupRelative(Landroidx/constraintlayout/motion/widget/MotionController;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionController"
        }
    .end annotation

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setupRelative(Landroidx/constraintlayout/motion/widget/MotionController;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    goto/32 :goto_e

    nop

    nop

    :goto_2
    iget-object v1, p1, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

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

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

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

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setupRelative(Landroidx/constraintlayout/motion/widget/MotionController;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p1, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

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

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    const v0, 0xf

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    const-string v1, " y: "

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x14

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v2, " end: x: "

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_f

    nop

    nop

    :goto_d
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

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

    :goto_e
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

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

    :goto_f
    const-string v1, " start: x: "

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_11
    add-int v0, v0, v1

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

    :goto_12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    :goto_13
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_14
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

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

    :goto_17
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_19
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-object v0

    nop

    nop

    :goto_1d
    goto/32 :goto_17

    nop

    nop

    :goto_1e
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop
.end method
