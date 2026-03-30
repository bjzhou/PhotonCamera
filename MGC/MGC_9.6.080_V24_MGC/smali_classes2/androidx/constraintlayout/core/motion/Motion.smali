.class public Landroidx/constraintlayout/core/motion/Motion;
.super Ljava/lang/Object;
.source "Motion.java"

# interfaces
.implements Landroidx/constraintlayout/core/motion/utils/TypedValues;


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
            "Landroidx/constraintlayout/core/motion/utils/SplineSet;",
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
            "Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;",
            ">;"
        }
    .end annotation
.end field

.field private mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

.field private mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

.field mId:I

.field private mInterpolateData:[D

.field private mInterpolateVariables:[I

.field private mInterpolateVelocity:[D

.field private mKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/motion/key/MotionKey;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyTriggers:[Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

.field private mMotionPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/motion/MotionPaths;",
            ">;"
        }
    .end annotation
.end field

.field mMotionStagger:F

.field private mNoMovement:Z

.field private mPathMotionArc:I

.field private mQuantizeMotionInterpolator:Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

.field private mQuantizeMotionPhase:F

.field private mQuantizeMotionSteps:I

.field private mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field mStaggerOffset:F

.field mStaggerScale:F

.field private mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

.field private mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

.field mTempRect:Landroidx/constraintlayout/core/motion/utils/Rect;

.field private mTimeCycleAttributesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;",
            ">;"
        }
    .end annotation
.end field

.field private mTransformPivotTarget:I

.field private mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

.field private mValuesBuff:[F

.field private mVelocity:[F

.field mView:Landroidx/constraintlayout/core/motion/MotionWidget;


# direct methods
.method private 12b4b38194e403c7f4690dce3abaa7f8m()F
    .locals 26

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-wide v12, v4

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_2
    move v1, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_3
    move-object v7, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    float-to-double v14, v3

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

    :goto_6
    move-object v7, v5

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_7
    sub-float v3, v5, v17

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

    :goto_8
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_9
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

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

    :goto_a
    int-to-float v3, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    move/from16 v24, v9

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_78

    nop

    :goto_e
    float-to-double v6, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_f
    add-int/lit8 v9, v24, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_10
    const-wide/16 v6, 0x0

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_11
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_12
    new-array v2, v2, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_13
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_14
    mul-float v8, v3, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_15
    move-object/from16 v18, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return v11

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1a
    const-wide/16 v4, 0x0

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

    :goto_1b
    iget v1, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_77

    nop

    :goto_1d
    int-to-float v4, v4

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_1e
    move v1, v5

    nop

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

    :goto_1f
    double-to-float v1, v3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_82

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/high16 v7, 0x7fc00000    # Float.NaN

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

    :goto_23
    const v1, 0x3

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move-wide v14, v6

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_25
    float-to-double v4, v11

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_26
    float-to-double v3, v3

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

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_28
    cmpg-float v1, v1, v8

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-ltz v1, :cond_1

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

    :cond_1
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    move/from16 v19, v1

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_2b
    move/from16 v17, v7

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_3e

    nop

    :goto_2d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2e
    iget v7, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2f
    aget-object v3, v3, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_30
    move v5, v1

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_46

    nop

    nop

    :goto_32
    add-int/lit8 v4, v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_33
    const/4 v3, 0x1

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

    :goto_34
    add-float v3, v3, v17

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move v5, v1

    nop

    :goto_36
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_37
    aget v4, v2, v18

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_38
    if-gtz v24, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v7, v3, v4}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    move-result-wide v3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    div-float/2addr v1, v6

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_3b
    float-to-double v3, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3c
    div-float v10, v5, v4

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3d
    move v9, v8

    nop

    nop

    :goto_3e
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    move-object v7, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_40
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_41
    if-lt v9, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    move/from16 v1, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_43
    move v1, v5

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_44
    move v11, v4

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    move-object/from16 v1, v18

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

    :goto_47
    aget v8, v2, v18

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v1, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

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

    :goto_49
    move v11, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4a
    move-wide/from16 v21, v4

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

    :goto_4b
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_4d
    move-wide/from16 v18, v3

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_4e
    float-to-double v8, v8

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_4f
    if-nez v7, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-nez v1, :cond_5

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_5
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_51
    aget v3, v2, v3

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

    :goto_52
    sub-float v1, v8, v17

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_53
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_54
    move/from16 v9, v20

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_55
    move-wide/from16 v18, v3

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

    :goto_56
    goto/16 :goto_31

    nop

    :goto_57
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_58
    move-object/from16 v23, v7

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const/16 v18, 0x0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget v1, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_72

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const/4 v8, 0x0

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

    :goto_5e
    if-nez v6, :cond_6

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_5f
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const/4 v2, 0x2

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

    :goto_61
    move-object v8, v2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_63
    move/from16 v16, v1

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

    :goto_64
    move/from16 v17, v6

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    float-to-double v3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_66
    mul-float/2addr v3, v1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_67
    sub-double v8, v12, v8

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

    :goto_68
    aget v6, v2, v3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_69
    invoke-virtual/range {v3 .. v9}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[FI)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    check-cast v6, Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_6b
    sub-double v6, v14, v6

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    move/from16 v25, v7

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

    :goto_6d
    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    const/16 v20, 0x0

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    move-wide v4, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_70
    sub-float v6, v5, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_71
    move/from16 v5, v25

    nop

    nop

    :goto_72
    goto/32 :goto_4c

    nop

    nop

    :goto_73
    iget-object v1, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_74
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_76
    const/16 v1, 0x64

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7a
    const/high16 v5, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

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

    :goto_7c
    const v0, 0x9

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

    :goto_7d
    double-to-float v4, v4

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

    nop

    :goto_7e
    add-double/2addr v4, v6

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

    nop

    :goto_7f
    iget-object v5, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_80
    float-to-double v12, v4

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_81
    move-wide/from16 v4, v18

    nop

    nop

    nop

    nop

    nop

    :goto_82
    goto/32 :goto_8

    nop

    nop

    :goto_83
    if-nez v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_8
    goto/32 :goto_1b

    nop

    nop

    nop

    nop
.end method

.method private 14b68b8c5e31b8f94c3ffcf6fb68e0e1m(F[F)F
    .locals 9

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_0
    if-ltz v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sub-float v7, v4, v3

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2, v6, v7}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    move-result-wide v6

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-float v0, v7, v3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4
    if-ltz v7, :cond_1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    float-to-double v6, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    mul-float/2addr p1, v2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-ltz v4, :cond_2

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_a
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_b
    invoke-virtual {v2, v7, v8}, Landroidx/constraintlayout/core/motion/utils/Easing;->getDiff(D)D

    move-result-wide v7

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_c
    double-to-float v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

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

    :goto_f
    move v0, p1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_3

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_35

    nop

    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_4
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_14
    aput v7, p2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_44

    nop

    nop

    :goto_16
    if-nez p2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sub-float v6, v4, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_1a
    if-nez v5, :cond_6

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

    :cond_6
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v7, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1c
    cmpl-double v3, v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_1d
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1e
    if-nez v7, :cond_7

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3f

    nop

    nop

    :goto_1f
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_40

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_25
    iget-object v2, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

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

    :goto_26
    const v1, 0xa

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

    :goto_27
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_28
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_29
    cmpg-float v4, p1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_2c
    iget v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerOffset:F

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

    :goto_2d
    float-to-double v7, v5

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2e
    if-gtz v4, :cond_8

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

    :cond_8
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez v6, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    :cond_9
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_30
    sub-float v5, p1, v3

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v7, :cond_a

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_32
    iget v3, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_33
    cmpg-float v7, v7, p1

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

    :goto_34
    float-to-double v3, v2

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_35
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_38
    if-nez v3, :cond_b

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_b
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_3b
    sub-float/2addr p1, v3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3c
    cmpl-float v4, p1, v3

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

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

    :goto_3e
    cmpg-double v4, v7, v5

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

    :goto_3f
    iget v4, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    nop

    :goto_40
    goto/32 :goto_39

    nop

    nop

    :goto_41
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_42
    iget-object v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

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

    :goto_43
    aput v0, p2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_44
    return v0

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const/4 p1, 0x0

    nop

    :goto_47
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-nez v2, :cond_c

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_c
    goto/32 :goto_1d

    nop

    nop

    :goto_49
    iget v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerScale:F

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    check-cast v6, Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_4b
    mul-float/2addr v7, v6

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_4c
    float-to-double v7, p1

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_4d
    double-to-float v7, v7

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4e
    div-float/2addr v5, v6

    nop

    nop

    goto/32 :goto_7

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

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget v7, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_51
    const/high16 v4, 0x7fc00000    # Float.NaN

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private 32e01c2e41fbe060e9f140225cb36234m(Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .locals 4

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    int-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    move-result v2

    nop

    goto/32 :goto_f

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

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x8

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
    invoke-virtual {v3}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    move-result v3

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_f
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/MotionWidget;->getX()I

    move-result v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_12
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getY()I

    move-result v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_15
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_16
    int-to-float v0, v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput v2, p0, Landroidx/constraintlayout/core/motion/Motion;->MAX_DIMENSION:I

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_4
    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/MotionPaths;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v1, Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    :goto_8
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_9
    const/4 v2, 0x0

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

    :goto_a
    const/4 v2, 0x1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionPhase:F

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_e
    iput v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotTarget:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_26

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-array v2, v2, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_14
    new-instance v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

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

    :goto_15
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_16
    const v1, 0x17

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_17
    new-instance v1, Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mPathMotionArc:I

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

    :goto_19
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1c
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mTempRect:Landroidx/constraintlayout/core/motion/utils/Rect;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1d
    new-instance v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1e
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

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

    :goto_1f
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mNoMovement:Z

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_21
    iput v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_23
    const/4 v2, 0x0

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

    :goto_24
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Rect;

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_25
    iput v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerOffset:F

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_27
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/Rect;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2b
    const/4 v2, 0x4

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

    :goto_2c
    iput v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionStagger:F

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

    :goto_2d
    new-array v2, v2, [F

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2e
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mValuesBuff:[F

    nop

    goto/32 :goto_38

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

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionInterpolator:Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_31
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_32
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/Motion;->setView(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_34
    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/MotionPaths;-><init>()V

    goto/32 :goto_f

    nop

    nop

    :goto_35
    iput v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionSteps:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_36
    const/high16 v1, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_37
    iput v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerScale:F

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_38
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private ab35181830b64799f175d1c6b89171e6m(Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .locals 5

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v3, v2}, Landroidx/constraintlayout/core/motion/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    add-int/lit8 v3, v3, -0x1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3
    check-cast v2, Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_4
    cmpl-float v3, v3, v4

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

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_7
    const-string v3, "MotionController"

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

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v1, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_d
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    :goto_e
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

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

    :goto_f
    goto :goto_16

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

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

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

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

    :goto_13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    :goto_14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

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

    :goto_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    :goto_16
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_18
    iget v3, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

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

    :goto_19
    const v0, 0x4

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1b
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v3, "\" outside of range"

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget v4, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

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

    :goto_20
    move-object v0, v2

    nop

    nop

    :goto_21
    goto/32 :goto_f

    nop

    nop

    :goto_22
    const v1, 0x10

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v0, 0x0

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

    :goto_24
    iget v3, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

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

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_26
    neg-int v3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_28
    if-eqz v3, :cond_2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    nop

    :goto_29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2a
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_1d

    nop

    :goto_2c
    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-eqz v1, :cond_4

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2e
    const-string v3, " KeyPath position \""

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

    :goto_2f
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method private static getInterpolator(ILjava/lang/String;I)Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    :goto_2
    packed-switch p0, :pswitch_data_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v0

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

    :goto_5
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    const/4 v0, 0x0

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

    :goto_9
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    return-object v1

    nop

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch

    :goto_b
    goto/32 :goto_3

    nop

    nop

    :goto_c
    invoke-direct {v1, v0}, Landroidx/constraintlayout/core/motion/Motion$1;-><init>(Landroidx/constraintlayout/core/motion/utils/Easing;)V

    goto/32 :goto_a

    nop

    nop

    :goto_d
    new-instance v1, Landroidx/constraintlayout/core/motion/Motion$1;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    return-object v0

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_4

    nop

    nop

    nop
.end method


# virtual methods
.method public addKey(Landroidx/constraintlayout/core/motion/key/MotionKey;)V
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

    :goto_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method addKeys(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/motion/key/MotionKey;",
            ">;)V"
        }
    .end annotation

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

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
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

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

.method buildBounds([FI)V
    .locals 17

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v2, v1, -0x1

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_1
    check-cast v5, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    cmpg-float v1, v1, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_4
    sub-float v2, v14, v13

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_6
    cmpl-float v11, v10, v3

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_7
    cmpg-double v12, v12, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v6, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_a
    cmpg-float v12, v9, v11

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_b
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v16, :cond_0

    nop

    goto/32 :goto_98

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_e
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_f
    mul-float/2addr v2, v1

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

    :goto_10
    move-object v12, v1

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v7, :cond_1

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_12
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_13
    float-to-double v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_14
    int-to-float v9, v8

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_15
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x8

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

    :goto_17
    const/high16 v14, 0x3f800000    # 1.0f

    nop

    nop

    :goto_18
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v8, 0x0

    nop

    :goto_1a
    goto/32 :goto_4a

    nop

    nop

    :goto_1b
    move-object/from16 v4, v16

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_1c
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1d
    iget v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerScale:F

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1e
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move-object/from16 v16, v4

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_20
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_21
    if-ltz v12, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_87

    nop

    nop

    :goto_22
    if-nez v12, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :cond_4
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_23
    move v15, v2

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_25
    move-object v4, v6

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

    nop

    :goto_26
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_27
    iget-object v1, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

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

    :goto_28
    mul-float/2addr v9, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_29
    if-eqz v4, :cond_5

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_2c
    invoke-virtual {v12, v2, v3}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    move-result-wide v2

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_2d
    move/from16 v1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2e
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

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

    :goto_2f
    move/from16 v1, p2

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move v14, v1

    nop

    :goto_31
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_32
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_33
    iget v1, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v1, :cond_6

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_6a

    nop

    nop

    :goto_35
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_37
    mul-float/2addr v9, v2

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

    :goto_38
    move v2, v15

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

    :goto_39
    const/high16 v14, 0x7fc00000    # Float.NaN

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerOffset:F

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

    :goto_3b
    div-float v2, v3, v2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    double-to-float v1, v2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3d
    goto/16 :goto_31

    nop

    nop

    :goto_3e
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_3f
    sub-float v3, v14, v13

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_40
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

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

    :goto_41
    goto/16 :goto_6c

    nop

    nop

    :goto_42
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    return-void

    nop

    :goto_44
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_2

    nop

    :goto_46
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-gtz v3, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :cond_7
    goto/32 :goto_74

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_9

    nop

    :goto_49
    goto/32 :goto_77

    nop

    nop

    nop

    :goto_4a
    if-lt v8, v1, :cond_8

    nop

    goto/32 :goto_8e

    nop

    nop

    :cond_8
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_4c
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_79

    nop

    :goto_4d
    move-object v7, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v12, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_4f
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_50
    if-ltz v12, :cond_a

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_51
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v1, v2, v3, v4, v0}, Landroidx/constraintlayout/core/motion/MotionPaths;->getBounds([I[D[FI)V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_56
    aget-object v1, v1, v2

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

    :goto_57
    mul-int/lit8 v0, v8, 0x2

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_58
    check-cast v7, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5a
    div-float/2addr v1, v3

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_5b
    const-string v5, "translationX"

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_5c
    move-object/from16 v0, p0

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

    :goto_5d
    move v15, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5e
    move/from16 v1, p2

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-eqz v9, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :cond_b
    goto/32 :goto_94

    nop

    nop

    nop

    :goto_60
    add-float/2addr v2, v13

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_61
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_62
    if-eqz v9, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_48

    nop

    nop

    :goto_63
    invoke-static {v9, v3}, Ljava/lang/Math;->min(FF)F

    move-result v9

    nop

    nop

    :goto_64
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_65
    move-object/from16 v4, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v1, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_67
    float-to-double v12, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_68
    sub-float v1, v9, v13

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_69
    move-object/from16 v3, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_6a
    iget v1, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

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

    :goto_6b
    check-cast v4, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    const v0, 0x5

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

    :goto_6e
    invoke-virtual {v1, v10, v11, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_6f
    const-string v8, "translationY"

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

    :goto_70
    if-nez v11, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_71
    iget-object v15, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    float-to-double v10, v9

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_73
    float-to-double v10, v2

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v1, v10, v11, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    :goto_75
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_76
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

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

    :goto_78
    if-ltz v1, :cond_e

    nop

    goto/32 :goto_3e

    nop

    :cond_e
    goto/32 :goto_66

    nop

    nop

    :goto_79
    goto/32 :goto_44

    nop

    :goto_7a
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    add-int v0, v0, v1

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

    :goto_7c
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_7d
    iget-object v12, v12, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_7e
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

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

    :goto_7f
    check-cast v3, Landroidx/constraintlayout/core/motion/MotionPaths;

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

    :goto_80
    if-nez v1, :cond_f

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :cond_f
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_81
    if-gtz v12, :cond_10

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    :cond_10
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_82
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_83
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_84
    cmpl-float v12, v9, v11

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    goto/16 :goto_24

    nop

    :goto_86
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_87
    sub-float/2addr v9, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_88
    array-length v3, v2

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

    :goto_89
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    nop

    nop

    :goto_8b
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_8c
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_8d
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_43

    nop

    nop

    :goto_8f
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

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

    :goto_90
    const/4 v13, 0x0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iget v12, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_92
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_93
    move v13, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_94
    move-object v5, v6

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_95
    int-to-float v2, v2

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_96
    if-nez v1, :cond_11

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_11
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    goto :goto_8b

    nop

    nop

    nop

    :goto_98
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method buildKeyBounds([F[I)I
    .locals 8

    goto/32 :goto_18

    nop

    nop

    :goto_0
    add-int/lit8 v1, v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x10

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p2, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

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

    :goto_5
    aput v6, p2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_30

    nop

    nop

    :goto_7
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v4, v5, v6, p1, v1}, Landroidx/constraintlayout/core/motion/MotionPaths;->getBounds([I[D[FI)V

    goto/32 :goto_0

    nop

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x0

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_d
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2f

    nop

    nop

    :goto_11
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

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

    :goto_12
    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_31

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_15
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2b

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

    :goto_16
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_17
    array-length v4, v2

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_18
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_19
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1b
    aget-object v4, v4, v0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1d
    div-int/lit8 v0, v1, 0x2

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v4, Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    goto/32 :goto_23

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

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    :goto_20
    move v1, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_21
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_23
    add-int/lit8 v5, v1, 0x1

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
    iget v6, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_25
    aget-object v2, v2, v0

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_26
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getTimePoints()[D

    move-result-object v2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    :goto_29
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    return v0

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-lt v3, v4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_3
    goto/32 :goto_1c

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

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v4, :cond_4

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    :goto_2f
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_32
    aget-wide v5, v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_e

    nop

    nop
.end method

.method public buildKeyFrames([F[I[I)I
    .locals 11

    goto/32 :goto_2c

    nop

    nop

    :goto_0
    float-to-int v6, v7

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    if-lt v3, v4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    div-int/lit8 v0, v1, 0x2

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

    :goto_3
    aput v6, p3, v1

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
    return v0

    nop

    nop

    :goto_5
    goto/32 :goto_41

    nop

    nop

    :goto_6
    add-int/lit8 v5, v1, 0x1

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

    :goto_7
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getTimePoints()[D

    move-result-object v2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_9
    if-nez p3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    nop

    :goto_b
    goto/32 :goto_15

    nop

    nop

    :goto_c
    add-int/lit8 v5, v1, 0x1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object v9, p1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_e
    iget v6, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    move v1, v5

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_16

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_15
    const/4 v3, 0x0

    nop

    :goto_16
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual/range {v4 .. v10}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[FI)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/high16 v6, 0x42c80000    # 100.0f

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x0

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

    nop

    :goto_1d
    iget v7, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

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
    aget-wide v5, v2, v3

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_11

    nop

    nop

    :goto_20
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

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

    :goto_22
    aget-object v2, v2, v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    :cond_3
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_26
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_27
    move v1, v5

    nop

    goto/32 :goto_1f

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

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_29
    move v10, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_33

    nop

    nop

    :goto_2c
    const v0, 0x13

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    aget-wide v5, v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_2e
    const/4 v0, 0x0

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

    :goto_2f
    aget-object v4, v4, v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_30
    array-length v4, v2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v4, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_4
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_34
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_24

    nop

    :goto_35
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_37
    mul-float/2addr v7, v6

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v8, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_39
    aput v6, p2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_3b
    goto/16 :goto_2b

    nop

    :goto_3c
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_3d
    check-cast v4, Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

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
    add-int/lit8 v1, v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_40
    if-nez p1, :cond_6

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

    :cond_6
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    return v0

    nop

    nop

    :goto_42
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_44
    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_45
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_9

    nop

    nop

    :goto_47
    const v1, 0x12

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

    :goto_48
    check-cast v4, Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_49
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop
.end method

.method public buildPath([FI)V
    .locals 22

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_0
    mul-int/lit8 v17, v15, 0x2

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_1
    if-nez v4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_1

    nop

    goto/32 :goto_78

    nop

    :cond_1
    goto/32 :goto_6d

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_7f

    nop

    nop

    :goto_5
    iget v9, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_7
    float-to-double v1, v4

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v9, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move v9, v3

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_a
    move v7, v1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v11, v0}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_c
    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerOffset:F

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_ca

    nop

    :goto_f
    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_10
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v1, :cond_2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    :goto_12
    sub-float/2addr v1, v3

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

    nop

    :goto_13
    move-object/from16 v6, p1

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v3, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v11, :cond_4

    nop

    goto/32 :goto_9d

    nop

    :cond_4
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_16
    move-object v3, v1

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_17
    mul-int/lit8 v1, v15, 0x2

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

    nop

    nop

    :goto_18
    const/high16 v9, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sub-float v4, v7, v16

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    aget-object v1, v1, v4

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_1b
    if-nez v13, :cond_5

    nop

    goto/32 :goto_96

    nop

    nop

    :cond_5
    goto/32 :goto_b2

    nop

    nop

    :goto_1c
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_1d
    move/from16 v16, v4

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

    :goto_1e
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move v7, v1

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_2a

    nop

    nop

    :goto_21
    goto/16 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move-object v5, v3

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_24
    move-object v13, v1

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move-object/from16 v0, p0

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_28
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_29
    move v4, v1

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_2a
    float-to-double v1, v7

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    int-to-float v1, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_2c
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-eqz v1, :cond_6

    nop

    goto/32 :goto_a9

    nop

    nop

    :cond_6
    goto/32 :goto_83

    nop

    nop

    nop

    :goto_2e
    move v7, v1

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez v12, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-ltz v4, :cond_8

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-lt v15, v8, :cond_9

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_32
    const/4 v1, 0x0

    nop

    :goto_33
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    mul-int/lit8 v1, v15, 0x2

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_35
    mul-int/lit8 v1, v15, 0x2

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_36
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_37
    move/from16 v7, v17

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_38
    cmpg-float v4, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_3b
    aput v2, p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_3c
    move/from16 v3, v21

    nop

    nop

    :goto_3d
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez v9, :cond_a

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

    :cond_a
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_3f
    const-string v4, "translationY"

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_40
    if-eqz v1, :cond_b

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_44
    add-float/2addr v2, v3

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

    :goto_45
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

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

    :goto_46
    move-object v1, v3

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    add-int/lit8 v15, v15, 0x1

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

    :goto_48
    move-object v11, v1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    mul-float/2addr v1, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_4a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_4b
    move-object/from16 v20, v5

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    move-object v14, v3

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

    nop

    :goto_4e
    if-gtz v4, :cond_c

    nop

    goto/32 :goto_43

    nop

    :cond_c
    goto/32 :goto_93

    nop

    nop

    nop

    :goto_4f
    const/4 v1, 0x0

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

    :goto_50
    move-wide/from16 v18, v2

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_51
    goto/16 :goto_20

    nop

    nop

    :goto_52
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_53
    aget v2, p1, v1

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

    :goto_54
    sub-float v2, v3, v16

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

    :goto_55
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    cmpg-float v9, v9, v7

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v12, v0}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    move-result v3

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

    :goto_58
    const/high16 v5, 0x7fc00000    # Float.NaN

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
    aget v2, p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_5a
    if-gtz v6, :cond_d

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_77

    nop

    nop

    nop

    :goto_5b
    move v15, v1

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    cmpg-double v4, v4, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_5e
    add-int/lit8 v1, v8, -0x1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-eqz v1, :cond_e

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_60
    div-float v10, v9, v1

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_61
    mul-float/2addr v2, v1

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_63
    move-object v12, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_64
    check-cast v3, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    nop

    :goto_65
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v13, v0}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->get(F)F

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    aput v2, p1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->get(F)F

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_69
    move v9, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

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

    :goto_6c
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_6e
    goto/16 :goto_8d

    nop

    :goto_6f
    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_70
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_71
    add-float/2addr v2, v3

    nop

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

    nop

    :goto_72
    move/from16 v16, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_73
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-static {v1, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_75
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[FI)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_76
    array-length v6, v4

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    :goto_78
    goto/32 :goto_10

    nop

    nop

    :goto_79
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_7c
    aget v2, p1, v1

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v5, v1, v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    move-result-wide v1

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_7f
    goto/32 :goto_8f

    nop

    :goto_80
    sub-float v6, v3, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_81
    cmpl-float v4, v1, v3

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

    :goto_82
    if-lez v0, :cond_f

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_8e

    nop

    :goto_83
    move-object v1, v3

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

    :goto_84
    const/high16 v9, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_85
    add-float v2, v2, v16

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_86
    if-nez v14, :cond_10

    nop

    goto/32 :goto_9a

    nop

    :cond_10
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_87
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_88
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_89
    const-string v2, "translationX"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_8a
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    nop

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_63

    nop

    nop

    :goto_8c
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    nop

    :goto_8d
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_90
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_91
    move-wide v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_92
    if-ltz v9, :cond_11

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :cond_11
    goto/32 :goto_b7

    nop

    nop

    :goto_93
    float-to-double v4, v1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_94
    add-float/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_95
    goto :goto_9d

    nop

    nop

    nop

    :goto_96
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    iget v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerScale:F

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

    :goto_98
    if-nez v5, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_87

    nop

    nop

    nop

    :goto_99
    goto/16 :goto_c2

    nop

    :goto_9a
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    aput v2, p1, v1

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    goto/32 :goto_86

    nop

    nop

    nop

    :goto_9e
    move-wide/from16 v17, v1

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

    :goto_9f
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_a0
    aget v2, p1, v1

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

    :goto_a1
    div-float/2addr v4, v6

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_a2
    const/high16 v9, 0x3f800000    # 1.0f

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

    :goto_a3
    move-wide/from16 v17, v1

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

    :goto_a4
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_a5
    move-object v5, v6

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

    :goto_a6
    cmpl-float v3, v2, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a7
    move/from16 v8, p2

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_a8
    goto :goto_ac

    nop

    :goto_a9
    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_aa
    if-nez v9, :cond_13

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_ab
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    nop

    :goto_ac
    goto/32 :goto_24

    nop

    nop

    :goto_ad
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_ae
    mul-float/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    move/from16 v21, v5

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

    nop

    nop

    :goto_b0
    goto/16 :goto_5c

    nop

    :goto_b1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    mul-int/lit8 v1, v15, 0x2

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_b3
    goto/16 :goto_3d

    nop

    nop

    nop

    :goto_b4
    goto/32 :goto_98

    nop

    nop

    :goto_b5
    check-cast v4, Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b6
    double-to-float v1, v1

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    iget-object v5, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b8
    if-ltz v4, :cond_14

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    iget v9, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_bb
    move-object v1, v3

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    :goto_bc
    iget v3, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    add-float/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    iget-object v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_c0
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    aput v2, p1, v1

    nop

    nop

    nop

    nop

    :goto_c2
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    if-nez v4, :cond_15

    nop

    goto/32 :goto_26

    nop

    :cond_15
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_c4
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    goto/16 :goto_8b

    nop

    nop

    nop

    :goto_c6
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_c7
    move v0, v7

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

    :goto_c8
    float-to-double v1, v2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c9
    move-wide/from16 v2, v17

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop
.end method

.method public buildRect(F[FI)V
    .locals 4

    goto/32 :goto_f

    nop

    nop

    :goto_0
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

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    :goto_4
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1, v2, p2, p3}, Landroidx/constraintlayout/core/motion/MotionPaths;->getRect([I[D[FI)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/motion/Motion;->14b68b8c5e31b8f94c3ffcf6fb68e0e1m(F[F)F

    move-result p1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x17

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

    :goto_10
    goto/32 :goto_d

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    float-to-double v1, p1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x18

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    aget-object v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop
.end method

.method buildRectangles([FI)V
    .locals 7

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v3, 0x0

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
    const v0, 0x1f

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
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, v2, v3}, Landroidx/constraintlayout/core/motion/Motion;->14b68b8c5e31b8f94c3ffcf6fb68e0e1m(F[F)F

    move-result v2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_6
    int-to-float v2, v0

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v3, v4, v5, p1, v6}, Landroidx/constraintlayout/core/motion/MotionPaths;->getRect([I[D[FI)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_b
    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    div-float/2addr v1, v0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_d
    float-to-double v4, v2

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

    :goto_e
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

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

    :goto_f
    mul-float/2addr v2, v1

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
    add-int/lit8 v0, v0, 0x1

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

    :goto_11
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

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
    goto/32 :goto_8

    nop

    :goto_13
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lt v0, p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_4

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_17
    add-int/lit8 v0, p2, -0x1

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

    :goto_18
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

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

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_1b
    mul-int/lit8 v6, v0, 0x8

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1d
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1e
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

    nop

    nop

    :goto_1f
    const/high16 v1, 0x3f800000    # 1.0f

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

    :goto_20
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_21
    aget-object v3, v3, v4

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_22
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method endTrigger(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public getAnimateRelativeTo()I
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    nop

    nop

    nop

    goto/32 :goto_1

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
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

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

.method getAttributeValues(Ljava/lang/String;[FI)I
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x1c

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1
    array-length v3, p2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    int-to-float v0, v0

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

    :goto_4
    goto/32 :goto_a

    nop

    nop

    :goto_5
    if-lt v2, v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    const/4 v2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_8
    array-length v2, p2

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

    :goto_9
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b
    array-length v3, p2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_c
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_12

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v2, 0x0

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_13
    add-int/lit8 v0, p3, -0x1

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
    div-int v3, v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_15
    div-float/2addr v1, v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    move-result v3

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

    nop

    :goto_17
    check-cast v0, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_18
    const v1, 0x3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    :goto_1a
    aput v3, p2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1b
    add-int/lit8 v3, v3, -0x1

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

    :goto_1c
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1e
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_20
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_21
    return v2

    nop

    nop

    :goto_22
    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public getCenter(D[F[F)V
    .locals 11

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x4

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

    :goto_1
    new-array v10, v0, [D

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move-wide v2, p1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v8, p4

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, p1, p2, v9}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

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

    :goto_6
    const v1, 0x1d

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

    :goto_7
    invoke-virtual {v1, p1, p2, v10}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    new-array v9, v0, [D

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

    :goto_c
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_e
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_f
    const v0, 0x1c

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_11
    invoke-virtual/range {v1 .. v8}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[F[D[F)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
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

    :goto_13
    move-object v7, v10

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_14
    return-void

    nop

    :goto_15
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p4, v1}, Ljava/util/Arrays;->fill([FF)V

    goto/32 :goto_17

    nop

    nop

    :goto_17
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_18
    aget-object v1, v1, v2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_19
    new-array v0, v0, [I

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
    move-object v5, v9

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1b
    move-object v6, p3

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    aget-object v1, v1, v2

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

    :goto_1d
    goto/32 :goto_a

    nop

    nop

    :goto_1e
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public getCenterX()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mCurrentCenterX:F

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

    nop

    nop

    nop
.end method

.method public getCenterY()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mCurrentCenterY:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method getDpDt(FFF[F)V
    .locals 12

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

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

    :goto_3
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_4
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

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

    :goto_5
    aget-object v1, v1, v2

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
    sub-float/2addr v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_7
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_8
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    mul-float/2addr v9, v3

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

    :goto_a
    aput v9, p4, v2

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_b
    float-to-double v2, v8

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_d
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_e
    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_f
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_10
    aput v10, p4, v2

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

    :goto_11
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4c

    nop

    :goto_13
    sub-float/2addr v1, v3

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

    :goto_14
    array-length v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_15
    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

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

    :goto_16
    float-to-double v3, v8

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

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

    :goto_18
    return-void

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_24

    nop

    nop

    :goto_1a
    mul-float v11, v6, p2

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move v2, p1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/core/motion/MotionPaths;->setDpDt(FF[F[I[D[D)V

    :goto_1d
    goto/32 :goto_56

    nop

    nop

    :goto_1e
    if-nez v1, :cond_1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_21
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_23
    const/high16 v9, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_24
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

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

    :goto_25
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    float-to-double v3, v8

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_27
    sub-float/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2e
    add-float/2addr v10, v11

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    move-object/from16 v4, p4

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
    invoke-direct {p0, p1, v1}, Landroidx/constraintlayout/core/motion/Motion;->14b68b8c5e31b8f94c3ffcf6fb68e0e1m(F[F)F

    move-result v8

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_31
    goto :goto_2c

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_57

    nop

    :cond_2
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_34
    mul-float v2, v7, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_35
    sub-float v10, v9, p2

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_36
    if-gtz v3, :cond_3

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

    nop

    nop

    :goto_37
    array-length v2, v6

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

    :goto_38
    move-object v0, p0

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

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

    :goto_3a
    if-lt v1, v2, :cond_4

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_60

    nop

    nop

    :goto_3b
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3c
    float-to-double v4, v9

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    float-to-double v3, v8

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_3f
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_41
    mul-double/2addr v2, v4

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

    :goto_42
    move v3, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_43
    sub-float/2addr v9, p3

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

    nop

    :goto_44
    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_45
    aput-wide v2, v6, v1

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

    :goto_46
    move-object/from16 v4, p4

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

    :goto_47
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_49
    iget v6, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

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

    :goto_4a
    mul-float/2addr v10, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_4b
    add-float v7, v3, v5

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_4c
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_4f
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

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

    :goto_50
    aget-object v1, v1, v2

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/core/motion/MotionPaths;->setDpDt(FF[F[I[D[D)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_53
    const v1, 0x6

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

    :goto_54
    invoke-virtual {v1, v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_55
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_56
    return-void

    nop

    nop

    :goto_57
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_58
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_4d

    nop

    :goto_5a
    sub-float/2addr v4, v5

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

    :goto_5b
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    add-float/2addr v9, v2

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_5d
    iget v5, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

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

    :goto_5e
    move v3, p3

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_5f
    aget v9, v1, v2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_60
    aget-wide v2, v6, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_61
    add-float v6, v1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_62
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

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

    :goto_63
    move v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_64
    iget v5, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_66
    move v2, p2

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

    :goto_67
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_68
    invoke-virtual {v1, v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getDrawPath()I
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    iget v3, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    check-cast v2, Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_6
    const v0, 0x13

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_e
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_f
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

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

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    if-nez v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return v0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

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

    :goto_18
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop
.end method

.method public getFinalHeight()F
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

    :goto_1
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

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

    :goto_2
    return v0

    nop

    nop

    nop
.end method

.method public getFinalX()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

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

    :goto_1
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return v0

    nop

    nop
.end method

.method public getId(Ljava/lang/String;)I
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

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop
.end method

.method public getKeyFrame(I)Landroidx/constraintlayout/core/motion/MotionPaths;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v0, Landroidx/constraintlayout/core/motion/MotionPaths;

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

.method public getKeyFrameInfo(I[I)I
    .locals 19

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v5, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1
    aget-object v5, v5, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_2
    move-object v13, v5

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

    :goto_3
    if-nez v5, :cond_0

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

    :cond_0
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_4
    move v14, v3

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_5
    sub-int v5, v3, v14

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_6
    aget v5, v4, v15

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_8
    aget v5, v4, v16

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

    :goto_9
    iget v5, v13, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_a
    aput v15, p2, v3

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

    :goto_b
    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_c
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_16

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_f
    div-float v11, v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

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

    :goto_11
    if-eq v1, v5, :cond_1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

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

    :goto_14
    move/from16 v18, v11

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

    :goto_15
    const/4 v2, 0x0

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move-object/from16 v0, p0

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_17
    move/from16 v1, p1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_18
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_19
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_1a
    goto :goto_1e

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_1d
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    nop

    nop

    :goto_1e
    goto/32 :goto_24

    nop

    nop

    :goto_1f
    new-array v4, v4, [F

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

    nop

    :goto_20
    const/4 v5, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_21
    const v1, 0x12

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

    :goto_22
    iget v6, v5, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

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
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_25
    aput v5, p2, v3

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_26
    if-ne v5, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

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

    :goto_27
    instance-of v5, v13, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_28
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_29
    const/16 v16, 0x1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2a
    aput v5, p2, v3

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2b
    invoke-virtual {v5, v6, v7, v8}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_46

    nop

    nop

    :goto_2c
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2d
    float-to-double v6, v11

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2e
    add-int/lit8 v3, v3, 0x1

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

    :goto_2f
    aput v6, p2, v3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_31
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/high16 v6, 0x42c80000    # 100.0f

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget v5, v13, Landroidx/constraintlayout/core/motion/key/MotionKey;->mType:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_35
    aput v5, p2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_36
    const/4 v15, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

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

    :goto_38
    return v2

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_3a
    aput v6, p2, v3

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_30

    nop

    nop

    :goto_3c
    iget v6, v5, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPositionType:I

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3d
    float-to-double v6, v11

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

    :goto_3e
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

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

    :goto_3f
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_40
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_41
    iget v6, v5, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    add-int/lit8 v3, v3, 0x1

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
    aput v5, p2, v14

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

    :goto_44
    int-to-float v5, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_45
    const/4 v3, 0x0

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_46
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget v5, v13, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_48
    iget v5, v13, Landroidx/constraintlayout/core/motion/key/MotionKey;->mType:I

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_49
    const/16 v17, 0x0

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

    :goto_4a
    move-object v5, v13

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4b
    const/4 v4, 0x2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_4c
    aput v6, p2, v3

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

    :goto_4d
    move-object v10, v4

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4e
    aput v5, p2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_4f
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_1e

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_38

    nop

    nop

    :goto_52
    move/from16 v11, v17

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-lez v0, :cond_4

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_c

    nop

    :goto_54
    invoke-virtual/range {v5 .. v11}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[FI)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_55
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_56
    check-cast v13, Landroidx/constraintlayout/core/motion/key/MotionKey;

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_57
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method getKeyFrameParameter(IFF)F
    .locals 12

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_0
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_1
    float-to-double v5, v4

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    return v8

    nop

    nop

    :pswitch_0
    goto/32 :goto_49

    nop

    nop

    :goto_3
    sub-float v5, p2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_4
    add-float/2addr v2, v3

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    float-to-double v4, v0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    mul-float v10, v6, v1

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

    nop

    :goto_b
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_c
    const-wide v7, 0x3e7ad7f29abcaf48L    # 1.0E-7

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_d
    double-to-float v7, v7

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

    :goto_e
    mul-float v10, v9, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    sub-float/2addr v8, v10

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

    :goto_10
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

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

    :goto_11
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

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

    :goto_12
    div-float v8, v5, v1

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_13
    mul-float v9, v5, v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_15
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_16
    div-float/2addr v3, v4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_17
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

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

    :goto_18
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1a
    return v8

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1c
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return v8

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_12

    nop

    nop

    :goto_1e
    div-float v8, v5, v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1f
    cmpl-float v9, v7, v8

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

    :goto_20
    return v8

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget v5, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

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

    nop

    :goto_23
    if-ltz v5, :cond_0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    float-to-double v7, v5

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

    :goto_25
    float-to-double v6, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_26
    double-to-float v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

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

    :goto_28
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

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

    :goto_29
    sub-float/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2a
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2b
    return v8

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :goto_2c
    goto/32 :goto_19

    nop

    nop

    :goto_2d
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

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

    :goto_2f
    div-float/2addr v5, v4

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

    :goto_30
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

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

    :goto_31
    div-float v8, v6, v0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_32
    float-to-double v9, v6

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    cmpg-double v5, v5, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_34
    return v8

    nop

    nop

    :pswitch_3
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/high16 v4, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_36
    const v1, 0x13

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

    :goto_37
    sub-float/2addr v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const v0, 0x1d

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

    :goto_39
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_3a
    mul-float v8, v4, v4

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/high16 v5, 0x7fc00000    # Float.NaN

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    add-float/2addr v9, v10

    nop

    nop

    nop

    nop

    packed-switch p1, :pswitch_data_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_3d
    add-float/2addr v3, v5

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    return v5

    nop

    :goto_3f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_40
    return v8

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_42

    nop

    nop

    :goto_41
    return v8

    nop

    nop

    :pswitch_5
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_42
    div-float v8, v9, v4

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

    :goto_43
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_44
    if-eqz v9, :cond_2

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

    :cond_2
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_45
    sub-float v6, p3, v3

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

    :goto_46
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_48
    double-to-float v8, v10

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_49
    div-float v8, v6, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    float-to-double v10, v8

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop
.end method

.method public getKeyFramePositions([I[F)I
    .locals 12

    goto/32 :goto_22

    nop

    nop

    :goto_0
    move-object v8, p2

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

    :goto_1
    goto/32 :goto_c

    nop

    :goto_2
    invoke-virtual/range {v3 .. v9}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[FI)V

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_5
    float-to-double v4, v0

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

    :goto_6
    move v9, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_8
    iget v4, v10, Landroidx/constraintlayout/core/motion/key/MotionKey;->mType:I

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

    nop

    :goto_9
    if-nez v3, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move v0, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2e

    nop

    nop

    :goto_d
    goto/16 :goto_2b

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    :goto_f
    return v0

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

    nop

    nop

    :goto_11
    add-int/lit8 v11, v0, 0x1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    div-float/2addr v0, v3

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

    :goto_13
    aget-object v3, v3, v4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_14
    aput v3, p1, v0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_17
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_19
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    nop

    nop

    nop

    goto/32 :goto_1c

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

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move-object v10, v3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1d
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1f
    iget v3, v10, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_20
    add-int/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_21
    add-int/lit8 v1, v1, 0x2

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

    :goto_22
    const v0, 0x7

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/high16 v3, 0x42c80000    # 100.0f

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

    :goto_24
    check-cast v10, Landroidx/constraintlayout/core/motion/key/MotionKey;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_25
    const/4 v4, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_26
    float-to-double v4, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_27
    iget v0, v10, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

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
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    :goto_2b
    goto/32 :goto_28

    nop

    nop

    :goto_2c
    mul-int/lit16 v4, v4, 0x3e8

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2d
    rem-int v0, v0, v1

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

    :goto_2e
    const/4 v0, 0x0

    nop

    goto/32 :goto_1e

    nop

    nop
.end method

.method getPos(D)[D
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_6
    array-length v2, v1

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

    :goto_7
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

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

    :goto_8
    const v0, 0x5

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

    :goto_9
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    if-gtz v2, :cond_2

    nop

    goto/32 :goto_12

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object v0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x19

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    aget-object v0, v0, v1

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

    :goto_11
    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_d

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    nop

    goto/32 :goto_6

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method getPositionKeyframe(IIFF)Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;
    .locals 11

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_48

    nop

    nop

    :goto_1
    move v6, p3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2
    iput v1, v8, Landroidx/constraintlayout/core/motion/utils/FloatRect;->bottom:F

    nop

    goto/32 :goto_3e

    nop

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

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_47

    nop

    :goto_4
    instance-of v1, v10, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_5
    check-cast v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

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
    iput v1, v8, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

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

    :goto_7
    add-float/2addr v1, v2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v1, v0, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_c
    move-object v1, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_d
    move-object v8, v1

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

    :goto_e
    iput v1, v8, Landroidx/constraintlayout/core/motion/utils/FloatRect;->right:F

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput v1, v0, Landroidx/constraintlayout/core/motion/utils/FloatRect;->bottom:F

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_10
    move v7, p4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_12
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_14
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->intersects(IILandroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF)Z

    move-result v1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_15
    iget v1, v8, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

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

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_17
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_18
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_19
    const v1, 0xd

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1b
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

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

    :goto_1c
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

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

    :goto_1d
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    nop

    :goto_1e
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1f
    move-object v5, v8

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_20
    iput v1, v0, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

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
    move-object v1, v10

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_23
    iget v1, v8, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_24
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_25
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_3b

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

    :goto_26
    iget v1, v0, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_28
    return-object v1

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2a
    iput v1, v0, Landroidx/constraintlayout/core/motion/utils/FloatRect;->right:F

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2b
    add-float/2addr v1, v2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2c
    move-object v10, v1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/utils/FloatRect;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2e
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2f
    move v3, p2

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

    :goto_30
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/FloatRect;-><init>()V

    goto/32 :goto_2e

    nop

    nop

    :goto_31
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_32
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_33
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const v0, 0x15

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_37
    add-float/2addr v1, v2

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

    :goto_38
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_39
    add-float/2addr v1, v2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_3c
    move-object v4, v0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_3d
    iput v1, v0, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_3e
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    check-cast v10, Landroidx/constraintlayout/core/motion/key/MotionKey;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_40
    move v2, p1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_41
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_43
    iput v1, v8, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

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

    :goto_45
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_46
    new-instance v1, Landroidx/constraintlayout/core/motion/utils/FloatRect;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_29

    nop

    nop

    :goto_48
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_49
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/FloatRect;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop
.end method

.method getPostLayoutDvDp(FIIFF[F)V
    .locals 25

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e1

    nop

    :cond_0
    goto/32 :goto_e0

    nop

    :goto_1
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    :cond_1
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

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

    :goto_3
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_51

    nop

    nop

    :goto_6
    goto/32 :goto_bb

    nop

    nop

    :goto_7
    move-object/from16 v6, p6

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_8
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_9
    move-object/from16 v16, v4

    nop

    goto/32 :goto_109

    nop

    nop

    :goto_a
    move-object v10, v1

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_d
    move/from16 v17, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    :goto_e
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    :cond_2
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_f
    mul-float v1, v1, v16

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_10
    sub-float v16, v1, v3

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_e1

    nop

    nop

    :goto_12
    move-object/from16 v16, v2

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    goto/32 :goto_102

    nop

    nop

    nop

    :goto_14
    move-object v11, v1

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_15
    move-object v4, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :goto_16
    move-object/from16 v0, p0

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_17
    float-to-double v3, v8

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_18
    move-object/from16 p1, v14

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move/from16 v2, p1

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_1b
    move-object/from16 v21, v7

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :goto_1d
    invoke-virtual {v4, v11, v8}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    nop

    nop

    :goto_20
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    :goto_22
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_23
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_24
    move-object/from16 v19, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    :goto_25
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_26
    move-object v14, v5

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_55

    nop

    nop

    :goto_28
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_29
    move-object/from16 v6, p6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2a
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    nop

    :goto_2b
    goto/32 :goto_8b

    nop

    nop

    :goto_2c
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :cond_3
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    sub-float v7, v1, v3

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_2e
    if-eqz v1, :cond_4

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

    :cond_4
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_6d

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-eqz v1, :cond_5

    nop

    goto/32 :goto_30

    nop

    :cond_5
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    move-object/from16 v5, v19

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v1, v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_34
    move/from16 v3, p5

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move-object v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v6, v5, v15, v8}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    goto/32 :goto_c0

    nop

    nop

    :goto_37
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

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

    :goto_3c
    sub-float v19, v1, v3

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_3d
    float-to-double v3, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_3e
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_40
    move-object v5, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_42
    move-object/from16 v6, v17

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    :goto_43
    move-object v14, v1

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

    :goto_44
    move-object/from16 v17, v3

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

    nop

    nop

    :goto_45
    move-object v7, v3

    nop

    goto/32 :goto_f3

    nop

    nop

    :goto_46
    move-object/from16 v1, v18

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    :goto_47
    const-string v4, "translationY"

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

    :goto_48
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/16 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_1c

    nop

    nop

    :goto_4b
    move-object v1, v3

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_4c
    add-float/2addr v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/16 :goto_cd

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_79

    nop

    nop

    nop

    :goto_4f
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_50
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    :goto_53
    move-object v9, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    :goto_54
    move-object/from16 v6, p6

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_55
    move-object/from16 v1, v18

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_56
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    :goto_57
    goto/16 :goto_10c

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_21

    nop

    nop

    :goto_59
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_5b
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_5c
    mul-double/2addr v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

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

    :goto_5f
    if-eqz v1, :cond_6

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v4, v9, v10, v8}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_61
    aput v3, p6, v2

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v6, v4, v3, v8}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    const-string v6, "scaleX"

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_67
    move/from16 v3, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    :goto_68
    move-object v1, v3

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    move-object/from16 v7, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_6a
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    move-object/from16 v24, v6

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6e
    move-object v1, v3

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_6f
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_70
    aget-object v1, v1, v2

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_71
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    :goto_72
    invoke-virtual {v4, v5, v8}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    nop

    :goto_74
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v4, v14, v15, v8}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_76
    float-to-double v2, v8

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_77
    if-gtz v3, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_7
    goto/32 :goto_d9

    nop

    nop

    :goto_78
    move/from16 v2, p4

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

    :goto_79
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

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

    :goto_7a
    invoke-virtual {v6, v14, v8}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :goto_7b
    move-object v14, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_7c
    mul-float v2, v23, p5

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    mul-float/2addr v3, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_7f
    move-object v1, v3

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

    :goto_80
    add-float v22, v7, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_81
    if-lt v1, v2, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    :cond_8
    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v4, v12, v13, v8}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_83
    move-object v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_84
    aput-wide v2, v6, v1

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_86
    goto/16 :goto_20

    nop

    nop

    nop

    :goto_87
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_88
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    move-object v1, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    :goto_8a
    const v0, 0x13

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    move-object v6, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_8c
    move-object v15, v1

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

    :goto_8d
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_8e
    if-nez v1, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_8f
    add-int v0, v0, v1

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    const v1, 0x6

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

    :goto_91
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :goto_92
    if-eqz v1, :cond_a

    nop

    goto/32 :goto_4a

    nop

    :cond_a
    goto/32 :goto_49

    nop

    nop

    :goto_93
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

    nop

    goto/32 :goto_af

    nop

    nop

    :goto_94
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_95
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_96
    goto/16 :goto_38

    nop

    :goto_97
    goto/32 :goto_10a

    nop

    nop

    nop

    :goto_98
    move-object v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_99
    float-to-double v4, v7

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_9a
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/core/motion/MotionPaths;->setDpDt(FF[F[I[D[D)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9b
    const-string v5, "rotationZ"

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    move/from16 v5, p3

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {v6, v12, v13, v8}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    goto/32 :goto_7a

    nop

    nop

    :goto_9f
    add-float v23, v16, v19

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_a0
    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;-><init>()V

    goto/32 :goto_15

    nop

    nop

    :goto_a1
    move-object/from16 v21, v7

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    move-object/from16 v6, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_a4
    if-eqz v1, :cond_b

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_83

    nop

    nop

    :goto_a5
    move/from16 v2, p4

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_a6
    move-object/from16 p1, v14

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    move-object v12, v1

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_aa
    move-object/from16 v20, v6

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    move-object v14, v5

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_ac
    move-object/from16 v18, v3

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_ad
    sub-float v1, v1, p5

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    :goto_af
    aget v7, v1, v2

    nop

    nop

    goto/32 :goto_37

    nop

    nop

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

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b1
    move-object/from16 v18, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_b2
    move-object v1, v3

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    move-object v13, v1

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_b4
    move/from16 v4, p2

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    :goto_b5
    aput v1, p6, v2

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    :goto_b6
    if-nez v1, :cond_c

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    const-string v2, "translationX"

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    move/from16 v5, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b9
    goto/16 :goto_63

    nop

    nop

    nop

    :goto_ba
    goto/32 :goto_25

    nop

    nop

    :goto_bb
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

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

    :goto_bc
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_bd
    invoke-virtual {v1, v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_be
    invoke-virtual {v4, v6, v7, v8}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_bf
    move-object/from16 v20, v6

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_c0
    move-object/from16 v4, v20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :goto_c1
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    :goto_c3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c4
    if-eqz v1, :cond_d

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_c6
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_c8
    move-object/from16 v20, v6

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_c9
    invoke-virtual {v6, v11, v8}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_ca
    aget-object v1, v1, v2

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_cb
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_cc
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    nop

    :goto_cd
    goto/32 :goto_a9

    nop

    nop

    :goto_ce
    move-object/from16 p1, v14

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    invoke-direct {v0, v2, v1}, Landroidx/constraintlayout/core/motion/Motion;->14b68b8c5e31b8f94c3ffcf6fb68e0e1m(F[F)F

    move-result v8

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    return-void

    nop

    :goto_d1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d2
    aget-wide v2, v6, v1

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    move-object/from16 v18, v4

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    :goto_d4
    move/from16 v4, p2

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_d5
    goto/16 :goto_108

    nop

    :goto_d6
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_d7
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_d8
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_d9
    move-object/from16 p1, v4

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

    :goto_da
    invoke-virtual {v6, v9, v10, v8}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_db
    array-length v3, v2

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

    :goto_dc
    move-object/from16 v7, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    :goto_dd
    move/from16 v3, p5

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_de
    invoke-direct {v0, v8, v1}, Landroidx/constraintlayout/core/motion/Motion;->14b68b8c5e31b8f94c3ffcf6fb68e0e1m(F[F)F

    move-result v8

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :goto_df
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_e0
    goto/32 :goto_f9

    nop

    :goto_e1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_e2
    move-object/from16 v3, v21

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_e3
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_e4
    mul-float v4, v22, p4

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_e5
    move-object/from16 v4, p6

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_e6
    move/from16 v2, p4

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_e7
    invoke-virtual/range {v18 .. v18}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->clear()V

    goto/32 :goto_a3

    nop

    nop

    :goto_e8
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_e9
    float-to-double v3, v8

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_ea
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

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

    :goto_ec
    goto/16 :goto_2b

    nop

    nop

    nop

    :goto_ed
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_ee
    move-object/from16 v5, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_ef
    move-object/from16 v21, v7

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    add-float/2addr v1, v2

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    const-string v7, "scaleY"

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    move/from16 v4, p2

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    new-instance v1, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    move-object v3, v1

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    move/from16 v2, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_f6
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_f7
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_f8
    return-void

    nop

    nop

    nop

    :goto_f9
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_fa
    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    goto/32 :goto_41

    nop

    nop

    :goto_fb
    move-object/from16 v18, p1

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

    :goto_fc
    check-cast v3, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    nop

    :goto_fd
    goto/32 :goto_45

    nop

    nop

    :goto_fe
    invoke-virtual {v4}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->clear()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_ff
    array-length v2, v6

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_100
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_101
    sub-float v17, v1, v3

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_102
    return-void

    nop

    :goto_103
    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_104
    sub-float v3, v1, p4

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_105
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_106
    move-object/from16 v21, v5

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    :goto_107
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    nop

    nop

    nop

    nop

    nop

    :goto_108
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_109
    move-object/from16 v4, p6

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

    :goto_10a
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_10b
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    nop

    nop

    nop

    :goto_10c
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_10d
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    if-eqz v1, :cond_e

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    move/from16 v3, p5

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_110
    move/from16 v5, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_111
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/core/motion/MotionPaths;->setDpDt(FF[F[I[D[D)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop
.end method

.method public getStartHeight()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    :goto_2
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public getStartWidth()F
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
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public getStartX()F
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    nop

    goto/32 :goto_1

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

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    goto/32 :goto_0

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

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

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
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    nop

    goto/32 :goto_1

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
    iget v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotTarget:I

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
.end method

.method public getView()Landroidx/constraintlayout/core/motion/MotionWidget;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public interpolate(Landroidx/constraintlayout/core/motion/MotionWidget;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .locals 16

    goto/32 :goto_d2

    nop

    nop

    :goto_0
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    double-to-float v4, v4

    nop

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

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getRight()I

    move-result v2

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-float v5, v6, v13

    nop

    :goto_4
    goto/32 :goto_110

    nop

    nop

    nop

    :goto_5
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    :goto_7
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mValuesBuff:[F

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v3, v8, v4}, Landroidx/constraintlayout/core/motion/CustomVariable;->setInterpolatedValue(Landroidx/constraintlayout/core/motion/MotionWidget;[F)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    move v14, v1

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_a
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    :goto_b
    cmpl-float v1, v14, v13

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->getBottom()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_e
    add-float v11, v1, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_f
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyTriggers:[Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_10
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v8, v4}, Landroidx/constraintlayout/core/motion/MotionWidget;->setPivotY(F)V

    :goto_13
    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    :goto_15
    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_17
    div-float v2, v13, v2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_18
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :goto_19
    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_1b
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

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

    :goto_1c
    sub-int v12, v11, v6

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1d
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionSteps:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    :goto_1f
    add-float v7, v2, v5

    nop

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

    :goto_20
    div-float v4, v1, v2

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    :goto_21
    if-eqz v1, :cond_0

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

    :cond_0
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    :cond_1
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int/2addr v3, v4

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_25
    sub-int v13, v5, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_ef

    nop

    nop

    :goto_27
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyTriggers:[Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_2a
    goto/32 :goto_1a

    nop

    :goto_2b
    check-cast v2, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_2e
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

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

    :goto_2f
    aget-object v2, v2, v1

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-gtz v2, :cond_2

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

    :cond_2
    goto/32 :goto_da

    nop

    nop

    nop

    :goto_31
    add-float/2addr v1, v2

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_3
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_33
    add-float/2addr v11, v3

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_34
    if-eqz v1, :cond_4

    nop

    goto/32 :goto_95

    nop

    nop

    :cond_4
    goto/32 :goto_b4

    nop

    nop

    :goto_35
    if-gtz v2, :cond_5

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_5
    goto/32 :goto_ec

    nop

    nop

    :goto_36
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/core/motion/MotionPaths;->setView(FLandroidx/constraintlayout/core/motion/MotionWidget;[I[D[D[D)V

    :goto_37
    goto/32 :goto_a4

    nop

    nop

    :goto_38
    sub-float v2, v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_39
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

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

    :goto_3a
    move-object v12, v1

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_95

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3f
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

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

    nop

    nop

    :goto_40
    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    :goto_41
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

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

    :goto_43
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    :goto_44
    if-nez v6, :cond_6

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

    :cond_6
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_47
    sub-float/2addr v3, v4

    nop

    goto/32 :goto_11f

    nop

    nop

    :goto_48
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_49
    if-gtz v3, :cond_7

    nop

    goto/32 :goto_41

    nop

    :cond_7
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_4a
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_4b
    array-length v3, v2

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

    :goto_4c
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    aget-object v2, v2, v1

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    :goto_4e
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_4f
    if-nez v1, :cond_8

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_c3

    nop

    nop

    :goto_50
    sub-float/2addr v2, v3

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_51
    mul-float/2addr v2, v14

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v8, v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setPivotX(F)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_54
    float-to-double v6, v5

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

    :goto_55
    const/high16 v5, 0x3f000000    # 0.5f

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_56
    goto/16 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_58
    sub-float/2addr v4, v5

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

    :goto_59
    goto/16 :goto_b9

    nop

    nop

    :goto_5a
    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_5c
    add-float/2addr v5, v4

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mVisibilityMode:I

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_5e
    if-lt v1, v3, :cond_9

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-gez v1, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v2, v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_62
    array-length v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_63
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :goto_64
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    :goto_65
    iget v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionPhase:F

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_66
    move v3, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_67
    sub-int/2addr v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_68
    aget-object v1, v1, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_69
    rem-float v5, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    aget-wide v6, v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    move v14, v1

    nop

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_b7

    nop

    nop

    :goto_6d
    goto/16 :goto_95

    nop

    :goto_6e
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6f
    if-nez v1, :cond_b

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    :cond_b
    goto/32 :goto_b8

    nop

    nop

    :goto_70
    iget v5, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_71
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

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

    nop

    :goto_72
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_73
    float-to-double v2, v14

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_74
    sub-float/2addr v5, v6

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    add-float/2addr v3, v4

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_77
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mValuesBuff:[F

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_78
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_79
    invoke-virtual {v8, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->setVisibility(I)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    iget v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotTarget:I

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTop()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

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

    :goto_7d
    move/from16 v10, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    mul-float/2addr v4, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_80
    move-object/from16 v3, p1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_81
    const/4 v3, 0x1

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

    :goto_82
    if-nez v1, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    :cond_c
    goto/32 :goto_f3

    nop

    nop

    nop

    :goto_83
    int-to-float v4, v4

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-interface {v6, v5}, Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;->getInterpolation(F)F

    move-result v5

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    move v6, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    :goto_87
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_88
    if-nez v2, :cond_d

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    :cond_d
    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_89
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_8a
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getParent()Landroidx/constraintlayout/core/motion/MotionWidget;

    move-result-object v1

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

    :goto_8b
    add-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    :goto_8c
    float-to-double v3, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {v8, v6, v7, v11, v5}, Landroidx/constraintlayout/core/motion/MotionWidget;->layout(IIII)V

    :goto_8e
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v3}, Landroidx/constraintlayout/core/motion/MotionWidget;->getLeft()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_90
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v2, v8, v14}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setProperty(Landroidx/constraintlayout/core/motion/utils/TypedValues;F)V

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    if-nez v1, :cond_e

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    :cond_e
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_93
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_94
    invoke-virtual {v8, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->setVisibility(I)V

    :goto_95
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_96
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_97
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_98
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_99
    iget-boolean v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mNoMovement:Z

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

    :goto_9a
    invoke-virtual {v4}, Landroidx/constraintlayout/core/motion/MotionWidget;->getRight()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_9b
    if-nez v1, :cond_f

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

    :cond_f
    goto/32 :goto_10e

    nop

    nop

    nop

    :goto_9c
    add-float/2addr v6, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9d
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_9e
    mul-float/2addr v5, v14

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_9f
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTop()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_a0
    const/4 v12, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    :goto_a1
    add-float v1, v6, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_a2
    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_a3
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    :goto_a4
    iget v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotTarget:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    const/4 v15, 0x0

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

    :goto_a6
    goto/16 :goto_6c

    nop

    :goto_a7
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_a8
    if-ne v2, v12, :cond_10

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_a9
    goto/16 :goto_109

    nop

    nop

    :goto_aa
    goto/32 :goto_108

    nop

    nop

    nop

    nop

    :goto_ab
    add-float/2addr v5, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_ac
    return v15

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_ae
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    aget-wide v4, v2, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_b0
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_b1
    instance-of v1, v12, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    move v3, v1

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    float-to-int v7, v7

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

    :goto_b4
    cmpg-float v1, v14, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    iget v5, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_b6
    if-lt v1, v3, :cond_11

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

    :cond_11
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_b8
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_b9
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_ba
    add-float/2addr v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    check-cast v12, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_bc
    iput-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    goto/32 :goto_2e

    nop

    nop

    :goto_be
    add-float v6, v1, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :goto_bf
    if-lez v1, :cond_12

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    mul-float v6, v5, v2

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

    :goto_c1
    float-to-double v2, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c2
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_c4
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c5
    float-to-int v11, v11

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_c6
    if-ne v1, v2, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_c7
    if-nez v1, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    :cond_14
    goto/32 :goto_e2

    nop

    nop

    :goto_c8
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :goto_c9
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    if-eqz v1, :cond_15

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    div-float/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    :goto_cc
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;->setPathRotate(Landroidx/constraintlayout/core/motion/MotionWidget;FDD)V

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getLeft()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    :goto_cf
    int-to-float v2, v2

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

    :goto_d0
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_d2
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    const/4 v1, 0x1

    nop

    nop

    :goto_d4
    goto/32 :goto_76

    nop

    nop

    :goto_d5
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    :goto_d6
    float-to-double v2, v14

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    :goto_d7
    float-to-int v6, v6

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

    :goto_d8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    move v2, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_da
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getBottom()I

    move-result v2

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_db
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    :goto_dc
    move v6, v11

    nop

    :goto_dd
    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :goto_de
    if-ne v1, v12, :cond_16

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_16
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_df
    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_e0
    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

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

    nop

    :goto_e1
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_e2
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_e3
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->findViewById(I)Landroidx/constraintlayout/core/motion/MotionWidget;

    move-result-object v2

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_e4
    goto :goto_dd

    nop

    nop

    nop

    :goto_e5
    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    div-float/2addr v3, v2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e7
    iget v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionPhase:F

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_e8
    goto/16 :goto_8e

    nop

    nop

    nop

    nop

    :goto_e9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    aget-object v1, v1, v15

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_ec
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getLeft()I

    move-result v2

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_ed
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_ee
    move v5, v6

    nop

    nop

    :goto_ef
    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_f0
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    mul-float/2addr v4, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_f2
    invoke-virtual {v8, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->setVisibility(I)V

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_f3
    move-object v1, v12

    nop

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

    :goto_f4
    iget v6, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    :goto_f7
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    move-object/from16 v2, p1

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_f9
    if-eqz v6, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_17
    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    array-length v3, v2

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_fb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

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

    :goto_fc
    check-cast v3, Landroidx/constraintlayout/core/motion/CustomVariable;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    sub-float v4, v1, v4

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_fe
    add-int v0, v0, v1

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

    :goto_ff
    aget-object v4, v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    :goto_100
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_101
    if-lez v0, :cond_18

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_19

    nop

    :goto_102
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    :goto_103
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_104
    cmpl-double v6, v6, v14

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    :goto_105
    invoke-virtual {v2, v14, v8}, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->conditionallyFire(FLandroidx/constraintlayout/core/motion/MotionWidget;)V

    goto/32 :goto_4a

    nop

    nop

    :goto_106
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_107
    const/high16 v13, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_108
    invoke-virtual {v12, v8, v14}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setProperty(Landroidx/constraintlayout/core/motion/MotionWidget;F)V

    :goto_109
    goto/32 :goto_112

    nop

    nop

    nop

    :goto_10a
    sub-int/2addr v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_10b
    const/high16 v2, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    invoke-direct {v0, v10, v1}, Landroidx/constraintlayout/core/motion/Motion;->14b68b8c5e31b8f94c3ffcf6fb68e0e1m(F[F)F

    move-result v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_10d
    move-object/from16 v8, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    :goto_10e
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTop()I

    move-result v1

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

    nop

    nop

    :goto_10f
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_110
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionInterpolator:Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_111
    add-float/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    :goto_112
    goto/16 :goto_3c

    nop

    nop

    :goto_113
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_114
    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    goto/32 :goto_c

    nop

    nop

    :goto_115
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

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

    :goto_116
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_117
    add-int/lit8 v5, v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :goto_118
    float-to-double v3, v14

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_119
    float-to-int v5, v5

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    div-float/2addr v5, v2

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    if-gtz v6, :cond_19

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_11d
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11e
    float-to-double v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_11f
    mul-float/2addr v3, v14

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop
.end method

.method name()Ljava/lang/String;
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

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/MotionWidget;->getName()Ljava/lang/String;

    move-result-object v0

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

.method positionKeyframe(Landroidx/constraintlayout/core/motion/MotionWidget;Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;FF[Ljava/lang/String;[F)V
    .locals 11

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v10, v2

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
    iget v2, v10, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    iput v2, v10, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

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

    :goto_4
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    move-object v2, p2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_6
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

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

    :goto_7
    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/utils/FloatRect;-><init>()V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_8
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_9
    iput v2, v1, Landroidx/constraintlayout/core/motion/utils/FloatRect;->right:F

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_a
    new-instance v2, Landroidx/constraintlayout/core/motion/utils/FloatRect;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_b
    iput v2, v1, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

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

    :goto_e
    move v6, p3

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_f
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

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

    :goto_11
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_12
    iput v2, v10, Landroidx/constraintlayout/core/motion/utils/FloatRect;->right:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_13
    iput v2, v10, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

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

    :goto_14
    move v7, p4

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_15
    move-object v0, p0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_16
    add-float/2addr v2, v3

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

    :goto_17
    iput v2, v1, Landroidx/constraintlayout/core/motion/utils/FloatRect;->bottom:F

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
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

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

    :goto_19
    invoke-direct {v2}, Landroidx/constraintlayout/core/motion/utils/FloatRect;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    :goto_1b
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

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

    :goto_1c
    move-object v3, p1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual/range {v2 .. v9}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->positionAttributes(Landroidx/constraintlayout/core/motion/MotionWidget;Landroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF[Ljava/lang/String;[F)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1e
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

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

    :goto_1f
    iput v2, v10, Landroidx/constraintlayout/core/motion/utils/FloatRect;->bottom:F

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_20
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_21
    iput v2, v1, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_22
    add-float/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_24
    move-object/from16 v8, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_27
    move-object v4, v1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_26

    nop

    :goto_29
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2a
    const v0, 0x15

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

    :goto_2b
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2c
    const v1, 0x19

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2d
    iget v2, v1, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2f
    iget v2, v10, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_32
    add-float/2addr v2, v3

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

    :goto_33
    move-object v5, v10

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

    :goto_34
    goto/32 :goto_29

    nop

    :goto_35
    add-float/2addr v2, v3

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

    :goto_36
    iget v2, v1, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_37
    new-instance v1, Landroidx/constraintlayout/core/motion/utils/FloatRect;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    move-object/from16 v9, p6

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
.end method

.method rotate(Landroidx/constraintlayout/core/motion/utils/Rect;Landroidx/constraintlayout/core/motion/utils/Rect;III)V
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/2addr v2, v3

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

    :goto_1
    add-int/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    move-result v2

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_3
    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

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

    :goto_4
    sub-int v2, p5, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    add-int/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_7
    div-int/lit8 v2, v2, 0x2

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_8
    div-int/lit8 v2, v2, 0x2

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    :goto_a
    add-int/2addr v2, v3

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    div-int/lit8 v2, v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_c
    add-int/2addr v1, v2

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

    :goto_d
    const v0, 0x13

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_e
    sub-int v2, v1, v2

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_f
    add-int/2addr v1, v2

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    add-int/2addr v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_12
    iget v2, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_13
    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_14
    sub-int v2, v0, v2

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

    :goto_15
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

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

    :goto_16
    div-int/lit8 v3, v0, 0x2

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_18
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_1a
    add-int/2addr v2, v3

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

    :goto_1b
    div-int/lit8 v2, v2, 0x2

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_1c
    const v1, 0x9

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :goto_1e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_20
    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_21
    iget v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-int/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_23
    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_24
    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    div-int/lit8 v2, v2, 0x2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_26
    add-int/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    add-int/2addr v0, v1

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

    :goto_29
    add-int/2addr v2, v0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2a
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2b
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2e
    packed-switch p3, :pswitch_data_0

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_30
    iget v2, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_31
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

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

    :goto_32
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    move-result v3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_33
    iget v2, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    move-result v3

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_35
    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

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

    :goto_36
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_38
    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

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

    :goto_39
    add-int/2addr v0, v1

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_3b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3c
    sub-int v2, v0, v2

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_6b

    nop

    :pswitch_0
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    add-int/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3f
    add-int/2addr v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_40
    iget v0, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_44
    goto/16 :goto_6b

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    move-result v3

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_46
    iget v2, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_47
    sub-int v2, p4, v2

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

    :goto_48
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    move-result v3

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4a
    add-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_4c
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_4d
    iget v0, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget v0, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_4f
    div-int/lit8 v2, v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_50
    iget v3, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

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

    nop

    :goto_51
    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_52
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_53
    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

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

    nop

    :goto_54
    iget v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

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

    :goto_55
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_56
    div-int/lit8 v2, v2, 0x2

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_57
    iget v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    move-result v2

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

    :goto_59
    goto/16 :goto_6b

    nop

    nop

    :pswitch_3
    goto/32 :goto_4e

    nop

    nop

    :goto_5a
    iget v0, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_5b
    div-int/lit8 v2, v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_5c
    iget v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    move-result v3

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

    :goto_5e
    sub-int v2, p5, v2

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

    :goto_5f
    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

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

    :goto_60
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_61
    sub-int v2, p4, v2

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

    :goto_62
    iget v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_63
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    move-result v2

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

    :goto_64
    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

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

    nop

    :goto_65
    sub-int/2addr v2, v3

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_66
    add-int/2addr v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    move-result v3

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

    :goto_68
    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_6a
    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_6c
    iput v2, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

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

    :goto_6d
    add-int/2addr v2, v3

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
.end method

.method setBothStates(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .locals 5

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getX()I

    move-result v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getY()I

    move-result v2

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_7
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_b
    int-to-float v1, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mNoMovement:Z

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1d

    nop

    nop

    :goto_f
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    int-to-float v2, v2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    move-result v4

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

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

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_17
    const v1, 0x16

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_18
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

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

    :goto_19
    int-to-float v3, v3

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

    :goto_1a
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    goto/32 :goto_15

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    move-result v4

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1c
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1d
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1e
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getX()I

    move-result v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getY()I

    move-result v2

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

    :goto_22
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

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

    :goto_23
    int-to-float v2, v2

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

    :goto_24
    int-to-float v4, v4

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    int-to-float v4, v4

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_26
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_27
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop
.end method

.method public setDrawPath(I)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput p1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

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
.end method

.method public setEnd(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .locals 5

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2
    int-to-float v2, v2

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

    :goto_3
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    move-result v4

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionPaths;->applyParameters(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

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

    :goto_8
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/motion/Motion;->32e01c2e41fbe060e9f140225cb36234m(Landroidx/constraintlayout/core/motion/MotionPaths;)V

    goto/32 :goto_17

    nop

    nop

    :goto_9
    const v0, 0x6

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

    :goto_a
    const/high16 v1, 0x3f800000    # 1.0f

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

    :goto_b
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    move-result v3

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

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

    :goto_e
    goto/32 :goto_15

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getLeft()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_12
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

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

    :goto_13
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    int-to-float v3, v3

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
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

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
    int-to-float v4, v4

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTop()I

    move-result v2

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

    :goto_1a
    rem-int v0, v0, v1

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

    :goto_1b
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_1e
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method

.method public setPathMotionArc(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mPathMotionArc:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public setStart(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .locals 5

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getY()I

    move-result v2

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

    :goto_4
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    move-result v3

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

    :goto_5
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    move-result v4

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

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
    goto/32 :goto_9

    nop

    :goto_8
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1a

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_c
    const/4 v1, 0x0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_d
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    int-to-float v1, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    int-to-float v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getX()I

    move-result v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_15
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_16
    goto/32 :goto_a

    nop

    :goto_17
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionPaths;->applyParameters(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

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
    return-void

    nop

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0x7

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public setStartState(Landroidx/constraintlayout/core/motion/utils/ViewState;Landroidx/constraintlayout/core/motion/MotionWidget;III)V
    .locals 6

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_0
    iget v2, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

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

    :goto_1
    sub-int v3, v2, v3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int/2addr v3, v4

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    move-result v4

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Rect;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_5
    iget v3, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v2, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->right:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_9
    iput v3, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

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

    :goto_a
    div-int/lit8 v3, v3, 0x2

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

    :goto_b
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_e

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput v3, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int/2addr v3, v4

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_11
    invoke-virtual {v1, v2, v3, v4, v5}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    goto/32 :goto_10

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    iput v3, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_14
    iget v2, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->right:I

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_15
    iget v3, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

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

    :goto_16
    iget v3, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_17
    iput v3, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_18
    add-int/2addr v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_19
    iput v3, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1a
    div-int/lit8 v3, v3, 0x2

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1b
    iget v3, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1f

    nop

    :goto_1d
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->width()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_49

    nop

    nop

    :goto_1f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_21
    iget v3, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->bottom:I

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_22
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_23
    iget v3, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->bottom:I

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_25
    iput v3, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput v3, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

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

    :goto_27
    sub-int v3, p5, v3

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

    nop

    :goto_28
    add-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_29
    sub-int v3, v1, v3

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2a
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_2b
    add-int/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2c
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->left:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->width()I

    move-result v3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2e
    add-int/2addr v3, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    div-int/lit8 v3, v3, 0x2

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

    :goto_30
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->left:I

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

    :goto_31
    add-int/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_32
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_33
    div-int/lit8 v3, v3, 0x2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_34
    int-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_35
    iget v2, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->top:I

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iput v3, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_37
    sub-int v3, p4, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_38
    iget v2, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->top:I

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const v0, 0x20

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->height()I

    move-result v3

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    add-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3c
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->width()I

    move-result v4

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_3d
    add-int/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3e
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_3f
    add-int/2addr v2, v3

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_40
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->height()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_41
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/Rect;-><init>()V

    packed-switch p3, :pswitch_data_0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_42
    int-to-float v5, v5

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

    :goto_43
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->width()I

    move-result v4

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

    :goto_44
    int-to-float v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_45
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v1, v0, p2, p3, v2}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/core/motion/utils/Rect;Landroidx/constraintlayout/core/motion/MotionWidget;IF)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_48
    return-void

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :goto_49
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->height()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->height()I

    move-result v4

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4c
    add-int/2addr v3, v4

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

    :goto_4d
    iget v2, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->rotation:F

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

    :goto_4e
    iget v3, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

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
.end method

.method public setTransformPivotTarget(I)V
    .locals 1

    goto/32 :goto_3

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
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotTarget:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public setValue(IF)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public setValue(II)Z
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    :sswitch_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    nop

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        0x1fd -> :sswitch_0
        0x2c0 -> :sswitch_1
    .end sparse-switch

    :goto_3
    return v0

    nop

    :sswitch_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    sparse-switch p1, :sswitch_data_0

    goto/32 :goto_0

    nop

    nop

    :goto_5
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/Motion;->setPathMotionArc(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public setValue(ILjava/lang/String;)Z
    .locals 4

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v1, p2, v0}, Landroidx/constraintlayout/core/motion/Motion;->getInterpolator(ILjava/lang/String;I)Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

    move-result-object v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    const/4 v1, -0x1

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

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionInterpolator:Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_f
    if-eq v1, p1, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    return v0

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

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

    :goto_13
    const/16 v1, 0x2c1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_14
    const v0, 0x7

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

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_16
    const-string v3, "TYPE_INTERPOLATOR  "

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_17
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_18
    const v1, 0x8

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public setValue(IZ)Z
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

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public setView(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .locals 0

    goto/32 :goto_1

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
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

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

.method public setup(IIFJ)V
    .locals 29

    goto/32 :goto_1d0

    nop

    nop

    :goto_0
    if-lt v8, v13, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17f

    nop

    :cond_0
    goto/32 :goto_2f5

    nop

    nop

    nop

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    nop

    nop

    nop

    nop

    goto/32 :goto_187

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1e3

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object/from16 v16, v12

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v14, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_1ca

    nop

    :goto_7
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_218

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    nop

    nop

    nop

    goto/32 :goto_2bd

    nop

    nop

    :goto_a
    move-object/from16 v28, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_2ef

    nop

    nop

    nop

    :goto_b
    move-object/from16 v28, v12

    nop

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

    :goto_c
    if-nez v8, :cond_2

    nop

    goto/32 :goto_251

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_151

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object/from16 v5, v23

    nop

    goto/32 :goto_2a6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    nop

    goto/32 :goto_10e

    nop

    nop

    :goto_f
    sget v10, Landroidx/constraintlayout/core/motion/key/MotionKey;->UNSET:I

    nop

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v1, [[D

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v10, Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_243

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    nop

    goto/32 :goto_1ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    array-length v14, v12

    nop

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    nop

    nop

    :goto_14
    aget v20, v15, v11

    nop

    goto/32 :goto_203

    nop

    nop

    nop

    :goto_15
    move-object/from16 v8, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move-object/from16 v26, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    aput v9, v12, v10

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_18
    const-string v11, ","

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2fc

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->addTimeValues(Ljava/util/HashMap;)V

    :goto_1a
    goto/32 :goto_1a3

    nop

    nop

    :goto_1b
    invoke-static {v5, v7, v8}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getArc([I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_1a0

    nop

    nop

    :goto_1c
    move-object/from16 v10, v26

    nop

    nop

    nop

    nop

    goto/32 :goto_2e5

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_162

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 v4, v4, 0x1

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

    :goto_20
    goto/16 :goto_316

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_140

    nop

    nop

    nop

    nop

    :goto_22
    new-instance v3, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_192

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v4, 0x0

    nop

    :goto_24
    goto/32 :goto_1eb

    nop

    nop

    nop

    nop

    :goto_25
    move/from16 v24, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v8, v1, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->makeSpline(Ljava/lang/String;J)Landroidx/constraintlayout/core/motion/utils/SplineSet;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_29f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-nez v13, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_304

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_303

    nop

    nop

    nop

    :goto_29
    aget-object v9, v3, v15

    nop

    goto/32 :goto_12f

    nop

    nop

    :goto_2a
    goto/16 :goto_1e4

    nop

    :goto_2b
    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-eqz v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1dc

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_312

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_30
    if-lt v8, v14, :cond_5

    nop

    nop

    goto/32 :goto_2f8

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_31
    move-object/from16 v23, v5

    nop

    nop

    goto/32 :goto_2ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

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

    :goto_33
    new-array v14, v9, [D

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_34
    new-instance v10, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_282

    nop

    nop

    :goto_35
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_2cf

    nop

    nop

    :goto_37
    aget-object v11, v3, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b8

    nop

    nop

    nop

    :goto_38
    aput-object v9, v3, v10

    nop

    nop

    goto/32 :goto_1ae

    nop

    nop

    nop

    :goto_39
    iget v10, v12, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCurveFit:I

    nop

    nop

    nop

    goto/32 :goto_2eb

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

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

    :goto_3b
    iget-object v8, v3, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

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

    :goto_3c
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    nop

    nop

    nop

    goto/32 :goto_1d5

    nop

    nop

    :goto_3d
    array-length v4, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_3e
    iget-object v11, v11, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    nop

    goto/32 :goto_1f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-nez v18, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    :cond_6
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_40
    const/4 v10, 0x1

    nop

    goto/32 :goto_1f6

    nop

    nop

    :goto_41
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    move-object/from16 v4, v21

    nop

    nop

    nop

    nop

    goto/32 :goto_28d

    nop

    nop

    :goto_44
    const/4 v8, 0x2

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_1e4

    nop

    :goto_46
    goto/32 :goto_131

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_2d8

    nop

    nop

    nop

    :goto_48
    check-cast v10, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    nop

    goto/32 :goto_1e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2c6

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v3, v8, v9}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    goto/32 :goto_196

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    nop

    goto/32 :goto_1f4

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    aput-wide v11, v10, v14

    nop

    goto/32 :goto_29c

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v9, v5, v10, v11}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCustomData(Ljava/lang/String;[DI)I

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    move-object/from16 v28, v12

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

    :goto_4f
    add-int/2addr v3, v4

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_50
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_212

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    const/4 v10, 0x0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_52
    aput-object v12, v10, v11

    nop

    goto/32 :goto_2d1

    nop

    nop

    nop

    nop

    :goto_53
    check-cast v11, [Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2d6

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_1a6

    nop

    nop

    :goto_55
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    :goto_56
    if-nez v14, :cond_7

    nop

    nop

    nop

    goto/32 :goto_21f

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_148

    nop

    nop

    nop

    nop

    :goto_57
    array-length v9, v3

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_58
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_59
    invoke-static {v12, v9, v8}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v12

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_5a
    check-cast v7, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_21d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const/4 v11, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_5d
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/core/motion/Motion;->12b4b38194e403c7f4690dce3abaa7f8m()F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_1c7

    nop

    nop

    nop

    :goto_5f
    aput-object v10, v3, v9

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

    :goto_60
    move-object/from16 v19, v3

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_61
    move/from16 v4, v22

    nop

    nop

    nop

    goto/32 :goto_2f7

    nop

    nop

    nop

    nop

    nop

    :goto_62
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_63
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    nop

    nop

    :goto_64
    goto/32 :goto_114

    nop

    nop

    nop

    :goto_65
    invoke-direct {v0, v10}, Landroidx/constraintlayout/core/motion/Motion;->ab35181830b64799f175d1c6b89171e6m(Landroidx/constraintlayout/core/motion/MotionPaths;)V

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_66
    goto/16 :goto_138

    nop

    nop

    nop

    :goto_67
    goto/32 :goto_21b

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    instance-of v12, v11, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    nop

    nop

    goto/32 :goto_1fb

    nop

    nop

    :goto_6a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    nop

    goto/32 :goto_1fa

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    goto/16 :goto_26a

    nop

    nop

    :goto_6c
    goto/32 :goto_269

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iput-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d9

    nop

    nop

    nop

    nop

    :goto_6e
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    goto/32 :goto_2de

    nop

    nop

    nop

    :goto_6f
    instance-of v8, v7, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;

    nop

    nop

    goto/32 :goto_281

    nop

    nop

    :goto_70
    if-eqz v8, :cond_8

    nop

    goto/32 :goto_259

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_71
    float-to-double v11, v11

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    :goto_72
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ab

    nop

    nop

    nop

    nop

    :goto_73
    move-object/from16 v4, v21

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_74
    aput-wide v11, v10, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    :goto_75
    move-object/from16 v18, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a3

    nop

    nop

    nop

    nop

    :goto_76
    goto/16 :goto_2a2

    nop

    nop

    nop

    :goto_77
    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    check-cast v8, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :goto_79
    new-instance v15, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    nop

    nop

    nop

    nop

    goto/32 :goto_191

    nop

    nop

    nop

    nop

    :goto_7a
    new-instance v14, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_7b
    move/from16 v26, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23e

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iput-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

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

    :goto_7d
    array-length v8, v3

    nop

    nop

    goto/32 :goto_190

    nop

    nop

    :goto_7e
    const/4 v13, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v10

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    goto/32 :goto_197

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_139

    nop

    nop

    nop

    :goto_82
    invoke-direct {v10}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;-><init>()V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_83
    move-object/from16 v20, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_248

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    if-nez v10, :cond_9

    nop

    goto/32 :goto_b9

    nop

    nop

    :cond_9
    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    array-length v9, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    :goto_86
    new-array v3, v3, [Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_87
    check-cast v8, [[D

    nop

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

    :goto_88
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_208

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    nop

    nop

    nop

    nop

    goto/32 :goto_311

    nop

    nop

    :goto_8a
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_285

    nop

    nop

    :goto_8b
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    check-cast v8, Landroidx/constraintlayout/core/motion/CustomVariable;

    nop

    nop

    nop

    goto/32 :goto_1ad

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    move-object v10, v15

    nop

    nop

    goto/32 :goto_30e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    goto/16 :goto_ee

    nop

    :goto_8f
    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    :goto_90
    add-int/lit8 v11, v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_28b

    nop

    nop

    nop

    nop

    nop

    :goto_91
    new-instance v10, Ljava/util/HashSet;

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    :goto_92
    move-object v8, v4

    nop

    nop

    nop

    goto/32 :goto_29e

    nop

    nop

    nop

    nop

    nop

    :goto_93
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_1fd

    nop

    nop

    nop

    nop

    nop

    :goto_94
    iget-object v14, v14, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b4

    nop

    nop

    :goto_95
    iget-object v12, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_313

    nop

    nop

    nop

    :goto_96
    goto/16 :goto_158

    nop

    nop

    nop

    nop

    :goto_97
    goto/32 :goto_157

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    aget-object v10, v3, v9

    nop

    nop

    nop

    goto/32 :goto_284

    nop

    nop

    nop

    nop

    nop

    :goto_99
    array-length v13, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    :goto_9a
    check-cast v7, Landroidx/constraintlayout/core/motion/key/MotionKey;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_9b
    aget-object v13, v13, v14

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9c
    move/from16 v27, v11

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_9d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    goto/32 :goto_1f5

    nop

    nop

    nop

    :goto_9e
    float-to-double v10, v10

    nop

    goto/32 :goto_186

    nop

    nop

    nop

    nop

    :goto_9f
    aget-object v15, v3, v15

    nop

    nop

    nop

    goto/32 :goto_2f6

    nop

    nop

    nop

    :goto_a0
    array-length v14, v3

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

    :goto_a1
    iget v10, v10, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_a2
    new-array v5, v4, [I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e6

    nop

    nop

    :goto_a3
    goto/16 :goto_1e4

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    goto/32 :goto_314

    nop

    nop

    :goto_a5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a6
    if-nez v10, :cond_a

    nop

    goto/32 :goto_271

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_270

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    aput-wide v9, v14, v7

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_a8
    move-object v8, v9

    nop

    nop

    nop

    goto/32 :goto_2e0

    nop

    nop

    :goto_a9
    new-instance v15, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_238

    nop

    nop

    :goto_aa
    const/16 v9, 0x12

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

    :goto_ab
    if-lez v0, :cond_b

    nop

    nop

    goto/32 :goto_1c4

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_1c3

    nop

    :goto_ac
    goto/16 :goto_13d

    nop

    nop

    :goto_ad
    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    const/4 v8, 0x1

    nop

    nop

    goto/32 :goto_2ff

    nop

    nop

    :goto_af
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    :goto_b0
    float-to-double v14, v4

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    :goto_b1
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_194

    nop

    nop

    nop

    :goto_b2
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c5

    nop

    nop

    :goto_b3
    move-object/from16 v28, v12

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    goto/32 :goto_118

    nop

    nop

    :goto_b5
    invoke-virtual {v11, v4}, Landroidx/constraintlayout/core/motion/key/MotionKey;->getAttributeNames(Ljava/util/HashSet;)V

    goto/32 :goto_29a

    nop

    nop

    :goto_b6
    if-ne v10, v13, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_2ec

    nop

    nop

    :cond_c
    goto/32 :goto_39

    nop

    nop

    :goto_b7
    new-array v11, v11, [I

    nop

    goto/32 :goto_1b2

    nop

    nop

    nop

    nop

    :goto_b8
    goto/16 :goto_256

    nop

    :goto_b9
    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-static {v5, v2, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v5

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    const/4 v7, 0x0

    nop

    goto/32 :goto_299

    nop

    nop

    :goto_bc
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeInterpolatorCount:[I

    nop

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    :goto_be
    aget-object v5, v15, v5

    nop

    goto/32 :goto_2f0

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    iput-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    goto/32 :goto_2da

    nop

    nop

    nop

    :goto_c0
    iget-object v12, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_c1
    iget-object v3, v15, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_c2
    add-int v20, v20, v22

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    const/4 v10, 0x1

    nop

    nop

    nop

    goto/32 :goto_223

    nop

    nop

    nop

    :goto_c4
    new-array v12, v11, [I

    nop

    nop

    goto/32 :goto_214

    nop

    nop

    :goto_c5
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_200

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    goto/16 :goto_1b0

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    aget-object v14, v3, v8

    nop

    nop

    nop

    goto/32 :goto_2e2

    nop

    nop

    nop

    :goto_c9
    move-object/from16 v3, v19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    goto/16 :goto_2b6

    nop

    nop

    nop

    :goto_cb
    goto/32 :goto_1d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    if-nez v9, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_176

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_305

    nop

    nop

    nop

    nop

    :goto_cd
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

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

    nop

    :goto_ce
    move-object/from16 v7, v25

    nop

    nop

    goto/32 :goto_2ed

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    invoke-virtual {v14, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    :goto_d0
    move/from16 v9, v24

    nop

    goto/32 :goto_2c5

    nop

    nop

    nop

    nop

    :goto_d1
    move-object/from16 v18, v8

    nop

    nop

    nop

    goto/32 :goto_1c9

    nop

    nop

    nop

    nop

    :goto_d2
    move-object/from16 v23, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_233

    nop

    nop

    nop

    nop

    :goto_d3
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    nop

    goto/32 :goto_207

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    iput-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_295

    nop

    nop

    nop

    nop

    :goto_d5
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v13

    nop

    goto/32 :goto_29d

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    new-instance v15, Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_22d

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    move-object/from16 v12, v28

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    :goto_d8
    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_d9
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_1f9

    nop

    nop

    :goto_da
    if-eqz v10, :cond_e

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

    :cond_e
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_db
    aput v4, v9, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_262

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    iget-object v3, v15, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_1d6

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    aget-object v10, v8, v9

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_de
    invoke-virtual {v11, v6}, Landroidx/constraintlayout/core/motion/key/MotionKey;->getAttributeNames(Ljava/util/HashSet;)V

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_df
    const/4 v9, 0x0

    nop

    nop

    :goto_e0
    goto/32 :goto_253

    nop

    nop

    :goto_e1
    iget v11, v12, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    nop

    nop

    nop

    nop

    goto/32 :goto_254

    nop

    nop

    nop

    :goto_e2
    iget-object v14, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1bd

    nop

    nop

    nop

    :goto_e3
    float-to-double v9, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_e4
    aput v20, v15, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24d

    nop

    nop

    :goto_e5
    invoke-static {v14, v15}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->makeCustomSplineSet(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;)Landroidx/constraintlayout/core/motion/utils/SplineSet;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e6
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_e7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    goto/32 :goto_234

    nop

    nop

    nop

    nop

    :goto_e8
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    nop

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

    :goto_e9
    invoke-virtual {v14, v15, v4}, Landroidx/constraintlayout/core/motion/MotionPaths;->fillStandard([D[I)V

    goto/32 :goto_2b7

    nop

    nop

    nop

    nop

    :goto_ea
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    nop

    nop

    goto/32 :goto_30c

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    nop

    nop

    goto/32 :goto_2a0

    nop

    nop

    :goto_ec
    aget-object v10, v3, v9

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_ed
    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    :goto_ee
    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_1d3

    nop

    nop

    nop

    :goto_f0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    goto/32 :goto_249

    nop

    nop

    nop

    nop

    :goto_f1
    const/4 v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_f2
    check-cast v10, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    nop

    goto/32 :goto_2c0

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    goto/16 :goto_256

    nop

    nop

    :goto_f4
    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    invoke-direct/range {v13 .. v18}, Landroidx/constraintlayout/core/motion/MotionPaths;-><init>(IILandroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_f6
    if-nez v9, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_201

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    const/4 v15, 0x0

    nop

    :goto_f8
    goto/32 :goto_206

    nop

    nop

    :goto_f9
    const/4 v8, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a2

    nop

    nop

    nop

    nop

    :goto_fa
    if-nez v3, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_1a4

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_28f

    nop

    nop

    :goto_fb
    if-nez v7, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_2bc

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    iget v10, v12, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCurveFit:I

    nop

    nop

    nop

    nop

    goto/32 :goto_189

    nop

    nop

    nop

    nop

    :goto_fd
    move/from16 v22, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_fe
    if-nez v13, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21a

    nop

    nop

    :cond_12
    goto/32 :goto_145

    nop

    nop

    nop

    :goto_ff
    check-cast v4, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1cb

    nop

    nop

    nop

    nop

    :goto_100
    check-cast v4, Landroidx/constraintlayout/core/motion/key/MotionKey;

    nop

    nop

    nop

    goto/32 :goto_2be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_101
    invoke-virtual {v8}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->variesByPath()Z

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_2c7

    nop

    nop

    nop

    :goto_102
    instance-of v10, v11, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    nop

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_103
    goto/16 :goto_26f

    nop

    :goto_104
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_105
    move-object v8, v10

    nop

    nop

    nop

    nop

    nop

    :goto_106
    goto/32 :goto_2ab

    nop

    nop

    nop

    nop

    :goto_107
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_25d

    nop

    nop

    nop

    nop

    nop

    :goto_108
    array-length v2, v3

    nop

    goto/32 :goto_306

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_109
    add-int/lit8 v13, v13, 0x1

    nop

    nop

    goto/32 :goto_24b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    goto/16 :goto_27

    nop

    nop

    :goto_10b
    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_2d2

    nop

    nop

    nop

    nop

    :goto_10d
    aget-object v12, v3, v11

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    const/4 v5, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    const/4 v15, 0x1

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    const/4 v9, 0x0

    nop

    goto/32 :goto_202

    nop

    nop

    nop

    :goto_111
    move-object/from16 v4, v21

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_112
    invoke-virtual {v3, v8}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setType(Ljava/lang/String;)V

    goto/32 :goto_2d9

    nop

    nop

    nop

    nop

    nop

    :goto_113
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    nop

    goto/32 :goto_315

    nop

    nop

    nop

    nop

    nop

    :goto_114
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :goto_115
    iput v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    nop

    nop

    nop

    :goto_116
    goto/32 :goto_265

    nop

    nop

    :goto_117
    const-string v14, " ["

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_118
    add-int/lit8 v15, v15, 0x1

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_119
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_11a
    iput-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_11b
    if-nez v5, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_211

    nop

    nop

    :cond_13
    goto/32 :goto_2a1

    nop

    nop

    nop

    :goto_11c
    const/high16 v4, 0x7fc00000    # Float.NaN

    nop

    goto/32 :goto_227

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    iput-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_2fd

    nop

    nop

    nop

    nop

    :goto_11e
    move-object/from16 v23, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1aa

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_120
    iput-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyTriggers:[Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    nop

    :goto_121
    goto/32 :goto_7f

    nop

    nop

    :goto_122
    array-length v13, v12

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

    :goto_123
    invoke-virtual {v10, v4, v3}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->append(ILandroidx/constraintlayout/core/motion/CustomVariable;)V

    goto/32 :goto_2f1

    nop

    nop

    nop

    nop

    :goto_124
    const/4 v11, 0x0

    nop

    nop

    :goto_125
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_126
    array-length v7, v5

    nop

    goto/32 :goto_215

    nop

    nop

    nop

    nop

    nop

    :goto_127
    aput v8, v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_128
    array-length v9, v3

    nop

    nop

    goto/32 :goto_1dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_129
    check-cast v9, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    :goto_12a
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    instance-of v10, v11, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    aput v10, v12, v11

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

    :goto_12d
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_12e
    move-object/from16 v26, v10

    nop

    nop

    nop

    goto/32 :goto_198

    nop

    nop

    nop

    nop

    :goto_12f
    aget-object v10, v8, v7

    nop

    nop

    nop

    goto/32 :goto_2bf

    nop

    nop

    nop

    nop

    nop

    :goto_130
    new-instance v14, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_131
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_217

    nop

    nop

    nop

    :goto_132
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_2d5

    nop

    nop

    :goto_133
    if-lt v4, v14, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c9

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_1b5

    nop

    nop

    nop

    :goto_134
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    nop

    nop

    nop

    goto/32 :goto_2a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_135
    add-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    :goto_136
    if-nez v4, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_21c

    nop

    :cond_15
    goto/32 :goto_20e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_137
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    nop

    :goto_138
    goto/32 :goto_17d

    nop

    nop

    nop

    :goto_139
    sget-object v15, Landroidx/constraintlayout/core/motion/MotionPaths;->names:[Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    goto/16 :goto_256

    nop

    :goto_13b
    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    nop

    :goto_13d
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    array-length v14, v3

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    :goto_13f
    new-instance v5, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2dc

    nop

    nop

    nop

    nop

    nop

    :goto_140
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30b

    nop

    nop

    nop

    nop

    nop

    :goto_141
    aput-wide v14, v2, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_142
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_143
    new-instance v3, Ljava/util/HashSet;

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    :goto_144
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

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

    :goto_145
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    :goto_146
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    nop

    :goto_147
    if-nez v9, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18b

    nop

    :cond_16
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_148
    iget-object v14, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c2

    nop

    nop

    nop

    :goto_149
    instance-of v10, v11, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    nop

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    :goto_14a
    invoke-virtual {v10, v12}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_14b
    if-lt v13, v14, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :cond_17
    goto/32 :goto_165

    nop

    nop

    :goto_14c
    goto/16 :goto_1a9

    nop

    nop

    nop

    :goto_14d
    goto/32 :goto_88

    nop

    nop

    :goto_14e
    move-object/from16 v19, v3

    nop

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    :goto_14f
    if-lt v13, v14, :cond_18

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    :cond_18
    goto/32 :goto_272

    nop

    nop

    nop

    nop

    :goto_150
    invoke-virtual {v3, v14}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setType(Ljava/lang/String;)V

    goto/32 :goto_50

    nop

    nop

    :goto_151
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a7

    nop

    nop

    nop

    :goto_152
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_153
    invoke-virtual {v9, v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setup(I)V

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_154
    const/16 v9, 0x64

    nop

    nop

    nop

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    nop

    :goto_155
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_156
    move-object/from16 v20, v3

    nop

    goto/32 :goto_2d4

    nop

    nop

    nop

    nop

    :goto_157
    const/4 v11, 0x0

    nop

    nop

    nop

    :goto_158
    goto/32 :goto_95

    nop

    nop

    :goto_159
    if-nez v14, :cond_19

    nop

    nop

    nop

    goto/32 :goto_225

    nop

    :cond_19
    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15a
    move-object/from16 v19, v3

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    :goto_15b
    if-ne v4, v5, :cond_1a

    nop

    nop

    nop

    nop

    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_15c
    new-array v10, v9, [Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2fe

    nop

    nop

    nop

    nop

    nop

    :goto_15d
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_19d

    nop

    nop

    :goto_15e
    invoke-virtual {v11, v7}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setInterpolation(Ljava/util/HashMap;)V

    goto/32 :goto_255

    nop

    nop

    nop

    nop

    nop

    :goto_15f
    if-nez v10, :cond_1b

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_2cc

    nop

    nop

    :goto_160
    move-object/from16 v18, v8

    nop

    goto/32 :goto_307

    nop

    nop

    nop

    nop

    :goto_161
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    :goto_162
    goto/32 :goto_17c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_163
    move/from16 v26, v8

    nop

    nop

    nop

    nop

    :goto_164
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_165
    aget-object v14, v3, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30f

    nop

    nop

    nop

    nop

    :goto_166
    move/from16 v27, v11

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_167
    if-nez v15, :cond_1c

    nop

    goto/32 :goto_28e

    nop

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_89

    nop

    nop

    nop

    :goto_168
    move-object/from16 v19, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_169
    if-nez v14, :cond_1d

    nop

    nop

    goto/32 :goto_24e

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_277

    nop

    nop

    nop

    nop

    nop

    :goto_16a
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_308

    nop

    nop

    nop

    nop

    nop

    :goto_16b
    move-object/from16 v18, v8

    nop

    nop

    nop

    nop

    nop

    :goto_16c
    goto/32 :goto_24a

    nop

    nop

    :goto_16d
    move-object/from16 v18, v8

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_16e
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_16f
    invoke-virtual {v10, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_170
    goto/32 :goto_219

    nop

    nop

    nop

    nop

    :goto_171
    if-nez v10, :cond_1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29b

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_b5

    nop

    nop

    :goto_172
    if-nez v14, :cond_1f

    nop

    nop

    nop

    nop

    goto/32 :goto_24e

    nop

    :cond_1f
    goto/32 :goto_297

    nop

    nop

    :goto_173
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

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

    :goto_174
    move-object/from16 v26, v10

    nop

    goto/32 :goto_1c8

    nop

    nop

    :goto_175
    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/motion/key/MotionKey;->addValues(Ljava/util/HashMap;)V

    :goto_176
    goto/32 :goto_250

    nop

    nop

    :goto_177
    if-eqz v3, :cond_20

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_20
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_178
    if-lt v8, v14, :cond_21

    nop

    nop

    nop

    nop

    goto/32 :goto_2df

    nop

    nop

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_226

    nop

    nop

    :goto_179
    iget-object v8, v3, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17a
    goto/16 :goto_f8

    nop

    nop

    nop

    :goto_17b
    goto/32 :goto_174

    nop

    nop

    :goto_17c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_2d0

    nop

    nop

    nop

    nop

    :goto_17d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17e
    goto/16 :goto_209

    nop

    nop

    nop

    nop

    nop

    :goto_17f
    goto/32 :goto_26b

    nop

    nop

    nop

    nop

    :goto_180
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_252

    nop

    nop

    nop

    nop

    :goto_181
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_182
    const/4 v14, 0x0

    nop

    goto/32 :goto_1ff

    nop

    nop

    nop

    nop

    nop

    :goto_183
    goto/16 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_184
    goto/32 :goto_1b

    nop

    nop

    :goto_185
    if-lt v11, v13, :cond_22

    nop

    nop

    goto/32 :goto_2aa

    nop

    :cond_22
    goto/32 :goto_1bf

    nop

    nop

    nop

    nop

    nop

    :goto_186
    aput-wide v10, v7, v9

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_187
    move-object/from16 v19, v3

    nop

    goto/32 :goto_1da

    nop

    nop

    nop

    nop

    nop

    :goto_188
    aget-object v5, v5, v4

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_189
    const/4 v13, -0x1

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_18a
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    nop

    nop

    nop

    :goto_18b
    goto/32 :goto_2e6

    nop

    nop

    nop

    nop

    nop

    :goto_18c
    move/from16 v26, v8

    nop

    nop

    nop

    goto/32 :goto_27e

    nop

    nop

    :goto_18d
    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_2bb

    nop

    nop

    nop

    nop

    :goto_18e
    check-cast v13, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_190
    iget-object v14, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    nop

    nop

    goto/32 :goto_24f

    nop

    nop

    nop

    nop

    nop

    :goto_191
    invoke-direct {v15}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;-><init>()V

    goto/32 :goto_30a

    nop

    nop

    nop

    nop

    nop

    :goto_192
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_193
    if-eq v9, v10, :cond_23

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_287

    nop

    nop

    nop

    :goto_194
    if-nez v9, :cond_24

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_195
    invoke-virtual {v3, v8, v9}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_196
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_197
    move-object/from16 v18, v13

    nop

    nop

    nop

    goto/32 :goto_240

    nop

    nop

    :goto_198
    aget-object v10, v3, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_199
    const/4 v11, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_19a
    const/4 v8, 0x1

    nop

    :goto_19b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_19c
    add-int/lit8 v11, v11, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a9

    nop

    nop

    nop

    nop

    :goto_19d
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_19e
    aget-object v11, v3, v9

    nop

    nop

    nop

    goto/32 :goto_26c

    nop

    nop

    nop

    nop

    nop

    :goto_19f
    invoke-virtual {v14, v15, v12, v4, v11}, Landroidx/constraintlayout/core/motion/MotionPaths;->different(Landroidx/constraintlayout/core/motion/MotionPaths;[Z[Ljava/lang/String;Z)V

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a0
    iput-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    nop

    nop

    nop

    :goto_1a1
    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    :goto_1a2
    new-array v9, v8, [I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_1a3
    goto/16 :goto_290

    nop

    nop

    :goto_1a4
    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_1a5
    move-object/from16 v12, v28

    nop

    goto/32 :goto_2c1

    nop

    nop

    :goto_1a6
    iget v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mPathMotionArc:I

    nop

    goto/32 :goto_27f

    nop

    nop

    nop

    :goto_1a7
    check-cast v8, Landroidx/constraintlayout/core/motion/key/MotionKey;

    nop

    nop

    nop

    nop

    goto/32 :goto_241

    nop

    nop

    :goto_1a8
    const/4 v13, 0x1

    nop

    nop

    nop

    nop

    :goto_1a9
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_1aa
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    nop

    goto/32 :goto_27b

    nop

    nop

    nop

    nop

    :goto_1ab
    new-array v12, v11, [Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    :goto_1ac
    move-object/from16 v26, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_1ad
    if-nez v8, :cond_25

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_83

    nop

    nop

    nop

    :goto_1ae
    array-length v9, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_1af
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    nop

    nop

    :goto_1b0
    goto/32 :goto_144

    nop

    nop

    :goto_1b1
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    :goto_1b2
    iput-object v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeInterpolatorCount:[I

    nop

    goto/32 :goto_124

    nop

    nop

    :goto_1b3
    move/from16 v22, v4

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_1b4
    check-cast v10, [Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    :goto_1b5
    aget v8, v8, v4

    nop

    nop

    goto/32 :goto_245

    nop

    nop

    :goto_1b6
    move-object/from16 v21, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_260

    nop

    nop

    :goto_1b7
    goto/32 :goto_1c4

    nop

    nop

    nop

    nop

    nop

    :goto_1b8
    if-nez v10, :cond_26

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    :cond_26
    goto/32 :goto_2cd

    nop

    nop

    :goto_1b9
    new-instance v10, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_1ba
    if-nez v10, :cond_27

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    :cond_27
    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1bb
    move/from16 v27, v11

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1bc
    move-object/from16 v9, v20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    :goto_1bd
    iget-object v14, v14, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22a

    nop

    nop

    nop

    :goto_1be
    invoke-static {v14, v7}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1bf
    aget-object v12, v12, v11

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_1c0
    new-instance v6, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24c

    nop

    nop

    :goto_1c1
    check-cast v11, Landroidx/constraintlayout/core/motion/key/MotionKey;

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_1c2
    add-int/lit8 v15, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_291

    nop

    nop

    nop

    nop

    nop

    :goto_1c3
    goto/32 :goto_1f0

    nop

    :goto_1c4
    goto/32 :goto_16a

    nop

    nop

    :goto_1c5
    invoke-static {v9, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_1c6
    move-object v8, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_1c7
    invoke-virtual {v8, v7}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setType(Ljava/lang/String;)V

    goto/32 :goto_2e1

    nop

    nop

    nop

    nop

    :goto_1c8
    move/from16 v27, v11

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_1c9
    invoke-static {v14, v1, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->makeSpline(Ljava/lang/String;J)Landroidx/constraintlayout/core/motion/utils/SplineSet;

    move-result-object v3

    nop

    nop

    nop

    :goto_1ca
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1cb
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1cc
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    :goto_1cd
    check-cast v7, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    nop

    nop

    nop

    goto/32 :goto_22f

    nop

    nop

    :goto_1ce
    if-nez v9, :cond_28

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    :cond_28
    goto/32 :goto_45

    nop

    nop

    :goto_1cf
    aput-object v10, v3, v8

    nop

    goto/32 :goto_2f3

    nop

    nop

    :goto_1d0
    const v0, 0x7

    nop

    nop

    goto/32 :goto_1e0

    nop

    nop

    nop

    :goto_1d1
    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_1d2
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_273

    nop

    nop

    nop

    nop

    nop

    :goto_1d3
    check-cast v8, [[D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_264

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d4
    check-cast v8, [[D

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1d5
    invoke-virtual {v5, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    nop

    nop

    nop

    goto/32 :goto_317

    nop

    nop

    :goto_1d6
    if-eqz v3, :cond_29

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :cond_29
    goto/32 :goto_289

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d7
    move-object/from16 v3, v19

    nop

    nop

    goto/32 :goto_20c

    nop

    nop

    nop

    nop

    nop

    :goto_1d8
    move-object/from16 v25, v7

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

    :goto_1d9
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    nop

    :goto_1da
    move-object/from16 v3, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_300

    nop

    nop

    nop

    :goto_1db
    goto/16 :goto_36

    nop

    nop

    :goto_1dc
    goto/32 :goto_150

    nop

    nop

    nop

    :goto_1dd
    if-lt v15, v9, :cond_2a

    nop

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    :cond_2a
    goto/32 :goto_236

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1de
    const/4 v14, 0x1

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_1df
    move-object/from16 v26, v10

    nop

    goto/32 :goto_1f2

    nop

    nop

    :goto_1e0
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    :goto_1e1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_309

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e2
    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    nop

    nop

    goto/32 :goto_257

    nop

    nop

    nop

    nop

    nop

    :goto_1e3
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    :goto_1e4
    goto/32 :goto_279

    nop

    nop

    :goto_1e5
    if-ne v9, v10, :cond_2b

    nop

    nop

    nop

    nop

    goto/32 :goto_2e8

    nop

    nop

    :cond_2b
    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_1e6
    new-array v7, v4, [D

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

    :goto_1e7
    move-object/from16 v20, v3

    nop

    nop

    nop

    goto/32 :goto_2e4

    nop

    nop

    :goto_1e8
    if-nez v10, :cond_2c

    nop

    nop

    nop

    goto/32 :goto_2b1

    nop

    nop

    :cond_2c
    goto/32 :goto_2b0

    nop

    nop

    :goto_1e9
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_1ea
    move/from16 v11, v27

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :goto_1eb
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_213

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ec
    add-int/2addr v12, v9

    nop

    nop

    goto/32 :goto_30d

    nop

    nop

    nop

    :goto_1ed
    move-object/from16 v3, v20

    nop

    goto/32 :goto_111

    nop

    nop

    :goto_1ee
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d7

    nop

    nop

    nop

    nop

    :goto_1ef
    return-void

    nop

    nop

    :goto_1f0
    goto/32 :goto_1b7

    nop

    nop

    nop

    nop

    :goto_1f1
    const/4 v9, 0x0

    nop

    nop

    nop

    goto/32 :goto_301

    nop

    nop

    :goto_1f2
    move/from16 v27, v11

    nop

    goto/32 :goto_204

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f3
    aget-object v4, v3, v7

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1f4
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    nop

    nop

    :goto_1f5
    if-nez v7, :cond_2d

    nop

    nop

    goto/32 :goto_211

    nop

    nop

    nop

    nop

    :cond_2d
    goto/32 :goto_244

    nop

    nop

    :goto_1f6
    sub-int/2addr v9, v10

    nop

    goto/32 :goto_25f

    nop

    nop

    nop

    nop

    :goto_1f7
    if-nez v3, :cond_2e

    nop

    nop

    nop

    nop

    goto/32 :goto_2f2

    nop

    nop

    nop

    :cond_2e
    goto/32 :goto_1b6

    nop

    nop

    nop

    nop

    nop

    :goto_1f8
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f9
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    :goto_1fa
    if-gtz v9, :cond_2f

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    :cond_2f
    goto/32 :goto_22e

    nop

    nop

    nop

    :goto_1fb
    if-nez v12, :cond_30

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    :cond_30
    goto/32 :goto_294

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1fc
    if-ne v11, v12, :cond_31

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :cond_31
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1fd
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    :goto_1fe
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_1ff
    aput v14, v13, v11

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    :goto_200
    goto/16 :goto_b4

    nop

    nop

    :goto_201
    goto/32 :goto_1ac

    nop

    nop

    :goto_202
    const/4 v13, 0x1

    nop

    goto/32 :goto_1db

    nop

    nop

    nop

    nop

    :goto_203
    invoke-virtual {v14}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    move-result v22

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    :goto_204
    move-object/from16 v28, v12

    nop

    nop

    nop

    nop

    nop

    :goto_205
    goto/32 :goto_232

    nop

    nop

    nop

    nop

    :goto_206
    move/from16 v24, v9

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_207
    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

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

    :goto_208
    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    :goto_209
    goto/32 :goto_122

    nop

    nop

    :goto_20a
    new-instance v7, Ljava/util/HashMap;

    nop

    goto/32 :goto_16e

    nop

    nop

    :goto_20b
    move-object/from16 v3, v19

    nop

    nop

    nop

    goto/32 :goto_1bc

    nop

    nop

    :goto_20c
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_293

    nop

    nop

    nop

    nop

    nop

    :goto_20d
    add-int/lit8 v13, v13, 0x1

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

    :goto_20e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    :goto_20f
    if-lt v14, v15, :cond_32

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :cond_32
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_210
    goto/16 :goto_23a

    nop

    nop

    nop

    nop

    nop

    :goto_211
    goto/32 :goto_1ef

    nop

    nop

    nop

    :goto_212
    invoke-virtual {v8, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_221

    nop

    nop

    nop

    nop

    nop

    :goto_213
    array-length v14, v8

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    :goto_214
    const/4 v11, 0x1

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    :goto_215
    if-lt v4, v7, :cond_33

    nop

    nop

    nop

    nop

    goto/32 :goto_2c2

    nop

    nop

    nop

    :cond_33
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_216
    if-nez v9, :cond_34

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2fa

    nop

    nop

    nop

    :cond_34
    goto/32 :goto_25a

    nop

    nop

    :goto_217
    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_1b8

    nop

    nop

    nop

    nop

    nop

    :goto_218
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    nop

    goto/32 :goto_177

    nop

    nop

    nop

    nop

    nop

    :goto_219
    goto/16 :goto_64

    nop

    nop

    nop

    nop

    :goto_21a
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_21b
    move-object/from16 v21, v4

    nop

    nop

    :goto_21c
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_21d
    invoke-static {v7}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->makeWidgetCycle(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    move-result-object v8

    nop

    goto/32 :goto_302

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21e
    move v4, v15

    nop

    :goto_21f
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_220
    array-length v15, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20f

    nop

    nop

    nop

    nop

    :goto_221
    move-object/from16 v8, v18

    nop

    goto/32 :goto_1d7

    nop

    nop

    :goto_222
    check-cast v12, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_223
    aput v8, v9, v10

    nop

    nop

    goto/32 :goto_1cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_224
    goto/16 :goto_36

    nop

    nop

    :goto_225
    goto/32 :goto_168

    nop

    nop

    :goto_226
    aget-boolean v14, v12, v8

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

    :goto_227
    new-instance v5, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_228
    move-object/from16 v3, v19

    nop

    nop

    nop

    nop

    goto/32 :goto_267

    nop

    nop

    nop

    :goto_229
    invoke-virtual {v15, v9, v8}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->append(ILandroidx/constraintlayout/core/motion/CustomVariable;)V

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_22a
    invoke-virtual {v14, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    nop

    nop

    nop

    goto/32 :goto_28c

    nop

    nop

    nop

    :goto_22b
    move-object/from16 v8, v18

    nop

    nop

    nop

    goto/32 :goto_228

    nop

    nop

    :goto_22c
    invoke-virtual {v10, v5}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCustomDataCount(Ljava/lang/String;)I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_1bb

    nop

    nop

    :goto_22d
    iget-object v14, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_22e
    iget v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

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

    :goto_22f
    invoke-virtual {v7, v4}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setup(F)V

    goto/32 :goto_210

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_230
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_274

    nop

    nop

    nop

    :goto_231
    move/from16 v9, v24

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_232
    aget-object v9, v3, v15

    nop

    nop

    nop

    goto/32 :goto_28a

    nop

    nop

    nop

    nop

    nop

    :goto_233
    move-object/from16 v25, v7

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    :goto_234
    add-int/lit8 v14, v14, 0x1

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_235
    check-cast v14, Landroidx/constraintlayout/core/motion/CustomVariable;

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_236
    aget-object v9, v3, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_242

    nop

    nop

    nop

    :goto_237
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_216

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_238
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_134

    nop

    nop

    :goto_239
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    :goto_23a
    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_23b
    add-int/lit8 v15, v13, -0x1

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

    :goto_23c
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    :goto_23d
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_23e
    goto/16 :goto_164

    nop

    nop

    nop

    nop

    :goto_23f
    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_240
    move-object v13, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_2c4

    nop

    nop

    nop

    nop

    :goto_241
    instance-of v9, v8, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_242
    invoke-virtual {v9, v5}, Landroidx/constraintlayout/core/motion/MotionPaths;->hasCustomData(Ljava/lang/String;)Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_243
    add-int/lit8 v11, v8, 0x1

    nop

    nop

    nop

    goto/32 :goto_1cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_244
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_1cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_245
    sget-object v14, Landroidx/constraintlayout/core/motion/MotionPaths;->names:[Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_27a

    nop

    nop

    nop

    nop

    nop

    :goto_246
    array-length v14, v3

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

    :goto_247
    if-nez v8, :cond_35

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_35
    goto/32 :goto_92

    nop

    nop

    :goto_248
    iget v9, v3, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    nop

    goto/32 :goto_229

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_249
    if-nez v4, :cond_36

    nop

    nop

    goto/32 :goto_1a4

    nop

    nop

    nop

    :cond_36
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24a
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_24b
    const/4 v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    :goto_24c
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_20a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24d
    goto/16 :goto_8f

    nop

    nop

    nop

    nop

    :goto_24e
    goto/32 :goto_20d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24f
    array-length v14, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_266

    nop

    nop

    :goto_250
    goto/16 :goto_23d

    nop

    nop

    nop

    nop

    :goto_251
    goto/32 :goto_181

    nop

    nop

    nop

    :goto_252
    aput v14, v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b1

    nop

    nop

    :goto_253
    if-lt v9, v4, :cond_37

    nop

    nop

    goto/32 :goto_184

    nop

    nop

    nop

    nop

    :cond_37
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_254
    const/4 v12, -0x1

    nop

    nop

    goto/32 :goto_1fc

    nop

    nop

    :goto_255
    invoke-virtual {v11, v5}, Landroidx/constraintlayout/core/motion/key/MotionKey;->getAttributeNames(Ljava/util/HashSet;)V

    :goto_256
    goto/32 :goto_2af

    nop

    nop

    nop

    nop

    nop

    :goto_257
    if-nez v15, :cond_38

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_38
    goto/32 :goto_79

    nop

    nop

    nop

    :goto_258
    goto/16 :goto_205

    nop

    nop

    nop

    nop

    nop

    :goto_259
    goto/32 :goto_1df

    nop

    nop

    nop

    nop

    nop

    :goto_25a
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    nop

    :goto_25b
    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :goto_25c
    move-object/from16 v25, v7

    nop

    nop

    nop

    goto/32 :goto_18c

    nop

    nop

    nop

    :goto_25d
    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->addCycleValues(Ljava/util/HashMap;)V

    :goto_25e
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25f
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

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

    :goto_260
    iget v4, v15, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    :goto_261
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    nop

    goto/32 :goto_1af

    nop

    nop

    :goto_262
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_2ce

    nop

    nop

    nop

    :goto_263
    if-nez v10, :cond_39

    nop

    goto/32 :goto_271

    nop

    nop

    nop

    :cond_39
    goto/32 :goto_e8

    nop

    nop

    :goto_264
    const/4 v14, 0x0

    nop

    nop

    goto/32 :goto_188

    nop

    nop

    nop

    nop

    nop

    :goto_265
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_26e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_266
    const/4 v15, 0x2

    nop

    nop

    goto/32 :goto_310

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_267
    goto/16 :goto_1b0

    nop

    nop

    nop

    nop

    nop

    :goto_268
    goto/32 :goto_179

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_269
    move-object/from16 v20, v9

    nop

    nop

    :goto_26a
    goto/32 :goto_2dd

    nop

    nop

    nop

    nop

    nop

    :goto_26b
    new-array v8, v4, [I

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

    :goto_26c
    iget v11, v11, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_26d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_2ae

    nop

    nop

    nop

    :goto_26e
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    nop

    nop

    nop

    nop

    :goto_26f
    goto/32 :goto_318

    nop

    nop

    nop

    nop

    :goto_270
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    nop

    :goto_271
    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_272
    aget-object v14, v3, v13

    nop

    nop

    goto/32 :goto_23b

    nop

    nop

    nop

    nop

    :goto_273
    if-nez v8, :cond_3a

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    :cond_3a
    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_274
    add-int/2addr v4, v5

    nop

    nop

    nop

    goto/32 :goto_298

    nop

    nop

    nop

    nop

    :goto_275
    const/4 v8, 0x0

    nop

    :goto_276
    goto/32 :goto_246

    nop

    nop

    nop

    nop

    nop

    :goto_277
    aget-object v14, v3, v13

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_278
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_279
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_296

    nop

    nop

    nop

    nop

    nop

    :goto_27a
    array-length v14, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_2ad

    nop

    nop

    nop

    nop

    nop

    :goto_27b
    aget v5, v5, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_27c
    aget-object v9, v16, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_261

    nop

    nop

    :goto_27d
    check-cast v10, Ljava/lang/Integer;

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

    :goto_27e
    aget-wide v7, v24, v4

    nop

    nop

    goto/32 :goto_1d1

    nop

    nop

    nop

    nop

    :goto_27f
    const/4 v10, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e5

    nop

    nop

    nop

    nop

    nop

    :goto_280
    const/4 v14, 0x0

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_281
    if-nez v8, :cond_3b

    nop

    nop

    nop

    goto/32 :goto_25e

    nop

    nop

    :cond_3b
    goto/32 :goto_1c6

    nop

    nop

    :goto_282
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_11a

    nop

    nop

    nop

    :goto_283
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_284
    iget v10, v10, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a5

    nop

    nop

    nop

    nop

    :goto_285
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    goto/32 :goto_2b5

    nop

    nop

    nop

    nop

    :goto_286
    array-length v11, v11

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_287
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    :goto_288
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    nop

    goto/32 :goto_1c1

    nop

    nop

    nop

    :goto_289
    move-object/from16 v3, v20

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_28a
    iget v9, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_28b
    iget v12, v0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28c
    if-nez v14, :cond_3c

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    nop

    :cond_3c
    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_28d
    goto/16 :goto_13d

    nop

    nop

    nop

    nop

    nop

    :goto_28e
    goto/32 :goto_1e7

    nop

    nop

    nop

    nop

    nop

    :goto_28f
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    :goto_290
    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_291
    aput v8, v14, v4

    nop

    nop

    nop

    goto/32 :goto_21e

    nop

    nop

    nop

    nop

    :goto_292
    move/from16 v14, p1

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_293
    const/4 v13, 0x1

    nop

    goto/32 :goto_224

    nop

    nop

    nop

    nop

    :goto_294
    move-object v12, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_222

    nop

    nop

    nop

    :goto_295
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    :goto_296
    if-nez v8, :cond_3d

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :cond_3d
    goto/32 :goto_1ee

    nop

    nop

    nop

    :goto_297
    iget-object v15, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeInterpolatorCount:[I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_298
    new-array v4, v4, [Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_299
    aput-object v5, v4, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f3

    nop

    nop

    nop

    :goto_29a
    goto/16 :goto_256

    nop

    nop

    nop

    :goto_29b
    goto/32 :goto_149

    nop

    nop

    :goto_29c
    aget-object v10, v8, v9

    nop

    nop

    nop

    goto/32 :goto_19e

    nop

    nop

    :goto_29d
    new-array v8, v13, [D

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    :goto_29e
    check-cast v8, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    :goto_29f
    if-eqz v3, :cond_3e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_3e
    goto/32 :goto_1ed

    nop

    nop

    :goto_2a0
    check-cast v14, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1e2

    nop

    nop

    nop

    nop

    :goto_2a1
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    nop

    :goto_2a2
    goto/32 :goto_2e9

    nop

    nop

    nop

    nop

    :goto_2a3
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_2e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a4
    aget-object v24, v1, v14

    nop

    goto/32 :goto_25c

    nop

    nop

    nop

    nop

    nop

    :goto_2a5
    aput v10, v5, v9

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_2a6
    move-object/from16 v7, v25

    nop

    nop

    nop

    goto/32 :goto_2c8

    nop

    nop

    :goto_2a7
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a8
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_13f

    nop

    nop

    nop

    :goto_2a9
    goto/16 :goto_125

    nop

    nop

    nop

    :goto_2aa
    goto/32 :goto_2fb

    nop

    nop

    :goto_2ab
    move-object v10, v11

    nop

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

    :goto_2ac
    move-object/from16 v20, v3

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2ad
    if-lt v8, v14, :cond_3f

    nop

    goto/32 :goto_23f

    nop

    nop

    nop

    :cond_3f
    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    :goto_2ae
    check-cast v8, Ljava/lang/String;

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

    nop

    :goto_2af
    const/4 v10, -0x1

    nop

    nop

    goto/32 :goto_2f9

    nop

    nop

    :goto_2b0
    invoke-virtual {v10, v9}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setup(I)V

    :goto_2b1
    goto/32 :goto_1d

    nop

    nop

    :goto_2b2
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_278

    nop

    nop

    nop

    nop

    nop

    :goto_2b3
    move-object/from16 v3, v20

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_2b4
    invoke-virtual {v14, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

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

    nop

    :goto_2b5
    const/4 v14, 0x0

    nop

    nop

    nop

    :goto_2b6
    goto/32 :goto_220

    nop

    nop

    nop

    nop

    :goto_2b7
    aget-object v4, v3, v8

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_2b8
    iget v11, v11, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    goto/32 :goto_2ea

    nop

    nop

    nop

    :goto_2b9
    move-object v8, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d4

    nop

    nop

    nop

    :goto_2ba
    move-object/from16 v25, v7

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

    :goto_2bb
    goto/16 :goto_2a2

    nop

    :goto_2bc
    goto/32 :goto_113

    nop

    nop

    :goto_2bd
    invoke-virtual {v9, v11, v5}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->different(Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;Ljava/util/HashSet;)V

    goto/32 :goto_237

    nop

    nop

    nop

    :goto_2be
    instance-of v8, v4, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_247

    nop

    nop

    nop

    :goto_2bf
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_2c0
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_f3

    nop

    nop

    nop

    :goto_2c1
    goto/16 :goto_2db

    nop

    nop

    nop

    nop

    nop

    :goto_2c2
    goto/32 :goto_25

    nop

    nop

    :goto_2c3
    if-eqz v8, :cond_40

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_268

    nop

    nop

    nop

    nop

    :cond_40
    goto/32 :goto_22b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c4
    move-object/from16 v17, v14

    nop

    goto/32 :goto_292

    nop

    nop

    nop

    nop

    nop

    :goto_2c5
    move-object/from16 v10, v26

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ea

    nop

    nop

    nop

    nop

    nop

    :goto_2c6
    check-cast v3, Landroidx/constraintlayout/core/motion/CustomVariable;

    nop

    goto/32 :goto_1f7

    nop

    nop

    nop

    nop

    :goto_2c7
    if-nez v9, :cond_41

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    :cond_41
    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_2c8
    goto/16 :goto_24

    nop

    nop

    nop

    :goto_2c9
    goto/32 :goto_31

    nop

    nop

    :goto_2ca
    move-object/from16 v21, v4

    nop

    nop

    nop

    nop

    nop

    :goto_2cb
    goto/32 :goto_2b3

    nop

    nop

    :goto_2cc
    if-eqz v8, :cond_42

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    :cond_42
    goto/32 :goto_1b9

    nop

    nop

    nop

    nop

    :goto_2cd
    new-instance v10, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_2ce
    invoke-static {v8, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_2cf
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d0
    if-nez v8, :cond_43

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    :cond_43
    goto/32 :goto_26d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d1
    add-int/lit8 v4, v4, 0x1

    nop

    goto/32 :goto_231

    nop

    nop

    nop

    :goto_2d2
    if-nez v11, :cond_44

    nop

    nop

    goto/32 :goto_2fa

    nop

    nop

    :cond_44
    goto/32 :goto_288

    nop

    nop

    nop

    :goto_2d3
    invoke-static {v8, v10}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->makeCustomSplineSet(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;)Landroidx/constraintlayout/core/motion/utils/SplineSet;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    :goto_2d4
    move-object/from16 v21, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2d5
    new-instance v4, Ljava/util/HashSet;

    nop

    goto/32 :goto_2a8

    nop

    nop

    :goto_2d6
    iput-object v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_286

    nop

    nop

    nop

    :goto_2d7
    check-cast v8, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d8
    const/4 v9, 0x0

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_2d9
    move-object/from16 v3, v20

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2da
    const/4 v4, 0x0

    nop

    nop

    :goto_2db
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_2dc
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_1c0

    nop

    nop

    nop

    nop

    :goto_2dd
    move-object/from16 v8, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20b

    nop

    nop

    :goto_2de
    goto/16 :goto_19b

    nop

    nop

    nop

    nop

    :goto_2df
    goto/32 :goto_7d

    nop

    nop

    :goto_2e0
    check-cast v8, [[D

    nop

    nop

    goto/32 :goto_258

    nop

    nop

    nop

    nop

    nop

    :goto_2e1
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    :goto_2e2
    aget-object v15, v1, v8

    nop

    goto/32 :goto_1b3

    nop

    nop

    :goto_2e3
    if-nez v3, :cond_45

    nop

    nop

    nop

    nop

    goto/32 :goto_251

    nop

    nop

    :cond_45
    goto/32 :goto_23c

    nop

    nop

    :goto_2e4
    move-object/from16 v21, v4

    nop

    nop

    nop

    goto/32 :goto_2d3

    nop

    nop

    nop

    nop

    :goto_2e5
    move/from16 v11, v27

    nop

    goto/32 :goto_1a5

    nop

    nop

    :goto_2e6
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e7
    iput v9, v11, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    nop

    nop

    nop

    :goto_2e8
    goto/32 :goto_283

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :goto_2ea
    float-to-double v11, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_280

    nop

    nop

    nop

    :goto_2eb
    iput v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    nop

    nop

    :goto_2ec
    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    :goto_2ed
    move/from16 v8, v26

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_2ee
    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2ef
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f0
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    :goto_2f1
    goto/16 :goto_2cb

    nop

    nop

    nop

    nop

    nop

    :goto_2f2
    goto/32 :goto_2ca

    nop

    nop

    nop

    nop

    :goto_2f3
    move v8, v11

    nop

    goto/32 :goto_103

    nop

    nop

    :goto_2f4
    invoke-static {v8, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    goto/32 :goto_2b9

    nop

    nop

    nop

    nop

    nop

    :goto_2f5
    aget-boolean v13, v12, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2f6
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19f

    nop

    nop

    nop

    :goto_2f7
    goto/16 :goto_276

    nop

    nop

    nop

    nop

    nop

    :goto_2f8
    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_2f9
    goto/16 :goto_25b

    nop

    nop

    :goto_2fa
    goto/32 :goto_1d2

    nop

    nop

    nop

    nop

    :goto_2fb
    const/4 v11, 0x0

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2fc
    const-string v12, "CUSTOM,"

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

    :goto_2fd
    new-array v8, v13, [D

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2fe
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    nop

    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    nop

    :goto_2ff
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_300
    check-cast v3, Landroidx/constraintlayout/core/motion/key/MotionKey;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    :goto_301
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_263

    nop

    nop

    nop

    :goto_302
    if-eqz v8, :cond_46

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :cond_46
    goto/32 :goto_76

    nop

    nop

    nop

    :goto_303
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_304
    goto/32 :goto_146

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_305
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    nop

    :goto_306
    new-array v2, v2, [D

    nop

    goto/32 :goto_275

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_307
    move-object/from16 v20, v9

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_308
    move-wide/from16 v1, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    :goto_309
    if-nez v7, :cond_47

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

    :cond_47
    goto/32 :goto_1e9

    nop

    nop

    nop

    nop

    nop

    :goto_30a
    invoke-virtual {v14, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    nop

    nop

    goto/32 :goto_27c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30b
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_239

    nop

    nop

    :goto_30c
    array-length v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_230

    nop

    nop

    nop

    nop

    nop

    :goto_30d
    new-array v12, v12, [Z

    nop

    goto/32 :goto_1a8

    nop

    nop

    nop

    nop

    :goto_30e
    move/from16 v15, p2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_30f
    iget-object v14, v14, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_310
    new-array v1, v15, [I

    nop

    nop

    goto/32 :goto_180

    nop

    nop

    :goto_311
    check-cast v15, Landroidx/constraintlayout/core/motion/key/MotionKey;

    nop

    nop

    nop

    goto/32 :goto_2ac

    nop

    nop

    nop

    :goto_312
    check-cast v9, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_18a

    nop

    nop

    nop

    :goto_313
    array-length v12, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_1ec

    nop

    nop

    nop

    nop

    :goto_314
    move-object/from16 v21, v4

    nop

    nop

    goto/32 :goto_1fe

    nop

    nop

    nop

    nop

    :goto_315
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    :goto_316
    goto/32 :goto_1e1

    nop

    nop

    nop

    nop

    nop

    :goto_317
    if-eqz v14, :cond_48

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    nop

    nop

    :cond_48
    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    nop

    :goto_318
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ba

    nop

    nop

    nop
.end method

.method public setupRelative(Landroidx/constraintlayout/core/motion/Motion;)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, p1, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xf

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
    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/core/motion/MotionPaths;->setupRelative(Landroidx/constraintlayout/core/motion/Motion;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    :goto_5
    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/core/motion/MotionPaths;->setupRelative(Landroidx/constraintlayout/core/motion/Motion;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, p1, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
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

    :goto_b
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    :goto_f
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

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

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_17

    nop

    nop

    :goto_4
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

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

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

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

    :goto_b
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v2, " end: x: "

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_11
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v1, " y: "

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

    :goto_14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v1, " start: x: "

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

    :goto_18
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_19
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1d
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1e
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method
