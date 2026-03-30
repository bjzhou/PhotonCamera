.class Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;
.super Ljava/lang/Object;
.source "ViewTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/ViewTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Animate"
.end annotation


# instance fields
.field hold_at_100:Z

.field mCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

.field private final mClearsTag:I

.field mDpositionDt:F

.field mDuration:I

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mLastRender:J

.field mMC:Landroidx/constraintlayout/motion/widget/MotionController;

.field mPosition:F

.field private final mSetsTag:I

.field mStart:J

.field mTempRec:Landroid/graphics/Rect;

.field mUpDuration:I

.field mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

.field reverse:Z


# direct methods
.method constructor <init>(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionController;IIILandroid/view/animation/Interpolator;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "controller",
            "motionController",
            "duration",
            "upDuration",
            "mode",
            "interpolator",
            "setTag",
            "clearTag"
        }
    .end annotation

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1
    div-float/2addr v0, v1

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3
    if-eq p5, v0, :cond_0

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
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mInterpolator:Landroid/view/animation/Interpolator;

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

    :goto_6
    const/4 v0, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->reverse:Z

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

    :goto_8
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mutate()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_a
    new-instance v1, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyCache;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_f
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_11
    const/high16 v0, 0x3f800000    # 1.0f

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

    :goto_12
    const v0, 0x7f7fffff    # Float.MAX_VALUE

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

    :goto_13
    if-eqz p3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->hold_at_100:Z

    nop

    :goto_16
    goto/32 :goto_13

    nop

    nop

    :goto_17
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mTempRec:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_18
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mStart:J

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_19
    iput p7, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mSetsTag:I

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1a
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mDpositionDt:F

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->addAnimation(Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x5

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    :goto_21
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->hold_at_100:Z

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_22
    iput p4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mUpDuration:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    int-to-float v1, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_24
    const/4 v0, 0x1

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_25
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mMC:Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_2e

    nop

    nop

    :goto_28
    iput p8, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mClearsTag:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/KeyCache;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput p3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mDuration:I

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

    :goto_2e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_b

    nop

    nop
.end method


# virtual methods
.method mutate()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mutateReverse()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mutateForward()V

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->reverse:Z

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

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
.end method

.method mutateForward()V
    .locals 13

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_1
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_2
    mul-double/2addr v1, v3

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

    :goto_3
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

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

    :goto_4
    if-ne v1, v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mMC:Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    cmpl-float v0, v0, v10

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_7
    long-to-double v1, v8

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
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_9
    const/4 v3, -0x1

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_a
    move-wide v3, v6

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-wide v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

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

    :goto_d
    double-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_e
    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

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

    :goto_11
    invoke-virtual {v1, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_12
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->hold_at_100:Z

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

    :goto_14
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->invalidate()V

    :goto_15
    goto/32 :goto_24

    nop

    nop

    :goto_16
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_17
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_18
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1a
    move v2, v0

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

    :goto_1b
    sub-long v8, v6, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1c
    iget v4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mSetsTag:I

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

    :goto_1d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mSetsTag:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1f
    const/4 v4, 0x0

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

    :goto_20
    if-gez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_21
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_22
    if-ne v1, v3, :cond_3

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    return-void

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_26
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionController;->interpolate(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_27
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mDpositionDt:F

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_28
    add-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

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

    :goto_2d
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_4
    goto/32 :goto_30

    nop

    :goto_2e
    iget-wide v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_31

    nop

    :goto_30
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_23

    nop

    nop

    :goto_32
    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_33
    const/high16 v10, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_34
    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getView()Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_36
    if-gez v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_5
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_37
    cmpl-float v1, v1, v10

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_38
    if-gez v1, :cond_6

    nop

    goto/32 :goto_43

    nop

    :cond_6
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_39
    iput v10, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_3b
    cmpg-float v1, v1, v10

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

    nop

    nop

    :goto_3c
    iget v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mClearsTag:I

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const v0, 0x3

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

    :goto_3f
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mInterpolator:Landroid/view/animation/Interpolator;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_40
    if-eqz v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mMC:Landroidx/constraintlayout/motion/widget/MotionController;

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

    :goto_42
    if-nez v0, :cond_8

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_8
    :goto_43
    goto/32 :goto_16

    nop

    nop

    :goto_44
    mul-float/2addr v1, v2

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

    :goto_45
    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mClearsTag:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mMC:Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_48
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->removeAnimation(Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;)V

    :goto_49
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const-wide v3, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4b
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getView()Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop
.end method

.method mutateReverse()V
    .locals 13

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_0
    long-to-double v1, v8

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    iput v10, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mSetsTag:I

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

    :goto_5
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_6
    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_37

    nop

    :goto_8
    iput-wide v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_9
    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mSetsTag:I

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_a
    sub-float/2addr v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

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

    :goto_c
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getView()Landroid/view/View;

    move-result-object v1

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
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mMC:Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    mul-float/2addr v1, v2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_11
    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

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

    :goto_12
    if-lez v0, :cond_0

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_36

    nop

    :goto_13
    cmpg-float v1, v1, v10

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

    :goto_14
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-wide v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

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
    invoke-virtual {v1, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_17
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_18
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_19
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mClearsTag:I

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_1c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-wide v3, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

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

    :goto_1e
    if-lez v1, :cond_2

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

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sub-long v8, v6, v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_21
    if-lez v1, :cond_3

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2b

    nop

    nop

    :goto_22
    cmpg-float v0, v0, v10

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getView()Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_24
    cmpl-float v1, v1, v10

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_25
    double-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_26
    const/4 v10, 0x0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v4, 0x0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_28
    move-wide v3, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_29
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez v0, :cond_4

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_4
    :goto_2c
    goto/32 :goto_29

    nop

    nop

    :goto_2d
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

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

    :goto_2e
    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_30
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mMC:Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const v1, 0x14

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

    :goto_32
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_7

    nop

    nop

    :goto_34
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->invalidate()V

    :goto_35
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_38
    mul-double/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_39
    const/4 v3, -0x1

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_3a
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->removeAnimation(Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;)V

    :goto_3b
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3c
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mMC:Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_3d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3e
    if-ne v1, v3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3f
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mDpositionDt:F

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

    :goto_40
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-ne v1, v3, :cond_6

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_6
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-ltz v0, :cond_7

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_44
    iget v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mClearsTag:I

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

    :goto_45
    move v2, v0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mInterpolator:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionController;->interpolate(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop
.end method

.method public reactTo(IFF)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "action",
            "x",
            "y"
        }
    .end annotation

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_10

    nop

    :pswitch_0
    goto/32 :goto_15

    nop

    nop

    :goto_1
    if-eqz v2, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->reverse:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3
    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->reverse:Z

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

    :goto_4
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mTempRec:Landroid/graphics/Rect;

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

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

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

    :goto_7
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mTempRec:Landroid/graphics/Rect;

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

    :goto_8
    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    goto/32 :goto_7

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
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->reverse(Z)V

    :goto_c
    goto/32 :goto_f

    nop

    nop

    :goto_d
    goto :goto_10

    nop

    nop

    :pswitch_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    float-to-int v3, p2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getView()Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mMC:Landroidx/constraintlayout/motion/widget/MotionController;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    packed-switch p1, :pswitch_data_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x11

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
    if-eqz v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

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

    :goto_19
    goto/32 :goto_13

    nop

    :goto_1a
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->reverse(Z)V

    goto/32 :goto_d

    nop

    nop

    :goto_1b
    float-to-int v4, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1c
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    :goto_1d
    if-eqz v2, :cond_3

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

    :cond_3
    goto/32 :goto_1a

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

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method reverse(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, -0x1

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

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    :goto_4
    goto :goto_7

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    div-float v0, v1, v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->reverse:Z

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_c
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mUpDuration:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_12
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

    nop

    :goto_13
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mDpositionDt:F

    nop

    :goto_14
    goto/32 :goto_b

    nop

    nop

    :goto_15
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    :goto_16
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    :goto_18
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_19
    if-lez v0, :cond_3

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    :goto_1a
    int-to-float v0, v0

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

    :goto_1b
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->invalidate()V

    goto/32 :goto_e

    nop

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method
