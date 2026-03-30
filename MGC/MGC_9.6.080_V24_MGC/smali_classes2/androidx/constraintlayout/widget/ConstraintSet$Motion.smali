.class public Landroidx/constraintlayout/widget/ConstraintSet$Motion;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Motion"
.end annotation


# static fields
.field private static final ANIMATE_CIRCLE_ANGLE_TO:I = 0x6

.field private static final ANIMATE_RELATIVE_TO:I = 0x5

.field private static final INTERPOLATOR_REFERENCE_ID:I = -0x2

.field private static final INTERPOLATOR_UNDEFINED:I = -0x3

.field private static final MOTION_DRAW_PATH:I = 0x4

.field private static final MOTION_STAGGER:I = 0x7

.field private static final PATH_MOTION_ARC:I = 0x2

.field private static final QUANTIZE_MOTION_INTERPOLATOR:I = 0xa

.field private static final QUANTIZE_MOTION_PHASE:I = 0x9

.field private static final QUANTIZE_MOTION_STEPS:I = 0x8

.field private static final SPLINE_STRING:I = -0x1

.field private static final TRANSITION_EASING:I = 0x3

.field private static final TRANSITION_PATH_ROTATE:I = 0x1

.field private static mapToConstant:Landroid/util/SparseIntArray;


# instance fields
.field public mAnimateCircleAngleTo:I

.field public mAnimateRelativeTo:I

.field public mApply:Z

.field public mDrawPath:I

.field public mMotionStagger:F

.field public mPathMotionArc:I

.field public mPathRotate:F

.field public mPolarRelativeTo:I

.field public mQuantizeInterpolatorID:I

.field public mQuantizeInterpolatorString:Ljava/lang/String;

.field public mQuantizeInterpolatorType:I

.field public mQuantizeMotionPhase:F

.field public mQuantizeMotionSteps:I

.field public mTransitionEasing:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mapToConstant:Landroid/util/SparseIntArray;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v2, 0x5

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

    :goto_2
    goto/32 :goto_31

    nop

    :goto_3
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mapToConstant:Landroid/util/SparseIntArray;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mapToConstant:Landroid/util/SparseIntArray;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/16 v2, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_9
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Motion_quantizeMotionInterpolator:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_a
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Motion_pathMotionArc:I

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

    :goto_b
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_32

    nop

    nop

    :goto_c
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    goto/32 :goto_21

    nop

    nop

    :goto_d
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mapToConstant:Landroid/util/SparseIntArray;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Landroid/util/SparseIntArray;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Motion_animateCircleAngleTo:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_12
    const v0, 0x1a

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mapToConstant:Landroid/util/SparseIntArray;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_15
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Motion_drawPath:I

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Motion_quantizeMotionSteps:I

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    const/4 v2, 0x7

    nop

    nop

    nop

    goto/32 :goto_29

    nop

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
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v2, 0x4

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

    :goto_1d
    const/16 v2, 0xa

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mapToConstant:Landroid/util/SparseIntArray;

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

    :goto_1f
    const v1, 0xf

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_21
    sput-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mapToConstant:Landroid/util/SparseIntArray;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v2, 0x3

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

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_24
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_25
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mapToConstant:Landroid/util/SparseIntArray;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Motion_quantizeMotionPhase:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_27
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Motion_motionPathRotate:I

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2a
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2b
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Motion_transitionEasing:I

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_30

    nop

    :goto_2d
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mapToConstant:Landroid/util/SparseIntArray;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Motion_motionStagger:I

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

    :goto_2f
    const/16 v2, 0x8

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_32
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mapToConstant:Landroid/util/SparseIntArray;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Motion_animateRelativeTo:I

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

