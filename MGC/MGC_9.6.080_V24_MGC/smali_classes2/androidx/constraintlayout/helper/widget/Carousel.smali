.class public Landroidx/constraintlayout/helper/widget/Carousel;
.super Landroidx/constraintlayout/motion/widget/MotionHelper;
.source "Carousel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/helper/widget/Carousel$Adapter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Carousel"

.field public static final TOUCH_UP_CARRY_ON:I = 0x2

.field public static final TOUCH_UP_IMMEDIATE_STOP:I = 0x1


# instance fields
.field private backwardTransition:I

.field private dampening:F

.field private emptyViewBehavior:I

.field private firstViewReference:I

.field private forwardTransition:I

.field private infiniteCarousel:Z

.field private mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

.field private mAnimateTargetDelay:I

.field private mIndex:I

.field mLastStartId:I

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field private mPreviousIndex:I

.field private mTargetIndex:I

.field mUpdateRunnable:Ljava/lang/Runnable;

.field private nextState:I

.field private previousState:I

.field private startIndex:I

.field private touchUpMode:I

.field private velocityThreshold:F


# direct methods
.method private 1ad1376d5dd920368467f7f8291b73e2m(ILandroid/view/View;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "constraintSetId",
            "view",
            "visibility"
        }
    .end annotation

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_15

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    return v1

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_5
    return v1

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    :goto_7
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

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

    nop

    :goto_9
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_a
    if-eqz v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

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
    const v0, 0x10

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

    :goto_e
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    :goto_11
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0xf

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x0

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

    :goto_14
    return v3

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

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

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop
.end method

