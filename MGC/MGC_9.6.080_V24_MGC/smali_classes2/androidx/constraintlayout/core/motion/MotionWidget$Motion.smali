.class public Landroidx/constraintlayout/core/motion/MotionWidget$Motion;
.super Ljava/lang/Object;
.source "MotionWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/MotionWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Motion"
.end annotation


# static fields
.field private static final INTERPOLATOR_REFERENCE_ID:I = -0x2

.field private static final INTERPOLATOR_UNDEFINED:I = -0x3

.field private static final SPLINE_STRING:I = -0x1


# instance fields
.field public mAnimateCircleAngleTo:I

.field public mAnimateRelativeTo:I

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
.method public constructor <init>()V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mQuantizeMotionPhase:F

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

    :goto_1
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mAnimateCircleAngleTo:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mMotionStagger:F

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1b

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mAnimateRelativeTo:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    return-void

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
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mTransitionEasing:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mQuantizeInterpolatorType:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_b
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_b

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
    goto/32 :goto_14

    nop

    nop

    :goto_f
    const/high16 v1, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    const/4 v1, -0x3

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mDrawPath:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mPathMotionArc:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x0

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

    :goto_16
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mQuantizeMotionSteps:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_17
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mQuantizeInterpolatorID:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_19
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mPathRotate:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1a
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_1c
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mPolarRelativeTo:I

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop
.end method