.method public constructor <init>()V
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1c

    nop

    nop

    :goto_2
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mDrawPath:I

    nop

    goto/32 :goto_9

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

    :goto_4
    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPolarRelativeTo:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_9
    const/high16 v0, 0x7fc00000    # Float.NaN

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

    :goto_a
    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

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

    :goto_c
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionSteps:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_10
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mApply:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_12
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionPhase:F

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    const/4 v1, -0x1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_14
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateCircleAngleTo:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_15
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_16
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_17
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v0, -0x3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_19
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    :goto_1b
    goto/32 :goto_3

    nop

    nop

    :goto_1c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public copyFrom(Landroidx/constraintlayout/widget/ConstraintSet$Motion;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPolarRelativeTo:I

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

    :goto_4
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mDrawPath:I

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

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

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

    :goto_8
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mDrawPath:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mApply:Z

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

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

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mApply:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPolarRelativeTo:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_f
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

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

.method fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
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

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v9, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_1
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_2
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    iget v8, v5, Landroid/util/TypedValue;->type:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionSteps:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_5
    if-eq v8, v7, :cond_0

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
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_4a

    nop

    nop

    :goto_7
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

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

    :goto_8
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionSteps:I

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput v8, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v6, v5, Landroid/util/TypedValue;->type:I

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_30

    nop

    nop

    :goto_d
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_e
    goto/16 :goto_1f

    nop

    nop

    :pswitch_1
    goto/32 :goto_38

    nop

    nop

    :goto_f
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->Motion:[I

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

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

    :goto_11
    iput v8, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

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

    :goto_13
    if-ne v6, v9, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_15
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_16
    aget-object v6, v7, v6

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateCircleAngleTo:I

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_18
    iput-object v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_19
    const/4 v3, 0x0

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_55

    nop

    nop

    :goto_1b
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_1c
    goto :goto_1f

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    nop

    nop

    :goto_1f
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_20
    const-string v7, "/"

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

    :goto_21
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionPhase:F

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

    :goto_22
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-gtz v6, :cond_2

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :cond_2
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_24
    iput v9, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_26
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_27
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_29
    const/4 v1, 0x1

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

    nop

    :goto_2a
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_1f

    nop

    :pswitch_3
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v0, 0x20

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_2d
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionPhase:F

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_2f
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_52

    nop

    nop

    :goto_31
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_32
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget v6, v5, Landroid/util/TypedValue;->type:I

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_36
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mapToConstant:Landroid/util/SparseIntArray;

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

    :goto_37
    const v1, 0x2

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_38
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

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

    nop

    :goto_3a
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_3b
    add-int v0, v0, v1

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_3c
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3d
    const/4 v6, 0x0

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_3e
    sget-object v7, Landroidx/constraintlayout/core/motion/utils/Easing;->NAMED_EASING:[Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3f
    if-eq v6, v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :cond_3
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_42
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_1f

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_2a

    nop

    nop

    :goto_45
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_1f

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_8

    nop

    nop

    :goto_47
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_53

    nop

    nop

    :goto_49
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4a
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateCircleAngleTo:I

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_49

    nop

    :goto_4c
    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_4d
    goto/16 :goto_1f

    nop

    :pswitch_7
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

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

    :goto_4f
    add-int/lit8 v3, v3, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iput-object v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_51
    if-eq v6, v7, :cond_4

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

    :cond_4
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_52
    return-void

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_1
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_2
    .end packed-switch

    :goto_53
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_55
    if-lt v3, v2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_5
    goto/32 :goto_45

    nop

    nop

    :goto_56
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mApply:Z

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
    invoke-static {v0, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v5

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

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

    :goto_59
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_5c
    goto/16 :goto_1f

    nop

    nop

    :pswitch_9
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_6
    goto/32 :goto_48

    nop

    :goto_5e
    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_5f
    goto/16 :goto_1f

    nop

    :goto_60
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    const/4 v7, 0x3

    nop

    nop

    packed-switch v5, :pswitch_data_0

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_62
    const/4 v8, -0x2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_63
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mDrawPath:I

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

    :goto_64
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop
.end method