.method private 1ad1376d5dd920368467f7f8291b73e2m(Landroid/view/View;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "visibility"
        }
    .end annotation

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    or-int/2addr v1, v3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    return v1

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_6
    const/4 v2, 0x0

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    :goto_9
    array-length v3, v0

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

    :goto_a
    if-lt v2, v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSetIds()[I

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    const/4 v0, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    if-lez v0, :cond_2

    nop

    goto/32 :goto_1

    nop

    :cond_2
    goto/32 :goto_0

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0, v3, p1, p2}, Landroidx/constraintlayout/helper/widget/Carousel;->1ad1376d5dd920368467f7f8291b73e2m(ILandroid/view/View;I)Z

    move-result v3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_13
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_15
    const v0, 0x19

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_16
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x1b

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

    :goto_19
    aget v3, v0, v2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method private 3c774c9e8b2473c8bcfb8bc1e5ed602dm(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setEnabled(Z)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    :goto_4
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getDefinedTransitions()Ljava/util/ArrayList;

    move-result-object v0

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

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x13

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

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x18

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_13
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method private 88966f6b78befd58d6ba712ba15da6c5m(IZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "transitionID",
            "enable"
        }
    .end annotation

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

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
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    return v0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_6
    const v0, 0x1c

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eq p1, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    :goto_8
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, -0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v1, :cond_2

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return v0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eq p2, v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_4

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_9

    nop

    :goto_14
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    move-result-object v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setEnabled(Z)V

    goto/32 :goto_8

    nop

    nop

    :goto_19
    goto/32 :goto_a

    nop

    :goto_1a
    add-int v0, v0, v1

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

    :goto_1b
    return v0

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method private 9e849c4a6f153b941faff3aa6310f73em(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
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

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_0
    iput v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->dampening:F

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_2
    goto/16 :goto_42

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_4
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_backwardTransition:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_5
    goto/32 :goto_2c

    nop

    nop

    :goto_6
    if-lt v2, v1, :cond_0

    nop

    nop

    goto/32 :goto_47

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_8
    if-eq v3, v4, :cond_1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_a
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

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

    :goto_b
    iput v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->firstViewReference:I

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_f
    if-eq v3, v4, :cond_2

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

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_10
    iput v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->velocityThreshold:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_11
    if-eq v3, v4, :cond_3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

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

    :goto_13
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_infinite:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_firstView:I

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

    :goto_15
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_touchUp_dampeningFactor:I

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_18
    iput v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

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

    :goto_1e
    goto/16 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_42

    nop

    nop

    :goto_21
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez p2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_23
    iget-boolean v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_emptyViewsBehavior:I

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_28
    if-eq v3, v4, :cond_5

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

    :cond_5
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->Carousel:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2a
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_nextState:I

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2b
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_22

    nop

    nop

    :goto_2d
    const v1, 0x17

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

    :goto_2e
    if-eq v3, v4, :cond_6

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_2f
    if-eq v3, v4, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_30
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_previousState:I

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_31
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_touchUpMode:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_32
    iput v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->firstViewReference:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_33
    goto/16 :goto_42

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_36
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_37
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_38
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->dampening:F

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_39
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_forwardTransition:I

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

    :goto_3a
    goto :goto_42

    nop

    :goto_3b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3d
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

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

    :goto_3e
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-eq v3, v4, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_e

    nop

    nop

    :goto_40
    const v0, 0x1f

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

    :goto_41
    iput-boolean v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const/4 v2, 0x0

    nop

    :goto_44
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_45
    iput v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_44

    nop

    nop

    :goto_47
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_48
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iput v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_4b
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->velocityThreshold:F

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_4c
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    return-void

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_5

    nop

    nop

    :goto_4f
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_touchUp_velocityThreshold:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_50
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

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

    :goto_51
    if-eq v3, v4, :cond_9

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_9
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_52
    goto/16 :goto_42

    nop

    nop

    :goto_53
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_42

    nop

    nop

    :goto_55
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_56
    if-eq v3, v4, :cond_a

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

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

    :goto_58
    if-eq v3, v4, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    :cond_b
    goto/32 :goto_50

    nop

    nop

    :goto_59
    goto/16 :goto_42

    nop

    :goto_5a
    goto/32 :goto_2a

    nop

    nop

    :goto_5b
    if-lez v0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_c
    goto/32 :goto_2b

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_0
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1
    const/4 v1, -0x1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mUpdateRunnable:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

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

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_6
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_8
    const/16 v0, 0xc8

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->firstViewReference:I

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

    :goto_a
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

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

    :goto_c
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->velocityThreshold:F

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_d
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

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

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v2, 0x3f666666    # 0.9f

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_10
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

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

    nop

    :goto_12
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, p0}, Landroidx/constraintlayout/helper/widget/Carousel$1;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mLastStartId:I

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

    :goto_16
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->startIndex:I

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_19
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1a
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1b
    const/high16 v0, 0x40000000    # 2.0f

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

    :goto_1c
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1d
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousIndex:I

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

    :goto_1e
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v0, Landroidx/constraintlayout/helper/widget/Carousel$1;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_21
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_22
    return-void

    nop

    nop

    :goto_23
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_24
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

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

    :goto_25
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_b

    nop

    nop

    :goto_27
    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_28
    const v1, 0x4

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

    :goto_29
    iput v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->dampening:F

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
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

    goto/32 :goto_6

    nop

    nop

    :goto_0
    const v1, 0x4

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

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3
    const/4 v1, -0x1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_4
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, p0}, Landroidx/constraintlayout/helper/widget/Carousel$1;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    goto/32 :goto_26

    nop

    nop

    :goto_6
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_8
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_9
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->velocityThreshold:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    new-instance v0, Landroidx/constraintlayout/helper/widget/Carousel$1;

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

    :goto_b
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    :goto_d
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

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

    :goto_e
    iput v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->dampening:F

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_12
    const v2, 0x3f666666    # 0.9f

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_13
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousIndex:I

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
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

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

    :goto_16
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/16 v0, 0xc8

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1b
    const/high16 v0, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1c
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->startIndex:I

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1d
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->firstViewReference:I

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

    :goto_1e
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/Carousel;->9e849c4a6f153b941faff3aa6310f73em(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_24

    nop

    nop

    :goto_1f
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

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

    :goto_20
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mLastStartId:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_23
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_24
    return-void

    nop

    nop

    :goto_25
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mUpdateRunnable:Ljava/lang/Runnable;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_27
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

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

    :goto_28
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2a
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
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

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mLastStartId:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_6
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mUpdateRunnable:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_12

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
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_9
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousIndex:I

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
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_c
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_e
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

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
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    const v0, 0x4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_11
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->firstViewReference:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/Carousel;->9e849c4a6f153b941faff3aa6310f73em(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v2, 0x3f666666    # 0.9f

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

    :goto_14
    const v1, 0x20

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_15
    const/4 v0, 0x1

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

    :goto_16
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->velocityThreshold:F

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1e
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v0, 0x4

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_20
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->startIndex:I

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

    :goto_21
    const/16 v0, 0xc8

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_22
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_23
    new-instance v0, Landroidx/constraintlayout/helper/widget/Carousel$1;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_24
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

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

    :goto_26
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_27
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_28
    iput v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->dampening:F

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

    :goto_29
    invoke-direct {v0, p0}, Landroidx/constraintlayout/helper/widget/Carousel$1;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/high16 v0, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$000(Landroidx/constraintlayout/helper/widget/Carousel;)Landroidx/constraintlayout/motion/widget/MotionLayout;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$100(Landroidx/constraintlayout/helper/widget/Carousel;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->c82e68a34595c077fc2671613d067a70m()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$200(Landroidx/constraintlayout/helper/widget/Carousel;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

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
    return v0

    nop

    nop

    nop

    nop
.end method

.method static synthetic access$300(Landroidx/constraintlayout/helper/widget/Carousel;)Landroidx/constraintlayout/helper/widget/Carousel$Adapter;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method static synthetic access$400(Landroidx/constraintlayout/helper/widget/Carousel;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

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
    return v0

    nop

    nop

    nop
.end method

.method static synthetic access$500(Landroidx/constraintlayout/helper/widget/Carousel;)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->velocityThreshold:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method static synthetic access$600(Landroidx/constraintlayout/helper/widget/Carousel;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->dampening:F

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
.end method

.method static synthetic access$700(Landroidx/constraintlayout/helper/widget/Carousel;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousIndex:I

    nop

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
.end method

.method private c82e68a34595c077fc2671613d067a70m()V
    .locals 7

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v3, v2}, Landroidx/constraintlayout/helper/widget/Carousel;->1ad1376d5dd920368467f7f8291b73e2m(Landroid/view/View;I)Z

    :goto_1
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v1, "Carousel"

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_3a

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

    :goto_4
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_8
    invoke-direct {p0, v3, v2}, Landroidx/constraintlayout/helper/widget/Carousel;->1ad1376d5dd920368467f7f8291b73e2m(Landroid/view/View;I)Z

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, v3, v6}, Landroidx/constraintlayout/helper/widget/Carousel;->1ad1376d5dd920368467f7f8291b73e2m(Landroid/view/View;I)Z

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v5, v3, v2}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->populate(Landroid/view/View;I)V

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_b
    invoke-interface {v6}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v2, v3, v4}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->populate(Landroid/view/View;I)V

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_d
    invoke-interface {v5}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v5

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

    :goto_e
    if-ltz v4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_5f

    nop

    :goto_10
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_12
    invoke-interface {v1}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_13
    const/4 v5, 0x4

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_14
    new-instance v4, Landroidx/constraintlayout/helper/widget/Carousel$$ExternalSyntheticLambda0;

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_15
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_16
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_a5

    nop

    nop

    :goto_19
    invoke-direct {p0, v3, v2}, Landroidx/constraintlayout/helper/widget/Carousel;->1ad1376d5dd920368467f7f8291b73e2m(Landroid/view/View;I)Z

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

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

    :goto_1b
    return-void

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_1d
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    :goto_1e
    if-eq v4, v6, :cond_2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :cond_3
    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v3, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(I)V

    :goto_21
    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_22
    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/helper/widget/Carousel;->88966f6b78befd58d6ba712ba15da6c5m(IZ)Z

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-eq v1, v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_25
    invoke-interface {v2, v3, v4}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->populate(Landroid/view/View;I)V

    :goto_26
    goto/32 :goto_61

    nop

    nop

    :goto_27
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-boolean v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_29
    if-eqz v3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    :cond_5
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v2, v3, v5}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->populate(Landroid/view/View;I)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v2}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v5

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

    :goto_2d
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2f
    invoke-interface {v2, v3, v4}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->populate(Landroid/view/View;I)V

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_30
    iput v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_32
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_33
    iget-boolean v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_34
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_26

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_8

    nop

    nop

    :goto_37
    if-nez v5, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    :cond_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

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

    nop

    :goto_39
    return-void

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3e
    if-lt v1, v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_40
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const v0, 0x2

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_43
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

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

    :goto_44
    invoke-direct {p0, v3, v2}, Landroidx/constraintlayout/helper/widget/Carousel;->1ad1376d5dd920368467f7f8291b73e2m(Landroid/view/View;I)Z

    :goto_45
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const/4 v3, -0x1

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
    rem-int v6, v4, v6

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_48
    const-string v2, "No backward or forward transitions defined for Carousel!"

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/16 :goto_31

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_3f

    nop

    nop

    :goto_4b
    goto/16 :goto_26

    nop

    :goto_4c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4e
    invoke-interface {v6}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v6

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-direct {p0, v3, v2}, Landroidx/constraintlayout/helper/widget/Carousel;->88966f6b78befd58d6ba712ba15da6c5m(IZ)Z

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_50
    add-int/lit8 v5, v1, -0x1

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/16 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_55
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_56
    invoke-direct {p0, v3, v2}, Landroidx/constraintlayout/helper/widget/Carousel;->1ad1376d5dd920368467f7f8291b73e2m(Landroid/view/View;I)Z

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_58
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_59
    if-eq v3, v5, :cond_8

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_5a
    invoke-interface {v6}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v6

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    if-ne v1, v3, :cond_9

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_5c
    goto/16 :goto_21

    nop

    nop

    :goto_5d
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    rem-int/2addr v4, v6

    nop

    nop

    :goto_5f
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-interface {v6}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v6

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_61
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_62
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

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

    :goto_63
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_65
    if-ne v1, v3, :cond_a

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_27

    nop

    nop

    :goto_66
    goto/16 :goto_6

    nop

    nop

    :goto_67
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_68
    if-gt v4, v6, :cond_b

    nop

    goto/32 :goto_5f

    nop

    :cond_b
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_4

    nop

    nop

    :goto_6b
    goto/16 :goto_26

    nop

    nop

    :goto_6c
    goto/32 :goto_56

    nop

    nop

    :goto_6d
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_6e
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_6f
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_70
    iget v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-direct {p0, v2, v4}, Landroidx/constraintlayout/helper/widget/Carousel;->88966f6b78befd58d6ba712ba15da6c5m(IZ)Z

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_72
    iget v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->startIndex:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_73
    check-cast v3, Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_74
    iget v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_75
    const v1, 0x2

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

    :goto_76
    invoke-interface {v0}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_77
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_78
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_79
    if-ge v4, v5, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_7a
    sub-int/2addr v4, v5

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

    :goto_7b
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

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

    :goto_7c
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

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

    :goto_7d
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_7e
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_7f
    if-ltz v4, :cond_d

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

    :cond_d
    goto/32 :goto_38

    nop

    nop

    :goto_80
    if-lez v0, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_e
    goto/32 :goto_17

    nop

    :goto_81
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_82
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_84
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    if-ne v6, v5, :cond_f

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_86
    invoke-direct {v4, p0}, Landroidx/constraintlayout/helper/widget/Carousel$$ExternalSyntheticLambda0;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_87
    invoke-direct {p0, v3, v6}, Landroidx/constraintlayout/helper/widget/Carousel;->1ad1376d5dd920368467f7f8291b73e2m(Landroid/view/View;I)Z

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-direct {p0, v3, v2}, Landroidx/constraintlayout/helper/widget/Carousel;->1ad1376d5dd920368467f7f8291b73e2m(Landroid/view/View;I)Z

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_89
    if-ne v1, v4, :cond_10

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_8a
    if-eqz v5, :cond_11

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_11
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_8b
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_8c
    return-void

    nop

    nop

    nop

    nop

    :goto_8d
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_8f
    add-int v0, v0, v1

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_90
    rem-int v5, v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_91
    return-void

    nop

    nop

    nop

    nop

    :goto_92
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_94
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(I)V

    :goto_95
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_96
    if-eq v1, v3, :cond_12

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :cond_12
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_97
    if-ne v6, v5, :cond_13

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

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

    :goto_99
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    if-ge v4, v6, :cond_14

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_9c
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_9d
    add-int/2addr v5, v6

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

    :goto_9e
    invoke-interface {v6}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v6

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    goto/16 :goto_26

    nop

    :goto_a0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    if-nez v1, :cond_15

    nop

    nop

    goto/32 :goto_9a

    nop

    :cond_15
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_a2
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a3
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-direct {p0, v3, v2}, Landroidx/constraintlayout/helper/widget/Carousel;->88966f6b78befd58d6ba712ba15da6c5m(IZ)Z

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    if-eqz v1, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :cond_16
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    add-int/2addr v4, v1

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_a8
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-interface {v5}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v5

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    goto/16 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public getCount()I
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

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
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return v0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getCurrentIndex()I
    .locals 1

    goto/32 :goto_1

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
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public jumpToIndex(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

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

    :goto_1
    const/4 v1, 0x0

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

    :goto_2
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->getCount()I

    move-result v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v0, v0, -0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->refresh()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

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

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method synthetic lambda$updateItems$0$androidx-constraintlayout-helper-widget-Carousel()V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

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
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransitionDuration(I)V

    goto/32 :goto_10

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

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

    :goto_c
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(II)V

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    :goto_f
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_11
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(II)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_16
    if-lt v0, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_18
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

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

    :goto_19
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

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
.end method

.method protected onAttachedToWindow()V
    .locals 5

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroidx/constraintlayout/motion/widget/MotionHelper;->onAttachedToWindow()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    move-result-object v3

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
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

    nop

    :goto_5
    instance-of v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_8
    move-object v0, v1

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

    :goto_9
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lt v1, v2, :cond_0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    :goto_c
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setOnTouchUp(I)V

    :goto_d
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    move-result-object v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_10
    if-nez v1, :cond_1

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

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setOnTouchUp(I)V

    :goto_12
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_13
    if-eq v1, v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    aget v2, v2, v1

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

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_19
    add-int/lit8 v1, v1, 0x1

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

    :goto_1a
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    :goto_1b
    const/4 v2, 0x5

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1c
    const/4 v0, 0x0

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

    :goto_1d
    if-eq v4, v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_3
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1e
    goto :goto_18

    nop

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

    :goto_20
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_21
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIds:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_28

    nop

    :goto_24
    if-nez v3, :cond_5

    nop

    goto/32 :goto_d

    nop

    :cond_5
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_25
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->startIndex:I

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v0, 0x1f

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2a
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2b
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->firstViewReference:I

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
    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    :goto_2d
    return-void

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getViewById(I)Landroid/view/View;

    move-result-object v3

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const v1, 0x2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->c82e68a34595c077fc2671613d067a70m()V

    goto/32 :goto_15

    nop

    nop

    :goto_32
    if-nez v1, :cond_6

    nop

    goto/32 :goto_16

    nop

    :cond_6
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_33
    rem-int v0, v0, v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_34
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mCount:I

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

.method public onTransitionChange(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "motionLayout",
            "startId",
            "endId",
            "progress"
        }
    .end annotation

    goto/32 :goto_1

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
    iput p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mLastStartId:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public onTransitionCompleted(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "motionLayout",
            "currentId"
        }
    .end annotation

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->post(Ljava/lang/Runnable;)Z

    :goto_3
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_4
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

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

    :goto_5
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_3b

    nop

    :goto_7
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-ltz v0, :cond_1

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_1
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eq p2, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int/lit8 v0, v0, 0x1

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

    :goto_e
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

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

    :goto_f
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_1c

    nop

    :goto_13
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousIndex:I

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_14
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousIndex:I

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

    :goto_15
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_16
    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_18
    if-eq p2, v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1b
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1c
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_22

    nop

    nop

    :goto_1e
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

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

    :goto_20
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

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

    :goto_21
    add-int/lit8 v0, v0, -0x1

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

    :goto_22
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_24
    add-int/lit8 v0, v0, -0x1

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

    :goto_25
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

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

    :goto_26
    if-ge v0, v2, :cond_5

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

    :cond_5
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_27
    invoke-interface {v2}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v2

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_28
    if-ltz v0, :cond_6

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3a

    nop

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

    :goto_2b
    if-ge v0, v2, :cond_7

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v0, :cond_8

    nop

    goto/32 :goto_7

    nop

    :cond_8
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

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

    :goto_2e
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mUpdateRunnable:Ljava/lang/Runnable;

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

    :goto_2f
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

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

    :goto_30
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_31
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_32
    const v1, 0x1c

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
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    nop

    nop

    :goto_34
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

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

    :goto_36
    iget-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_37
    add-int v0, v0, v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {v2}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_39
    invoke-interface {v0}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_14

    nop

    nop

    nop
.end method

.method public refresh()V
    .locals 4

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2
    goto/16 :goto_1b

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->c82e68a34595c077fc2671613d067a70m()V

    goto/32 :goto_16

    nop

    nop

    :goto_5
    if-eqz v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_17

    nop

    nop

    :goto_8
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_9
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, v2, v3}, Landroidx/constraintlayout/helper/widget/Carousel;->1ad1376d5dd920368467f7f8291b73e2m(Landroid/view/View;I)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

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
    goto :goto_19

    nop

    nop

    :goto_f
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v2, Landroid/view/View;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
    invoke-interface {v3}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_13
    if-lt v1, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    :goto_14
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    :goto_15
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

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

    :goto_16
    return-void

    nop

    nop

    :goto_17
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0, v2, v3}, Landroidx/constraintlayout/helper/widget/Carousel;->1ad1376d5dd920368467f7f8291b73e2m(Landroid/view/View;I)Z

    :goto_1b
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1d
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1e
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x6

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_21
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

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

.method public setAdapter(Landroidx/constraintlayout/helper/widget/Carousel$Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

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
.end method

.method public transitionToIndex(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "delay"
        }
    .end annotation

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
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

    :goto_1
    goto :goto_a

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x14

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
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

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
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(II)V

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    :goto_11
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->getCount()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransitionDuration(I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_16
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_17
    goto/32 :goto_e

    nop

    :goto_18
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1a
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1b
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

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(II)V

    goto/32 :goto_1

    nop

    nop

    :goto_1e
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_20
    if-lt p1, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop
.end method
